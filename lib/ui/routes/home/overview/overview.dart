import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/common/media_editor/media_editor.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/home/overview/overview.graphql.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/cards/sheet_card.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/media_editor/media_editor.dart';
import 'package:myaniapp/ui/common/thread_card.dart';
import 'package:myaniapp/ui/routes/forum/overview/overview.dart';
import 'package:myaniapp/ui/routes/home/app_bar.dart';
import 'package:myaniapp/ui/routes/home/overview/guest.dart';
import 'package:myaniapp/ui/routes/routes.gr.dart';
import 'package:myaniapp/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;

@RoutePage()
class HomeOverviewPage extends ConsumerWidget {
  const HomeOverviewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    if (user.value == null) return const Guest();

    return Scaffold(
      appBar: HomeAppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
              label: (user.value!.unreadNotificationCount ?? 0) > 0
                  ? Text(user.value!.unreadNotificationCount!.toString())
                  : null,
              isLabelVisible: (user.value!.unreadNotificationCount ?? 0) > 0,
              offset: const Offset(-2, 2),
              child: IconButton(
                onPressed: () => context.pushRoute(const NotificationsRoute()),
                icon: const Icon(Icons.notifications),
              ),
            ),
          )
        ],
      ),
      body: Query$Overview$Widget(
        options: Options$Query$Overview(
          variables: Variables$Query$Overview(
            userId: user.value!.id,
            type: Enum$MediaType.ANIME,
          ),
        ),
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (result.hasException) {
            return GraphqlError(exception: result.exception!);
          }

          // print(result.parsedData!.releasing!.toJson());

          return RefreshIndicator.adaptive(
            onRefresh: refetch!,
            child: ListView(
              children: [
                if (result.parsedData?.releasing?.media?.isNotEmpty == true)
                  _Releases(
                    releases: result.parsedData!.releasing!.media!.cast(),
                  ),
                if (result.parsedData?.list?.mediaList?.isNotEmpty == true)
                  _Watching(
                    entries: result.parsedData!.list!.mediaList!.cast(),
                    refetch: refetch,
                  ),
                _RecentActivity(result.parsedData!.forums!.threads!.cast()),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _RecentActivity extends StatelessWidget {
  const _RecentActivity(this.threads);

  final List<Fragment$ThreadFragment> threads;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Activity',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              TextButton(
                onPressed: () => context.router
                    .push(ForumOverviewRoute(filter: ForumFilter.recent.name)),
                child: const Text('View more'),
              )
            ],
          ),
        ),
        ListView.separated(
          padding: const EdgeInsets.all(8),
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) {
            var thread = threads[index];

            return ThreadCard(thread: thread);
          },
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: threads.length,
        )
      ],
    );
  }
}

class _Watching extends StatelessWidget {
  const _Watching({
    required this.entries,
    required this.refetch,
  });

  final List<Fragment$MediaListEntry> entries;
  final VoidCallback refetch;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Currently Watching',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(
          height: 190,
          child: ListView.builder(
            padding: const EdgeInsets.only(right: 10),
            scrollDirection: Axis.horizontal,
            itemCount: entries.length,
            itemBuilder: (context, index) {
              var entry = entries[index];

              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GridCard(
                  imageUrl: entry.media!.coverImage!.extraLarge!,
                  title: entry.media!.title!.userPreferred,
                  onTap: () =>
                      context.pushRoute(MediaRoute(id: entry.media!.id)),
                  onDoubleTap: () => showMediaEditor(
                    context,
                    entry.media!,
                    onDelete: refetch,
                    onSave: refetch,
                  ),
                  chips: ((entry.media!.episodes ?? entry.media!.chapters) !=
                              null &&
                          entry.progress! >=
                              (entry.media!.episodes ?? entry.media!.chapters!))
                      ? null
                      : [
                          GridChip(
                            bottom: 5,
                            right: 5,
                            maxWidth: 100,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 25,
                                  width: 30,
                                  child: IconButton(
                                    onPressed: () =>
                                        client.value.mutate$SaveMediaListEntry(
                                      Options$Mutation$SaveMediaListEntry(
                                        variables:
                                            Variables$Mutation$SaveMediaListEntry(
                                          id: entry.id,
                                          progress: (entry.progress ?? 0) + 1,
                                        ),
                                      ),
                                    ),
                                    icon: const Icon(Icons.add),
                                    padding: EdgeInsets.zero,
                                    iconSize: 15,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '${entry.progress ?? '0'} / ${entry.media!.episodes ?? entry.media!.chapters ?? '??'}',
                                )
                              ],
                            ),
                          ),
                        ],
                ),
              );
            },
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
    var sorted = sortReleases(releases);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Releasing',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
            padding: const EdgeInsets.only(right: 10),
            scrollDirection: Axis.horizontal,
            itemCount: sorted.length,
            itemBuilder: (context, index) {
              var media = sorted[index];

              var next = media.nextAiringEpisode;
              var passed = media.airingSchedule?.edges
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

              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GridCard(
                  imageUrl: media.coverImage!.extraLarge!,
                  title: media.title!.userPreferred,
                  aspectRatio: 1.9 / 3,
                  onTap: () => context.pushRoute(
                    MediaRoute(id: media.id),
                  ),
                  onLongPress: () => showMediaCard(context, media),
                  chips: [
                    GridChip(
                      top: 2,
                      right: 2,
                      child: Text(
                        'Episode ${use.episode.toString()} ${hasPassed ? '(' : 'in '}${timeago.format(dateFromTimestamp(use.airingAt), allowFromNow: true)}${hasPassed ? ')' : ''}'
                            .replaceAll('from now', ''),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
