import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/app/home/%5Btab%5D/page.dart';
import 'package:myaniapp/app/user/%5Bname%5D/anime/page.dart';
import 'package:myaniapp/common/lists/__generated__/lists.req.gql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/list_group.data.gql.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/providers/user.dart';

class HomeAnimeListPage extends ConsumerStatefulWidget {
  const HomeAnimeListPage({super.key});

  @override
  ConsumerState<HomeAnimeListPage> createState() => _HomeAnimeListPageState();
}

class _HomeAnimeListPageState extends ConsumerState<HomeAnimeListPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
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

  @override
  bool get wantKeepAlive => true;
}
