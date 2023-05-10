import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/profile/favorites/manga/manga.graphql.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';

@RoutePage()
class FavoriteMangaPage extends HookWidget {
  const FavoriteMangaPage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$FavoriteMangas(
      Options$Query$FavoriteMangas(
        variables: Variables$Query$FavoriteMangas(name: name),
      ),
    );

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) =>
            [const SliverAppBar()],
        body: Graphql(
          hook: hook,
          builder: (result) => Pagination(
            hook: hook,
            opts: FetchMoreOptions$Query$FavoriteMangas(
              variables: Variables$Query$FavoriteMangas(
                  page: result.User!.favourites!.manga!.pageInfo!.currentPage),
              updateQuery: (previousResultData, fetchMoreResultData) {
                var list = [
                  ...previousResultData!['Page']!['reviews'],
                  ...fetchMoreResultData!['Page']!['reviews'],
                ];
                fetchMoreResultData['Page']!['reviews'] = list;
                return fetchMoreResultData;
              },
            ),
            pageInfo: result.User!.favourites!.manga!.pageInfo!,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MediaCards(
                list: result.User!.favourites!.manga!.nodes!,
                setting: Setting.mangaList,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
