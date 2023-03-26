import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/pages/lists/shared.dart';
import 'package:MyAniApp/providers/user.dart';
import 'package:MyAniApp/widgets/graphql.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

@RoutePage()
class MangaListPage extends HookWidget {
  const MangaListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var user = context.watch<User>();
    if (user.user == null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircularProgressIndicator(),
          Text('Loading...'),
        ],
      );
    }

    var hook = useQuery$FetchMediaList(
      Options$Query$FetchMediaList(
        variables: Variables$Query$FetchMediaList(
          type: Enum$MediaType.MANGA,
          userId: user.user!.id,
          sort: [Enum$MediaListSort.UPDATED_TIME_DESC],
        ),
      ),
    );

    // if (hook.result.isLoading && hook.result.data == null) {
    //   return Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: const [
    //       CircularProgressIndicator(),
    //       Text('Loading...'),
    //     ],
    //   );
    // } else if (hook.result.hasException) {
    //   return Graphql(hook.result.exception!);
    // }

    // print(hook.result.parsedData?.MediaListCollection);

    return Graphql(
      hook: hook,
      builder: (result) => Tabs(
        lists: result.MediaListCollection!.lists!
          ..sort(
            (a, b) {
              return b?.status == Enum$MediaListStatus.CURRENT ? 1 : -1;
            },
          ),
        refresh: hook.refetch,
        title: 'Manga List',
      ),
    );
  }
}
