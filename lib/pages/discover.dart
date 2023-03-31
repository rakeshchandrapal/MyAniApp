import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/providers/user.dart';
import 'package:MyAniApp/routes.gr.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/media_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class DiscoveryPage extends HookConsumerWidget {
  const DiscoveryPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var user = ref.watch(userProvider);
    var date = formatDate();

    var hook = useQuery$Discovery(
      Options$Query$Discovery(
        variables: Variables$Query$Discovery(
          year: date.year,
          season: date.season,
          nextYear: date.nextYear,
          nextSeason: date.nextSeason,
          mediaType: Enum$MediaType.ANIME,
        ),
      ),
    );

    var genre = useQuery$GenreCollection(
      Options$Query$GenreCollection(
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );
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
                  onTap: () => context.router.push(
                    SearchRoute(autofoucus: true),
                  ),
                  // context.push('/search', extra: {'autofocus': true}),
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
                  onSelected: (value) =>
                      context.router.push(const RecommendationsRoute()),
                ),
              ),
              _list(
                context,
                title: 'Trending',
                isLoading: hook.result.isLoading,
                list: hook.result.parsedData?.trending?.media,
                onViewMore: () => context.router.push(
                  SearchRoute(
                    sort: const [Enum$MediaSort.TRENDING_DESC],
                    type: Enum$MediaType.ANIME,
                  ),
                ),
              ),
              _list(
                context,
                title: 'Popular This Season',
                isLoading: hook.result.isLoading,
                list: hook.result.parsedData?.thisSeason?.media,
                onViewMore: () => context.router.push(
                  SearchRoute(
                    sort: const [Enum$MediaSort.POPULARITY_DESC],
                    type: Enum$MediaType.ANIME,
                    year: date.year,
                    season: date.season,
                  ),
                ),
              ),
              _list(
                context,
                title: 'Popular Next Season',
                isLoading: hook.result.isLoading,
                list: hook.result.parsedData?.seasonNext?.media,
                onViewMore: () => context.router.push(
                  SearchRoute(
                    sort: const [Enum$MediaSort.POPULARITY_DESC],
                    type: Enum$MediaType.ANIME,
                    year: date.nextYear,
                    season: date.nextSeason,
                  ),
                ),
              ),
              _list(
                context,
                title: 'All time Popular',
                isLoading: hook.result.isLoading,
                list: hook.result.parsedData?.popular?.media,
                onViewMore: () => context.router.push(
                  SearchRoute(
                    sort: const [Enum$MediaSort.POPULARITY_DESC],
                    type: Enum$MediaType.ANIME,
                  ),
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
                      if (user.value?.options?.displayAdultContent == false &&
                          genre == 'Hentai')
                        const SizedBox()
                      else
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: TextButton(
                            onPressed: () => context.router.push(
                              SearchRoute(
                                genres: [genre],
                                isAdult: genre == 'Hentai' ? true : null,
                              ),
                            ),
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
                              onTap: () =>
                                  context.router.pushNamed('/media/${i.id}'),
                            ),
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
