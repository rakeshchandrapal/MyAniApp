import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/review_card.dart';
import 'package:myaniapp/graphql/__gen/user_reviews.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:mygraphql/graphql.dart';

class UserReviewsTab extends HookWidget {
  const UserReviewsTab({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      userReviewsQuery,
      variables: Variables$Query$UserReviews(userId: id).toJson(),
      parseData: Query$UserReviews.fromJson,
      mergeResults: defaultMergeResults("Page.reviews"),
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      builder: () => PaginationView.grid(
        pageInfo: snapshot.parsedData!.Page!.pageInfo!,
        req: (nextPage) => fetchMore(
          variables:
              Variables$Query$UserReviews.fromJson(snapshot.request!.variables)
                  .copyWith(page: nextPage)
                  .toJson(),
        ),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          mainAxisExtent: 200,
        ),
        builder: (context, index) {
          var review = snapshot.parsedData!.Page!.reviews![index]!;

          return ReviewCard(review: review);
        },
        itemCount: snapshot.parsedData!.Page!.reviews!.length,
      ),
    );
  }
}
