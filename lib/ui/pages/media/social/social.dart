import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/media/social/social.graphql.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/thread.dart';

class Social extends HookWidget {
  const Social({super.key, required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    var hook = useQuery$Threads(
      Options$Query$Threads(
        variables: Variables$Query$Threads(mediaId: mediaId),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) => Pagination(
        hook: hook,
        pageInfo: result.Page!.pageInfo!,
        opts: FetchMoreOptions$Query$Threads(
          variables: Variables$Query$Threads(
              page: result.Page!.pageInfo!.currentPage! + 1),
          updateQuery: (previousResultData, fetchMoreResultData) {
            var list = [
              ...previousResultData!['Page']!['threads'],
              ...fetchMoreResultData!['Page']!['threads'],
            ];
            fetchMoreResultData['Page']!['threads'] = list;
            return fetchMoreResultData;
          },
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              var item = result.Page!.threads![index]!;

              return ThreadCard(thread: item);
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: result.Page!.threads!.length,
          ),
        ),
      ),
    );
  }
}
