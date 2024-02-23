import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/providers/ferry.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/ui/common/widget_gradient.dart';
import 'package:myaniapp/ui/routes/review/__generated__/review.req.gql.dart';
import 'package:myaniapp/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;

class ReviewPage extends ConsumerWidget {
  const ReviewPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);

    return GQLRequest(
      operationRequest: GReviewReq((b) => b..vars.id = id),
      loading: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      error: (response) => Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (response!.graphqlErrors, response.linkException),
        ),
      ),
      builder: (context, response, error, refetch) {
        return Scaffold(
          body: RefreshIndicator.adaptive(
            onRefresh: refetch,
            notificationPredicate: (p) => p.depth == 0 || p.depth == 1,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 150,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      children: [
                        WidgetGradient(
                          child:
                              response!.data!.Review!.media!.bannerImage != null
                                  ? CImage(
                                      imageUrl: response
                                          .data!.Review!.media!.bannerImage!,
                                      width: double.maxFinite,
                                      height: 150,
                                      viewer: true,
                                    )
                                  : Container(
                                      color: Colors.grey,
                                      height: 150,
                                    ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "A review on",
                                  style: theme.textTheme.labelSmall,
                                ),
                                GestureDetector(
                                  onTap: () => context.push(
                                      '/media/${response.data!.Review!.media!.id}'),
                                  child: Text(
                                    response.data!.Review!.media!.title!
                                        .userPreferred!,
                                    style: theme.textTheme.labelLarge,
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
                  child: InkWell(
                    onTap: () => context
                        .push("/user/${response.data!.Review!.user!.name}"),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Wrap(
                        spacing: 5,
                        runSpacing: 5,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CImage(
                                imageUrl:
                                    response.data!.Review!.user!.avatar!.large!,
                                imageBuilder: (context, imageProvider) =>
                                    CircleAvatar(
                                        foregroundImage: imageProvider),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(response.data!.Review!.user!.name),
                            ],
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                const TextSpan(text: "- "),
                                TextSpan(
                                  text: timeago.format(
                                    dateFromTimestamp(
                                        response.data!.Review!.createdAt),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: Divider(),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(8.0),
                  sliver: SliverList.list(
                    children: [
                      Markdown(
                        data: response.data!.Review!.body!,
                      ),
                      Center(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: response.data!.Review!.score!.toString(),
                                style: theme.textTheme.titleLarge,
                              ),
                              const TextSpan(text: '/100')
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () => rateReview(
                              id,
                              GReviewRating.UP_VOTE,
                              response.data!.Review!.userRating,
                              ref,
                            ),
                            icon: Icon(
                              Icons.thumb_up,
                              color: response.data!.Review!.userRating ==
                                      GReviewRating.UP_VOTE
                                  ? Colors.green[200]
                                  : theme.colorScheme.secondary,
                            ),
                            iconSize: 32,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () => rateReview(
                              id,
                              GReviewRating.DOWN_VOTE,
                              response.data!.Review!.userRating,
                              ref,
                            ),
                            icon: Icon(
                              Icons.thumb_down,
                              color: response.data!.Review!.userRating ==
                                      GReviewRating.DOWN_VOTE
                                  ? Colors.red[200]
                                  : theme.colorScheme.secondary,
                            ),
                            iconSize: 32,
                          ),
                        ],
                      ),
                      Center(
                        child: Text(
                          '${response.data!.Review!.rating} out of ${response.data!.Review!.ratingAmount} liked this review',
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void rateReview(
      int id, GReviewRating rating, GReviewRating? userRating, WidgetRef ref) {
    ref
        .read(ferryClientProvider)
        .request(
          GRateReviewReq(
            (b) => b
              ..vars.id = id
              ..vars.rating =
                  rating == userRating ? GReviewRating.NO_VOTE : rating,
          ),
        )
        .first;
  }
}
