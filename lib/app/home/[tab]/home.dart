import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/home/%5Btab%5D/page.dart';
import 'package:myaniapp/app/home/__generated__/overview.data.gql.dart';
import 'package:myaniapp/app/home/__generated__/overview.req.gql.dart';
import 'package:myaniapp/app/reviews/card.dart';
import 'package:myaniapp/common/list_setting_button.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/list_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/media_editor/media_editor.dart';
import 'package:myaniapp/common/overlay/menu.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/common/thread_card.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/providers/user.dart';

class HomeLoggedInOverviewPage extends ConsumerStatefulWidget {
  const HomeLoggedInOverviewPage({super.key});

  @override
  ConsumerState<HomeLoggedInOverviewPage> createState() =>
      _HomeLoggedInOverviewPageState();
}

class _HomeLoggedInOverviewPageState
    extends ConsumerState<HomeLoggedInOverviewPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    var user = ref.read(userProvider);

    return Scaffold(
      appBar: AppBar(
        leading: const HomeLeadingIcon(),
        actions: [
          IconButton(
            onPressed: () => context.push("/notifications"),
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: GQLRequest(
        operationRequest: GHomeOverviewReq((b) => b
          ..requestId = "homeLoggedInPage"
          ..vars.userId = user.value!.data!.Viewer!.id),
        builder: (context, response, error, refetch) =>
            RefreshIndicator.adaptive(
          onRefresh: refetch,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Welcome ${user.value!.data!.Viewer!.name}!",
                  style: context.theme.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              // SizedBox(
              //   height: 190,
              //   child: ListView.separated(
              //     padding: const EdgeInsets.symmetric(horizontal: 8),
              //     shrinkWrap: true,
              //     primary: false,
              //     scrollDirection: Axis.horizontal,
              //     separatorBuilder: (context, index) =>
              //         const SizedBox(width: 8),
              //     itemBuilder: (context, index) {
              //       var entry = response.data!.list!.mediaList![index]!;
              //       return GridCard(
              //         image: entry.media!.coverImage!.extraLarge!,
              //         title: entry.media!.title!.userPreferred,
              //         blur: entry.media!.isAdult ?? false,
              //         aspectRatio: GridCard.listRatio,
              //         onDoubleTap: () => MediaEditorDialog.show(
              //           context,
              //           entry.media!,
              //           user.value!.data!.Viewer!.id,
              //           onSave: refetch,
              //           onDelete: refetch,
              //         ),
              //         onTap: () => context.push(
              //             "/media/${entry.media!.id}/overview",
              //             extra: {"media": entry.media}),
              //         onLongPress: () => MediaSheet.show(context, entry.media!),
              //       );
              //     },
              //     itemCount: response!.data!.list!.mediaList!.length,
              //   ),
              // ),
              InProgress(
                list: response!.data!.list!.mediaList!,
                refetch: refetch,
              ),
              // Threads
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "Forum Activity",
                      style: context.theme.textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () => context.push('/forum/overview'),
                      child: const Text("All"),
                    )
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  var thread = response.data!.forums!.threads![index]!;

                  return ThreadCard(thread: thread);
                },
                itemCount: response.data!.forums!.threads!.length,
              ),
              // Reviews
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Recent Reviews",
                  style: context.theme.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Stack(
                children: [
                  GestureDetector(
                    // onTap: () => overlayEntry?.remove(),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    child: Container(
                      height: 20,
                      // width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height,
                      // color: Colors.black,
                      child: const Center(
                        child: Text(
                          'This is a pop-up dialog',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GridView.builder(
                primary: false,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  mainAxisExtent: 200,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var review = response.data!.reviews!.reviews![index]!;

                  return ReviewCard(review: review);
                },
                itemCount: response.data!.reviews!.reviews!.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class InProgress extends ConsumerWidget {
  const InProgress({
    super.key,
    required this.list,
    required this.refetch,
  });

  final BuiltList<GHomeOverviewData_list_mediaList?> list;
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
                style: context.theme.textTheme.titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
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
              height: 190,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  var entry = list[index]!;

                  return OverlayMenu(
                    items: [
                      OverlayMenuItem(
                        onTap: (closeOverlay) {
                          closeOverlay();
                          MediaSheet.show(context, entry.media!);
                        },
                        child: const Text("Preview"),
                        icon: const Icon(Icons.remove_red_eye),
                      ),
                      OverlayMenuItem(
                        onTap: (closeOverlay) {
                          closeOverlay();
                          MediaEditorDialog.show(
                            context,
                            entry.media!,
                            user.value!.data!.Viewer!.id,
                            onSave: refetch,
                            onDelete: refetch,
                          );
                        },
                        child: const Text("Editor"),
                        icon: const Icon(Icons.edit),
                      ),
                    ],
                    builder: (showOverlay) => GridCard(
                      image: entry.media!.coverImage!.extraLarge!,
                      title: entry.media!.title!.userPreferred,
                      blur: entry.media!.isAdult ?? false,
                      aspectRatio: GridCard.listRatio,
                      onDoubleTap: () => MediaEditorDialog.show(
                        context,
                        entry.media!,
                        user.value!.data!.Viewer!.id,
                        onSave: refetch,
                        onDelete: refetch,
                      ),
                      onTap: () => context.push(
                          "/media/${entry.media!.id}/overview",
                          extra: {"media": entry.media}),
                      onLongPress: showOverlay,
                    ),
                  );
                },
                itemCount: list.length,
              ),
            ),
          ListType.list => ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              shrinkWrap: true,
              primary: false,
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                var entry = list[index]!;

                double? progress;

                if (entry.media!.type == GMediaType.MANGA &&
                    entry.media!.chapters != null) {
                  progress = (entry.progress ?? 0) / entry.media!.chapters!;
                } else if (entry.media!.episodes != null) {
                  progress = (entry.progress ?? 0) / entry.media!.episodes!;
                }

                return OverlayMenu(
                  items: [
                    OverlayMenuItem(
                      onTap: (closeOverlay) {
                        closeOverlay();
                        MediaSheet.show(context, entry.media!);
                      },
                      child: const Text("Preview"),
                      icon: const Icon(Icons.remove_red_eye),
                    ),
                    OverlayMenuItem(
                      onTap: (closeOverlay) {
                        closeOverlay();
                        MediaEditorDialog.show(
                          context,
                          entry.media!,
                          user.value!.data!.Viewer!.id,
                          onSave: refetch,
                          onDelete: refetch,
                        );
                      },
                      child: const Text("Editor"),
                      icon: const Icon(Icons.edit),
                    ),
                  ],
                  builder: (showOverlay) => ListCard(
                    image: entry.media!.coverImage!.extraLarge!,
                    title: entry.media!.title!.userPreferred,
                    underTitle: Show(
                      when: progress != null,
                      fallback: Text(
                        style: context.theme.textTheme.labelMedium,
                        "${entry.progress} ${entry.media!.type == GMediaType.ANIME ? "Episodes Watched" : "Chapters Read"}",
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
                      user.value!.data!.Viewer!.id,
                      onSave: refetch,
                      onDelete: refetch,
                    ),
                    onTap: () => context.push(
                        "/media/${entry.media!.id}/overview",
                        extra: {"media": entry.media}),
                    onLongPress: showOverlay,
                  ),
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

                return OverlayMenu(
                  items: [
                    OverlayMenuItem(
                      onTap: (closeOverlay) {
                        closeOverlay();
                        MediaSheet.show(context, entry.media!);
                      },
                      child: const Text("Preview"),
                      icon: const Icon(Icons.remove_red_eye),
                    ),
                    OverlayMenuItem(
                      onTap: (closeOverlay) {
                        closeOverlay();
                        MediaEditorDialog.show(
                          context,
                          entry.media!,
                          user.value!.data!.Viewer!.id,
                          onSave: refetch,
                          onDelete: refetch,
                        );
                      },
                      child: const Text("Editor"),
                      icon: const Icon(Icons.edit),
                    ),
                  ],
                  builder: (showOverlay) => InkWell(
                    onDoubleTap: () => MediaEditorDialog.show(
                      context,
                      entry.media!,
                      user.value!.data!.Viewer!.id,
                      onSave: refetch,
                      onDelete: refetch,
                    ),
                    onTap: () => context.push(
                        "/media/${entry.media!.id}/overview",
                        extra: {"media": entry.media}),
                    onLongPress: showOverlay,
                    child: ListTile(
                      title: Text(entry.media!.title!.userPreferred!),
                    ),
                  ),
                );
              },
              itemCount: list.length,
            ),
        },
      ],
    );
  }
}
