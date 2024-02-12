import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/routes/home/app_bar.dart';
import 'package:myaniapp/ui/routes/home/list/__generated__/list.req.gql.dart';
import 'package:myaniapp/ui/routes/home/list/anime.dart';

class HomeMangaPage extends ConsumerWidget {
  const HomeMangaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return GQLRequest(
      // options: Options$Query$MediaList(
      //   cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
      //   variables: Variables$Query$MediaList(
      //     type: GMediaType.ANIME,
      //     userName: user.value!.name,
      //   ),
      // ),
      operationRequest: GMediaListReq((b) => b
        ..vars.type = GMediaType.MANGA
        ..vars.userName = user.value!.name),
      builder: (context, response, error, refetch) {
        var lists = response!.data!.MediaListCollection!.lists!;

        if (lists.isEmpty) {
          return RefreshIndicator.adaptive(
            onRefresh: refetch,
            child: Scaffold(
              appBar: const HomeAppBar(),
              body: LayoutBuilder(
                builder: (context, constraints) => ListView(
                  children: [
                    Container(
                      constraints:
                          BoxConstraints(minHeight: constraints.maxHeight),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () => context
                              .push('/search?type=${GMediaType.MANGA.name}'),
                          child: const Text('Browse mangas to add'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        return RefreshIndicator.adaptive(
          onRefresh: refetch,
          notificationPredicate: (notification) => notification.depth == 1,
          child: DefaultTabController(
            length: lists.length,
            child: ListTabs(
              lists: lists.nonNulls.toBuiltList(),
              refresh: refetch,
              user: response.data!.MediaListCollection!.user!,
              setting: Setting.mangaList,
            ),
          ),
        );
      },
    );
  }
}
