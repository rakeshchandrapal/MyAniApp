import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/home/list/list.graphql.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/routes/home/app_bar.dart';
import 'package:myaniapp/ui/routes/home/list/anime.dart';
import 'package:myaniapp/ui/routes/routes.gr.dart';

@RoutePage()
class HomeMangaPage extends ConsumerWidget {
  const HomeMangaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return Query$MediaList$Widget(
      options: Options$Query$MediaList(
        variables: Variables$Query$MediaList(
          sort: [
            Enum$MediaListSort.STATUS,
            Enum$MediaListSort.UPDATED_TIME_DESC,
          ],
          type: Enum$MediaType.MANGA,
          userName: user.value!.name,
        ),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading && result.data == null) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (result.hasException) {
          return GraphqlError(exception: result.exception!);
        }

        var lists = result.parsedData!.MediaListCollection!.lists!;

        if (lists.isEmpty) {
          return RefreshIndicator.adaptive(
            onRefresh: refetch!,
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
                          onPressed: () => context.pushRoute(
                              SearchRoute(type: Enum$MediaType.MANGA.name)),
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
          onRefresh: refetch!,
          notificationPredicate: (notification) => notification.depth == 1,
          child: DefaultTabController(
            length: lists.length,
            child: ListTabs(
              lists: lists.cast(),
              refresh: refetch,
              user: result.parsedData!.MediaListCollection!.user!,
              setting: Setting.mangaList,
            ),
          ),
        );
      },
    );
  }
}
