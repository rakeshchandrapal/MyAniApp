import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/home/overview/overview.graphql.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/cards/card_sheet.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/graphql.dart';
import 'package:myaniapp/ui/common/media_list_group.dart';
import 'package:myaniapp/ui/pages/home/app_bar.dart';
import 'package:myaniapp/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;

@RoutePage()
class OverviewPage extends HookConsumerWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var user = ref.watch(userProvider);
    if (user.value == null) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    var hook = useQuery$Home(
      Options$Query$Home(
        variables: Variables$Query$Home(
          userId: user.value!.id,
          type: Enum$MediaType.ANIME,
        ),
      ),
    );

    return RefreshIndicator(
      notificationPredicate: (notification) {
        print(notification.depth);
        return notification.depth == 1;
      },
      onRefresh: hook.refetch,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          Appbar(
            actions: [
              IconButton(
                onPressed: () =>
                    context.router.push(const NotificationsRoute()),
                icon: const Icon(Icons.notifications),
              ),
            ],
          ),
        ],
        body: Graphql(
          hook: hook,
          builder: (result) {
            var releases = sortReleases(result.releasing!.media!);

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _Releases(releases: releases),
                  ),
                  if (result.list?.lists?.first?.entries?.isNotEmpty == true)
                    _Watching(
                      list: result.list!.lists!.first!,
                      onSave: hook.refetch,
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _Watching extends StatelessWidget {
  const _Watching({
    required this.list,
    required this.onSave,
  });

  final Fragment$ListGroup list;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            'Watching',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListGroup(
            group: list,
            primary: false,
            isEditable: true,
            onSave: onSave,
          ),
        ),
      ],
    );
  }
}

class _Releases extends StatelessWidget {
  const _Releases({required this.releases});

  final List<Fragment$ReleasingMedia> releases;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Releases',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(
              width: 5,
            ),
            itemBuilder: (context, index) {
              var item = releases[index];

              return SizedBox(
                width: 110,
                child: GridCard(
                  // media: item,
                  title: item.title!.userPreferred,
                  imageUrl: item.coverImage!.large!,
                  index: index,
                  onTap: (index) =>
                      context.router.push(MediaRoute(id: item.id)),
                  onLongPress: (index) => showCardSheet(context, item),
                  chips: (index) {
                    var next = item.nextAiringEpisode;
                    var passed = item.airingSchedule?.edges
                        ?.firstWhere(
                          (a) => a?.node?.episode == next!.episode - 1,
                          orElse: () => null,
                        )
                        ?.node;
                    late dynamic use;
                    bool hasPassed = false;

                    if (isTodayFromTimestamp(passed?.airingAt) &&
                        hasTimestampPassed(passed?.airingAt)) {
                      use = passed;
                      hasPassed = true;
                    } else {
                      use = next;
                    }

                    return [
                      GridChip(
                        top: 2,
                        right: 2,
                        child: Text(
                          'Episode ${use.episode.toString()} ${hasPassed ? '(' : 'in '}${timeago.format(dateFromTimestamp(use.airingAt), allowFromNow: true)}${hasPassed ? ')' : ''}'
                              .replaceAll('from now', ''),
                        ),
                      ),
                    ];
                  },
                ),
              );
            },
            itemCount: releases.length,
          ),
        ),
      ],
    );
  }
}
