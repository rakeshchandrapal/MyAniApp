import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/home/list/list.graphql.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/routes/home/list/anime.dart';

@RoutePage()
class UserAnimeListPage extends StatelessWidget {
  const UserAnimeListPage({super.key, @PathParam('name') required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Query$MediaList$Widget(
      options: Options$Query$MediaList(
        variables: Variables$Query$MediaList(
          sort: [
            Enum$MediaListSort.STATUS,
            Enum$MediaListSort.UPDATED_TIME_DESC,
          ],
          type: Enum$MediaType.ANIME,
          userName: name,
        ),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading && result.data == null) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        } else if (result.hasException) {
          return Scaffold(
            appBar: AppBar(),
            body: GraphqlError(exception: result.exception!),
          );
        }

        var lists = result.parsedData!.MediaListCollection!.lists!;

        return RefreshIndicator.adaptive(
          onRefresh: refetch!,
          notificationPredicate: (notification) => notification.depth == 1,
          child: DefaultTabController(
            length: lists.length,
            child: ListTabs(
              leading: const AutoLeadingButton(),
              lists: lists.cast(),
              refresh: refetch,
              user: result.parsedData!.MediaListCollection!.user!,
              setting: Setting.animeList,
              canEdit: false,
            ),
          ),
        );

        // if (lists.isEmpty) {
        //   return RefreshIndicator.adaptive(
        //     onRefresh: refetch!,
        //     child: Scaffold(
        //       appBar: const HomeAppBar(),
        //       body: LayoutBuilder(
        //         builder: (context, constraints) => ListView(
        //           children: [
        //             Container(
        //               constraints:
        //                   BoxConstraints(minHeight: constraints.maxHeight),
        //               child: Center(
        //                 child: ElevatedButton(
        //                   onPressed: () => context.pushRoute(
        //                       SearchRoute(type: Enum$MediaType.ANIME.name)),
        //                   child: const Text('Browse animes to add'),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   );
        // }
      },
    );
  }
}
