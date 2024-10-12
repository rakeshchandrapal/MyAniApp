import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/app/home/page.dart';
import 'package:myaniapp/app/user/anime/page.dart';
import 'package:myaniapp/graphql/__gen/app/lists.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/fragments/list_group.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class HomeMangaListPage extends HookConsumerWidget {
  const HomeMangaListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(
      GQLRequest(
        mediaListQuery,
        variables: Variables$Query$MediaList(
          userName: user.value!.parsedData!.Viewer!.name,
          type: Enum$MediaType.MANGA,
        ).toJson(),
        parseData: Query$MediaList.fromJson,
      ),
    );

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      builder: () => RefreshIndicator.adaptive(
        notificationPredicate: (notification) => notification.depth == 1,
        onRefresh: refetch,
        child: MediaListView(
          appBarLeading: const HomeLeadingIcon(),
          groups: snapshot.parsedData!.MediaListCollection!.lists!
              .whereType<Fragment$ListGroup>()
              .toList(),
          user: snapshot.parsedData!.MediaListCollection!.user!,
          type: Enum$MediaType.ANIME,
          refetch: refetch,
        ),
      ),
    );
  }
}
