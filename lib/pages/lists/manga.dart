import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/graphql/User.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/providers/user.dart';
import 'package:MyAniApp/widgets/drawer.dart';
import 'package:MyAniApp/widgets/graphql.dart';
import 'package:MyAniApp/widgets/image.dart';
import 'package:MyAniApp/widgets/media_list_group.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class MangaListPage extends HookConsumerWidget {
  const MangaListPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var user = ref.watch(fetchCurrentUserProvider);
    if (user.value == null) {
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
          userId: user.value!.id,
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
      builder: (result) => MediaListGroups(
        type: Enum$MediaType.MANGA,
        groups: result.MediaListCollection!.lists!
            .whereType<Fragment$ListGroup>()
            .toList()
          ..sort(
            (a, b) {
              return b.status == Enum$MediaListStatus.CURRENT ? 1 : -1;
            },
          ),
        drawer: const AppDrawer(),
        leading: (context) => IconButton(
          padding: const EdgeInsets.all(4),
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: CImage(
            imageUrl: user.value!.avatar!.large!,
            imageBuilder: (context, imageProvider) =>
                CircleAvatar(backgroundImage: imageProvider),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: IconButton(
              // onPressed: () {},
              onPressed: () =>
                  context.router.pushNamed('settings/app/lists/manga'),
              icon: const Icon(Icons.settings),
            ),
          ),
        ],
        // refresh: hook.refetch,
        // title: 'Anime List',
      ),
    );
  }
}
