import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/providers/user_profile.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/routes/user/reviews/__generated__/reviews.req.gql.dart';

class UserReviewsPage extends ConsumerStatefulWidget {
  const UserReviewsPage({super.key, required this.name});

  final String name;

  @override
  ConsumerState<UserReviewsPage> createState() => _UserReviewsPageState();
}

class _UserReviewsPageState extends ConsumerState<UserReviewsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    var user = ref.watch(userProfileProvider(widget.name));

    return GQLRequest(
      operationRequest: GUserReviewsReq((b) => b
        ..requestId = "userReviews"
        ..vars.userId = user.value!.id),
      builder: (context, response, error, refetch) {
        if (response!.data!.Page!.reviews!.isEmpty == true) {
          return Center(
            child: Text(
              'User has no reviews',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          );
        }

        return GraphqlPagination(
          // fetchMore: (nextPage) => fetchMore!(
          //   FetchMoreOptions$Query$Reviews(
          //     variables: Variables$Query$Reviews(
          //         page: response!.data!.Page!.pageInfo!.currentPage),
          //     updateQuery: (previousresponse!Ddata, fetchMoreresponse!Ddata) {
          //       var list = [
          //         ...previousresponse!Ddata!['Page']!['reviews'],
          //         ...fetchMoreresponse!Ddata!['Page']!['reviews'],
          //       ];
          //       fetchMoreresponse!Ddata['Page']!['reviews'] = list;
          //       return fetchMoreresponse!Ddata;
          //     },
          //   ),
          // ),
          req: (nextPage) => (response.operationRequest as GUserReviewsReq)
              .rebuild((p0) => p0
                ..vars.page = nextPage
                ..updateResult = (prev, result) => result?.rebuild((p0) => p0
                  ..Page.reviews.insertAll(
                      0,
                      prev?.Page?.reviews?.whereNot((p0) =>
                              result.Page?.reviews?.contains(p0) ?? false) ??
                          []))),
          pageInfo: response.data!.Page!.pageInfo!,
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemBuilder: (context, index) {
              var review = response.data!.Page!.reviews![index]!;

              return ListTile(
                onTap: () => context.push('/review/${review.id}'),
                title: Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Review of ',
                      ),
                      TextSpan(
                        text: review.media!.title!.userPreferred!,
                        style: const TextStyle(color: linkColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context
                              .push('/media/${review.media!.id}/overview'),
                      ),
                    ],
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(review.summary!),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (review.rating != null)
                          Row(
                            children: [
                              const Icon(
                                Icons.thumb_up,
                                size: 15,
                              ),
                              Text(review.rating!.toString()),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        Text('${review.score!.toString()}/100'),
                      ],
                    ),
                  ],
                ),
                tileColor: Theme.of(context)
                    .colorScheme
                    .secondaryContainer
                    .withAlpha(100),
                shape: RoundedRectangleBorder(borderRadius: imageRadius),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: response.data!.Page!.reviews!.length,
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
