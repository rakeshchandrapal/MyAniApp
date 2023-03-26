import 'package:MyAniApp/graphql/Releasing.graphql.dart';
import 'package:MyAniApp/utils.dart';
import 'package:MyAniApp/widgets/graphql.dart';
import 'package:MyAniApp/widgets/lists/list_cards.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:timeago/timeago.dart' as timeago;

@RoutePage()
class ReleaseCalenderPage extends HookWidget {
  const ReleaseCalenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$Releasing(
      Options$Query$Releasing(
        variables: Variables$Query$Releasing(),
      ),
    );

    var hasMore = hook.result.parsedData?.Page?.pageInfo?.hasNextPage;

    var nextOpts = FetchMoreOptions$Query$Releasing(
      variables: Variables$Query$Releasing(
          page: hasMore != null
              ? hook.result.parsedData!.Page!.pageInfo!.currentPage! + 1
              : null),
      updateQuery: (previousResultData, fetchMoreResultData) {
        // print(previousResultData);
        var list = [
          ...previousResultData!['Page']!['media'],
          ...fetchMoreResultData!['Page']!['media'],
        ];
        fetchMoreResultData['Page']!['media'] = list;
        return fetchMoreResultData;
      },
    );

    print(hasMore);

    return Scaffold(
      appBar: AppBar(),
      body: Graphql(
        hook: hook,
        builder: (result) {
          var releases = sortReleases(
            result.Page!.media!.whereType<Fragment$ReleasingMedia>().toList(),
            includeUnreleased: true,
          );
          return NotificationListener<ScrollUpdateNotification>(
            onNotification: (notification) {
              if (!hook.result.isLoading &&
                  notification.metrics.pixels >=
                      notification.metrics.maxScrollExtent - 100 &&
                  hasMore == true) {
                hook.fetchMore(nextOpts);
              }

              return true;
            },
            child: DetailedListCards(
              list: releases,
              underTitle: (media, style) {
                var m = media as Fragment$ReleasingMedia;
                var next = m.nextAiringEpisode;
                var passed = next != null
                    ? m.airingSchedule?.edges
                        ?.firstWhere(
                          (a) =>
                              a?.node?.episode ==
                              m.nextAiringEpisode!.episode - 1,
                          orElse: () => null,
                        )
                        ?.node
                    : null;
                if ((next ?? passed) == null) return const SizedBox();
                dynamic use;
                if (isTodayFromTimestamp(passed?.airingAt)) {
                  use = passed;
                } else {
                  use = next;
                }
                // print(m.title?.userPreferred);
                return Text(
                  "Episode ${use?.episode.toString()} ${isTodayFromTimestamp(use.airingAt) ? '(' : 'in '}${timeago.format(
                    dateFromTimestamp(use.airingAt),
                    locale: 'en_short',
                    allowFromNow: true,
                  )}${isTodayFromTimestamp(use.airingAt) ? ' ago)' : ''}",
                  // style: const TextStyle(
                  //   fontSize: 9,
                  // ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
