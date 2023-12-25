import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/explore/explore.graphql.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/cards/sheet_card.dart';
import 'package:myaniapp/utils/graphql.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  late final (Enum$MediaSeason season, int year) season;
  late final (Enum$MediaSeason season, int year) nextSeason;

  @override
  void initState() {
    super.initState();
    var now = DateTime.now();
    season = getSeason(now);
    nextSeason = getNextSeason(season);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    // print([season, nextSeason]);

    return Scaffold(
      body: Query$Browsing$Widget(
        options: Options$Query$Browsing(
          variables: Variables$Query$Browsing(
            season: season.$1,
            seasonYear: season.$2,
            nextSeason: nextSeason.$1,
            nextYear: nextSeason.$2,
          ),
        ),
        builder: queryBuilder((result, [_, refetch]) {
          return RefreshIndicator.adaptive(
            onRefresh: refetch!,
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () => context.push('/search', extra: true),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: theme.hintColor,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Row(
                          children: [
                            Text(
                              'Search...',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: theme.hintColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SegmentedButton(
                            segments: const [
                              ButtonSegment(
                                value: 0,
                                icon: Icon(
                                  Icons.thumb_up,
                                  size: 17,
                                ),
                                label: Text('Recommendations'),
                              ),
                              ButtonSegment(
                                value: 1,
                                icon: Icon(Icons.calendar_today),
                                label: Text('Releases'),
                              ),
                            ],
                            selected: const {9},
                            onSelectionChanged: (v) {
                              if (v.firstOrNull == 0) {
                                context.push('/recommendations');
                              }
                              if (v.firstOrNull == 1) {
                                context.push('/calendar');
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending',
                        style: theme.textTheme.titleMedium,
                      ),
                      TextButton(
                        onPressed: () => context.push(
                            '/search?sort=${Enum$MediaSort.TRENDING_DESC.name}'),
                        child: const Text('View More'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: _List(
                    medias: result.parsedData!.trending!.media!.cast(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Releasing This Season',
                        style: theme.textTheme.titleMedium,
                      ),
                      TextButton(
                        onPressed: () => context.push(
                            '/search?season=${season.$1.name}&year=${season.$2}'),
                        child: const Text('View More'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: _List(
                    medias: result.parsedData!.season!.media!.cast(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Releasing Next Season',
                        style: theme.textTheme.titleMedium,
                      ),
                      TextButton(
                        onPressed: () => context.push(
                            '/search?season=${nextSeason.$1.name}&year=${nextSeason.$2}'),
                        child: const Text('View More'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: _List(
                    medias: result.parsedData!.nextSeason!.media!.cast(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All Time Popular',
                        style: theme.textTheme.titleMedium,
                      ),
                      TextButton(
                        onPressed: () => context.push(
                            '/search?sort=${Enum$MediaSort.POPULARITY_DESC.name}'),
                        child: const Text('View More'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: _List(
                    medias: result.parsedData!.popular!.media!.cast(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recently Added',
                        style: theme.textTheme.titleMedium,
                      ),
                      TextButton(
                        onPressed: () => context.push(
                            '/search?sort=${Enum$MediaSort.ID_DESC.name}'),
                        child: const Text('View More'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: _List(
                    medias: result.parsedData!.recent!.media!.cast(),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class _List extends StatelessWidget {
  const _List({required this.medias});

  final List<Fragment$MediaFragment> medias;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(right: 10),
      scrollDirection: Axis.horizontal,
      // shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        var media = medias[index];

        return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GridCard(
            imageUrl: media.coverImage!.extraLarge!,
            title: media.title!.userPreferred,
            aspectRatio: 1.9 / 3,
            onTap: () => context.push('/media/${media.id}'),
            onLongPress: () => showMediaCard(context, media),
          ),
        );
      },
    );
  }
}

(Enum$MediaSeason season, int year) getSeason(DateTime date) {
  var m = date.month;
  Enum$MediaSeason season = m >= 0 && m <= 2
      ? Enum$MediaSeason.WINTER
      : m >= 3 && m <= 5
          ? Enum$MediaSeason.SPRING
          : m >= 6 && m <= 8
              ? Enum$MediaSeason.SUMMER
              : Enum$MediaSeason.FALL;

  return (season, date.year);
}

(Enum$MediaSeason, int) getNextSeason((Enum$MediaSeason, int) season) {
  int year = DateTime(season.$2, DateTime.now().month + 3).year;

  return switch (season.$1) {
    Enum$MediaSeason.FALL => (Enum$MediaSeason.WINTER, year),
    Enum$MediaSeason.WINTER => (Enum$MediaSeason.SPRING, year),
    Enum$MediaSeason.SPRING => (Enum$MediaSeason.SUMMER, year),
    Enum$MediaSeason.SUMMER => (Enum$MediaSeason.FALL, year),
    _ => (Enum$MediaSeason.SUMMER, year),
  };
}
