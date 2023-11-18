import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/user/user.graphql.dart';
import 'package:myaniapp/providers/userProfile.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/cards/sheet_card.dart';
import 'package:myaniapp/ui/routes/media/overview.dart';
import 'package:myaniapp/ui/routes/routes.gr.dart';

@RoutePage()
class UserOverviewPage extends ConsumerWidget {
  const UserOverviewPage(
      {super.key, @PathParam.inherit('name') required this.name});

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProfileProvider(name));

    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        if (user.value!.about?.isNotEmpty == true) ...[
          Description(
            user.value!.about,
            height: 250,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
        if (user.value!.statistics?.anime != null) ...[
          Stats(
            stats: user.value!.statistics!.anime,
            onTap: () =>
                context.router.push(UserAnimeListRoute(name: user.value!.name)),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
        if (user.value!.statistics?.manga != null) ...[
          Stats(
            stats: user.value!.statistics!.manga,
            onTap: () =>
                context.router.push(UserMangaListRoute(name: user.value!.name)),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
        if (user.value!.statistics!.anime?.genres?.isNotEmpty == true ||
            user.value!.statistics!.manga?.genres?.isNotEmpty == true) ...[
          Genres(stats: user.value!.statistics!),
          const SizedBox(
            height: 10,
          ),
        ],
        if (user.value!.favourites?.anime?.nodes?.isNotEmpty == true)
          Column(
            children: [
              Text(
                'Favorite Anime',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              FavoriteList(list: user.value!.favourites!.anime!.nodes!.cast()),
            ],
          ),
        if (user.value!.favourites?.manga?.nodes?.isNotEmpty == true)
          Column(
            children: [
              Text(
                'Favorite Manga',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              FavoriteList(list: user.value!.favourites!.manga!.nodes!.cast()),
            ],
          ),
      ],
    );
  }
}

class FavoriteList extends StatelessWidget {
  const FavoriteList({
    super.key,
    required this.list,
  });

  final List<Fragment$MediaFragment> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) {
          var media = list[index];

          return GridCard(
            imageUrl: media.coverImage!.extraLarge!,
            title: media.title!.userPreferred,
            aspectRatio: 1.9 / 3,
            onTap: () => context.pushRoute(
              MediaRoute(id: media.id),
            ),
            onLongPress: () => showMediaCard(context, media),
          );
        },
        itemCount: list.length,
      ),
    );
  }
}

class Genres extends StatelessWidget {
  const Genres({super.key, required this.stats});

  final Query$User$User$statistics stats;

  List<Fragment$GenreStat> genres() {
    List<Fragment$GenreStat> genres = [];

    if (stats.anime?.genres?.isNotEmpty == true) {
      genres.addAll(stats.anime!.genres!.whereType<Fragment$GenreStat>());
    }
    if (stats.manga?.genres?.isNotEmpty == true) {
      if (genres.isNotEmpty) {
        for (var genre in stats.manga!.genres!) {
          if (genres.any((element) => element.genre == genre!.genre)) {
            var idx =
                genres.indexWhere((element) => element.genre == genre!.genre);

            genres[idx] =
                genres[idx].copyWith(count: genres[idx].count + genre!.count);
          } else {
            genres.add(genre!);
          }
        }
      } else {
        genres.addAll(stats.manga!.genres!.whereType<Fragment$GenreStat>());
      }
    }

    genres.sort(
      (a, b) => b.count.compareTo(a.count),
    );

    return genres.take(4).toList();
  }

  @override
  Widget build(BuildContext context) {
    var genres = this.genres();
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Genre Overview',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(150),
            borderRadius: imageRadius,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 10,
              spacing: 10,
              children: [
                for (var genre in genres)
                  ActionChip(
                    onPressed: () =>
                        context.pushRoute(SearchRoute(genre: genre.genre)),
                    // padding: EdgeInsets.zero,
                    label: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(genre.genre!),
                        Text(genre.count.toString()),
                      ],
                    ),
                    backgroundColor: Theme.of(context).hoverColor,
                    side: BorderSide.none,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Stats extends StatelessWidget {
  const Stats({
    super.key,
    required this.stats,
    required this.onTap,
  }) : assert(stats is Query$User$User$statistics$anime ||
            stats is Query$User$User$statistics$manga);

  final dynamic stats;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    String left;
    String middle;
    String right;
    var isAnime = stats is Query$User$User$statistics$anime;

    if (isAnime) {
      var s = stats as Query$User$User$statistics$anime;
      left = s.count.toString();
      middle = (s.minutesWatched / 1440).toStringAsFixed(1);
      right = s.meanScore.toStringAsFixed(1);
    } else {
      var s = stats as Query$User$User$statistics$manga;
      left = s.count.toString();
      middle = s.chaptersRead.toString();
      right = s.meanScore.toStringAsFixed(1);
    }

    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(150),
          borderRadius: imageRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          child: DefaultTextStyle(
            style: const TextStyle(),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            child: Column(
              children: [
                Text(
                  '(click to view list)',
                  style: theme.textTheme.labelSmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  // direction: Axis.vertical,
                  runSpacing: 10,
                  spacing: 40,
                  children: [
                    Column(
                      children: [
                        Text(left),
                        Text(
                          'Total ${isAnime ? 'Anime' : 'Manga'}',
                          style: theme.textTheme.labelSmall,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(middle),
                        Text(
                          isAnime ? 'Days watched' : 'Chapters Read',
                          style: theme.textTheme.labelSmall,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(right),
                        Text(
                          'Mean Score',
                          style: theme.textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
