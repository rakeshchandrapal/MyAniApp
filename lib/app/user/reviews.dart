import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/app/reviews/card.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/__gen/app/user/reviews.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class UserReviewsScreen extends HookWidget {
  const UserReviewsScreen({super.key, required this.id});

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
        pageInfo: snapshot!.parsedData!.Page!.pageInfo!,
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
