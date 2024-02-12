import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/ui/common/cards/detailed_list_cards.dart';
import 'package:myaniapp/ui/routes/calendar/__generated__/listReleases.req.gql.dart';
import 'package:myaniapp/ui/routes/calendar/calendar.dart' as c;
import 'package:myaniapp/utils/utils.dart';

class ListReleases extends StatelessWidget {
  const ListReleases({super.key});

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      operationRequest:
          GReleasesListReq((b) => b..requestId = "releaseListCalendar"),
      builder: (context, response, error, refetch) {
        var releases =
            sortReleases(response!.data!.Page!.media!, includeUnreleased: true)
                .where((element) => element.nextAiringEpisode != null)
                .toList();

        return RefreshIndicator.adaptive(
          onRefresh: refetch,
          child: ListView.separated(
            itemBuilder: (context, index) {
              var media = releases[index];

              var next = media.nextAiringEpisode;

              return DetailedListCard(
                onTap: () => context.push('/media/${media.id}/overview'),
                imageUrl: media.coverImage!.extraLarge!,
                margin: const EdgeInsets.all(4),
                underTitle: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            media.title!.userPreferred!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'Episode ${next?.episode} '),
                                const TextSpan(text: 'airing at '),
                                if (next?.airingAt != null) ...[
                                  TextSpan(
                                    text: c.hourFormat.format(
                                      dateFromTimestamp(next!.airingAt),
                                    ),
                                  ),
                                  const TextSpan(text: ", "),
                                  TextSpan(
                                    text: c.dateFormat.format(
                                      dateFromTimestamp(next.airingAt),
                                    ),
                                  ),
                                ]
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(),
            itemCount: releases.length,
          ),
        );
      },
    );
  }
}
