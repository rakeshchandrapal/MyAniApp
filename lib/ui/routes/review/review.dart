import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/review/review.graphql.dart';
import 'package:myaniapp/ui/common/banner_ad.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';
import 'package:myaniapp/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;

@RoutePage()
class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key, @PathParam('id') required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Query$Review$Widget(
      options: Options$Query$Review(
        variables: Variables$Query$Review(id: id),
        // dunno why this is needed
        cacheRereadPolicy: CacheRereadPolicy.ignoreOptimisitic,
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
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              BannerAdSafeArea(
                child: NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    SliverAppBar(
                      expandedHeight: 150,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Stack(
                          children: [
                            ShaderMask(
                              shaderCallback: (bounds) => LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  theme.colorScheme.surface,
                                ],
                                stops: const [0, 1],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ).createShader(bounds),
                              blendMode: BlendMode.srcOver,
                              child: result.parsedData!.Review!.media!
                                          .bannerImage !=
                                      null
                                  ? CImage(
                                      imageUrl: result.parsedData!.Review!
                                          .media!.bannerImage!,
                                      width: MediaQuery.of(context).size.width,
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
                                        dateFromTimestamp(result
                                            .parsedData!.Review!.createdAt),
                                      ),
                                      style: theme.textTheme.labelSmall,
                                    ),
                                    Text(
                                      result.parsedData!.Review!.media!.title!
                                          .userPreferred!,
                                      style: theme.textTheme.labelLarge,
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
                  ],
                  body: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
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
                              onPressed: () {},
                              icon: Icon(
                                Icons.thumb_up,
                                color: theme.colorScheme.secondary,
                              ),
                              iconSize: 32,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.thumb_down,
                                color: theme.colorScheme.secondary,
                              ),
                              iconSize: 32,
                            ),
                          ],
                        ),
                        Center(
                          child: Text(
                              '${result.parsedData!.Review!.rating} out of ${result.parsedData!.Review!.ratingAmount} liked this review'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const BannerAdWidget(),
            ],
          ),
        );
      },
    );
  }
}
