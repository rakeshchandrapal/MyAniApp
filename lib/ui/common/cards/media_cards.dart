import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/ui/common/cards/detailed_list_cards.dart';
import 'package:myaniapp/ui/common/cards/grid_cards.dart';
import 'package:myaniapp/ui/common/cards/sheet_card.dart';
import 'package:myaniapp/ui/common/cards/simple_list_cards.dart';

class MediaCards<T extends Fragment$MediaFragment> extends ConsumerWidget {
  const MediaCards({
    super.key,
    this.underTitle,
    this.chips,
    this.onDoubleTap,
    this.onTap,
    this.setting,
    required this.list,
    this.primary,
    this.aspectRatio = 2 / 3,
    this.padding = const EdgeInsets.all(8),
  });

  final Widget? Function(T media, ListStyle style, int index)? underTitle;
  final List<Widget> Function(T media, int index)? chips;
  final void Function(T media, int index)? onDoubleTap;
  final void Function(T media, int index)? onTap;
  final Setting? setting;
  final List<T> list;
  final bool? primary;
  final double aspectRatio;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var settings = ref.watch(settingsProvider);

    var style = switch (setting) {
      Setting.animeList => settings.animeList,
      Setting.mangaList => settings.mangaList,
      _ => settings.fallbackList,
    };

    return switch (style) {
      ListStyle.grid => GridCards(
          padding: padding,
          primary: primary,
          card: (index) {
            var media = list[index];
            var underTitleWidget =
                underTitle?.call(media, ListStyle.grid, index);

            return GridCard(
              imageUrl: media.coverImage!.extraLarge!,
              title: media.title!.userPreferred,
              underTitle: underTitleWidget,
              onTap: onTap != null ? () => onTap!(media, index) : null,
              chips: chips != null ? chips!(media, index) : null,
              aspectRatio: aspectRatio,
              onDoubleTap:
                  onDoubleTap != null ? () => onDoubleTap!(media, index) : null,
              onLongPress: () => showMediaCard(context, media),
            );
          },
          itemCount: list.length,
        ),
      ListStyle.detailedList => DetailedListCards(
          padding: padding,
          primary: primary,
          card: (index) {
            var media = list[index];
            var underTitleWidget =
                underTitle?.call(media, ListStyle.detailedList, index);

            return DetailedListCard(
              imageUrl: media.coverImage!.extraLarge!,
              title: media.title!.userPreferred,
              underTitle: underTitleWidget,
              onTap: onTap != null ? () => onTap!(media, index) : null,
              onDoubleTap:
                  onDoubleTap != null ? () => onDoubleTap!(media, index) : null,
              onLongPress: () => showMediaCard(context, media),
            );
          },
          itemCount: list.length,
        ),
      ListStyle.simpleList => SimpleListCards(
          primary: primary,
          itemCount: list.length,
          card: (index) {
            var media = list[index];
            var underTitleWidget =
                underTitle?.call(media, ListStyle.simpleList, index);

            return SimpleListCard(
              title: media.title!.userPreferred!,
              underTitle: underTitleWidget,
              onTap: onTap != null ? () => onTap!(media, index) : null,
              onDoubleTap:
                  onDoubleTap != null ? () => onDoubleTap!(media, index) : null,
              onLongPress: () => showMediaCard(context, media),
            );
          },
        )
    };
  }
}
