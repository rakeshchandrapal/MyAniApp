import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/cards/sheet_card.dart';
import 'package:myaniapp/ui/routes/explore/__generated__/explore.req.gql.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  late final (GMediaSeason season, int year) season;
  late final (GMediaSeason season, int year) nextSeason;

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
      body: GQLRequest(
        operationRequest: GExploreReq(
          (b) {
            b.vars
              ..season = season.$1
              ..seasonYear = season.$2;
            b.vars
              ..nextSeason = nextSeason.$1
              ..nextYear = nextSeason.$2;
            return b;
          },
        ),
        builder: (context, response, error, refetch) =>
            RefreshIndicator.adaptive(
          onRefresh: refetch,
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
                          '/search?sort=${GMediaSort.TRENDING_DESC.name}'),
                      child: const Text('View More'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 180,
                child: _List(
                  medias: response!.data!.trending!.media!,
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
                  medias: response.data!.season!.media!,
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
                  medias: response.data!.nextSeason!.media!,
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
                          '/search?sort=${GMediaSort.POPULARITY_DESC.name}'),
                      child: const Text('View More'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 180,
                child: _List(
                  medias: response.data!.popular!.media!,
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
                      onPressed: () => context
                          .push('/search?sort=${GMediaSort.ID_DESC.name}'),
                      child: const Text('View More'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 180,
                child: _List(
                  medias: response.data!.recent!.media!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _List extends StatelessWidget {
  const _List({required this.medias});

  final BuiltList<GMediaFragment?> medias;

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
            imageUrl: media!.coverImage!.extraLarge!,
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

(GMediaSeason season, int year) getSeason(DateTime date) {
  var m = date.month;
  GMediaSeason season = m >= 0 && m <= 2
      ? GMediaSeason.WINTER
      : m >= 3 && m <= 5
          ? GMediaSeason.SPRING
          : m >= 6 && m <= 8
              ? GMediaSeason.SUMMER
              : GMediaSeason.FALL;

  return (season, date.year);
}

(GMediaSeason, int) getNextSeason((GMediaSeason, int) season) {
  int year = DateTime(season.$2, DateTime.now().month + 3).year;

  return switch (season.$1) {
    GMediaSeason.FALL => (GMediaSeason.WINTER, year),
    GMediaSeason.WINTER => (GMediaSeason.SPRING, year),
    GMediaSeason.SPRING => (GMediaSeason.SUMMER, year),
    GMediaSeason.SUMMER => (GMediaSeason.FALL, year),
    _ => (GMediaSeason.SUMMER, year),
  };
}
