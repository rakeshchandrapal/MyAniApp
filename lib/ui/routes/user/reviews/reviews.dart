import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/user/reviews/reviews.graphql.dart';
import 'package:myaniapp/providers/userProfile.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/routes/routes.gr.dart';

@RoutePage()
class UserReviewsPage extends ConsumerWidget {
  const UserReviewsPage(
      {super.key, @PathParam.inherit('name') required this.name});

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProfileProvider(name));

    return Query$Reviews$Widget(
      options: Options$Query$Reviews(
        variables: Variables$Query$Reviews(userId: user.value!.id),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading && result.parsedData == null) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (result.hasException) {
          return GraphqlError(exception: result.exception!);
        }

        if (result.parsedData!.Page!.reviews!.isEmpty == true) {
          return Center(
            child: Text(
              'User has no reviews',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          );
        }

        return Pagination(
          fetchMore: fetchMore!,
          opts: FetchMoreOptions$Query$Reviews(
            variables: Variables$Query$Reviews(
                page: result.parsedData!.Page!.pageInfo!.currentPage),
            updateQuery: (previousResultData, fetchMoreResultData) {
              var list = [
                ...previousResultData!['Page']!['reviews'],
                ...fetchMoreResultData!['Page']!['reviews'],
              ];
              fetchMoreResultData['Page']!['reviews'] = list;
              return fetchMoreResultData;
            },
          ),
          pageInfo: result.parsedData!.Page!.pageInfo!,
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemBuilder: (context, index) {
              var review = result.parsedData!.Page!.reviews![index]!;

              return ListTile(
                onTap: () => context.pushRoute(ReviewRoute(id: review.id)),
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
                          ..onTap = () => context.router
                              .push(MediaRoute(id: review.media!.id)),
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
            itemCount: result.parsedData!.Page!.reviews!.length,
          ),
        );
      },
    );
  }
}
