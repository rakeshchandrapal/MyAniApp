import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myaniapp/app/reviews/__generated__/reviews.req.gql.dart';
import 'package:myaniapp/app/reviews/card.dart';
import 'package:myaniapp/graphql/widget.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

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
