import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:contextmenu/contextmenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'image_viewer.dart';

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
    this.viewer = false,
    this.viewerUrl,
    this.hasMenu = false,
  });

  final bool hasMenu;
  final bool viewer;
  final String? viewerUrl;

  static Widget defaultPlaceholder(BuildContext context, String url) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }

  @override
  Widget build(BuildContext context) {
    var img = super.build(context);

    var widget = GestureDetector(
      onTap: viewer
          ? () => showImage(context, viewerUrl ?? imageUrl, tag: img.hashCode)
          : null,
      child: viewer ? Hero(tag: img.hashCode, child: img) : img,
    );

    return hasMenu
        ? ContextMenuArea(
            builder: (context) => [
              ListTile(
                title: const Text('Open in Browser'),
                onTap: () {
                  context.router.pop();
                  launchUrlString(imageUrl,
                      mode: LaunchMode.externalApplication);
                },
              ),
              ListTile(
                title: const Text('Copy Url'),
                onTap: () {
                  context.router.pop();
                  Clipboard.setData(ClipboardData(text: imageUrl));
                },
              ),
            ],
            child: widget,
          )
        : widget;
  }
}
