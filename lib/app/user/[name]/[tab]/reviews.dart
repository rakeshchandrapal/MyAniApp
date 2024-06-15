import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/app/reviews/card.dart';
import 'package:myaniapp/app/user/__generated__/reviews.req.gql.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/widget.dart';

class UserReviewsPage extends StatefulWidget {
  const UserReviewsPage({super.key, required this.id});

  final int id;

  @override
  State<UserReviewsPage> createState() => _UserReviewsPageState();
}

class _UserReviewsPageState extends State<UserReviewsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return GQLRequest(
      operationRequest: GUserReviewsReq((b) => b
        ..requestId = "userReviews${widget.id}"
        ..vars.userId = widget.id),
      builder: (context, response, error, refetch) => GraphqlPagination(
        pageInfo: response!.data!.Page!.pageInfo!,
        req: (nextPage) =>
            (response.operationRequest as GUserReviewsReq).rebuild(
          (p0) => p0
            ..vars.page = nextPage
            ..updateResult = (previous, result) => result?.rebuild(
                  (p0) => p0
                    ..Page.reviews.insertAll(
                          0,
                          previous?.Page?.reviews?.whereNot((p0) =>
                                  result.Page?.reviews?.contains(p0) ??
                                  false) ??
                              [],
                        ),
                ),
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisExtent: 200,
          ),
          itemBuilder: (context, index) {
            var review = response.data!.Page!.reviews![index]!;

            return ReviewCard(review: review);
          },
          itemCount: response.data!.Page!.reviews!.length,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
