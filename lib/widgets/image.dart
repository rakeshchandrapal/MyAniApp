import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CImage extends CachedNetworkImage {
  CImage({
    super.key,
    required super.imageUrl,
    super.alignment,
    super.cacheKey,
    super.cacheManager,
    super.color,
    super.colorBlendMode,
    super.errorWidget,
    super.fadeInCurve,
    super.fadeInDuration,
    super.fadeOutCurve,
    super.fadeOutDuration,
    super.filterQuality,
    super.fit = BoxFit.cover,
    super.height,
    super.httpHeaders,
    super.imageBuilder,
    super.imageRenderMethodForWeb,
    super.matchTextDirection,
    super.maxHeightDiskCache,
    super.maxWidthDiskCache,
    super.memCacheHeight,
    super.memCacheWidth,
    super.placeholder = defaultPlaceholder,
    super.placeholderFadeInDuration,
    super.progressIndicatorBuilder,
    super.repeat,
    super.useOldImageOnUrlChange,
    super.width,
  });

  static Widget defaultPlaceholder(BuildContext context, String url) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return CachedNetworkImage(imageUrl: imageUrl);
  // }
}

// var c = CachedNetworkImage
