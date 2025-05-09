import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/common/media_list_view.dart';
import 'package:myaniapp/graphql/__gen/media_list.graphql.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:mygraphql/graphql.dart';

class UserMangaScreen extends HookWidget {
  const UserMangaScreen({super.key, required this.name});

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
          exception: (snapshot.errors, snapshot.linkError),
          refetch: refetch,
        ),
      ),
      builder: () => RefreshIndicator.adaptive(
        onRefresh: refetch,
        notificationPredicate: (notification) => notification.depth == 1,
        child: MediaListView(
          refetch: refetch,
          response: snapshot,
          type: Enum$MediaType.MANGA,
        ),
      ),
    );
  }
}
