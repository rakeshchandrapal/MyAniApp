import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myaniapp/ui/common/image_viewer.dart';

class CImage extends CachedNetworkImage {
  CImage(
      {super.key,
      required super.imageUrl,
      super.alignment,
      super.cacheKey,
      super.cacheManager,
      super.color,
      super.colorBlendMode,
      super.errorWidget = defaultErrorWidget,
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
      this.viewer,
      this.viewerUrl});

  final bool? viewer;
  final String? viewerUrl;

  static Widget defaultPlaceholder(BuildContext context, String url) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }

  static Widget defaultErrorWidget(BuildContext context, String _, Object __) {
    return const SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    var img = super.build(context);

    var widget = viewer == true
        ? GestureDetector(
            onTap: () =>
                showImage(context, viewerUrl ?? imageUrl, tag: img.hashCode),
            child: Hero(tag: img.hashCode, child: img),
          )
        : img;

    return widget;
  }
}
