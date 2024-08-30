import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/common/list_setting_button.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/media_editor/media_editor.dart';
// import 'package:myaniapp/common/media_editor/media_editor.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/lists.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/fragments/list_group.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
// import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/router.gr.dart';
// import 'package:myaniapp/router.gr.dart';
import 'package:myaniapp/utils.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class UserAnimeScreen extends HookWidget {
  const UserAnimeScreen({super.key, @pathParam required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      mediaListQuery,
      variables:
          Variables$Query$MediaList(userName: name, type: Enum$MediaType.ANIME)
              .toJson(),
      fetchPolicy: FetchPolicy.noCache,
      parseData: Query$MediaList.fromJson,
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      loading: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      error: Scaffold(
        appBar: AppBar(),
        body: GraphqlError(
          exception: (snapshot?.errors, snapshot?.linkError),
          refetch: refetch,
        ),
      ),
      builder: () => RefreshIndicator.adaptive(
        onRefresh: refetch,
        notificationPredicate: (notification) => notification.depth == 1,
        child: MediaListView(
          groups: snapshot!.parsedData!.MediaListCollection!.lists!
              .whereType<Fragment$ListGroup>()
              .toList(),
          user: snapshot.parsedData!.MediaListCollection!.user!,
          type: Enum$MediaType.ANIME,
          refetch: refetch,
        ),
      ),
    );
  }
}

class MediaListView extends ConsumerStatefulWidget {
  const MediaListView({
    super.key,
    required this.groups,
    required this.user,
    required this.type,
    this.appBarLeading,
    required this.refetch,
  });

  final List<Fragment$ListGroup> groups;
  final Query$MediaList$MediaListCollection$user user;
  final Enum$MediaType type;
  final Widget? appBarLeading;
  final QueryRefetch refetch;

  @override
  ConsumerState<MediaListView> createState() => _MediaListViewState();
}

class _MediaListViewState extends ConsumerState<MediaListView>
    with TickerProviderStateMixin {
  TabController? _tabController;
  List<Fragment$ListGroup> groups = [];
  late Enum$MediaListSort sort;

  @override
  void didUpdateWidget(covariant MediaListView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!jsonMapEquals(oldWidget.groups, widget.groups) ||
        !jsonMapEquals(oldWidget.user.toJson(), widget.user.toJson())) {
      setGroups(widget.groups);
    }
  }

  @override
  void initState() {
    super.initState();
    setGroups(widget.groups);
  }

  void setGroups(List<Fragment$ListGroup> listGroups) {
    if (groups.isNotEmpty) groups.clear();
    for (var section
        in widget.user.mediaListOptions!.animeList!.sectionOrder!) {
      var entry =
          listGroups.firstWhereOrNull((element) => element.name! == section);

      if (entry != null) groups.add(entry);
    }
    if (listGroups.length != groups.length) {
      var leftover = listGroups.where((p0) => !widget
          .user.mediaListOptions!.animeList!.sectionOrder!
          .contains(p0.name));
      groups.addAll(leftover);
    }
    if (_tabController?.length != groups.length) {
      _tabController = TabController(length: groups.length, vsync: this);
    }
    sort = switch (widget.user.mediaListOptions!.rowOrder!) {
      'score' => Enum$MediaListSort.SCORE_DESC,
      'title' => Enum$MediaListSort.MEDIA_TITLE_NATIVE_DESC,
      'updatedAt' => Enum$MediaListSort.UPDATED_TIME_DESC,
      'id' => Enum$MediaListSort.ADDED_TIME_DESC,
      _ => Enum$MediaListSort.UPDATED_TIME_DESC,
    };
    sortEntries();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  void sortEntries() {
    for (var (index, group) in groups.indexed) {
      switch (sort) {
        case Enum$MediaListSort.SCORE_DESC:
          group.entries!.sort(
            (a, b) {
              if (a!.score == b!.score) {
                return a.media!.title!.userPreferred!
                    .toLowerCase()
                    .compareTo(b.media!.title!.userPreferred!.toLowerCase());
              }

              return (b.score ?? 0).compareTo(a.score ?? 0);
            },
          );
          break;
        case Enum$MediaListSort.MEDIA_TITLE_NATIVE_DESC:
          group.entries!.sort(
            (a, b) => a!.media!.title!.userPreferred!
                .compareTo(b!.media!.title!.userPreferred!),
          );
          break;
        case Enum$MediaListSort.ADDED_TIME_DESC:
          group.entries!.sort(
            (a, b) => a!.id.compareTo(b!.id),
          );
          break;
        default:
          group.entries!.sort(
            (a, b) {
              if (a!.updatedAt == b!.updatedAt) {
                return a.media!.title!.userPreferred!
                    .toLowerCase()
                    .compareTo(b.media!.title!.userPreferred!.toLowerCase());
              }

              return b.updatedAt?.compareTo(a.updatedAt ?? 0) ?? 0;
            },
          );
          break;
      }

      // group.entries!.clear();
      // group.entries!.addAll(list);
      //  = (group as GMediaListData_MediaListCollection_lists).rebuild(
      //     (p0) => p0.entries
      //       ..clear()
      //       ..addAll(list as Iterable<
      //           GMediaListData_MediaListCollection_lists_entries?>));

      groups.setAll(index, [group]);
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var listSettings = ref.watch(listSettingsProvider);
    var setting = widget.type == Enum$MediaType.ANIME
        ? listSettings.animeList
        : listSettings.mangaList;

    return Scaffold(
      appBar: AppBar(
        leading: widget.appBarLeading,
        actions: [
          IconButton(
            onPressed: () {
              var list = groups.expand((element) => element.entries!);

              context.pushRoute(MediaRoute(
                  id: list
                      .elementAt(Random().nextInt(list.length))!
                      .media!
                      .id));
            },
            icon: const Icon(Icons.shuffle),
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () => showModalBottomSheet(
              context: context,
              showDragHandle: true,
              isScrollControlled: true,
              builder: (context) => DraggableScrollableSheet(
                expand: false,
                builder: (context, scrollController) => ListView(
                  controller: scrollController,
                  children: [
                    Enum$MediaListSort.MEDIA_TITLE_NATIVE_DESC,
                    Enum$MediaListSort.ADDED_TIME_DESC,
                    Enum$MediaListSort.SCORE_DESC,
                    Enum$MediaListSort.UPDATED_TIME_DESC,
                  ]
                      .map(
                        (e) => RadioListTile<Enum$MediaListSort>.adaptive(
                          value: e,
                          groupValue: sort,
                          title: Text(e.name.capitalize()),
                          onChanged: (value) {
                            sort =
                                value ?? Enum$MediaListSort.UPDATED_TIME_DESC;
                            sortEntries();
                            context.maybePop();
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            icon: const Icon(Icons.sort),
          ),
          const SizedBox(
            width: 5,
          ),
          ListSettingButton(
            type: setting,
            onUpdate: (type) => ref.read(listSettingsProvider.notifier).update(
                  widget.type == Enum$MediaType.ANIME
                      ? listSettings.copyWith(animeList: type)
                      : listSettings.copyWith(mangaList: type),
                ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: [
            for (var group in groups)
              Tab(text: "${group.name} (${group.entries!.length})")
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          for (var group in groups)
            MediaCards(
              listType: setting,
              itemBuilder: (context, index) {
                var entry = group.entries![index]!;

                int? totalEpiChap =
                    (entry.media!.chapters ?? entry.media!.episodes);

                return MediaCard(
                  listType: setting,
                  image: entry.media!.coverImage!.extraLarge!,
                  title: entry.media!.title!.userPreferred,
                  underTitle: Show(
                    when: setting == ListType.list,
                    child: () => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Show(
                        when: totalEpiChap != null,
                        fallback: Text(
                          style: context.theme.textTheme.labelMedium,
                          "${entry.progress} ${entry.media!.type == Enum$MediaType.ANIME ? "Episodes Watched" : "Chapters Read"}",
                        ),
                        child: () => Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            LinearProgressIndicator(
                              value: (entry.progress ?? 0) / totalEpiChap!,
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
                    ),
                  ),
                  onLongPress: () => MediaSheet.show(context, entry.media!),
                  // onTap: () => context.push("/media/${entry.media!.id}/info",
                  //     extra: {"media": entry.media}),
                  onTap: () => context.pushRoute(MediaRoute(
                    id: entry.mediaId,
                    placeholder: entry.media,
                  )),
                  onDoubleTap: () => MediaEditorDialog.show(
                    context,
                    entry.media!,
                    widget.user.id,
                    onSave: () => widget.refetch(FetchPolicy.cacheOnly),
                    onDelete: () => widget.refetch(),
                  ),
                  blur: entry.media!.isAdult!,
                  chips: [
                    if ((entry.score ?? 0) != 0)
                      GridChip(
                        top: 5,
                        left: 5,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 15,
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              scoreToText(
                                  widget.user.mediaListOptions?.scoreFormat ??
                                      Enum$ScoreFormat.POINT_10,
                                  entry.score ?? 0),
                            ),
                          ],
                        ),
                      ),
                  ],
                );
              },
              itemCount: group.entries!.length,
              padding:
                  setting == ListType.grid ? const EdgeInsets.all(8) : null,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: GridCard.listRatio,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
            ),
        ],
      ),
    );
  }
}
