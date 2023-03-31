import 'package:MyAniApp/graphql/User.graphql.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/routes.gr.dart';
import 'package:MyAniApp/widgets/graphql.dart';
import 'package:MyAniApp/widgets/image.dart';
import 'package:MyAniApp/widgets/lists/cards.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum FavoriteTabs {
  anime,
  manga,
  characters,
  staff,
  studios,
}

class Favorites extends StatefulHookWidget {
  final String username;
  const Favorites({
    super.key,
    required this.username,
  });

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  FavoriteTabs tab = FavoriteTabs.anime;

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Favorites(
      Options$Query$Favorites(
        variables: Variables$Query$Favorites(username: widget.username),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) {
        late Widget tabWidget;

        switch (tab) {
          case FavoriteTabs.anime:
            tabWidget = Anime(list: result.User!.favourites!.anime!);
            break;
          case FavoriteTabs.manga:
            tabWidget = Manga(list: result.User!.favourites!.manga!);
            break;
          case FavoriteTabs.characters:
            tabWidget = Characters(list: result.User!.favourites!.characters!);
            break;
          case FavoriteTabs.staff:
            tabWidget = Staff(list: result.User!.favourites!.staff!);
            break;

          default:
            tabWidget = Anime(list: result.User!.favourites!.anime!);
            break;
        }

        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  children: [
                    ChoiceChip(
                      label: const Text('Anime'),
                      selected: tab == FavoriteTabs.anime,
                      onSelected: (value) {
                        if (!value) return;
                        setState(() => tab = FavoriteTabs.anime);
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ChoiceChip(
                      label: const Text('Manga'),
                      selected: tab == FavoriteTabs.manga,
                      onSelected: (value) {
                        if (!value) return;
                        setState(() => tab = FavoriteTabs.manga);
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ChoiceChip(
                      label: const Text('Characters'),
                      selected: tab == FavoriteTabs.characters,
                      onSelected: (value) {
                        if (!value) return;
                        setState(() => tab = FavoriteTabs.characters);
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ChoiceChip(
                      label: const Text('Staff'),
                      selected: tab == FavoriteTabs.staff,
                      onSelected: (value) {
                        if (!value) return;
                        setState(() => tab = FavoriteTabs.staff);
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    // ChoiceChip(
                    //   label: const Text('Studios'),
                    //   selected: tab == FavoriteTabs.studios,
                    //   onSelected: (value) {
                    //     if (!value) return;
                    //     setState(() => tab = FavoriteTabs.studios);
                    //   },
                    // ),
                  ],
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: tabWidget,
          ),
        );
      },
    );
  }
}

class Anime extends StatelessWidget {
  final Query$Favorites$User$favourites$anime list;
  const Anime({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Cards(
      list: (list.edges!
              .whereType<Query$Favorites$User$favourites$anime$edges>()
              .toList()
            ..sort((a, b) => a.favouriteOrder!.compareTo(b.favouriteOrder!)))
          .map((e) => e.node)
          .toList(),
      setting: SettingStrings.animeList,
    );
  }
}

class Manga extends StatelessWidget {
  final Query$Favorites$User$favourites$manga list;
  const Manga({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Cards(
      list: (list.edges!
              .whereType<Query$Favorites$User$favourites$manga$edges>()
              .toList()
            ..sort((a, b) => a.favouriteOrder!.compareTo(b.favouriteOrder!)))
          .map((e) => e.node)
          .toList(),
      setting: SettingStrings.mangaList,
    );
  }
}

class Characters extends StatelessWidget {
  final Query$Favorites$User$favourites$characters list;
  const Characters({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    if (list.edges!.isEmpty) return const SizedBox();

    var size = MediaQuery.of(context).size;

    var sorted = (list.edges!
            .whereType<Query$Favorites$User$favourites$characters$edges>()
            .toList()
          ..sort((a, b) => a.favouriteOrder!.compareTo(b.favouriteOrder!)))
        .map((e) => e.node)
        .toList();

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: size.width ~/ (size.width > 800 ? 140 : 110),
        childAspectRatio: 10 / 17,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        var item = sorted[index];

        return GestureDetector(
          onTap: () => context.router.push(CharacterRoute(id: item.id)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CImage(
                  imageUrl: item!.image!.large!,
                ),
              ),
              Text(
                item.name!.userPreferred!,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                  fontWeight: FontWeight.w400,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
      itemCount: sorted.length,
    );
  }
}

class Staff extends StatelessWidget {
  final Query$Favorites$User$favourites$staff list;
  const Staff({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    if (list.edges!.isEmpty) return const SizedBox();

    var size = MediaQuery.of(context).size;

    var sorted = (list.edges!
            .whereType<Query$Favorites$User$favourites$staff$edges>()
            .toList()
          ..sort((a, b) => a.favouriteOrder!.compareTo(b.favouriteOrder!)))
        .map((e) => e.node)
        .toList();

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: size.width ~/ (size.width > 800 ? 140 : 110),
        childAspectRatio: 10 / 17,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        var item = sorted[index];

        return GestureDetector(
          onTap: () => context.router.push(StaffRoute(id: item.id)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CImage(
                  imageUrl: item!.image!.large!,
                ),
              ),
              Text(
                item.name!.userPreferred!,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                  fontWeight: FontWeight.w400,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
      itemCount: sorted.length,
    );
  }
}
