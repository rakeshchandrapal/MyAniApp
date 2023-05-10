import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/media/recommendations/recommendations.graphql.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/pagination.dart';

class Recommendations extends HookWidget {
  const Recommendations({super.key, required this.mediaId});

  final int mediaId;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive();
    var hook = useQuery$Recommendations(
      Options$Query$Recommendations(
        variables: Variables$Query$Recommendations(mediaId: mediaId),
      ),
    );

    return Graphql(
      hook: hook,
      builder: (result) => Pagination(
        hook: hook,
        pageInfo: result.Media!.recommendations!.pageInfo!,
        opts: FetchMoreOptions$Query$Recommendations(
          variables: Variables$Query$Recommendations(
              page: result.Media!.recommendations!.pageInfo!.currentPage! + 1),
          updateQuery: (previousResultData, fetchMoreResultData) {
            var list = [
              ...previousResultData!['Media']!['recommendations']['edges'],
              ...fetchMoreResultData!['Media']!['recommendations']['edges'],
            ];
            fetchMoreResultData['Media']!['recommendations']['edges'] = list;
            return fetchMoreResultData;
          },
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MediaCards(
            list: result.Media!.recommendations!.nodes!
                .map((e) => e?.mediaRecommendation)
                .toList(),
            // primary: false,
            onTap: (index) => context.router.push(MediaRoute(
                id: result.Media!.recommendations!.nodes![index]!
                    .mediaRecommendation!.id)),
          ),
        ),
      ),
    );
  }
}
