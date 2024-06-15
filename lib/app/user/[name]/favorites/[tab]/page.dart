import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/user/__generated__/favorites.data.gql.dart';
import 'package:myaniapp/app/user/__generated__/favorites.req.gql.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/widget.dart';

enum FavoriteTabs { anime, manga, characters, staff, studios }

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key, required this.name, required this.tab});

  final String name;
  final String tab;

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage>
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
    context.replace(
        "/user/${widget.name}/favorites/${FavoriteTabs.values[_tabController.index].name}");
  }

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      // key: Key,
      operationRequest: GUserFavoritesReq((b) => b
        ..vars.name = widget.name
        ..requestId = "user${widget.name}Favorites"),
      loading: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      error: (response) => Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (response?.graphqlErrors, response?.linkException),
        ),
      ),
      builder: (context, response, error, refetch) => Scaffold(
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
              operationRequest: response!.operationRequest as GUserFavoritesReq,
              animes: response.data!.User!.favourites!.anime!,
            ),
            _FavoriteManga(
              operationRequest: response.operationRequest as GUserFavoritesReq,
              mangas: response.data!.User!.favourites!.manga!,
            ),
            _FavoriteCharacters(
              operationRequest: response.operationRequest as GUserFavoritesReq,
              characters: response.data!.User!.favourites!.characters!,
            ),
            _FavoriteStaff(
              operationRequest: response.operationRequest as GUserFavoritesReq,
              staffs: response.data!.User!.favourites!.staff!,
            ),
            _FavoriteStudios(
              operationRequest: response.operationRequest as GUserFavoritesReq,
              studios: response.data!.User!.favourites!.studios!,
            ),
          ],
        ),
      ),
    );
  }
}

class _FavoriteAnime extends StatelessWidget {
  const _FavoriteAnime({required this.operationRequest, required this.animes});

  final GUserFavoritesReq operationRequest;
  final GUserFavoritesData_User_favourites_anime animes;

  @override
  Widget build(BuildContext context) {
    return GraphqlPagination(
      pageInfo: animes.pageInfo!,
      req: (nextPage) => operationRequest.rebuild(
        (b) => b
          ..vars.animePage = nextPage
          ..updateResult = (previous, result) => result?.rebuild((p0) => p0
            ..User.favourites.anime.edges.insertAll(
                0,
                previous?.User?.favourites?.anime?.edges?.whereNot((p0) =>
                        result.User?.favourites?.anime?.edges?.contains(p0) ??
                        false) ??
                    [])),
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
            onTap: () => context.push("/media/${anime.node!.id}/info",
                extra: {"media": anime.node}),
            onLongPress: () => MediaSheet.show(context, anime.node!),
          );
        },
        itemCount: animes.edges!.length,
      ),
    );
  }
}

class _FavoriteManga extends StatelessWidget {
  const _FavoriteManga({required this.operationRequest, required this.mangas});

  final GUserFavoritesReq operationRequest;
  final GUserFavoritesData_User_favourites_manga mangas;

  @override
  Widget build(BuildContext context) {
    return GraphqlPagination(
      pageInfo: mangas.pageInfo!,
      req: (nextPage) => operationRequest.rebuild(
        (b) => b
          ..vars.mangaPage = nextPage
          ..updateResult = (previous, result) => result?.rebuild((p0) => p0
            ..User.favourites.manga.edges.insertAll(
                0,
                previous?.User?.favourites?.manga?.edges?.whereNot((p0) =>
                        result.User?.favourites?.manga?.edges?.contains(p0) ??
                        false) ??
                    [])),
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
            onTap: () => context.push("/media/${manga.node!.id}/info",
                extra: {"media": manga.node}),
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
      {required this.operationRequest, required this.characters});

  final GUserFavoritesReq operationRequest;
  final GUserFavoritesData_User_favourites_characters characters;

  @override
  Widget build(BuildContext context) {
    return GraphqlPagination(
      pageInfo: characters.pageInfo!,
      req: (nextPage) => operationRequest.rebuild(
        (b) => b
          ..vars.characterPage = nextPage
          ..updateResult = (previous, result) => result?.rebuild((p0) => p0
            ..User.favourites.characters.edges.insertAll(
                0,
                previous?.User?.favourites?.characters?.edges?.whereNot((p0) =>
                        result.User?.favourites?.characters?.edges
                            ?.contains(p0) ??
                        false) ??
                    [])),
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
            onTap: () => context.push("/character/${character.node!.id}",
                extra: {"character": character.node}),
          );
        },
        itemCount: characters.edges!.length,
      ),
    );
  }
}

class _FavoriteStaff extends StatelessWidget {
  const _FavoriteStaff({required this.operationRequest, required this.staffs});

  final GUserFavoritesReq operationRequest;
  final GUserFavoritesData_User_favourites_staff staffs;

  @override
  Widget build(BuildContext context) {
    return GraphqlPagination(
      pageInfo: staffs.pageInfo!,
      req: (nextPage) => operationRequest.rebuild(
        (b) => b
          ..vars.characterPage = nextPage
          ..updateResult = (previous, result) => result?.rebuild((p0) => p0
            ..User.favourites.staff.edges.insertAll(
                0,
                previous?.User?.favourites?.staff?.edges?.whereNot((p0) =>
                        result.User?.favourites?.staff?.edges?.contains(p0) ??
                        false) ??
                    [])),
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
            onTap: () => context.push("/staff/${staff.node!.id}/roles",
                extra: {"staff": staff.node}),
          );
        },
        itemCount: staffs.edges!.length,
      ),
    );
  }
}

class _FavoriteStudios extends StatelessWidget {
  const _FavoriteStudios(
      {required this.operationRequest, required this.studios});

  final GUserFavoritesReq operationRequest;
  final GUserFavoritesData_User_favourites_studios studios;

  @override
  Widget build(BuildContext context) {
    return GraphqlPagination(
      pageInfo: studios.pageInfo!,
      req: (nextPage) => operationRequest.rebuild(
        (b) => b
          ..vars.characterPage = nextPage
          ..updateResult = (previous, result) => result?.rebuild((p0) => p0
            ..User.favourites.studios.edges.insertAll(
                0,
                previous?.User?.favourites?.studios?.edges?.whereNot((p0) =>
                        result.User?.favourites?.studios?.edges?.contains(p0) ??
                        false) ??
                    [])),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          var studio = studios.edges![index]!;

          return ListTile(
            title: Text(studio.node!.name),
            onTap: () => context.push("/studio/${studio.node!.id}"),
          );
        },
        itemCount: studios.edges!.length,
      ),
    );
  }
}
