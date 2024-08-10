import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/app/calendar/__generated__/list.req.gql.dart';
import 'package:myaniapp/app/calendar/page.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:myaniapp/utils.dart';

class MyListReleases extends StatelessWidget {
  const MyListReleases({super.key});

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();

    return GQLRequest(
      operationRequest: GReleasesListReq(
        (b) => b..requestId = "myListReleases",
      ),
      builder: (context, response, error, refetch) {
        var sorted = response!.data!.Page!.media!
            .where(
              (p0) => p0?.nextAiringEpisode != null,
            )
            .sorted(
              (a, b) => a!.nextAiringEpisode!.airingAt
                  .compareTo(b!.nextAiringEpisode!.airingAt),
            );

        return GraphqlPagination(
          pageInfo: response.data!.Page!.pageInfo!,
          req: (nextPage) => (response.operationRequest as GReleasesListReq)
              .rebuild((p0) => p0
                ..vars.page = nextPage
                ..updateResult = (previous, result) => result?.rebuild((p0) =>
                    p0
                      ..Page.media.insertAll(
                          0,
                          previous?.Page?.media?.whereNot((p0) =>
                                  result.Page?.media?.contains(p0) ?? false) ??
                              []))),
          child: ListView.builder(
            itemBuilder: (context, index) {
              var media = sorted[index]!;

              var next = media.nextAiringEpisode;

              if (next == null) return const SizedBox();

              var timestamp = dateFromTimestamp(next.airingAt);

              return Card.outlined(
                child: InkWellImage(
                  onTap: () => context.pushRoute(
                    MediaRoute(id: media.id, placeholder: media),
                  ),
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
          ),
        );
      },
    );
  }
}
