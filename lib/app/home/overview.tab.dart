import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/app/home/forum/screen.dart';
import 'package:myaniapp/app/home/screen.dart';
import 'package:myaniapp/common/list_setting_button.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/media_editor/media_editor.dart';
import 'package:myaniapp/common/review_card.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/common/text_viewall_button.dart';
import 'package:myaniapp/common/thread_card.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/fragments/media_entry.graphql.dart';
import 'package:myaniapp/graphql/__gen/home_overview.graphql.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/routes.dart';
import 'package:mygraphql/graphql.dart';

class HomeLoggedInOverviewTab extends HookConsumerWidget {
  const HomeLoggedInOverviewTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    var (:snapshot, fetchMore: _, :refetch) = c.useQuery(
      GQLRequest(
        homeOverviewQuery,
        variables: Variables$Query$HomeOverview(
                userId: user.value!.parsedData!.Viewer!.id)
            .toJson(),
        parseData: Query$HomeOverview.fromJson,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: const HomeLeadingIcon(),
        actions: [
          IconButton(
            onPressed: () => context.push(Routes.notifications),
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: GQLWidget(
        response: snapshot,
        refetch: refetch,
        builder: () => RefreshIndicator.adaptive(
          onRefresh: refetch,
          child: ListView(
            children: [
              InProgress(
                list: snapshot.parsedData!.list!.mediaList!,
                refetch: refetch,
              ),
              // Threads
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextViewAllButton(
                  title: "Forum Activity",
                  onTap: () =>
                      context.replace(Routes.forums(ForumTabs.overview)),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  var thread = snapshot.parsedData!.forums!.threads![index]!;

                  return ThreadCard(thread: thread);
                },
                itemCount: snapshot.parsedData!.forums!.threads!.length,
              ),
              // Reviews
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextViewAllButton(
                  onTap: () => context.push(Routes.reviews),
                  title: "Reviews",
                ),
              ),
              GridView.builder(
                primary: false,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  mainAxisExtent: 200,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var review = snapshot.parsedData!.reviews!.reviews![index]!;

                  return ReviewCard(review: review);
                },
                itemCount: snapshot.parsedData!.reviews!.reviews!.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InProgress extends ConsumerWidget {
  const InProgress({
    super.key,
    required this.list,
    required this.refetch,
  });

  final List<Fragment$MediaListEntry?> list;
  final Future<void> Function() refetch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);
    var settings = ref.watch(listSettingsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "In Progress",
                style: context.theme.textTheme.titleLarge?.bold,
              ),
              const Spacer(),
              ListSettingButton(
                type: settings.inProgress,
                onUpdate: (type) =>
                    ref.read(listSettingsProvider.notifier).update(
                          settings.copyWith(inProgress: type),
                        ),
              ),
            ],
          ),
        ),
        switch (settings.inProgress) {
          ListType.grid => SizedBox(
              height: 170,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  var entry = list[index]!;

                  return MediaCard(
                    listType: settings.inProgress,
                    image: entry.media!.coverImage!.extraLarge!,
                    title: entry.media!.title!.userPreferred,
                    blur: entry.media!.isAdult ?? false,
                    aspectRatio: GridCard.listRatio,
                    onDoubleTap: () => MediaEditorDialog.show(
                      context,
                      entry.media!,
                      user.value!.parsedData!.Viewer!.id,
                      onSave: refetch,
                      onDelete: refetch,
                    ),
                    onTap: () => context.push(Routes.media(entry.mediaId),
                        extra: {"placeholder": entry.media}),
                    onLongPress: () => MediaSheet.show(context, entry.media!),
                  );
                },
                itemCount: list.length,
              ),
            ),
          ListType.list => ListView.separated(
              shrinkWrap: true,
              primary: false,
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                var entry = list[index]!;

                double? progress;

                if (entry.media!.type == Enum$MediaType.MANGA &&
                    entry.media!.chapters != null) {
                  progress = (entry.progress ?? 0) / entry.media!.chapters!;
                } else if (entry.media!.episodes != null) {
                  progress = (entry.progress ?? 0) / entry.media!.episodes!;
                }

                return MediaCard(
                  listType: settings.inProgress,
                  image: entry.media!.coverImage!.extraLarge!,
                  title: entry.media!.title!.userPreferred,
                  underTitle: Show(
                    when: progress != null,
                    fallback: Text(
                      style: context.theme.textTheme.labelMedium,
                      "${entry.progress} ${entry.media!.type == Enum$MediaType.ANIME ? "Episodes Watched" : "Chapters Read"}",
                    ),
                    child: () => Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        LinearProgressIndicator(
                          value: progress,
                          borderRadius: imageRadius,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "${entry.progress} / ${entry.media!.chapters ?? entry.media!.episodes}",
                          style: context.theme.textTheme.labelMedium,
                        )
                      ],
                    ),
                  ),
                  blur: entry.media!.isAdult ?? false,
                  onDoubleTap: () => MediaEditorDialog.show(
                    context,
                    entry.media!,
                    user.value!.parsedData!.Viewer!.id,
                    onSave: refetch,
                    onDelete: refetch,
                  ),
                  onTap: () => context.push(Routes.media(entry.mediaId),
                      extra: {"placeholder": entry.media}),
                  onLongPress: () => MediaSheet.show(context, entry.media!),
                );
              },
              itemCount: list.length,
            ),
          ListType.simple => ListView.builder(
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) {
                var entry = list[index]!;

                return MediaCard(
                  listType: settings.inProgress,
                  onDoubleTap: () => MediaEditorDialog.show(
                    context,
                    entry.media!,
                    user.value!.parsedData!.Viewer!.id,
                    onSave: refetch,
                    onDelete: refetch,
                  ),
                  onLongPress: () => MediaSheet.show(context, entry.media!),
                  onTap: () => context.push(Routes.media(entry.mediaId),
                      extra: {"placeholder": entry.media}),
                  title: entry.media!.title!.userPreferred!,
                );
              },
              itemCount: list.length,
            ),
        },
      ],
    );
  }
}
