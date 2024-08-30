import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/app/user/anime/page.dart';
import 'package:myaniapp/graphql/__gen/app/lists.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/fragments/list_group.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class UserMangaScreen extends HookWidget {
  const UserMangaScreen({super.key, @pathParam required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      mediaListQuery,
      variables:
          Variables$Query$MediaList(userName: name, type: Enum$MediaType.MANGA)
              .toJson(),
      fetchPolicy: FetchPolicy.noCache,
      parseData: Query$MediaList.fromJson,
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      loading: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      error: Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (snapshot?.errors, snapshot?.linkError),
          refetch: refetch,
        ),
      ),
      builder: () => RefreshIndicator.adaptive(
        onRefresh: refetch,
        notificationPredicate: (notification) => notification.depth == 1,
        child: MediaListView(
          refetch: refetch,
          groups: snapshot!.parsedData!.MediaListCollection!.lists!
              .whereType<Fragment$ListGroup>()
              .toList(),
          user: snapshot.parsedData!.MediaListCollection!.user!,
          type: Enum$MediaType.MANGA,
        ),
      ),
    );
  }
}
