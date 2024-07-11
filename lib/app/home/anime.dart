import 'package:auto_route/auto_route.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/app/home/page.dart';
import 'package:myaniapp/app/user/anime/page.dart';
import 'package:myaniapp/common/lists/__generated__/lists.req.gql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/list_group.data.gql.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/providers/user.dart';

@RoutePage()
class HomeAnimeListScreen extends ConsumerWidget {
  const HomeAnimeListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return GQLRequest(
      operationRequest: GMediaListReq(
        (b) => b
          ..requestId =
              "currentUserAnimeList${user.requireValue.data!.Viewer!.id}"
          ..vars.userName = user.requireValue.data!.Viewer!.name
          ..vars.type = GMediaType.ANIME,
      ),
      builder: (context, response, error, refetch) {
        return RefreshIndicator.adaptive(
          notificationPredicate: (notification) => notification.depth == 1,
          onRefresh: refetch,
          child: MediaListView(
            onDelete: refetch,
            appBarLeading: const HomeLeadingIcon(),
            groups: response!.data!.MediaListCollection!.lists!
                .whereType<GListGroup>()
                .toBuiltList(),
            user: response.data!.MediaListCollection!.user!,
            type: GMediaType.ANIME,
          ),
        );
      },
    );
  }
}
