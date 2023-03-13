import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/providers/user.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/media_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql/client.dart';
import 'package:provider/provider.dart';

class Discovery extends HookWidget {
  const Discovery({super.key});

  @override
  Widget build(BuildContext context) {
    var user = context.watch<User>();
    var date = formatDate();

    var hook = useQuery$Discovery(
      Options$Query$Discovery(
        variables: Variables$Query$Discovery(
          year: date.year,
          nextYear: date.nextYear,
          nextSeason: date.nextSeason,
          type: Enum$MediaType.ANIME,
          season: date.season,
        ),
      ),
    );

    var genre = useQuery$GenreCollection(
      Options$Query$GenreCollection(
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );

    if (hook.result.isLoading) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    // print(date);

    // print(hook.result.exception);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: TextField(
                  onTap: () =>
                      context.push('/search', extra: {'autofocus': true}),
                  // enabled: false,
                  focusNode: FocusNode(
                    canRequestFocus: false,
                    descendantsAreFocusable: false,
                    descendantsAreTraversable: false,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Search',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: FilterChip(
                  label: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.thumb_up),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Recommendations'),
                    ],
                  ),
                  onSelected: (value) => context.push('/recommendations'),
                ),
              ),
              _list(
                context,
                title: 'Trending',
                isLoading: hook.result.isLoading,
                list: hook.result.parsedData?.trending?.media,
                onViewMore: () => context.push(
                  '/search',
                  extra: {
                    'sort': [Enum$MediaSort.TRENDING_DESC],
                    'type': Enum$MediaType.ANIME,
                  },
                ),
              ),
              _list(
                context,
                title: 'Popular This Season',
                isLoading: hook.result.isLoading,
                list: hook.result.parsedData?.thisSeason?.media,
                onViewMore: () => context.push(
                  '/search',
                  extra: {
                    'sort': [Enum$MediaSort.POPULARITY_DESC],
                    'year': date.year,
                    'season': date.season,
                    'type': Enum$MediaType.ANIME,
                  },
                ),
              ),
              _list(
                context,
                title: 'Popular Next Season',
                isLoading: hook.result.isLoading,
                list: hook.result.parsedData?.seasonNext?.media,
                onViewMore: () => context.push(
                  '/search',
                  extra: {
                    'sort': [Enum$MediaSort.POPULARITY_DESC],
                    'year': date.nextYear,
                    'season': date.nextSeason,
                    'type': Enum$MediaType.ANIME,
                  },
                ),
              ),
              _list(
                context,
                title: 'All time Popular',
                isLoading: hook.result.isLoading,
                list: hook.result.parsedData?.popular?.media,
                onViewMore: () => context.push(
                  '/search',
                  extra: {
                    'sort': [Enum$MediaSort.POPULARITY_DESC],
                    'type': Enum$MediaType.ANIME,
                  },
                ),
              ),
              Text(
                'Search By Genre',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              if (genre.result.parsedData != null)
                Wrap(
                  children: [
                    for (var genre in genre.result.parsedData!.genres!)
                      if (user.user?.options?.displayAdultContent == false &&
                          genre == 'Hentai')
                        const SizedBox()
                      else
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: TextButton(
                            onPressed: () => context.push('/search', extra: {
                              'genres': [genre],
                              'isAdult': genre == 'Hentai' ? true : null
                            }),
                            child: Text(genre!),
                          ),
                        )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _list(
    BuildContext context, {
    required String title,
    required bool isLoading,
    List<Fragment$BasicMedia?>? list,
    onViewMore,
  }) {
    if (list == null && !isLoading || list != null && list.isEmpty) {
      return const SizedBox();
    }
    // print(Theme.of(context).textTheme.labelSmall?.fontSize);
    // if (list.isEmpty && isLoading) list.addAll([[], [], [], [], [], [], []]);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            if (onViewMore != null)
              TextButton(
                onPressed: onViewMore,
                child: const Text('View more'),
              )
          ],
        ),
        // if (!isLoading && list != null)
        SizedBox(
          height: 170,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              if (isLoading && list == null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    CircularProgressIndicator(),
                    Text('Loading...'),
                  ],
                ),
              if (list != null)
                for (var i in list)
                  Container(
                    width: 110,
                    padding: const EdgeInsets.only(left: 4, right: 4),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            MediaCard(
                              height: 150,
                              media: i!,
                              onTap: () => context.push('/media/${i.id}'),
                            ),
                            if (i is Query$Home$releasing$media)
                              Builder(builder: (context) {
                                var next = i.nextAiringEpisode;
                                var passed = i.airingSchedule?.edges
                                    ?.firstWhere((a) =>
                                        a?.node?.episode ==
                                        i.nextAiringEpisode!.episode - 1)
                                    ?.node;
                                dynamic use;
                                if (isTodayFromTimestamp(passed?.airingAt)) {
                                  use = passed;
                                } else {
                                  use = next;
                                }
                                return Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 2, 4, 2),
                                  margin: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceVariant
                                        .withOpacity(0.9),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "Episode ${use?.episode.toString()} ${fromTimestamp(use.airingAt)}",
                                    style: const TextStyle(
                                      fontSize: 9,
                                    ),
                                  ),
                                );
                              })
                          ],
                        ),
                      ],
                    ),
                  )
            ],
          ),
        ),
      ],
    );
  }
}
