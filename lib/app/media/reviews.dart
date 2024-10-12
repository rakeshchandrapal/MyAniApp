import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/list_tile_circle_avatar.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/graphql/__gen/app/media/reviews.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class MediaReviewsScreen extends HookWidget {
  const MediaReviewsScreen(
      {super.key, @PathParam.inherit("id") required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      mediaReviewsQuery,
      variables: Variables$Query$MediaReviews(mediaId: mediaId).toJson(),
      parseData: Query$MediaReviews.fromJson,
      mergeResults: defaultMergeResults("Media.reviews"),
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      builder: () => PaginationView.list(
        pageInfo: snapshot.parsedData!.Media!.reviews!.pageInfo!,
        req: (nextPage) => fetchMore(
          variables:
              Variables$Query$MediaReviews(mediaId: mediaId, page: nextPage)
                  .toJson(),
        ),
        builder: (context, index) {
          var review = snapshot.parsedData!.Media!.reviews!.nodes![index]!;

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
                  color: review.userRating == Enum$ReviewRating.UP_VOTE
                      ? Colors.green
                      : null,
                )
              ],
            ),
            leading: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                child: ListTileCircleAvatar(
                  url: review.user!.avatar!.large!,
                )),
          );
        },
        itemCount: snapshot.parsedData!.Media!.reviews!.nodes!.length,
      ),
    );
  }
}
