import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/media/social/social.graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/common/thread_card.dart';
import 'package:myaniapp/utils/graphql.dart';

class MediaSocialPage extends StatefulWidget {
  const MediaSocialPage({super.key, required this.id});

  final int id;

  @override
  State<MediaSocialPage> createState() => _MediaSocialPageState();
}

class _MediaSocialPageState extends State<MediaSocialPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Query$Threads$Widget(
      options: Options$Query$Threads(
        variables: Variables$Query$Threads(mediaId: widget.id),
      ),
      builder: queryBuilder(
        (result, [fetchMore, refetch]) => GraphqlPagination(
          fetchMore: (nextPage) => fetchMore!(
            FetchMoreOptions$Query$Threads(
              variables: Variables$Query$Threads(page: nextPage),
              updateQuery: (previousResultData, fetchMoreResultData) {
                var list = [
                  ...previousResultData!['Page']!['threads'],
                  ...fetchMoreResultData!['Page']!['threads'],
                ];
                fetchMoreResultData['Page']!['threads'] = list;
                return fetchMoreResultData;
              },
            ),
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
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
