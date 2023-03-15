import 'dart:io';

import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/widgets/media_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class DetailedListCards extends HookWidget {
  final List list;
  final Function(Fragment$MediaListEntry entry)? openEditDialog;
  final Function()? updateList;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final Widget Function(Fragment$BasicMedia media, ListStyle style)? underTitle;
  const DetailedListCards({
    super.key,
    required this.list,
    this.openEditDialog,
    this.updateList,
    this.physics,
    this.shrinkWrap = false,
    this.underTitle,
  }) : assert(
            (list is List<Fragment$BasicMedia> != true &&
                    list is List<Fragment$MediaListEntry>) !=
                true,
            list);

  @override
  Widget build(BuildContext context) {
    var mutation = useMutation$SaveMediaListEntry(
      WidgetOptions$Mutation$SaveMediaListEntry(
        onCompleted: (p0, p1) => updateList?.call(),
      ),
    );

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        controller: Platform.isWindows ? ScrollController() : null,
        physics: physics,
        shrinkWrap: shrinkWrap,
        children: [
          for (var entry in list)
            Builder(builder: (context) {
              var media = entry is Fragment$BasicMedia
                  ? entry
                  : entry is Fragment$MediaListEntry
                      ? entry.media
                      : null;
              if (media == null) {
                return const SizedBox();
              }
              var maxProgress = (media.episodes ?? media.chapters);

              return SizedBox(
                height: 130,
                child: Card(
                  child: InkWell(
                    onTap: () => context.push('/media/${media.id}'),
                    onDoubleTap: openEditDialog != null &&
                            entry is Fragment$MediaListEntry
                        ? () => openEditDialog!(entry)
                        : null,
                    onLongPress: () => showModalBottomSheet(
                      context: context,
                      builder: Sheet(media: media).build,
                    ),
                    child: Row(
                      children: [
                        AspectRatio(
                          aspectRatio: 9 / 13,
                          child: CachedNetworkImage(
                            imageUrl: media.coverImage!.large!,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  media.title!.userPreferred!,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                              if (underTitle != null)
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: underTitle!(
                                      media, ListStyle.detailedList),
                                ),
                              if (entry is Fragment$MediaListEntry) ...[
                                if (maxProgress != null)
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      right: 8,
                                    ),
                                    child: LinearProgressIndicator(
                                      value:
                                          (entry.progress ?? 0) / maxProgress,
                                    ),
                                  ),
                                if (entry.status ==
                                        Enum$MediaListStatus.CURRENT ||
                                    entry.score != null)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    // crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      if ((entry.score ?? 0) > 0)
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Icon(Icons.star),
                                            Text(entry.score!.ceil().toString())
                                          ],
                                        ),
                                      // const Icon(Icons.add),
                                      IconButton(
                                        onPressed: () => mutation.runMutation(
                                          variables:
                                              Variables$Mutation$SaveMediaListEntry(
                                            id: entry.id,
                                            progress: (entry.progress ?? 0) + 1,
                                          ),
                                        ),
                                        icon: const Icon(
                                          Icons.add,
                                        ),
                                      ),
                                      Text(
                                        '${(entry.progress)}/${entry.media!.episodes ?? entry.media!.chapters ?? '??'}',
                                      ),
                                      IconButton(
                                        onPressed: () =>
                                            (entry.progress ?? 0) > 0
                                                ? mutation.runMutation(
                                                    variables:
                                                        Variables$Mutation$SaveMediaListEntry(
                                                            id: entry.id,
                                                            progress:
                                                                (entry.progress ??
                                                                        0) -
                                                                    1),
                                                  )
                                                : null,
                                        icon: const Icon(Icons.remove),
                                      ),
                                    ],
                                  ),
                              ],
                              // if ('')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            })
        ],
      ),
    );
  }
}

class SimpleCards extends HookWidget {
  final List list;
  final Function(Fragment$MediaListEntry)? openEditDialog;
  final Function()? updateList;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final Widget Function(Fragment$BasicMedia media, ListStyle style)? underTitle;
  const SimpleCards({
    super.key,
    required this.list,
    this.openEditDialog,
    this.updateList,
    this.physics,
    this.shrinkWrap = false,
    this.underTitle,
  }) : assert(
            (list is List<Fragment$BasicMedia> != true &&
                    list is List<Fragment$MediaListEntry>) !=
                true,
            list);

  @override
  Widget build(BuildContext context) {
    var mutation = useMutation$SaveMediaListEntry(
      WidgetOptions$Mutation$SaveMediaListEntry(
        onCompleted: (p0, p1) => updateList?.call(),
      ),
    );

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        controller: Platform.isWindows ? ScrollController() : null,
        physics: physics,
        shrinkWrap: shrinkWrap,
        children: [
          for (var entry in list)
            Builder(builder: (context) {
              var media = entry is Fragment$BasicMedia
                  ? entry
                  : entry is Fragment$MediaListEntry
                      ? entry.media
                      : null;
              if (media == null) {
                return const SizedBox();
              }

              return InkWell(
                onTap: () => context.push('/media/${media.id}'),
                onDoubleTap:
                    openEditDialog != null && entry is Fragment$MediaListEntry
                        ? () => openEditDialog!(entry)
                        : null,
                onLongPress: () => showModalBottomSheet(
                  context: context,
                  builder: Sheet(media: media).build,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          media.title!.userPreferred!,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (underTitle != null)
                        Expanded(
                          child: underTitle!(media, ListStyle.simpleList),
                        ),
                      if (entry is Fragment$MediaListEntry) ...[
                        if (entry.status == Enum$MediaListStatus.CURRENT)
                          Row(
                            // mainAxisAlignment: MainAxisAlignment,
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              // const Icon(Icons.add),
                              IconButton(
                                onPressed: () => mutation.runMutation(
                                  variables:
                                      Variables$Mutation$SaveMediaListEntry(
                                    id: entry.id,
                                    progress: (entry.progress ?? 0) + 1,
                                  ),
                                ),
                                icon: const Icon(
                                  Icons.add,
                                ),
                              ),
                              Text(
                                '${(entry.progress)}/${entry.media!.episodes ?? entry.media!.chapters ?? '??'}',
                              ),
                              IconButton(
                                onPressed: () => (entry.progress ?? 0) > 0
                                    ? mutation.runMutation(
                                        variables:
                                            Variables$Mutation$SaveMediaListEntry(
                                                id: entry.id,
                                                progress:
                                                    (entry.progress ?? 0) - 1),
                                      )
                                    : null,
                                icon: const Icon(Icons.remove),
                              ),
                            ],
                          ),
                      ],
                    ],
                  ),
                ),
              );
            })
        ],
      ),
    );
  }
}
