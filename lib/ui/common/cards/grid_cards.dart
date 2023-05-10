import 'package:flutter/material.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/ui/common/image.dart';

class GridCards extends StatelessWidget {
  const GridCards({
    super.key,
    required this.card,
    required this.itemCount,
    this.primary,
  });

  final Widget? Function(int index) card;
  final int itemCount;
  final bool? primary;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: constraints.maxWidth ~/
                (constraints.maxWidth > 700 ? 140 : 110),
            childAspectRatio: 10 / 16,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          primary: primary,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => card(index),
          shrinkWrap: true,
          itemCount: itemCount,
        );
      },
    );
  }
}

class GridCard extends StatelessWidget {
  const GridCard({
    super.key,
    required this.imageUrl,
    this.chips,
    this.index,
    this.onDoubleTap,
    this.onTap,
    this.underTitle,
    this.title,
    this.onLongPress,
  });

  final Widget Function(int index, ListStyle style)? underTitle;
  final List<Widget> Function(int index)? chips;
  final void Function(int index)? onDoubleTap;
  final void Function(int index)? onTap;
  final void Function(int index)? onLongPress;
  final String imageUrl;
  final int? index;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress != null && index != null
          ? () => onLongPress!(index!)
          : null,
      // onLongPress: () => showCardSheet(context, media),
      onDoubleTap: onDoubleTap != null && index != null
          ? () => onDoubleTap!(index!)
          : null,
      onTap: onTap != null && index != null ? () => onTap!(index!) : null,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CImage(
                  imageUrl: imageUrl,
                  imageBuilder: (context, imageProvider) => Container(
                    // height: ,
                    decoration: BoxDecoration(
                      borderRadius: imageRadius,
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                if (chips != null && index != null) ...chips!(index!),
              ],
            ),
          ),
          if (title != null)
            Text(
              title!,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: underTitle != null && index != null
                        ? FontWeight.bold
                        : null,
                  ),
            ),
          if (underTitle != null && index != null)
            DefaultTextStyle(
              style: Theme.of(context).textTheme.bodySmall!,
              overflow: TextOverflow.ellipsis,
              child: underTitle!(index!, ListStyle.grid),
            )
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

  final double? bottom;
  final Widget child;
  final double? left;
  final double? right;
  final double? top;

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
        constraints: const BoxConstraints(maxWidth: 95),
        child: DefaultTextStyle(
          style: Theme.of(context)
              .textTheme
              .labelSmall!
              .copyWith(fontWeight: FontWeight.normal),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          child: child,
        ),
      ),
    );
  }
}
