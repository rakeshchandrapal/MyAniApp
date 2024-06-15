import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/list_card.dart';
import 'package:myaniapp/providers/list_settings.dart';

class MediaCard extends StatelessWidget {
  const MediaCard({
    super.key,
    this.image,
    this.aspectRatio,
    this.underTitle,
    this.title,
    this.onTap,
    this.onLongPress,
    this.onDoubleTap,
    this.chips,
    this.blur,
    required this.listType,
  })  : assert((listType == ListType.simple && title != null) ||
            listType != ListType.simple),
        assert((listType != ListType.simple && image != null) ||
            listType == ListType.simple);

  final ListType listType;
  final double? aspectRatio;
  final String? image;
  final Widget? underTitle;
  final String? title;
  final GestureTapCallback? onTap;
  final GestureLongPressCallback? onLongPress;
  final GestureDoubleTapCallback? onDoubleTap;
  final List<Widget>? chips;
  final bool? blur;

  @override
  Widget build(BuildContext context) {
    return switch (listType) {
      ListType.grid => GridCard(
          image: image!,
          aspectRatio: aspectRatio ?? GridCard.listRatio,
          blur: blur ?? false,
          chips: chips,
          onDoubleTap: onDoubleTap,
          onLongPress: onLongPress,
          onTap: onTap,
          title: title,
          underTitle: underTitle,
        ),
      ListType.list => ListCard(
          image: image!,
          blur: blur ?? false,
          onDoubleTap: onDoubleTap,
          onLongPress: onLongPress,
          onTap: onTap,
          title: title,
          underTitle: underTitle,
        ),
      ListType.simple => InkWell(
          onTap: onTap,
          onDoubleTap: onDoubleTap,
          onLongPress: onLongPress,
          child: ListTile(
            title: Text(title!),
            subtitle: underTitle,
          ),
        ),
    };
  }
}

class MediaCards extends StatelessWidget {
  const MediaCards({
    super.key,
    required this.listType,
    required this.itemBuilder,
    required this.itemCount,
    this.gridDelegate,
    this.primary,
    this.padding,
    this.shrinkWrap,
  }) : assert((listType == ListType.grid && gridDelegate != null) ||
            listType != ListType.grid);

  final Widget? Function(BuildContext context, int index) itemBuilder;
  final ListType listType;
  final SliverGridDelegate? gridDelegate;
  final int itemCount;
  final bool? primary;
  final EdgeInsets? padding;
  final bool? shrinkWrap;

  @override
  Widget build(BuildContext context) {
    return switch (listType) {
      ListType.grid => GridView.builder(
          shrinkWrap: shrinkWrap ?? false,
          gridDelegate: gridDelegate!,
          itemBuilder: itemBuilder,
          itemCount: itemCount,
          primary: primary,
          padding: padding,
        ),
      ListType.list => ListView.builder(
          shrinkWrap: shrinkWrap ?? false,
          itemBuilder: itemBuilder,
          itemCount: itemCount,
          primary: primary,
          padding: padding,
        ),
      ListType.simple => ListView.builder(
          shrinkWrap: shrinkWrap ?? false,
          itemBuilder: itemBuilder,
          itemCount: itemCount,
          primary: primary,
          padding: padding,
        ),
    };
  }
}
