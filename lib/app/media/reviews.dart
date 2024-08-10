import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/app/media/__generated__/reviews.req.gql.dart';
import 'package:myaniapp/common/list_tile_circle_avatar.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/router.gr.dart';

@RoutePage()
class MediaReviewsScreen extends StatelessWidget {
  const MediaReviewsScreen(
      {super.key, @PathParam.inherit("id") required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      operationRequest: GMediaReviewsReq((b) => b
        ..requestId = "mediaReviews$mediaId"
        ..vars.mediaId = mediaId),
      builder: (context, response, error, refetch) => GraphqlPagination(
        pageInfo: response!.data!.Media!.reviews!.pageInfo!,
        req: (nextPage) => (response.operationRequest as GMediaReviewsReq)
            .rebuild((p0) => p0
              ..vars.page = nextPage
              ..updateResult = (previous, result) => result?.rebuild((p0) => p0
                ..Media.reviews.nodes.insertAll(
                    0,
                    previous?.Media?.reviews?.nodes?.whereNot((p0) =>
                            result.Media?.reviews?.nodes?.contains(p0) ??
                            false) ??
                        []))),
        child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemBuilder: (context, index) {
            var review = response.data!.Media!.reviews!.nodes![index]!;

            return ListTile(
              onTap: () => context
                  .pushRoute(ReviewRoute(id: review.id, placeholder: review)),
              // onTap: () => context
              //     .push("/review/${review.id}", extra: {"review": review}),
              title: Text(review.summary!),
              subtitle: Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: (review.rating ?? 0).toString()),
                        const TextSpan(text: " / "),
                        TextSpan(text: (review.ratingAmount ?? 0).toString())
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.thumb_up,
                    size: 20,
                    color: review.userRating == GReviewRating.UP_VOTE
                        ? Colors.green
                        : null,
                  )
                ],
              ),
              leading: ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxHeight: 50, maxWidth: 50),
                  child: ListTileCircleAvatar(
                    url: review.user!.avatar!.large!,
                  )),
            );
          },
          itemCount: response.data!.Media!.reviews!.nodes!.length,
        ),
      ),
    );
  }
}
