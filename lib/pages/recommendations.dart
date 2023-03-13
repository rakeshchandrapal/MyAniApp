import 'package:MyAniApp/graphql/Recommendations.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/widgets/media_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

var sortingOptions = [
  Enum$RecommendationSort.RATING_DESC,
  Enum$RecommendationSort.RATING,
  Enum$RecommendationSort.ID_DESC
];

class Recommendations extends StatefulHookWidget {
  const Recommendations({super.key});

  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  Enum$RecommendationSort sort = Enum$RecommendationSort.RATING_DESC;
  bool onList = false;

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Recommendations(
      Options$Query$Recommendations(
        variables:
            Variables$Query$Recommendations(sort: [sort], onList: onList),
      ),
    );
    var nextPage = hook.result.parsedData?.Page?.pageInfo?.hasNextPage;
    FetchMoreOptions$Query$Recommendations opts =
        FetchMoreOptions$Query$Recommendations(
      variables: Variables$Query$Recommendations(
        page: (hook.result.parsedData?.Page?.pageInfo?.currentPage ?? 1) + 1,
      ),
      updateQuery: (previousResultData, fetchMoreResultData) {
        var list = [
          ...previousResultData!['Page']!['recommendations'],
          ...fetchMoreResultData!['Page']!['recommendations'],
        ];
        fetchMoreResultData['Page']!['recommendations'] = list;
        return fetchMoreResultData;
      },
    );

    FetchMoreOptions$Query$Recommendations refetch =
        FetchMoreOptions$Query$Recommendations(
      updateQuery: (previousResultData, fetchMoreResultData) =>
          fetchMoreResultData,
    );

    // print(hook.result.parsedData?.toJson());

    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          title: const Text('Recommendations'),
          centerTitle: true,
          floating: true,
          snap: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              // height: 50,
              children: [
                SizedBox(
                  height: 50,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: sortingOptions.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) {
                      var item = sortingOptions[index];
                      late String name;
                      if (item == Enum$RecommendationSort.RATING_DESC) {
                        name = 'Highest Rated';
                      } else if (item == Enum$RecommendationSort.RATING) {
                        name = 'Lowest Rated';
                      } else if (item == Enum$RecommendationSort.ID_DESC) {
                        name = 'Recent';
                      }

                      return FilterChip(
                        label: Text(name),
                        selected: sort == item,
                        onSelected: (value) => setState(() => sort = item),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: FilterChip(
                    label: const Text('On List'),
                    selected: onList,
                    onSelected: (value) => setState(() => onList = value),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
      body: NotificationListener<ScrollEndNotification>(
        onNotification: (notification) {
          if (notification.metrics.pixels >
                  notification.metrics.maxScrollExtent - 200 &&
              nextPage == true) {
            hook.fetchMore(opts);
          }
          return true;
        },
        child: RefreshIndicator(
          onRefresh: () async {
            await hook.fetchMore(refetch).catchError((err) {});
            return;
          },
          child: hook.result.isLoading && hook.result.data == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount:
                        hook.result.parsedData!.Page!.recommendations!.length,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) {
                      var r =
                          hook.result.parsedData!.Page!.recommendations![index];

                      return Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Card(
                            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // mainAxisSize: MainAxisSize.min,
                                // crossAxisAlignment: ,
                                children: [
                                  if (r!.media != null)
                                    SizedBox(
                                      height: 180,
                                      width: 110,
                                      child: MediaCard(
                                        media: r.media!,
                                        onTap: () => context
                                            .push('/media/${r.media!.id}'),
                                      ),
                                    ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  if (r.mediaRecommendation != null)
                                    SizedBox(
                                      height: 180,
                                      width: 110,
                                      child: MediaCard(
                                        media: r.mediaRecommendation!,
                                        onTap: () => context.push(
                                            '/media/${r.mediaRecommendation!.id}'),
                                      ),
                                    )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0.4, 0.4),
                                  color:
                                      const Color(0xFF000000).withOpacity(0.4),
                                )
                              ],
                              color: Theme.of(context)
                                  .colorScheme
                                  .surfaceVariant
                                  .withOpacity(0.5),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Rating(
                              key: ValueKey(r),
                              recommendation: r,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
        ),
      ),
    );
  }
}

class Rating extends StatefulWidget {
  final Query$Recommendations$Page$recommendations recommendation;
  const Rating({super.key, required this.recommendation});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  late Query$Recommendations$Page$recommendations recommendation;

  @override
  void initState() {
    super.initState();
    recommendation = widget.recommendation;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
      child: Mutation$SaveRecommendation$Widget(
        options: WidgetOptions$Mutation$SaveRecommendation(
          onCompleted: (p0, p1) => print(p0),
        ),
        builder: (runMutation, _) => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(
                Icons.thumb_up,
                size: 20,
                color: recommendation.userRating ==
                        Enum$RecommendationRating.RATE_UP
                    ? Colors.green
                    : null,
              ),
              onPressed: () {
                setState(() {
                  recommendation = recommendation.copyWith(
                    userRating: recommendation.userRating ==
                            Enum$RecommendationRating.RATE_UP
                        ? Enum$RecommendationRating.NO_RATING
                        : Enum$RecommendationRating.RATE_UP,
                    rating: recommendation.userRating ==
                            Enum$RecommendationRating.RATE_UP
                        ? (recommendation.rating ?? 0) - 1
                        : (recommendation.rating ?? 0) + 1,
                  );
                });
                runMutation(
                  variables: Variables$Mutation$SaveRecommendation(
                    mediaId: recommendation.media?.id,
                    mediaRecommendationId:
                        recommendation.mediaRecommendation?.id,
                    rating: recommendation.userRating ==
                            Enum$RecommendationRating.RATE_UP
                        ? Enum$RecommendationRating.RATE_UP
                        : Enum$RecommendationRating.NO_RATING,
                  ),
                );
              },
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              icon: Icon(
                Icons.thumb_down,
                size: 20,
                color: recommendation.userRating ==
                        Enum$RecommendationRating.RATE_DOWN
                    ? Colors.red
                    : null,
              ),
              // iconSize: 20,
              onPressed: () {
                setState(() {
                  recommendation = recommendation.copyWith(
                    userRating: recommendation.userRating ==
                            Enum$RecommendationRating.RATE_DOWN
                        ? Enum$RecommendationRating.NO_RATING
                        : Enum$RecommendationRating.RATE_DOWN,
                    rating: recommendation.userRating ==
                            Enum$RecommendationRating.RATE_DOWN
                        ? (recommendation.rating ?? 0) + 1
                        : (recommendation.rating ?? 0) - 1,
                  );
                });
                print(recommendation.userRating ==
                        Enum$RecommendationRating.RATE_DOWN
                    ? Enum$RecommendationRating.RATE_DOWN
                    : Enum$RecommendationRating.NO_RATING);
                runMutation(
                  variables: Variables$Mutation$SaveRecommendation(
                    mediaId: recommendation.media?.id,
                    mediaRecommendationId:
                        recommendation.mediaRecommendation?.id,
                    rating: recommendation.userRating ==
                            Enum$RecommendationRating.RATE_DOWN
                        ? Enum$RecommendationRating.RATE_DOWN
                        : Enum$RecommendationRating.NO_RATING,
                  ),
                );
              },
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
                '${recommendation.rating!.isNegative ? '' : recommendation.rating! > 0 ? '+' : ''}${recommendation.rating!.toString()}')
          ],
        ),
      ),
    );
  }
}
