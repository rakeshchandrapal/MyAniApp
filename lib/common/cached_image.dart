import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage(
    this.url, {
    super.key,
    this.fit,
    this.imageBuilder,
    this.height,
    this.width,
    this.color,
    this.blur,
  });

  final String url;
  final BoxFit? fit;
  final ImageWidgetBuilder? imageBuilder;
  final double? height;
  final double? width;
  final Color? color;
  final bool? blur;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      enabled: blur ?? false,
      child: CachedNetworkImage(
        imageUrl: url,
        fit: fit,
        imageBuilder: imageBuilder,
        height: height,
        width: width,
        // filterQuality: FilterQuality.low,
        color: color,
        progressIndicatorBuilder: (context, url, progress) => Center(
          child: CircularProgressIndicator.adaptive(
            value: progress.progress,
          ),
        ),
      ),
    );
  }
}
