import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/routes.gr.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/common/media_editor/media_editor.dart';
import 'package:myaniapp/ui/common/number_picker.dart';

import '../../graphql/__generated/ui/common/media_editor/media_editor.graphql.dart';

class MediaListGroups {
  const MediaListGroups({
    required this.groups,
    this.isEditable = false,
    this.onSave,
  });

  final List<Fragment$ListGroup> groups;
  final bool isEditable;
  final VoidCallback? onSave;

  TabBar get tabBar {
    return TabBar(
      isScrollable: true,
      tabs: [
        for (var group in groups)
          Tab(
            text: '${group.name} (${group.entries?.length ?? 0})',
          )
      ],
    );
  }

  Widget get tabView {
    return TabBarView(
      children: [
        for (var group in groups)
          ListGroup(
            group: group,
            isEditable: isEditable,
            onSave: onSave,
          ),
      ],
    );
  }
}

class ListGroup extends HookWidget {
  const ListGroup({
    super.key,
    required this.group,
    this.isEditable = false,
    this.onSave,
    this.primary,
  });

  final Fragment$ListGroup group;
  final bool isEditable;
  final VoidCallback? onSave;
  final bool? primary;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive(wantKeepAlive: true);

    return MediaCards(
      primary: primary,
      list: group.entries!,
      setting: group.entries!.first?.media?.type == Enum$MediaType.ANIME
          ? Setting.animeList
          : Setting.mangaList,
      onTap: (index) {
        var item = group.entries![index];

        context.router.push(MediaRoute(id: item!.media!.id));
      },
      underTitle: (index, style) {
        if (style == ListStyle.grid) return const SizedBox();

        var item = group.entries![index]!;

        var max = item.media?.episodes ?? item.media?.chapters;

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (max != null)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: LinearProgressIndicator(
                  value: ((item.progress ?? 0) / max).toDouble(),
                ),
              ),
            if (isEditable)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Mutation$SaveMediaListEntry$Widget(
                  key: ValueKey(item.progress),
                  options: WidgetOptions$Mutation$SaveMediaListEntry(
                    onCompleted: (p0, p1) => onSave?.call(),
                  ),
                  builder: (p0, p1) => SizedBox(
                    width: 150,
                    child: NumberPicker(
                      holdEnabled: false,
                      current: (item.progress ?? 0).toInt(),
                      max: max?.toInt(),
                      min: 0,
                      onChange: (value) {
                        // print(p0)
                        if (p1?.isLoading == true) return;
                        p0(
                          variables: Variables$Mutation$SaveMediaListEntry(
                            id: item.id,
                            progress: value.toInt(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
          ],
        );
      },
      chips: (index) {
        if (!isEditable) return [];
        var item = group.entries![index];

        if ((item!.media!.episodes ?? item.media!.chapters) != null &&
            item.progress! >= (item.media!.episodes ?? item.media!.chapters!)) {
          return [];
        }

        return [
          Mutation$SaveMediaListEntry$Widget(
            options: WidgetOptions$Mutation$SaveMediaListEntry(
              onCompleted: (p0, p1) => onSave?.call(),
            ),
            builder: (p0, p1) => GridChip(
              bottom: 5,
              right: 5,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20,
                    width: 30,
                    child: IconButton(
                      onPressed: () => p0(
                        variables: Variables$Mutation$SaveMediaListEntry(
                          id: item.id,
                          progress: (item.progress ?? 0) + 1,
                        ),
                      ),
                      icon: const Icon(Icons.plus_one),
                      padding: EdgeInsets.zero,
                      iconSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${item.progress ?? 0}/${item.media!.episodes ?? item.media!.chapters ?? '??'}',
                  ),
                ],
              ),
            ),
          ),
        ];
      },
      onDoubleTap: !isEditable
          ? null
          : (index) {
              var item = group.entries![index];

              showMediaEditor(context, item!.media!, onSave: onSave);
            },
    );
  }
}
