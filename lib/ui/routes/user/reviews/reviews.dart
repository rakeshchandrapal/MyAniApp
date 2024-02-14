import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/providers/user_profile.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/review_card.dart';
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
  bool get wantKeepAlive => true;

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
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemBuilder: (context, index) {
              var review = response.data!.Page!.reviews![index]!;

              return SizedBox(
                height: 180,
                child: ReviewCard(review: review),
              );
            },
            itemCount: response.data!.Page!.reviews!.length,
          ),
        );
      },
    );
  }
}
