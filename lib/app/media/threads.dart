import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/thread_card.dart';
import 'package:myaniapp/graphql/__gen/app/media/threads.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class MediaThreadsScreen extends HookWidget {
  const MediaThreadsScreen(
      {super.key, @PathParam.inherit("id") required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
        mediaThreadsQuery,
        variables: Variables$Query$MediaThreads(mediaId: mediaId).toJson(),
        parseData: Query$MediaThreads.fromJson,
        mergeResults: defaultMergeResults("Page.threads")));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      builder: () => PaginationView.list(
        pageInfo: snapshot!.parsedData!.Page!.pageInfo!,
        req: (nextPage) => fetchMore(
            variables: Variables$Query$MediaThreads.fromJson(
                    snapshot.request!.variables)
                .copyWith(page: nextPage)
                .toJson()),
        builder: (context, index) {
          var thread = snapshot.parsedData!.Page!.threads![index]!;

          return ThreadCard(thread: thread);
        },
        itemCount: snapshot.parsedData!.Page!.threads!.length,
      ),
    );
  }
}
