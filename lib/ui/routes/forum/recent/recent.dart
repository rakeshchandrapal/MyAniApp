import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/forum/recent/recent.graphql.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/thread_card.dart';

@RoutePage()
class RecentThreadsPage extends StatelessWidget {
  const RecentThreadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recent Activity'),
      ),
      body: Query$RecentThreads$Widget(
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading && result.parsedData == null) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (result.hasException) {
            return GraphqlError(exception: result.exception!);
          }

          return RefreshIndicator.adaptive(
            onRefresh: refetch!,
            child: Pagination(
              fetchMore: fetchMore!,
              pageInfo: result.parsedData!.Page!.pageInfo!,
              opts: FetchMoreOptions$Query$RecentThreads(
                updateQuery: (previousResultData, fetchMoreResultData) {
                  var list = [
                    ...previousResultData!['Page']['threads'],
                    ...fetchMoreResultData!['Page']['threads']
                  ];

                  fetchMoreResultData['Page']['threads'] = list;

                  return fetchMoreResultData;
                },
                variables: Variables$Query$RecentThreads(
                  page:
                      (result.parsedData!.Page!.pageInfo!.currentPage ?? 1) + 1,
                ),
              ),
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemBuilder: (context, index) {
                  var thread = result.parsedData!.Page!.threads![index]!;

                  return ThreadCard(thread: thread);
                },
                itemCount: result.parsedData!.Page!.threads!.length,
              ),
            ),
          );
        },
      ),
    );
  }
}
