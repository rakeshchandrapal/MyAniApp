import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/recommendations/recommendations.graphql.dart';
import 'package:myaniapp/ui/common/banner_ad.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/cards/sheet_card.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/utils/require_login.dart';

class RecommendationsPage extends ConsumerStatefulWidget {
  const RecommendationsPage({super.key});

  @override
  ConsumerState<RecommendationsPage> createState() =>
      _RecommendationsPageState();
}

class _RecommendationsPageState extends ConsumerState<RecommendationsPage> {
  bool onList = false;
  Enum$RecommendationSort sort = Enum$RecommendationSort.ID_DESC;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
              child: Row(
                // padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                // shrinkWrap: true,
                // scrollDirection: Axis.horizontal,
                children: [
                  SegmentedButton<bool>(
                    segments: const [
                      ButtonSegment(
                        value: false,
                        label: Text('All'),
                      ),
                      ButtonSegment(
                        value: true,
                        label: Text('My List'),
                      )
                    ],
                    selected: {onList},
                    onSelectionChanged: (p0) =>
                        setState(() => onList = p0.first),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SegmentedButton<Enum$RecommendationSort>(
                    segments: const [
                      ButtonSegment(
                        value: Enum$RecommendationSort.ID_DESC,
                        label: Text('Recent'),
                      ),
                      ButtonSegment(
                        value: Enum$RecommendationSort.RATING_DESC,
                        label: Text('Highest Rated'),
                      ),
                      ButtonSegment(
                        value: Enum$RecommendationSort.RATING,
                        label: Text('Lowest Rated'),
                      )
                    ],
                    selected: {sort},
                    onSelectionChanged: (p0) => setState(() => sort = p0.first),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BannerAdSafeArea(
            child: Query$Recommendations$Widget(
              options: Options$Query$Recommendations(
                variables: Variables$Query$Recommendations(
                  sort: [sort],
                  onList: onList,
                ),
              ),
              builder: (result, {fetchMore, refetch}) {
                if (result.isLoading && result.parsedData == null) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (result.hasException) {
                  return GraphqlError(exception: result.exception!);
                }

                return Pagination(
                  fetchMore: fetchMore!,
                  opts: FetchMoreOptions$Query$Recommendations(
                    updateQuery: (previousResultData, fetchMoreResultData) {
                      var list = [
                        ...previousResultData!['Page']!['recommendations'],
                        ...fetchMoreResultData!['Page']!['recommendations'],
                      ];
                      fetchMoreResultData['Page']!['recommendations'] = list;
                      return fetchMoreResultData;
                    },
                    variables: Variables$Query$Recommendations(
                      page: (result.parsedData?.Page?.pageInfo?.currentPage ??
                              1) +
                          1,
                    ),
                  ),
                  pageInfo: result.parsedData!.Page!.pageInfo!,
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) {
                      var recommendation =
                          result.parsedData!.Page!.recommendations![index]!;

                      return Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 110,
                                    child: GridCard(
                                      aspectRatio: 1.9 / 3,
                                      imageUrl: recommendation
                                          .media!.coverImage!.extraLarge!,
                                      title: recommendation
                                          .media!.title!.userPreferred,
                                      onTap: () => context.push(
                                          '/media/${recommendation.media!.id}'),
                                      onLongPress: () => showMediaCard(
                                        context,
                                        recommendation.media!,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 110,
                                    child: GridCard(
                                      aspectRatio: 1.9 / 3,
                                      imageUrl: recommendation
                                          .mediaRecommendation!
                                          .coverImage!
                                          .extraLarge!,
                                      title: recommendation.mediaRecommendation!
                                          .title!.userPreferred,
                                      onTap: () => context.push(
                                          '/media/${recommendation.mediaRecommendation!.id}'),
                                      onLongPress: () => showMediaCard(
                                        context,
                                        recommendation.mediaRecommendation!,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 55,
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .surfaceVariant
                                  .withOpacity(0.7),
                              borderRadius: imageRadius,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.thumb_up,
                                    ),
                                    color: recommendation.userRating ==
                                            Enum$RecommendationRating.RATE_UP
                                        ? Colors.green
                                        : null,
                                    onPressed: requireLogin(
                                      ref,
                                      'rate a recommendation',
                                      () => client.value
                                          .mutate$SaveRecommendation(
                                        Options$Mutation$SaveRecommendation(
                                          variables:
                                              Variables$Mutation$SaveRecommendation(
                                            mediaId: recommendation.media!.id,
                                            mediaRecommendationId:
                                                recommendation
                                                    .mediaRecommendation!.id,
                                            rating: recommendation.userRating ==
                                                    Enum$RecommendationRating
                                                        .RATE_UP
                                                ? Enum$RecommendationRating
                                                    .NO_RATING
                                                : Enum$RecommendationRating
                                                    .RATE_UP,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.thumb_down),
                                    color: recommendation.userRating ==
                                            Enum$RecommendationRating.RATE_DOWN
                                        ? Colors.red
                                        : null,
                                    onPressed: requireLogin(
                                      ref,
                                      'rate a recommendation',
                                      () => client.value
                                          .mutate$SaveRecommendation(
                                        Options$Mutation$SaveRecommendation(
                                          variables:
                                              Variables$Mutation$SaveRecommendation(
                                            mediaId: recommendation.media!.id,
                                            mediaRecommendationId:
                                                recommendation
                                                    .mediaRecommendation!.id,
                                            rating: recommendation.userRating ==
                                                    Enum$RecommendationRating
                                                        .RATE_DOWN
                                                ? Enum$RecommendationRating
                                                    .NO_RATING
                                                : Enum$RecommendationRating
                                                    .RATE_DOWN,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                      '${recommendation.rating?.isNegative == true ? '' : '+'}${recommendation.rating}'),
                                ],
                              ),
                            ),
                          )
                        ],
                      );
                    },
                    itemCount: result.parsedData!.Page!.recommendations!.length,
                  ),
                );
              },
            ),
          ),
          const BannerAdWidget(),
        ],
      ),
    );
  }
}
