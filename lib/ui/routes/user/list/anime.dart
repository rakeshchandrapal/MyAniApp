import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/routes/home/list/__generated__/list.req.gql.dart';
import 'package:myaniapp/ui/routes/home/list/anime.dart';

class UserAnimeListPage extends StatelessWidget {
  const UserAnimeListPage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      operationRequest: GMediaListReq((b) => b
        ..vars
            .sort
            .addAll([GMediaListSort.STATUS, GMediaListSort.UPDATED_TIME_DESC])
        ..vars.userName = name
        ..vars.type = GMediaType.ANIME),
      loading: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      error: (response) => Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
            exception: (response!.graphqlErrors, response.linkException)),
      ),
      builder: (context, response, error, refetch) {
        var lists = response!.data!.MediaListCollection!.lists!;

        return RefreshIndicator.adaptive(
          onRefresh: refetch,
          notificationPredicate: (notification) => notification.depth == 1,
          child: DefaultTabController(
            length: lists.length,
            child: ListTabs(
              leading: const BackButton(),
              lists: lists.nonNulls.toBuiltList(),
              refresh: refetch,
              user: response.data!.MediaListCollection!.user!,
              setting: Setting.animeList,
              canEdit: false,
            ),
          ),
        );
      },
    );
  }
}
