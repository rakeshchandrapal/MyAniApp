import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/user/favorites.screen.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/user.graphql.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/routes.dart';

class UserInfoTab extends StatelessWidget {
  const UserInfoTab({super.key, required this.user});

  final Query$User$User user;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        if (user.about != null)
          Container(
            constraints: const BoxConstraints(maxHeight: 150),
            margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            decoration: BoxDecoration(
              border: Border.all(
                  color: context.theme.colorScheme.surfaceContainerHighest),
              borderRadius: imageRadius,
            ),
            child: MarkdownWidget(
              data: user.about!,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              shrinkWrap: true,
              selectable: true,
            ),
          ),
        if (user.statistics?.anime != null)
          _StatsBox(
            left: user.statistics!.anime!.count.toString(),
            middle: (user.statistics!.anime!.minutesWatched / 1440)
                .toStringAsFixed(1),
            right: user.statistics!.anime!.meanScore.toStringAsFixed(1),
            type: Enum$MediaType.ANIME,
            onTap: () => context.push(Routes.userAnime(user.name)),
          ),
        if (user.statistics?.anime != null)
          _StatsBox(
            left: user.statistics!.manga!.count.toString(),
            middle: user.statistics!.manga!.chaptersRead.toString(),
            right: user.statistics!.manga!.meanScore.toStringAsFixed(1),
            type: Enum$MediaType.MANGA,
            onTap: () => context.push(Routes.userManga(user.name)),
          ),
        _GenreOverview(
          animeStats: user.statistics?.anime,
          mangaStats: user.statistics?.manga,
        ),
        if (user.favourites?.anime?.nodes?.isNotEmpty == true)
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Favorite Anime",
                      style: context.theme.textTheme.titleMedium,
                    ),
                    ElevatedButton(
                      onPressed: () => context.push(
                          Routes.userFavorites(user.name, FavoriteTabs.anime)),
                      child: const Text("All"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(0),
                  children: [
                    for (var media in user.favourites!.anime!.nodes!)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: GridCard(
                          blur: media!.isAdult ?? false,
                          image: media.coverImage!.extraLarge!,
                          title: media.title!.userPreferred!,
                          onTap: () => context.push(Routes.media(media.id),
                              extra: {"placeholder": media}),
                          onLongPress: () => MediaSheet.show(context, media),
                          aspectRatio: GridCard.listRatio,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        if (user.favourites?.manga?.nodes?.isNotEmpty == true)
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Favorite Manga",
                      style: context.theme.textTheme.titleMedium,
                    ),
                    ElevatedButton(
                      onPressed: () => context.push(
                          Routes.userFavorites(user.name, FavoriteTabs.manga)),
                      child: const Text("All"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(0),
                  children: [
                    for (var media in user.favourites!.manga!.nodes!)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: GridCard(
                          blur: media!.isAdult ?? false,
                          image: media.coverImage!.extraLarge!,
                          title: media.title!.userPreferred!,
                          onTap: () => context.push(Routes.media(media.id),
                              extra: {"placeholder": media}),
                          onLongPress: () => MediaSheet.show(context, media),
                          aspectRatio: GridCard.listRatio,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        if (user.favourites?.characters?.nodes?.isNotEmpty == true)
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Favorite Characters",
                      style: context.theme.textTheme.titleMedium,
                    ),
                    ElevatedButton(
                      onPressed: () => context.push(Routes.userFavorites(
                          user.name, FavoriteTabs.characters)),
                      child: const Text("All"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(0),
                  children: [
                    for (var character in user.favourites!.characters!.nodes!)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: GridCard(
                          image: character!.image!.large!,
                          title: character.name!.userPreferred!,
                          onTap: () => context.push(
                              Routes.character(character.id),
                              extra: {"placeholder": character}),
                          aspectRatio: GridCard.listRatio,
                        ),
                      ),
                  ],
                ),
              ),
              if (user.favourites?.staff?.nodes?.isNotEmpty == true)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Favorite Staff",
                            style: context.theme.textTheme.titleMedium,
                          ),
                          ElevatedButton(
                            onPressed: () => context.push(Routes.userFavorites(
                                user.name, FavoriteTabs.staff)),
                            child: const Text("All"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(0),
                        children: [
                          for (var staff in user.favourites!.staff!.nodes!)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: GridCard(
                                image: staff!.image!.large!,
                                title: staff.name!.userPreferred!,
                                onTap: () => context.push(
                                    Routes.staff(staff.id),
                                    extra: {"placeholder": staff}),
                                aspectRatio: GridCard.listRatio,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              if (user.favourites?.studios?.nodes?.isNotEmpty == true)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Favorite Studios",
                            style: context.theme.textTheme.titleMedium,
                          ),
                          ElevatedButton(
                            onPressed: () => context.push(Routes.userFavorites(
                                user.name, FavoriteTabs.studios)),
                            child: const Text("All"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(0),
                        children: [
                          for (var studio in user.favourites!.studios!.nodes!)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: ActionChip(
                                label: Text(studio!.name),
                                onPressed: () =>
                                    context.push(Routes.studio(studio.id)),
                              ),
                            )
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          ),
      ],
    );
  }
}

class _StatsBox extends StatelessWidget {
  const _StatsBox({
    required this.left,
    required this.middle,
    required this.right,
    required this.type,
    this.onTap,
  });

  final String left;
  final String middle;
  final String right;
  final Enum$MediaType type;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: InkWell(
        borderRadius: imageRadius,
        onTap: onTap,
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            border: Border.all(
                color: context.theme.colorScheme.surfaceContainerHighest),
            borderRadius: imageRadius,
          ),
          // margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                '${type == Enum$MediaType.ANIME ? "Anime Stats" : "Manga Stats"} (click to view list)',
                style: context.theme.textTheme.labelSmall,
              ),
              const SizedBox(
                height: 5,
              ),
              Wrap(
                runSpacing: 10,
                spacing: 40,
                children: [
                  _stat(
                    left,
                    type == Enum$MediaType.ANIME
                        ? "Total Anime"
                        : "Total Manga",
                  ),
                  _stat(
                    middle,
                    type == Enum$MediaType.ANIME
                        ? "Days watched"
                        : "Chapters read",
                  ),
                  _stat(
                    right,
                    "Mean Score",
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _stat(String top, String bottom) {
    return Column(
      children: [
        Text(top),
        Text(bottom),
      ],
    );
  }
}

class _GenreOverview extends StatelessWidget {
  const _GenreOverview({this.animeStats, this.mangaStats});

  final Query$User$User$statistics$anime? animeStats;
  final Query$User$User$statistics$manga? mangaStats;

  List<Fragment$GenreStat> getTopGenres() {
    List<Fragment$GenreStat> genres = [];

    if (animeStats?.genres?.isNotEmpty == true) {
      genres.addAll(animeStats!.genres!.whereType<Fragment$GenreStat>());
    }
    if (mangaStats?.genres?.isNotEmpty == true) {
      if (genres.isNotEmpty) {
        for (var genre in mangaStats!.genres!) {
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
        genres.addAll(mangaStats!.genres!.whereType<Fragment$GenreStat>());
      }
    }

    genres.sort(
      (a, b) => b.count.compareTo(a.count),
    );

    return genres.take(5).toList();
  }

  @override
  Widget build(BuildContext context) {
    if (animeStats == null && mangaStats == null) return const SizedBox();

    var genres = getTopGenres();

    if (genres.isEmpty) return const SizedBox();

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: context.theme.colorScheme.surfaceContainerHighest),
        borderRadius: imageRadius,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      padding: const EdgeInsets.all(8),
      // height: 100,
      child: Column(
        children: [
          Text(
            "Top Genres",
            style: context.theme.textTheme.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            // alignment: WrapAlignment.spaceBetween,
            runSpacing: 5,
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
                  // selected: true,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
