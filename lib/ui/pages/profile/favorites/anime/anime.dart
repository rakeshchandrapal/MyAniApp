import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/profile/favorites/anime/anime.graphql.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/scroll_to_top.dart';

@RoutePage()
class FavoriteAnimePage extends HookWidget {
  const FavoriteAnimePage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$FavoriteAnimes(
      Options$Query$FavoriteAnimes(
        variables: Variables$Query$FavoriteAnimes(name: name),
      ),
    );

    return Scaffold(
      body: ScrollToTop(
        builder: (scrollController) => NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(),
          ],
          body: Graphql(
            hook: hook,
            builder: (result) => Pagination(
              hook: hook,
              opts: FetchMoreOptions$Query$FavoriteAnimes(
                variables: Variables$Query$FavoriteAnimes(
                    page: (result.User!.favourites!.anime!.pageInfo!
                                .currentPage ??
                            1) +
                        1),
                updateQuery: (previousResultData, fetchMoreResultData) {
                  var list = [
                    ...previousResultData!['User']!['favourites']!['anime']![
                        'nodes'],
                    ...fetchMoreResultData!['User']!['favourites']!['anime']![
                        'nodes'],
                  ];
                  fetchMoreResultData['User']!['favourites']!['anime']![
                      'nodes'] = list;
                  return fetchMoreResultData;
                },
              ),
              pageInfo: result.User!.favourites!.anime!.pageInfo!,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MediaCards(
                  list: result.User!.favourites!.anime!.nodes!,
                  setting: Setting.animeList,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
