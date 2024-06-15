import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/common/cached_image.dart';
import 'package:myaniapp/common/ink_well_image.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/providers/settings.dart';

class GridCard extends StatelessWidget {
  static const double listRatio = 2 / 3;
  static const double gridRatio = 3 / 2;

  const GridCard({
    super.key,
    required this.image,
    this.aspectRatio = GridCard.gridRatio,
    this.underTitle,
    this.onTap,
    this.onLongPress,
    this.title,
    this.chips,
    this.blur = false,
    this.onDoubleTap,
  });

  // final GMediaFragment media;
  final double aspectRatio;
  final String image;
  final Widget? underTitle;
  final String? title;
  final GestureTapCallback? onTap;
  final GestureLongPressCallback? onLongPress;
  final GestureDoubleTapCallback? onDoubleTap;
  final List<Widget>? chips;
  final bool blur;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        children: [
          InkWellImage(
            borderRadius: imageRadius,
            onLongPress: onLongPress,
            onTap: onTap,
            onDoubleTap: onDoubleTap,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .surfaceContainerHighest
                    .withOpacity(.7),
                borderRadius: imageRadius,
              ),
              child: CachedImage(
                image,
                imageBuilder: (context, imageProvider) => Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: imageRadius,
                        child: BlurImage(
                          enabled: blur,
                          child: Image(
                            image: imageProvider,
                            fit: BoxFit.fill,
                            width: double.maxFinite,
                          ),
                        ),
                      ),
                    ),
                    if (title != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Text(
                              title!,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            if (underTitle != null) underTitle!,
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          ...?chips
        ],
      ),
    );
  }
}

class GridChip extends StatelessWidget {
  const GridChip({
    super.key,
    this.bottom,
    this.top,
    this.left,
    this.right,
    required this.child,
  });

  final double? bottom;
  final double? top;
  final double? left;
  final double? right;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      bottom: bottom,
      top: top,
      right: right,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: imageRadius,
          color:
              context.theme.colorScheme.surfaceContainerHighest.withOpacity(.6),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: child,
      ),
    );
  }
}

class BlurImage extends ConsumerWidget {
  const BlurImage({super.key, required this.child, this.enabled = false});

  final Widget child;
  final bool enabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var blurCovers =
        ref.watch(settingsProvider.select((value) => value.blurCovers));

    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        sigmaX: 10,
        sigmaY: 10,
      ),
      enabled: blurCovers && enabled,
      child: child,
    );
  }
}
