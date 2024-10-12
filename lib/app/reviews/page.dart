import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/app/reviews/card.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/__gen/app/reviews/reviews.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class ReviewsScreen extends HookWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(reviewsQuery,
        parseData: Query$Reviews.fromJson,
        mergeResults: defaultMergeResults("Page.reviews")));

    return Scaffold(
      appBar: AppBar(),
      body: GQLWidget(
        refetch: refetch,
        response: snapshot,
        builder: () => PaginationView.grid(
          pageInfo: snapshot.parsedData!.Page!.pageInfo!,
          req: (nextPage) => fetchMore(
              variables: Variables$Query$Reviews(page: nextPage).toJson()),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            mainAxisExtent: 200,
          ),
          builder: (context, index) {
            var review = snapshot!.parsedData!.Page!.reviews![index]!;

            return ReviewCard(review: review);
          },
          itemCount: snapshot!.parsedData!.Page!.reviews!.length,
        ),
      ),
    );
  }
}
