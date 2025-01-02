import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/common/list_setting_button.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/media_editor/media_editor.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/common/gql_widget.dart';
import 'package:myaniapp/graphql/__gen/fragments/list_group.graphql.dart';
import 'package:myaniapp/graphql/__gen/media_list.graphql.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/routes.dart';
import 'package:myaniapp/utils.dart';
import 'package:mygraphql/graphql.dart';

class MediaListView extends ConsumerStatefulWidget {
  const MediaListView({
    super.key,
    required this.response,
    // required this.groups,
    // required this.user,
    required this.type,
    required this.refetch,
    this.appBarLeading,
    this.appBarActions,
  });

  // final List<Fragment$ListGroup> groups;
  // final Query$MediaList$MediaListCollection$user user;
  final Enum$MediaType type;
  final Widget? appBarLeading;
  final QueryRefetch refetch;
  final List<Widget>? appBarActions;
  final GQLResponse<Query$MediaList> response;

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
    if (widget.response.parsedData?.MediaListCollection?.lists != null &&
        (!jsonMapEquals(
                oldWidget.response.parsedData?.MediaListCollection?.lists,
                widget.response.parsedData?.MediaListCollection?.lists) ||
            !jsonMapEquals(
                oldWidget.response.parsedData?.MediaListCollection?.user
                    ?.toJson(),
                widget.response.parsedData?.MediaListCollection?.user
                    ?.toJson()))) {
      setGroups(widget.response.parsedData!.MediaListCollection!.lists!
          .whereType<Fragment$ListGroup>()
          .toList());
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.response.parsedData?.MediaListCollection?.lists != null) {
      setGroups(widget.response.parsedData!.MediaListCollection!.lists!
          .whereType<Fragment$ListGroup>()
          .toList());
    }
  }

  void setGroups(List<Fragment$ListGroup> listGroups) {
    var user = widget.response.parsedData?.MediaListCollection?.user;
    if (user == null) return;
    if (groups.isNotEmpty) groups.clear();
    if (widget.type == Enum$MediaType.ANIME) {
      for (var section in user.mediaListOptions!.animeList!.sectionOrder!) {
        var entry =
            listGroups.firstWhereOrNull((element) => element.name! == section);

        if (entry != null) groups.add(entry);
      }
      if (listGroups.length != groups.length) {
        var leftover = listGroups.where((p0) => !user
            .mediaListOptions!.animeList!.sectionOrder!
            .contains(p0.name));
        groups.addAll(leftover);
      }
    } else {
      for (var section in user.mediaListOptions!.mangaList!.sectionOrder!) {
        var entry =
            listGroups.firstWhereOrNull((element) => element.name! == section);

        if (entry != null) groups.add(entry);
      }
      if (listGroups.length != groups.length) {
        var leftover = listGroups.where((p0) => !user
            .mediaListOptions!.mangaList!.sectionOrder!
            .contains(p0.name));
        groups.addAll(leftover);
      }
    }
    if (_tabController?.length != groups.length) {
      _tabController = TabController(length: groups.length, vsync: this);
    }
    sort = switch (widget.response.parsedData!.MediaListCollection!.user!
        .mediaListOptions!.rowOrder!) {
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
          if (widget.response.parsedData?.MediaListCollection?.lists !=
              null) ...[
            IconButton(
              onPressed: () {
                var list = groups.expand((element) => element.entries!);

                var media =
                    list.elementAt(Random().nextInt(list.length))!.media!;

                context.push(Routes.media(media.id),
                    extra: {"placeholder": media});
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
                              context.pop();
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
          ],
          ListSettingButton(
            type: setting,
            onUpdate: (type) => ref.read(listSettingsProvider.notifier).update(
                  widget.type == Enum$MediaType.ANIME
                      ? listSettings.copyWith(animeList: type)
                      : listSettings.copyWith(mangaList: type),
                ),
          ),
          ...?widget.appBarActions
        ],
        bottom: widget.response.parsedData?.MediaListCollection?.lists != null
            ? TabBar(
                controller: _tabController,
                isScrollable: true,
                tabs: [
                  for (var group in groups)
                    Tab(text: "${group.name} (${group.entries!.length})")
                ],
              )
            : null,
      ),
      body: GQLWidget(
        refetch: widget.refetch,
        response: widget.response,
        builder: () => TabBarView(
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
                      fallback: Show(
                        when: setting == ListType.simple,
                        child: () => Row(
                          children: [
                            if ((entry.score ?? 0) != 0)
                              Tooltip(
                                message: scoreToText(
                                  widget
                                          .response
                                          .parsedData!
                                          .MediaListCollection!
                                          .user!
                                          .mediaListOptions
                                          ?.scoreFormat ??
                                      Enum$ScoreFormat.POINT_10,
                                  entry.score ?? 0,
                                ),
                                child: const Icon(Icons.star, size: 20),
                              ),
                            if (entry.private == true)
                              const Tooltip(
                                message: "Private",
                                child: Icon(Icons.lock, size: 20),
                              ),
                            if (entry.notes != null)
                              Tooltip(
                                message: entry.notes,
                                child: const Icon(Icons.note_alt, size: 20),
                              ),
                          ],
                        ),
                      ),
                      child: () => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: [
                            Show(
                              when: totalEpiChap != null,
                              fallback: Text(
                                style: context.theme.textTheme.labelMedium,
                                "${entry.progress} ${entry.media!.type == Enum$MediaType.ANIME ? "Episodes Watched" : "Chapters Read"}",
                              ),
                              child: () => Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  LinearProgressIndicator(
                                    value:
                                        (entry.progress ?? 0) / totalEpiChap!,
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
                            Row(
                              children: [
                                if ((entry.score ?? 0) != 0)
                                  Tooltip(
                                    message: scoreToText(
                                      widget
                                              .response
                                              .parsedData!
                                              .MediaListCollection!
                                              .user!
                                              .mediaListOptions
                                              ?.scoreFormat ??
                                          Enum$ScoreFormat.POINT_10,
                                      entry.score ?? 0,
                                    ),
                                    child: const Icon(Icons.star, size: 20),
                                  ),
                                if (entry.private == true)
                                  const Tooltip(
                                    message: "Private",
                                    child: Icon(Icons.lock, size: 20),
                                  ),
                                if (entry.notes != null)
                                  Tooltip(
                                    message: entry.notes,
                                    child: const Icon(Icons.note_alt, size: 20),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    onLongPress: () => MediaSheet.show(context, entry.media!),
                    onTap: () => context.push(Routes.media(entry.mediaId),
                        extra: {"placeholder": entry.media}),
                    onDoubleTap: () => MediaEditorDialog.show(
                      context,
                      entry.media!,
                      widget.response.parsedData!.MediaListCollection!.user!.id,
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
                                  widget
                                          .response
                                          .parsedData!
                                          .MediaListCollection!
                                          .user!
                                          .mediaListOptions
                                          ?.scoreFormat ??
                                      Enum$ScoreFormat.POINT_10,
                                  entry.score ?? 0,
                                ),
                                style: context.theme.textTheme.labelMedium,
                              ),
                            ],
                          ),
                        ),
                      if (entry.notes != null)
                        GridChip(
                          top: entry.score != 0 ? 30 : 5,
                          left: entry.private == true ? 40 : 5,
                          child: Tooltip(
                            message: entry.notes,
                            child: const Icon(
                              Icons.note_alt,
                              size: 15,
                            ),
                          ),
                        ),
                      if (entry.private == true)
                        GridChip(
                          top: entry.score != 0 ? 30 : 5,
                          left: 5,
                          child: const Tooltip(
                            message: "Private",
                            child: Icon(
                              Icons.lock,
                              size: 15,
                            ),
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
      ),
    );
  }
}
