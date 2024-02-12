import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/routes/media/similar/__generated__/similar.req.gql.dart';

class MediaSimilarPage extends StatefulWidget {
  const MediaSimilarPage({super.key, required this.id});

  final int id;

  @override
  State<MediaSimilarPage> createState() => _MediaSimilarPageState();
}

class _MediaSimilarPageState extends State<MediaSimilarPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return GQLRequest(
      operationRequest: GRecommendationsReq((b) => b
        ..requestId = "mediaRecommendations"
        ..vars.mediaId = widget.id),
      builder: (context, response, error, refetch) => GraphqlPagination(
        pageInfo: response!.data!.Media!.recommendations!.pageInfo!,
        req: (nextPage) => GRecommendationsReq(
          (b) => b
            ..replace(response.operationRequest as GRecommendationsReq)
            ..vars.page = nextPage
            ..updateResult = (previous, result) => result?.rebuild((p0) => p0
              ..Media.recommendations.nodes.insertAll(
                  0,
                  previous?.Media?.recommendations?.nodes?.whereNot((p0) =>
                          result.Media?.recommendations?.nodes?.contains(p0) ??
                          false) ??
                      [])),
        ),
        child: MediaCards(
          list: response.data!.Media!.recommendations!.nodes!
              .map((e) => e!.mediaRecommendation!)
              .toList(),
          aspectRatio: 1.9 / 3,
          onTap: (media, index) => context.push('/media/${media.id}/overview'),
        ),
      ),
    );
    // return Query$Recommendations$Widget(
    //   options: Options$Query$Recommendations(
    //     variables: Variables$Query$Recommendations(mediaId: widget.id),
    //   ),
    //   builder: queryBuilder(
    //     (result, [fetchMore, refetch]) => GraphqlPagination(
    //       pageInfo: result.parsedData!.Media!.recommendations!.pageInfo!,
    //       fetchMore: (nextPage) => fetchMore!(
    //         FetchMoreOptions$Query$Recommendations(
    //           variables: Variables$Query$Recommendations(page: nextPage),
    //           updateQuery: (previousResultData, fetchMoreResultData) {
    //             var list = [
    //               ...previousResultData!['Media']!['recommendations']['nodes'],
    //               ...fetchMoreResultData!['Media']!['recommendations']['nodes'],
    //             ];
    //             fetchMoreResultData['Media']!['recommendations']['nodes'] =
    //                 list;
    //             return fetchMoreResultData;
    //           },
    //         ),
    //       ),
    //       child: MediaCards(
    //         list: result.parsedData!.Media!.recommendations!.nodes!
    //             .map((e) => e!.mediaRecommendation!)
    //             .toList(),
    //         aspectRatio: 1.9 / 3,
    //         onTap: (media, index) =>
    //             context.push('/media/${media.id}/overview'),
    //       ),
    //     ),
    //   ),
    // );
  }

  @override
  bool get wantKeepAlive => true;
}
