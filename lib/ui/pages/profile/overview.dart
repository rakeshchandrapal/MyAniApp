import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/profile/profile.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/cards/card_sheet.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/markdown/markdown.dart';

class Overview extends StatelessWidget {
  const Overview({
    super.key,
    required this.user,
  });

  final Query$User$User user;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      children: [
        if (user.about?.isNotEmpty == true)
          Container(
            decoration: BoxDecoration(
              color:
                  Theme.of(context).colorScheme.surfaceVariant.withAlpha(150),
              borderRadius: imageRadius,
            ),
            constraints: const BoxConstraints(maxHeight: 250),
            child: Markdown(data: user.about!),
          ),
        const SizedBox(
          height: 10,
        ),
        if (user.statistics?.anime != null)
          GestureDetector(
            onTap: () =>
                context.router.push(ProfileAnimeListRoute(userId: user.id)),
            child: Stats(stats: user.statistics!.anime),
          ),
        if (user.statistics?.anime != null && user.statistics?.manga != null)
          const SizedBox(height: 10),
        if (user.statistics?.manga != null)
          GestureDetector(
            onTap: () =>
                context.router.push(ProfileMangaListRoute(userId: user.id)),
            child: Stats(stats: user.statistics!.manga),
          ),
        const SizedBox(
          height: 10,
        ),
        Genres(stats: user.statistics!),
        const SizedBox(
          height: 10,
        ),
        if (user.favourites?.anime?.nodes?.isNotEmpty == true) ...[
          Favorites(
            favorites: user.favourites!,
            type: Enum$MediaType.ANIME,
            onViewAll: () =>
                context.router.push(FavoriteAnimeRoute(name: user.name)),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
        if (user.favourites?.manga?.nodes?.isNotEmpty == true)
          Favorites(
            favorites: user.favourites!,
            type: Enum$MediaType.MANGA,
            onViewAll: () =>
                context.router.push(FavoriteMangaRoute(name: user.name)),
          ),
      ],
    );
  }
}

class Favorites extends StatelessWidget {
  const Favorites(
      {super.key,
      required this.favorites,
      required this.type,
      required this.onViewAll});

  final Query$User$User$favourites favorites;
  final Enum$MediaType type;
  final VoidCallback onViewAll;

  @override
  Widget build(BuildContext context) {
    var list = type == Enum$MediaType.ANIME
        ? favorites.anime!.nodes!
        : favorites.manga!.nodes!;

    return Column(
      children: [
        Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                'Favorite ${type.name.capitalize()}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            TextButton(
              onPressed: onViewAll,
              child: Text(
                'View All',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(150),
            borderRadius: imageRadius,
          ),
          width: double.maxFinite,
          constraints: const BoxConstraints(maxHeight: 210),
          child: ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var item = list[index]!;

              return SizedBox(
                width: 110,
                height: 160,
                child: GridCard(
                  title: item.title!.userPreferred,
                  imageUrl: item.coverImage!.large!,
                  index: index,
                  onTap: (index) =>
                      context.router.push(MediaRoute(id: item.id)),
                  onLongPress: (index) => showCardSheet(context, item),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemCount: list.length,
          ),
        ),
      ],
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
                  Chip(
                    label: Column(
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
  const Stats({super.key, required this.stats})
      : assert(stats is Query$User$User$statistics$anime ||
            stats is Query$User$User$statistics$manga);

  final dynamic stats;

  @override
  Widget build(BuildContext context) {
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

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant.withAlpha(150),
        borderRadius: imageRadius,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        child: DefaultTextStyle(
          style: const TextStyle(),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 10,
            spacing: 10,
            children: [
              Column(
                children: [
                  Text(left),
                  Text(
                    'Total ${isAnime ? 'Anime' : 'Manga'}',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(middle),
                  Text(
                    isAnime ? 'Days watched' : 'Chapters Read',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(right),
                  Text(
                    'Mean Score',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
