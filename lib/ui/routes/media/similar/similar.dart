import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/media/similar/similar.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/pagination.dart';

@RoutePage()
class MediaSimilarPage extends StatelessWidget {
  const MediaSimilarPage(
      {super.key, @PathParam.inherit('id') required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Query$Recommendations$Widget(
      options: Options$Query$Recommendations(
        variables: Variables$Query$Recommendations(mediaId: id),
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
          pageInfo: result.parsedData!.Media!.recommendations!.pageInfo!,
          opts: FetchMoreOptions$Query$Recommendations(
            variables: Variables$Query$Recommendations(
                page: result.parsedData!.Media!.recommendations!.pageInfo!
                        .currentPage! +
                    1),
            updateQuery: (previousResultData, fetchMoreResultData) {
              var list = [
                ...previousResultData!['Media']!['recommendations']['nodes'],
                ...fetchMoreResultData!['Media']!['recommendations']['nodes'],
              ];
              fetchMoreResultData['Media']!['recommendations']['nodes'] = list;
              return fetchMoreResultData;
            },
          ),
          fetchMore: fetchMore!,
          child: MediaCards(
            list: result.parsedData!.Media!.recommendations!.nodes!
                .map((e) => e!.mediaRecommendation!)
                .toList(),
            aspectRatio: 1.9 / 3,
            onTap: (media, index) => context.pushRoute(
              MediaRoute(id: media.id),
            ),
          ),
        );
      },
    );
  }
}
