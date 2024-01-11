import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/media/similar/similar.graphql.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/utils/graphql.dart';

class MediaSimilarPage extends StatelessWidget {
  const MediaSimilarPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Query$Recommendations$Widget(
      options: Options$Query$Recommendations(
        variables: Variables$Query$Recommendations(mediaId: id),
      ),
      builder: queryBuilder(
        (result, [fetchMore, refetch]) => GraphqlPagination(
          pageInfo: result.parsedData!.Media!.recommendations!.pageInfo!,
          fetchMore: (nextPage) => fetchMore!(
            FetchMoreOptions$Query$Recommendations(
              variables: Variables$Query$Recommendations(page: nextPage),
              updateQuery: (previousResultData, fetchMoreResultData) {
                var list = [
                  ...previousResultData!['Media']!['recommendations']['nodes'],
                  ...fetchMoreResultData!['Media']!['recommendations']['nodes'],
                ];
                fetchMoreResultData['Media']!['recommendations']['nodes'] =
                    list;
                return fetchMoreResultData;
              },
            ),
          ),
          child: MediaCards(
            list: result.parsedData!.Media!.recommendations!.nodes!
                .map((e) => e!.mediaRecommendation!)
                .toList(),
            aspectRatio: 1.9 / 3,
            onTap: (media, index) =>
                context.push('/media/${media.id}/overview'),
          ),
        ),
      ),
    );
  }
}
