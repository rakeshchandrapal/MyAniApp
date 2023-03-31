import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/graphql/User.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/pages/lists/shared.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/widgets/lists/cards.dart';
import 'package:MyAniApp/widgets/lists/grid_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MediaListGroups extends StatefulWidget {
  const MediaListGroups({
    super.key,
    required this.groups,
    required this.type,
    this.gridChips,
    this.underTitle,
    this.drawer,
    this.leading,
    this.leadingWidth,
    this.actions,
    this.isEditable = false,
    this.onUpdate,
  });
  final Enum$MediaType type;
  final List<Fragment$ListGroup> groups;
  final bool isEditable;
  final Widget? drawer;
  final Widget Function(BuildContext)? leading;
  final double? leadingWidth;
  final List<Widget>? actions;
  final Widget Function(Fragment$BasicMedia media, ListStyle style)? underTitle;
  final List<Widget> Function(
      Fragment$BasicMedia media, Fragment$MediaListEntry? entry)? gridChips;

  final Function()? onUpdate;

  @override
  State<MediaListGroups> createState() => _MediaListGroupsState();
}

class _MediaListGroupsState extends State<MediaListGroups> {
  late TextEditingController controller;
  String value = '';
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    controller.removeListener(listener);
  }

  void listener() {
    setState(() {
      value = controller.value.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    var sorted = value.isEmpty == true
        ? widget.groups
        : widget.groups.map((e) {
            return e.copyWith(
                entries: e.entries
                    ?.where(
                      (element) => element!.media!.title!.userPreferred!
                          .contains(controller.value.text),
                    )
                    .toList());
          }).toList();

    return DefaultTabController(
      length: sorted.length,
      child: Scaffold(
        drawer: widget.drawer,
        drawerEdgeDragWidth: MediaQuery.of(context).size.width / 6,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              leading: widget.leading?.call(context),
              leadingWidth: widget.leadingWidth,
              actions: widget.actions,
              title: TextField(
                controller: controller,
                decoration: InputDecoration(
                  // border: const OutlineInputBorder(),
                  suffix: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () => controller.text = '',
                  ),
                ),
              ),
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  for (var group in sorted)
                    Tab(
                      text: '${group.name} (${group.entries?.length})',
                    )
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              for (var group in sorted)
                ListGroup(
                  group: group,
                  type: widget.type,
                  gridChips: widget.gridChips,
                  underTitle: widget.underTitle,
                  isEditable: widget.isEditable,
                  onUpdate: widget.onUpdate,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListGroup extends HookWidget {
  const ListGroup({
    super.key,
    required this.group,
    required this.type,
    this.isEditable = false,
    this.gridChips,
    this.underTitle,
    this.onUpdate,
    this.shrinkWrap = false,
  });
  final Enum$MediaType type;
  final Fragment$ListGroup group;
  final bool isEditable;
  final Widget Function(Fragment$BasicMedia media, ListStyle style)? underTitle;
  final List<Widget> Function(
      Fragment$BasicMedia media, Fragment$MediaListEntry? entry)? gridChips;
  final Function()? onUpdate;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive(wantKeepAlive: true);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Cards(
        list: group.entries!,
        shrinkWrap: shrinkWrap,
        setting: type == Enum$MediaType.ANIME
            ? SettingStrings.animeList
            : SettingStrings.mangaList,
        gridChips: !isEditable
            ? gridChips
            : (media, entry) => getGridChips(media, entry),
        underTitle: underTitle,
        openEditDialog: isEditable
            ? (list) => openEditDialog(context, list, onUpdate)
            : null,
      ),
    );
  }

  List<Widget> getGridChips(
      Fragment$BasicMedia media, Fragment$MediaListEntry? entry) {
    // print(entry);
    return [
      if (entry != null && entry.status == Enum$MediaListStatus.CURRENT)
        Mutation$SaveMediaListEntry$Widget(
          options: WidgetOptions$Mutation$SaveMediaListEntry(
            onCompleted: (p0, p1) => onUpdate?.call(),
            onError: print,
          ),
          builder: (p0, p1) => GridChip(
            bottom: 5,
            right: 5,
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 30,
                  child: TextButton(
                    // splashRadius: 5,
                    // padding: const EdgeInsets.all(8),
                    // onPressed: () => print('hii'),
                    onPressed: () => p0(
                      variables: Variables$Mutation$SaveMediaListEntry(
                        id: entry.id,
                        progress: (entry.progress ?? 0) + 1,
                      ),
                    ),
                    child: const Icon(Icons.plus_one, size: 15),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                    '${entry.progress}/${entry.media!.episodes ?? entry.media!.chapters ?? '??'}')
              ],
            ),
          ),
        ),
      ...(gridChips?.call(media, entry) ?? [])
    ];
  }
}
