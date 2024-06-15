import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/explore/__generated__/explore.req.gql.dart';
import 'package:myaniapp/app/home/%5Btab%5D/page.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart';
import 'package:myaniapp/graphql/widget.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with AutomaticKeepAliveClientMixin {
  late final (GMediaSeason season, int year) season;
  late final (GMediaSeason season, int year) nextSeason;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    var now = DateTime.now();
    season = getSeason(now);
    nextSeason = getNextSeason(season);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        leading: const HomeLeadingIcon(),
      ),
      body: GQLRequest(
        operationRequest: GExploreReq(
          (b) {
            b.vars
              ..season = season.$1
              ..seasonYear = season.$2;
            b.vars
              ..nextSeason = nextSeason.$1
              ..nextYear = nextSeason.$2;
          },
        ),
        builder: (context, response, error, refetch) {
          return RefreshIndicator.adaptive(
            onRefresh: refetch,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    autofocus: false,
                    canRequestFocus: false,
                    decoration: const InputDecoration(
                      hintText: "Search",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    onTap: () => context
                        .push("/search/media", extra: {"autofocus": true}),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
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
                _List(
                  medias: response!.data!.trending!.media!,
                  title: "Trending",
                  onTap: () => context
                      .push("/search/media?sort=${GMediaSort.TRENDING_DESC}"),
                ),
                _List(
                  medias: response.data!.season!.media!,
                  title: "Releasing This Season",
                  onTap: () => context.push(
                      "/search/media?season=${season.$1.name}&year=${season.$2}"),
                ),
                _List(
                  medias: response.data!.nextSeason!.media!,
                  title: "Releasing Next Season",
                  onTap: () => context.push(
                      "/search/media?season=${nextSeason.$1.name}&year=${nextSeason.$2}"),
                ),
                _List(
                  medias: response.data!.popular!.media!,
                  title: "All Time Popular",
                  onTap: () => context
                      .push("/search/media?sort=${GMediaSort.POPULARITY_DESC}"),
                ),
                _List(
                  medias: response.data!.recent!.media!,
                  title: "Recent",
                  onTap: () =>
                      context.push("/search/media?sort=${GMediaSort.ID_DESC}"),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  (GMediaSeason season, int year) getSeason(DateTime date) {
    var m = date.month;
    GMediaSeason season = m >= 1 && m <= 3
        ? GMediaSeason.WINTER
        : m >= 4 && m <= 6
            ? GMediaSeason.SPRING
            : m >= 7 && m <= 9
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
}

class _List extends StatelessWidget {
  const _List({
    required this.medias,
    required this.title,
    required this.onTap,
  });

  final BuiltList<GMediaFragment?> medias;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                title,
                style: context.theme.textTheme.titleLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              TextButton(
                onPressed: onTap,
                child: const Text("more"),
              )
            ],
          ),
        ),
        SizedBox(
          height: 190,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 5),
            scrollDirection: Axis.horizontal,
            primary: false,
            children: [
              for (var media in medias.take(10))
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GridCard(
                    blur: media!.isAdult ?? false,
                    image: media.coverImage!.extraLarge!,
                    title: media.title!.userPreferred!,
                    onTap: () => context.push("/media/${media.id}/overview",
                        extra: {"media": media}),
                    onLongPress: () => MediaSheet.show(context, media),
                    aspectRatio: GridCard.listRatio,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
