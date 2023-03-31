import 'dart:io';

import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/routes.gr.dart';
import 'package:MyAniApp/widgets/image.dart';
import 'package:MyAniApp/widgets/media_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class GridCards extends StatelessWidget {
  final List list;
  final Function(Fragment$MediaListEntry list)? openEditDialog;
  final Function()? updateList;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final Widget Function(Fragment$BasicMedia media, ListStyle style)? underTitle;
  final List<Widget> Function(
      Fragment$BasicMedia media, Fragment$MediaListEntry? entry)? gridChips;
  const GridCards({
    super.key,
    required this.list,
    this.openEditDialog,
    this.updateList,
    this.physics,
    this.shrinkWrap = false,
    this.underTitle,
    this.gridChips,
  }) : assert(
            (list is List<Fragment$BasicMedia> != true &&
                    list is List<Fragment$MediaListEntry>) !=
                true,
            list);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: GridView(
        controller: Platform.isWindows ? ScrollController() : null,
        physics: physics,
        shrinkWrap: shrinkWrap,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: size.width ~/ (size.width > 800 ? 140 : 110),
          childAspectRatio: 10 / 17,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
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

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        GestureDetector(
                          onTap: () => context.router.push(
                            MediaRoute(id: media.id!),
                          ),
                          onLongPress: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => Sheet(media: media),
                            );
                          },
                          onDoubleTap: entry is Fragment$MediaListEntry &&
                                  openEditDialog != null
                              ? () => openEditDialog!(entry)
                              : null,
                          child: CImage(
                            imageUrl: media.coverImage!.large!,
                            imageBuilder: (context, imageProvider) => Container(
                              // height: height,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (gridChips != null)
                          ...gridChips!(media,
                              entry is Fragment$MediaListEntry ? entry : null),
                      ],
                    ),
                  ),
                  Text(
                    media.title!.userPreferred!,
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                    // maxLines: 1,
                  ),
                  if (underTitle != null) underTitle!(media, ListStyle.grid),
                  // Text(
                  //   text!(media),
                  //   style: TextStyle(
                  //     fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                  //     fontWeight: FontWeight.w400,
                  //   ),
                  //   overflow: TextOverflow.ellipsis,
                  // ),
                ],
              );
            })
        ],
      ),
    );
  }
}

class GridChip extends StatelessWidget {
  const GridChip({
    super.key,
    required this.child,
    this.top,
    this.bottom,
    this.right,
    this.left,
  });
  final Widget child;
  final double? top;
  final double? bottom;
  final double? right;
  final double? left;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      top: top,
      right: right,
      left: left,
      child: Container(
        padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.labelSmall?.fontSize,
          ),
          child: child,
        ),
      ),
    );
  }
}
