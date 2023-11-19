import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/forum/forums.graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/thread_card.dart';
import 'package:myaniapp/utils/graphql.dart';

class RecentForums extends StatelessWidget {
  const RecentForums({super.key, this.categoryId});

  final int? categoryId;

  @override
  Widget build(BuildContext context) {
    return Query$Forums$Widget(
      options: Options$Query$Forums(
        variables: Variables$Query$Forums(
          sort: [Enum$ThreadSort.REPLIED_AT_DESC],
          id: categoryId,
        ),
      ),
      builder: queryBuilder(
        (result, {fetchMore, refetch}) {
          return RefreshIndicator.adaptive(
            onRefresh: refetch!,
            child: Pagination(
              fetchMore: fetchMore!,
              pageInfo: result.parsedData!.Page!.pageInfo!,
              opts: FetchMoreOptions$Query$Forums(
                updateQuery: (previousResultData, fetchMoreResultData) {
                  var list = [
                    ...previousResultData!['Page']['threads'],
                    ...fetchMoreResultData!['Page']['threads']
                  ];

                  fetchMoreResultData['Page']['threads'] = list;

                  return fetchMoreResultData;
                },
                variables: Variables$Query$Forums(
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
