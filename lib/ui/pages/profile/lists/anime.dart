import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/home/animelist/animelist.graphql.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/media_list_group.dart';

@RoutePage()
class ProfileAnimeListPage extends HookWidget {
  const ProfileAnimeListPage({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$MediaList(
      Options$Query$MediaList(
        variables: Variables$Query$MediaList(
          userId: userId,
          type: Enum$MediaType.ANIME,
          sort: [
            Enum$MediaListSort.STATUS,
            Enum$MediaListSort.UPDATED_TIME_DESC
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: hook.result.data == null ? AppBar() : null,
      body: Graphql(
        hook: hook,
        builder: (result) {
          var groups = MediaListGroups(
            groups: result.MediaListCollection!.lists!
                .whereType<Fragment$ListGroup>()
                .toList(),
          );

          return DefaultTabController(
            length: groups.groups.length,
            child: Scaffold(
              appBar: AppBar(
                bottom: groups.tabBar,
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: groups.tabView,
              ),
            ),
          );
        },
      ),
    );
  }
}
