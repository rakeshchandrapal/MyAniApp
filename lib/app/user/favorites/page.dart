import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/user/favorites.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

enum FavoriteTabs { anime, manga, characters, staff, studios }

// ik this could use "AutoTabsRouter" but i dont fell like it maybe later :)
@RoutePage()
class UserFavoritesScreen extends StatefulHookWidget {
  const UserFavoritesScreen(
      {super.key, @pathParam required this.name, @pathParam required this.tab});

  final String name;
  final String tab;

  @override
  State<UserFavoritesScreen> createState() => _UserFavoritesScreenState();
}

class _UserFavoritesScreenState extends State<UserFavoritesScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: FavoriteTabs.values.length, vsync: this);

  @override
  void initState() {
    super.initState();
    var i =
        FavoriteTabs.values.indexWhere((element) => element.name == widget.tab);
    _tabController.animateTo(i);
    _tabController.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void listener() {
    context.router.replaceNamed(
        "/user/${widget.name}/favorites/${FavoriteTabs.values[_tabController.index].name}");
  }

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      userFavoritesQuery,
      variables: Variables$Query$UserFavorites(name: widget.name).toJson(),
      parseData: Query$UserFavorites.fromJson,
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      loading: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      error: Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (snapshot.errors, snapshot.linkError),
          refetch: refetch,
        ),
      ),
      builder: () => Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: FavoriteTabs.values
                .map(
                  (e) => Tab(
                    text: e.name.capitalize(),
                  ),
                )
                .toList(),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            _FavoriteAnime(
              request: snapshot.request!,
              animes: snapshot.parsedData!.User!.favourites!.anime!,
              fetchMore: fetchMore,
            ),
            _FavoriteManga(
              request: snapshot.request!,
              mangas: snapshot.parsedData!.User!.favourites!.manga!,
              fetchMore: fetchMore,
            ),
            _FavoriteCharacters(
              request: snapshot.request!,
              characters: snapshot.parsedData!.User!.favourites!.characters!,
              fetchMore: fetchMore,
            ),
            _FavoriteStaff(
              request: snapshot.request!,
              staffs: snapshot.parsedData!.User!.favourites!.staff!,
              fetchMore: fetchMore,
            ),
            _FavoriteStudios(
              request: snapshot.request!,
              studios: snapshot.parsedData!.User!.favourites!.studios!,
              fetchMore: fetchMore,
            ),
          ],
        ),
      ),
    );
  }
}

class _FavoriteAnime extends StatelessWidget {
  const _FavoriteAnime(
      {required this.request, required this.animes, required this.fetchMore});

  final GQLRequest request;
  final Query$UserFavorites$User$favourites$anime animes;
  final QueryHookFetchMore fetchMore;

  @override
  Widget build(BuildContext context) {
    return GraphqlPagination(
      pageInfo: animes.pageInfo!,
      req: (nextPage) => fetchMore(
        variables: Variables$Query$UserFavorites.fromJson(request.variables)
            .copyWith(animePage: nextPage)
            .toJson(),
        mergeResults: defaultMergeResults("User.favourites.anime.edges"),
      ),
      child: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          childAspectRatio: GridCard.listRatio,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          var anime = animes.edges![index]!;

          return GridCard(
            image: anime.node!.coverImage!.extraLarge!,
            title: anime.node!.title!.userPreferred,
            blur: anime.node!.isAdult ?? false,
            onTap: () => context.pushRoute(MediaRoute(
              id: anime.node!.id,
              placeholder: anime.node,
            )),
            onLongPress: () => MediaSheet.show(context, anime.node!),
          );
        },
        itemCount: animes.edges!.length,
      ),
    );
  }
}

class _FavoriteManga extends StatelessWidget {
  const _FavoriteManga(
      {required this.request, required this.mangas, required this.fetchMore});

  final GQLRequest request;
  final Query$UserFavorites$User$favourites$manga mangas;
  final QueryHookFetchMore fetchMore;

  @override
  Widget build(BuildContext context) {
    return GraphqlPagination(
      pageInfo: mangas.pageInfo!,
      req: (nextPage) => fetchMore(
        variables: Variables$Query$UserFavorites.fromJson(request.variables)
            .copyWith(mangaPage: nextPage)
            .toJson(),
        mergeResults: defaultMergeResults("User.favourites.manga.edges"),
      ),
      child: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          childAspectRatio: GridCard.listRatio,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          var manga = mangas.edges![index]!;

          return GridCard(
            image: manga.node!.coverImage!.extraLarge!,
            title: manga.node!.title!.userPreferred,
            blur: manga.node!.isAdult ?? false,
            onTap: () => context.pushRoute(MediaRoute(
              id: manga.node!.id,
              placeholder: manga.node,
            )),
            onLongPress: () => MediaSheet.show(context, manga.node!),
          );
        },
        itemCount: mangas.edges!.length,
      ),
    );
  }
}

class _FavoriteCharacters extends StatelessWidget {
  const _FavoriteCharacters(
      {required this.request,
      required this.characters,
      required this.fetchMore});

  final GQLRequest request;
  final Query$UserFavorites$User$favourites$characters characters;
  final QueryHookFetchMore fetchMore;

  @override
  Widget build(BuildContext context) {
    return GraphqlPagination(
      pageInfo: characters.pageInfo!,
      req: (nextPage) => fetchMore(
        variables: Variables$Query$UserFavorites.fromJson(request.variables)
            .copyWith(characterPage: nextPage)
            .toJson(),
        mergeResults: defaultMergeResults("User.favourites.characters.edges"),
      ),
      child: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          childAspectRatio: GridCard.listRatio,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          var character = characters.edges![index]!;

          return GridCard(
            image: character.node!.image!.large!,
            title: character.node!.name!.userPreferred!,
            onTap: () => context.pushRoute(CharacterRoute(
              id: character.node!.id,
              placeholder: character.node,
            )),
          );
        },
        itemCount: characters.edges!.length,
      ),
    );
  }
}

class _FavoriteStaff extends StatelessWidget {
  const _FavoriteStaff(
      {required this.request, required this.staffs, required this.fetchMore});

  final GQLRequest request;
  final Query$UserFavorites$User$favourites$staff staffs;
  final QueryHookFetchMore fetchMore;

  @override
  Widget build(BuildContext context) {
    return GraphqlPagination(
      pageInfo: staffs.pageInfo!,
      req: (nextPage) => fetchMore(
        variables: Variables$Query$UserFavorites.fromJson(request.variables)
            .copyWith(staffPage: nextPage)
            .toJson(),
        mergeResults: defaultMergeResults("User.favourites.staff.edges"),
      ),
      child: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          childAspectRatio: GridCard.listRatio,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          var staff = staffs.edges![index]!;

          return GridCard(
            image: staff.node!.image!.large!,
            title: staff.node!.name!.userPreferred!,
            onTap: () => context.pushRoute(StaffRoute(
              id: staff.node!.id,
              placeholder: staff.node,
            )),
          );
        },
        itemCount: staffs.edges!.length,
      ),
    );
  }
}

class _FavoriteStudios extends StatelessWidget {
  const _FavoriteStudios(
      {required this.request, required this.studios, required this.fetchMore});

  final GQLRequest request;
  final Query$UserFavorites$User$favourites$studios studios;
  final QueryHookFetchMore fetchMore;

  @override
  Widget build(BuildContext context) {
    return GraphqlPagination(
      pageInfo: studios.pageInfo!,
      req: (nextPage) => fetchMore(
        variables: Variables$Query$UserFavorites.fromJson(request.variables)
            .copyWith(studioPage: nextPage)
            .toJson(),
        mergeResults: defaultMergeResults("User.favourites.studios.edges"),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          var studio = studios.edges![index]!;

          return ListTile(
            title: Text(studio.node!.name),
            onTap: () => context.pushRoute(StudioRoute(id: studio.node!.id)),
          );
        },
        itemCount: studios.edges!.length,
      ),
    );
  }
}
