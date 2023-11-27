import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/media/social/social.graphql.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/thread_card.dart';

class MediaSocialPage extends StatelessWidget {
  const MediaSocialPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Query$Threads$Widget(
      options: Options$Query$Threads(
        variables: Variables$Query$Threads(mediaId: id),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading && result.parsedData == null) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (result.hasException) {
          return GraphqlError(exception: result.exception!);
        }

        return Pagination(
          fetchMore: fetchMore!,
          opts: FetchMoreOptions$Query$Threads(
            variables: Variables$Query$Threads(
                page: result.parsedData!.Page!.pageInfo!.currentPage! + 1),
            updateQuery: (previousResultData, fetchMoreResultData) {
              var list = [
                ...previousResultData!['Page']!['threads'],
                ...fetchMoreResultData!['Page']!['threads'],
              ];
              fetchMoreResultData['Page']!['threads'] = list;
              return fetchMoreResultData;
            },
          ),
          pageInfo: result.parsedData!.Page!.pageInfo!,
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemBuilder: (context, index) {
              var item = result.parsedData!.Page!.threads![index]!;

              return ThreadCard(thread: item);
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: result.parsedData!.Page!.threads!.length,
          ),
        );
      },
    );
  }
}
