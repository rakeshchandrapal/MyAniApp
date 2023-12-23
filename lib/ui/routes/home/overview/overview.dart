import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/common/media_editor/media_editor.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/home/overview/overview.graphql.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/cards/sheet_card.dart';
import 'package:myaniapp/ui/common/image.dart';
import 'package:myaniapp/ui/common/media_editor/media_editor.dart';
import 'package:myaniapp/ui/common/thread_card.dart';
import 'package:myaniapp/ui/routes/home/app_bar.dart';
import 'package:myaniapp/ui/routes/home/overview/guest.dart';
import 'package:myaniapp/utils/graphql.dart';
import 'package:myaniapp/utils/utils.dart';
import 'package:timeago/timeago.dart' as timeago;

class HomeOverviewPage extends ConsumerWidget {
  const HomeOverviewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    if (user.value == null) return const GuestPage();

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
                onPressed: () => context.push('/notifications'),
                icon: const Icon(Icons.notifications),
              ),
            ),
          )
        ],
      ),
      body: Query$Overview$Widget(
        options: Options$Query$Overview(
          variables: Variables$Query$Overview(userId: user.value!.id),
        ),
        builder: queryBuilder(
          (result, [_, refetch]) => RefreshIndicator.adaptive(
            onRefresh: refetch!,
            child: CustomScrollView(
              slivers: [
                if (result.parsedData!.releasing!.media!.isNotEmpty ==
                    true) ...[
                  const SliverTitle(text: "Releases"),
                  Releasing(
                      list: sortReleases(result.parsedData!.releasing!.media!))
                ],
                const SliverTitle(text: "In Progress"),
                InProgress(list: result.parsedData!.list!),
                SliverTitle(
                  text: "Forum Activity",
                  buttonText: "More",
                  onTap: () => context.push('/forum/recent'),
                ),
                SliverList.builder(
                  itemBuilder: (context, index) {
                    var thread = result.parsedData!.forums!.threads![index]!;

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      child: ThreadCard(thread: thread),
                    );
                  },
                  itemCount: result.parsedData!.forums!.threads!.length,
                ),
                const SliverTitle(text: "Recent Reviews"),
                Reviews(reviews: result.parsedData!.reviews!)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SliverTitle extends StatelessWidget {
  const SliverTitle({
    super.key,
    required this.text,
    this.buttonText,
    this.onTap,
  });

  final String text;
  final String? buttonText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Spacer(),
            if (buttonText != null)
              TextButton(
                onPressed: onTap,
                child: Text(buttonText!),
              ),
          ],
        ),
      ),
    );
  }
}

class Reviews extends StatelessWidget {
  const Reviews({
    super.key,
    required this.reviews,
  });

  final Query$Overview$reviews reviews;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SliverPadding(
      padding: const EdgeInsets.all(8),
      sliver: SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          mainAxisExtent: 240, // childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          var review = reviews.reviews![index]!;

          return Card(
            margin: EdgeInsets.zero,
            child: InkWell(
              borderRadius: imageRadius,
              onTap: () => context.push('/review/${review.id}'),
              child: SizedBox(
                height: 100,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (review.media!.bannerImage != null)
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: imageRadius.topLeft,
                          topRight: imageRadius.topRight,
                        ),
                        child: CImage(
                          imageUrl: review.media!.bannerImage!,
                          height: 80,
                          fit: BoxFit.cover,
                          width: double.maxFinite,
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Review of ${review.media!.title!.userPreferred} by ${review.user!.name}\n',
                            ),
                            TextSpan(
                              text: review.summary,
                              style: TextStyle(
                                color: theme.hintColor,
                                fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 8,
                        bottom: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: theme.hintColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            review.rating!.toString(),
                            style: theme.textTheme.bodySmall,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: reviews.reviews!.length,
      ),
    );
  }
}

class InProgress extends StatelessWidget {
  const InProgress({
    super.key,
    required this.list,
  });

  final Query$Overview$list list;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 180,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          padding: const EdgeInsets.symmetric(horizontal: 2),
          itemBuilder: (context, index) {
            var entry = list.mediaList![index]!;

            return GridCard(
              imageUrl: entry.media!.coverImage!.extraLarge!,
              title: entry.media!.title!.userPreferred!,
              onTap: () => context.push('/media/${entry.mediaId}'),
              aspectRatio: 1.9 / 3,
              onLongPress: () => showMediaCard(context, entry.media!),
              onDoubleTap: () => showMediaEditor(context, entry.media!),
              chips: [
                GridChip(
                  bottom: 2,
                  right: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 25,
                        child: IconButton(
                          onPressed: () => client.value.query$MediaListEntry(
                              Options$Query$MediaListEntry()),
                          icon: const Icon(Icons.add),
                          iconSize: 15,
                          visualDensity: VisualDensity.compact,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                          '${entry.progress?.toString() ?? '0'} / ${entry.media!.type == Enum$MediaType.ANIME ? entry.media!.episodes?.toString() ?? '??' : entry.media!.chapters?.toString() ?? '??'}'),
                    ],
                  ),
                ),
              ],
            );
          },
          itemCount: list.mediaList!.length,
        ),
      ),
    );
  }
}

class Releasing extends StatelessWidget {
  const Releasing({
    super.key,
    required this.list,
  });

  final List<Fragment$ReleasingMedia> list;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 180,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          padding: const EdgeInsets.symmetric(horizontal: 2),
          itemBuilder: (context, index) {
            var media = list[index];

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

            return GridCard(
              imageUrl: media.coverImage!.extraLarge!,
              title: media.title!.userPreferred!,
              onTap: () => context.push('/media/${media.id}'),
              aspectRatio: 1.9 / 3,
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
            );
          },
          itemCount: list.length,
        ),
      ),
    );
  }
}
