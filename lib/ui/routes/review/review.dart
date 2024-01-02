import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/review/review.graphql.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/ui/common/widget_gradient.dart';
import 'package:myaniapp/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Query$Review$Widget(
      options: Options$Query$Review(
        variables: Variables$Query$Review(id: id),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        } else if (result.hasException) {
          return Scaffold(
            appBar: AppBar(),
            body: GraphqlError(exception: result.exception!),
          );
        }

        return Scaffold(
          body: RefreshIndicator.adaptive(
            onRefresh: refetch!,
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
                              result.parsedData!.Review!.media!.bannerImage !=
                                      null
                                  ? CImage(
                                      imageUrl: result.parsedData!.Review!
                                          .media!.bannerImage!,
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
                                  timeago.format(
                                    dateFromTimestamp(
                                        result.parsedData!.Review!.createdAt),
                                  ),
                                  style: theme.textTheme.labelSmall,
                                ),
                                GestureDetector(
                                  onTap: () => context.push(
                                      '/media/${result.parsedData!.Review!.media!.id}'),
                                  child: Text(
                                    result.parsedData!.Review!.media!.title!
                                        .userPreferred!,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                Text(
                                  'a review by ${result.parsedData!.Review!.user!.name}',
                                  style: theme.textTheme.labelMedium,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(8.0),
                  sliver: SliverList.list(
                    children: [
                      Markdown(
                        data: result.parsedData!.Review!.body!,
                      ),
                      Center(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: result.parsedData!.Review!.score!
                                    .toString(),
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
                              Enum$ReviewRating.UP_VOTE,
                              result.parsedData!.Review!.userRating,
                            ),
                            icon: Icon(
                              Icons.thumb_up,
                              color: result.parsedData!.Review!.userRating ==
                                      Enum$ReviewRating.UP_VOTE
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
                              Enum$ReviewRating.DOWN_VOTE,
                              result.parsedData!.Review!.userRating,
                            ),
                            icon: Icon(
                              Icons.thumb_down,
                              color: result.parsedData!.Review!.userRating ==
                                      Enum$ReviewRating.DOWN_VOTE
                                  ? Colors.red[200]
                                  : theme.colorScheme.secondary,
                            ),
                            iconSize: 32,
                          ),
                        ],
                      ),
                      Center(
                        child: Text(
                          '${result.parsedData!.Review!.rating} out of ${result.parsedData!.Review!.ratingAmount} liked this review',
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
      int id, Enum$ReviewRating rating, Enum$ReviewRating? userRating) {
    client.value.mutate$RateReview(
      Options$Mutation$RateReview(
        variables: Variables$Mutation$RateReview(
            id: id,
            rating: rating == userRating ? Enum$ReviewRating.NO_VOTE : rating),
      ),
    );
  }
}
