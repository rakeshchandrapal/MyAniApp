import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/image_viewer.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/invisible_expanded_title.dart';
import 'package:myaniapp/common/list_tile_circle_avatar.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/common/widget_gradient.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/review/review.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/fragments/review.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:myaniapp/utils.dart';
import 'package:mygraphql/graphql.dart';
import 'package:relative_time/relative_time.dart';

@RoutePage()
class ReviewScreen extends HookConsumerWidget {
  const ReviewScreen(
      {super.key, @pathParam required this.id, this.placeholder});

  final int id;
  final Fragment$ReviewFragment? placeholder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      reviewQuery,
      variables: Variables$Query$Review(id: id).toJson(),
      parseData: Query$Review.fromJson,
    ));

    return GQLWidget(
      loading: null,
      refetch: refetch,
      response: snapshot,
      error: Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (snapshot.errors, snapshot.linkError),
          refetch: refetch,
        ),
      ),
      builder: () {
        if (snapshot.loading == true && placeholder == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        }

        var data = snapshot.parsedData?.Review;

        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                title: InvisibleExpandedTitle(
                  child: Text(
                    (data ?? placeholder)!.summary!,
                    maxLines: 2,
                  ),
                ),
                expandedHeight: 160,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      SizedBox(
                        height: 160,
                        child: WidgetGradient(
                          child: (data ?? placeholder)?.media?.bannerImage ==
                                  null
                              ? Container(
                                  height: 210,
                                  color: data != null ? Colors.grey : null,
                                  child: Center(
                                    child: data == null
                                        ? const CircularProgressIndicator
                                            .adaptive()
                                        : null,
                                  ),
                                )
                              : InkWellImage(
                                  onTap: () => ImageViewer.showImage(
                                    context,
                                    (data ?? placeholder)!.media!.bannerImage!,
                                    tag: (data ?? placeholder)!
                                        .media!
                                        .bannerImage,
                                  ),
                                  child: Hero(
                                    tag: (data ?? placeholder)!
                                        .media!
                                        .bannerImage!,
                                    child: CachedImage(
                                      (data ?? placeholder)!
                                          .media!
                                          .bannerImage!,
                                      fit: BoxFit.cover,
                                      height: 210,
                                      width: double.maxFinite,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        // bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                (data ?? placeholder)!.summary!,
                                // style: context.theme.textTheme.labelMedium,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                              GestureDetector(
                                onTap: () => context.pushRoute(MediaRoute(
                                  id: (data ?? placeholder)!.media!.id,
                                )),
                                child: Text(
                                  "A review of ${(data ?? placeholder)!.media!.title!.userPreferred}",
                                  style: context.theme.textTheme.labelMedium
                                      ?.copyWith(color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: ListTile(
                  onTap: () => context.pushRoute(UserRoute(
                    name: (data ?? placeholder)!.user!.name,
                    placeholder: (data ?? placeholder)!.user,
                  )),
                  title: Text((data ?? placeholder)!.user!.name),
                  subtitle: data != null
                      ? Text(data.createdAt
                          .dateFromTimestamp()
                          .relativeTime(context))
                      : null,
                  leading: ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxHeight: 50, maxWidth: 50),
                    child: ListTileCircleAvatar(
                      url: (data ?? placeholder)!.user!.avatar!.large!,
                    ),
                  ),
                ),
              ),
              if (data == null)
                const SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                )
              else
                SliverToBoxAdapter(
                  child: MarkdownWidget.body(
                    data: data.body!,
                    selectable: true,
                  ),
                ),
              if (data != null)
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: context.theme.colorScheme.surfaceContainerHigh,
                          borderRadius: imageRadius,
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: (data.score ?? 0).toString(),
                                style: context.theme.textTheme.titleLarge,
                              ),
                              const TextSpan(text: " / "),
                              const TextSpan(text: "100")
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: requiredLogin(
                              ref,
                              "to rate a review",
                              () => c
                                  .query(GQLRequest(
                                    rateReviewQuery,
                                    variables: Variables$Mutation$RateReview(
                                            id: data.id,
                                            rating: data.userRating ==
                                                    Enum$ReviewRating.UP_VOTE
                                                ? Enum$ReviewRating.NO_VOTE
                                                : Enum$ReviewRating.UP_VOTE)
                                        .toJson(),
                                  ))
                                  .last
                                  .then(
                                    (value) => refetch(FetchPolicy.cacheFirst),
                                  ),
                            ),
                            icon: const Icon(Icons.thumb_up),
                            color: data.userRating == Enum$ReviewRating.UP_VOTE
                                ? Colors.green
                                : null,
                            iconSize: 30,
                          ),
                          const SizedBox(width: 5),
                          IconButton(
                            onPressed: requiredLogin(
                              ref,
                              "to rate a review",
                              () => c
                                  .query(GQLRequest(
                                    rateReviewQuery,
                                    variables: Variables$Mutation$RateReview(
                                            id: data.id,
                                            rating: data.userRating ==
                                                    Enum$ReviewRating.DOWN_VOTE
                                                ? Enum$ReviewRating.NO_VOTE
                                                : Enum$ReviewRating.DOWN_VOTE)
                                        .toJson(),
                                  ))
                                  .last
                                  .then(
                                    (value) => refetch(FetchPolicy.cacheFirst),
                                  ),
                            ),
                            icon: const Icon(Icons.thumb_down),
                            color:
                                data.userRating == Enum$ReviewRating.DOWN_VOTE
                                    ? Colors.red
                                    : null,
                            iconSize: 30,
                          ),
                        ],
                      ),
                      Text(
                          "${data.rating} out of ${data.ratingAmount} liked this review."),
                    ],
                  ),
                )
            ],
          ),
        );
      },
    );
  }
}
