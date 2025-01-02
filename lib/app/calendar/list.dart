import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/calendar/screen.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/release_list.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/routes.dart';
import 'package:mygraphql/graphql.dart';

class MyListReleases extends HookWidget {
  const MyListReleases({super.key});

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      releasesListQuery,
      parseData: Query$ReleasesList.fromJson,
      mergeResults: defaultMergeResults("Page.media"),
    ));
    var now = DateTime.now();

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      builder: () {
        var sorted = snapshot.parsedData!.Page!.media!
            .where(
              (p0) => p0?.nextAiringEpisode != null,
            )
            .sorted(
              (a, b) => a!.nextAiringEpisode!.airingAt
                  .compareTo(b!.nextAiringEpisode!.airingAt),
            );

        return PaginationView.list(
          pageInfo: snapshot.parsedData!.Page!.pageInfo!,
          req: (nextPage) => fetchMore(
              variables: Variables$Query$ReleasesList(page: nextPage).toJson()),
          // child: ListView.builder(
          builder: (context, index) {
            var media = sorted[index]!;

            var next = media.nextAiringEpisode;

            if (next == null) return const SizedBox();

            var timestamp = next.airingAt.dateFromTimestamp();

            return Card.outlined(
              child: InkWellImage(
                onTap: () => context.push(Routes.media(media.id),
                    extra: {"placeholder": media}),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 120,
                      width: 90,
                      child: GridCard(
                        image: media.coverImage!.extraLarge!,
                        blur: media.isAdult ?? false,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              media.title!.userPreferred!,
                              style: context.theme.textTheme.labelLarge,
                            ),
                            Text(
                              "Episode ${next.episode} ${timestamp.isAfter(now) ? "airing at" : "aired at"} ${dateFormat.format(timestamp)}, ${hourTime.format(timestamp)}",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: sorted.length,
        );
      },
    );
  }
}
