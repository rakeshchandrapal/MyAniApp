import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/app/reviews/__generated__/reviews.req.gql.dart';
import 'package:myaniapp/app/reviews/card.dart';
import 'package:myaniapp/graphql/widget.dart';

@RoutePage()
class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GQLRequest(
        operationRequest: GReviewsReq(
          (b) => b..requestId = "reviewsPageEpico",
        ),
        builder: (context, response, error, refetch) => GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            mainAxisExtent: 200,
          ),
          itemBuilder: (context, index) {
            var review = response!.data!.Page!.reviews![index]!;

            return ReviewCard(review: review);
          },
          itemCount: response!.data!.Page!.reviews!.length,
        ),
      ),
    );
  }
}
