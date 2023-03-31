import 'package:MyAniApp/graphql/User.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/widgets/graphql.dart';
import 'package:MyAniApp/widgets/media_list_group.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class AAnimeListPage extends HookWidget {
  const AAnimeListPage({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$UserList(
      Options$Query$UserList(
        variables: Variables$Query$UserList(
          name: username,
          type: Enum$MediaType.ANIME,
          sort: [Enum$MediaListSort.UPDATED_TIME_DESC],
        ),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) => MediaListGroups(
        type: Enum$MediaType.ANIME,
        groups: result.MediaListCollection!.lists!
            .whereType<Fragment$ListGroup>()
            .toList()
          ..sort(
            (a, b) {
              return b.status == Enum$MediaListStatus.CURRENT ? 1 : -1;
            },
          ),
      ),
    );
  }
}
