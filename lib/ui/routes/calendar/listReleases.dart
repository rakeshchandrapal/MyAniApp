import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/calendar/listReleases.graphql.dart';
import 'package:myaniapp/ui/common/cards/detailed_list_cards.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/routes/calendar/calendar.dart' as c;
import 'package:myaniapp/ui/routes/routes.gr.dart';
import 'package:myaniapp/utils/utils.dart';

class ListReleases extends StatelessWidget {
  const ListReleases({super.key});

  @override
  Widget build(BuildContext context) {
    return Query$ReleasesList$Widget(
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (result.hasException) {
          return GraphqlError(exception: result.exception!);
        }

        var releases = sortReleases(result.parsedData!.Page!.media!,
            includeUnreleased: true);

        return RefreshIndicator.adaptive(
          onRefresh: refetch!,
          child: ListView.separated(
            itemBuilder: (context, index) {
              var media = releases[index];

              var next = media.nextAiringEpisode;

              return DetailedListCard(
                onTap: () => context.pushRoute(MediaRoute(id: media.id)),
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
                                if (next?.airingAt != null)
                                  TextSpan(
                                      text: c.hourFormat.format(
                                          dateFromTimestamp(next!.airingAt))),
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
