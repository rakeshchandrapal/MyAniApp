import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/common/media_editor/media_editor.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/home/list/list.graphql.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/common/media_editor/media_editor.dart';
import 'package:myaniapp/ui/common/number_picker.dart';
import 'package:myaniapp/ui/routes/home/app_bar.dart';

class HomeAnimePage extends ConsumerWidget {
  const HomeAnimePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    return Query$MediaList$Widget(
      options: Options$Query$MediaList(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: Variables$Query$MediaList(
          type: Enum$MediaType.ANIME,
          userName: user.value!.name,
        ),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading && result.data == null) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (result.hasException) {
          return GraphqlError(exception: result.exception!);
        }

        var lists = result.parsedData!.MediaListCollection!.lists!;

        if (lists.isEmpty) {
          return RefreshIndicator.adaptive(
            onRefresh: refetch!,
            child: Scaffold(
              appBar: const HomeAppBar(),
              body: LayoutBuilder(
                builder: (context, constraints) => ListView(
                  children: [
                    Container(
                      constraints:
                          BoxConstraints(minHeight: constraints.maxHeight),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () => context.push(
                              '/search?type=${Enum$MediaType.ANIME.name}'),
                          child: const Text('Browse animes to add'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        return RefreshIndicator.adaptive(
          onRefresh: refetch!,
          notificationPredicate: (notification) => notification.depth == 1,
          child: ListTabs(
            lists: lists.cast(),
            refresh: refetch,
            user: result.parsedData!.MediaListCollection!.user!,
            setting: Setting.animeList,
          ),
        );
      },
    );
  }
}

class ListTabs extends StatefulWidget {
  const ListTabs({
    super.key,
    required this.lists,
    required this.user,
    required this.refresh,
    required this.setting,
    this.canEdit = true,
    this.leading,
  });

  final List<Fragment$ListGroup> lists;
  final Query$MediaList$MediaListCollection$user user;
  final void Function() refresh;
  final bool canEdit;
  final Setting setting;
  final Widget? leading;

  @override
  State<ListTabs> createState() => _ListTabsState();
}

class _ListTabsState extends State<ListTabs> {
  late Enum$MediaListSort sort;

  @override
  void initState() {
    super.initState();
    sort = switch (widget.user.mediaListOptions!.rowOrder!) {
      'score' => Enum$MediaListSort.SCORE_DESC,
      'title' => Enum$MediaListSort.MEDIA_TITLE_NATIVE_DESC,
      'updatedAt' => Enum$MediaListSort.UPDATED_TIME_DESC,
      'id' => Enum$MediaListSort.ADDED_TIME_DESC,
      _ => Enum$MediaListSort.UPDATED_TIME_DESC,
    };
  }

  @override
  Widget build(BuildContext context) {
    var lists = sortList();
    return DefaultTabController(
      length: lists.length,
      child: Scaffold(
        appBar: HomeAppBar(
          leading: widget.leading,
          actions: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.diceFive),
              onPressed: () {
                var list = lists.expand((element) => element.entries!);
                context.push(
                    '/media/${list.elementAt(Random().nextInt(list.length))!.media!.id}');
              },
            ),
            TextButton.icon(
              onPressed: () => showModalBottomSheet(
                context: context,
                builder: (context) => StatefulBuilder(
                  builder: (context, modalState) => ListView(
                    primary: false,
                    children: [
                      Enum$MediaListSort.MEDIA_TITLE_NATIVE_DESC,
                      Enum$MediaListSort.ADDED_TIME_DESC,
                      Enum$MediaListSort.SCORE_DESC,
                      Enum$MediaListSort.UPDATED_TIME_DESC,
                      Enum$MediaListSort.PROGRESS_DESC,
                      Enum$MediaListSort.STARTED_ON_DESC,
                      Enum$MediaListSort.MEDIA_ID_DESC,
                      Enum$MediaListSort.MEDIA_POPULARITY_DESC,
                    ]
                        .map(
                          (e) => RadioListTile.adaptive(
                            value: e,
                            title: Text(mediaListText(e)),
                            groupValue: sort,
                            onChanged: (value) {
                              setState(() => sort = value ??
                                  Enum$MediaListSort.UPDATED_TIME_DESC);
                              modalState(() {});
                            },
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              icon: const Icon(Icons.sort),
              label: Text(mediaListText(sort)),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: lists
                .map(
                  (e) => Tab(
                    text: '${e.name} (${e.entries!.length})',
                  ),
                )
                .toList(),
          ),
        ),
        body: TabBarView(
          children: lists
              .map(
                (e) => Media(
                  scoreFormat: widget.user.mediaListOptions!.scoreFormat!,
                  list: e,
                  refresh: widget.refresh,
                  setting: widget.setting,
                  canEdit: widget.canEdit,
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  List<Fragment$ListGroup> sortList() {
    var sorted = [...widget.lists];
    var options = widget.setting == Setting.animeList
        ? widget.user.mediaListOptions!.animeList!
        : widget.user.mediaListOptions!.mangaList!;
    var orders = options.sectionOrder!
        .where((order) => sorted.any((list) => list.name == order))
        .toList()
      ..addAll(options.customLists!);

    orders.asMap().forEach((index, order) {
      var sortIndex = sorted.indexWhere((element) => element.name == order);
      if (sortIndex == -1) return;

      var list = sorted.removeAt(sortIndex);

      switch (sort) {
        case Enum$MediaListSort.ADDED_TIME_DESC:
          list.entries?.sort(
            (a, b) => b!.id.compareTo(a!.id),
          );
          break;
        case Enum$MediaListSort.SCORE_DESC:
          list.entries?.sort(
            (a, b) {
              if (a!.score == b!.score) {
                return a.media!.title!.userPreferred!
                    .toLowerCase()
                    .compareTo(b.media!.title!.userPreferred!.toLowerCase());
              }
              return b.score!.compareTo(a.score!);
            },
          );
          break;
        case Enum$MediaListSort.MEDIA_TITLE_NATIVE_DESC:
          list.entries?.sort(
            (a, b) => a!.media!.title!.userPreferred!
                .toLowerCase()
                .compareTo(b!.media!.title!.userPreferred!.toLowerCase()),
          );
          break;
        case Enum$MediaListSort.PROGRESS_DESC:
          list.entries?.sort(
            (a, b) {
              if (a!.progress == b!.progress) {
                return a.media!.title!.userPreferred!
                    .toLowerCase()
                    .compareTo(b.media!.title!.userPreferred!.toLowerCase());
              }
              return b.progress!.compareTo(a.progress!);
            },
          );
          break;
        case Enum$MediaListSort.STARTED_ON_DESC:
          list.entries?.sort(
            (a, b) {
              if (a!.media!.startDate?.toDate() == null ||
                  b!.media!.startDate?.toDate() == null) {
                return a.media!.startDate?.toDate() == null ? 1 : 0;
              }
              return b.media!.startDate!
                  .toDate()!
                  .compareTo(a.media!.startDate!.toDate()!);
            },
          );
          break;
        case Enum$MediaListSort.MEDIA_ID_DESC:
          list.entries?.sort(
            (a, b) {
              if (a!.media!.averageScore == b!.media!.averageScore) {
                return a.media!.title!.userPreferred!
                    .toLowerCase()
                    .compareTo(b.media!.title!.userPreferred!.toLowerCase());
              }

              return (b.media!.averageScore ?? 999)
                  .compareTo(a.media!.averageScore ?? 999);
            },
          );
          break;
        case Enum$MediaListSort.MEDIA_POPULARITY_DESC:
          list.entries?.sort(
            (a, b) {
              return b!.media!.popularity!.compareTo(a!.media!.popularity!);
            },
          );
          break;

        default:
          list.entries?.sort(
            (a, b) {
              if (a!.updatedAt == b!.updatedAt) {
                return a.media!.title!.userPreferred!
                    .toLowerCase()
                    .compareTo(b.media!.title!.userPreferred!.toLowerCase());
              }

              return b.updatedAt!.compareTo(a.updatedAt!);
            },
          );
      }

      if (sorted.length < index) {
        sorted.add(list);
      } else {
        sorted.insert(index, list);
      }
    });

    return sorted;
  }
}

String mediaListText(Enum$MediaListSort sort) {
  return switch (sort) {
    Enum$MediaListSort.MEDIA_TITLE_NATIVE_DESC => 'Title',
    Enum$MediaListSort.SCORE_DESC => 'Score',
    Enum$MediaListSort.PROGRESS_DESC => 'Progress',
    Enum$MediaListSort.UPDATED_TIME_DESC => 'Last Updated',
    Enum$MediaListSort.ADDED_TIME_DESC => 'Last Added',
    Enum$MediaListSort.STARTED_ON_DESC => 'Release Date',
    Enum$MediaListSort.MEDIA_ID_DESC => 'Average Score',
    Enum$MediaListSort.MEDIA_POPULARITY_DESC => 'Popularity',
    _ => sort.name
  };
}

class Media extends StatefulWidget {
  const Media({
    super.key,
    required this.list,
    required this.refresh,
    this.canEdit = true,
    required this.setting,
    required this.scoreFormat,
  });

  final Fragment$ListGroup list;
  final void Function() refresh;
  final bool canEdit;
  final Setting setting;
  final Enum$ScoreFormat scoreFormat;

  @override
  State<Media> createState() => _MediaState();
}

class _MediaState extends State<Media> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return MediaCards(
      list: widget.list.entries!.map((e) => e!.media!).toList(),
      aspectRatio: 1.9 / 3,
      setting: widget.setting,
      onTap: (media, index) => context.push('/media/${media.id}'),
      onDoubleTap: widget.canEdit
          ? (media, index) => showMediaEditor(
                context,
                media as Fragment$MediaFragment,
                onDelete: widget.refresh,
                onSave: widget.refresh,
              )
          : null,
      chips: (_, index) {
        var entry = widget.list.entries![index]!;

        return [
          if ((entry.score?.toInt() ?? 0) > 0)
            GridChip(
              left: 5,
              top: 5,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.star,
                    size: 20,
                  ),
                  switch (widget.scoreFormat) {
                    Enum$ScoreFormat.POINT_100 =>
                      Text(entry.score!.toInt().toString()),
                    Enum$ScoreFormat.POINT_10_DECIMAL =>
                      Text(entry.score!.toString()),
                    Enum$ScoreFormat.POINT_10 =>
                      Text(entry.score!.toInt().toString()),
                    Enum$ScoreFormat.POINT_5 =>
                      Text(entry.score!.toInt().toString()),
                    Enum$ScoreFormat.POINT_3 => RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          switch (entry.score!.toInt()) {
                            1 => ':(',
                            2 => ':|',
                            3 => ':)',
                            _ => ''
                          },
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    _ => Text(entry.score!.toString())
                  },
                ],
              ),
            ),
          if (widget.canEdit && entry.status == Enum$MediaListStatus.CURRENT)
            GridChip(
              maxWidth: 100,
              bottom: 5,
              right: 5,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 25,
                    width: 30,
                    child: IconButton(
                      onPressed: () => client.value.mutate$SaveMediaListEntry(
                        Options$Mutation$SaveMediaListEntry(
                          variables: Variables$Mutation$SaveMediaListEntry(
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
        ];
      },
      underTitle: (media, style, index) {
        if (style != ListStyle.detailedList) return null;
        var entry = widget.list.entries![index]!;

        return Column(
          children: [
            if ((media.episodes ?? media.chapters ?? 0) > 0)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: LinearProgressIndicator(
                  value: (entry.progress ?? 0) /
                      (media.episodes ?? media.chapters)!,
                ),
              ),
            // const Spacer(),
            if (widget.canEdit)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: NumberPicker(
                  hint: 'Episode count',
                  number: entry.progress,
                  onIncrement: () => client.value.mutate$SaveMediaListEntry(
                    Options$Mutation$SaveMediaListEntry(
                      variables: Variables$Mutation$SaveMediaListEntry(
                        id: entry.id,
                        progress: (entry.progress ?? 0) + 1,
                      ),
                    ),
                  ),
                  onDecrement: () => client.value.mutate$SaveMediaListEntry(
                    Options$Mutation$SaveMediaListEntry(
                      variables: Variables$Mutation$SaveMediaListEntry(
                        id: entry.id,
                        progress: (entry.progress ?? 0) - 1,
                      ),
                    ),
                  ),
                ),
              )
          ],
        );
      },
    );
  }
}
