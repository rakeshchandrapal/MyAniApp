import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/common/cached_image.dart';

double _disposeLevel = 150;

class ImageViewer extends StatefulWidget {
  const ImageViewer({super.key, required this.child, this.tag});

  final Widget child;
  final Object? tag;

  static void showImage(BuildContext context, String url, {Object? tag}) {
    // print(tag);
    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (_, __, ___) => ImageViewer(
          tag: tag,
          child: CachedImage(url),
        ),
      ),
    );
  }

  @override
  State<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  // logic to swipe down to close image is from https://github.com/AgoraDesk-LocalMonero/insta-image-viewer/blob/main/lib/src/insta_image_viewer.dart
  double _initialPositionY = 0;
  double _currentPositionY = 0;
  double _positionYDelta = 0;
  Duration _animationDuration = Duration.zero;
  double _opacity = 1;
  bool _block = false;
  final TransformationController _transformationController =
      TransformationController();

  setOpacity() {
    final double tmp = _positionYDelta < 0
        ? 1 - ((_positionYDelta / 1000) * -1)
        : 1 - (_positionYDelta / 1000);

    if (tmp > 1) {
      _opacity = 1;
    } else if (tmp < 0) {
      _opacity = 0;
    } else {
      _opacity = tmp;
    }
  }

  @override
  void dispose() {
    _transformationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final horizontalPosition = 0 + max(_positionYDelta, -_positionYDelta) / 15;

    return Scaffold(
      backgroundColor: Colors.black.withOpacity(_opacity),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Dismissible(
            resizeDuration: null,
            key: Key("was upp"),
            direction:
                _block ? DismissDirection.none : DismissDirection.vertical,
            onDismissed: (direction) {
              context.pop();
            },
            onUpdate: (details) {
              print(1 - details.progress);
              setState(() => _opacity = 1 - details.progress);
            },
            // onResize: () => context.pop(),
            child: InteractiveViewer(
              maxScale: 10,
              minScale: 1,
              transformationController: _transformationController,
              boundaryMargin: const EdgeInsets.all(0),
              onInteractionUpdate: (details) {
                if (_transformationController.value.getMaxScaleOnAxis() >= 1)
                  setState(() => _block = true);
                else
                  setState(() => _block = false);
              },
              onInteractionEnd: (details) {
                print(_transformationController.value.getMaxScaleOnAxis());
                if (_transformationController.value.getMaxScaleOnAxis() > 1)
                  setState(() => _block = true);
                else
                  setState(() => _block = false);
              },
              child: Hero(
                tag: widget.tag ?? widget.hashCode,
                child: widget.child,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: IconButton(
                onPressed: () => context.pop(),
                icon: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.clear,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
