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
  Widget build(BuildContext context) {
    final horizontalPosition = 0 + max(_positionYDelta, -_positionYDelta) / 15;

    return Scaffold(
      backgroundColor: Colors.black.withOpacity(_opacity),
      body: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedPositioned(
            duration: _animationDuration,
            curve: Curves.fastOutSlowIn,
            top: 0 + _positionYDelta,
            bottom: 0 - _positionYDelta,
            left: horizontalPosition,
            right: horizontalPosition,
            child: GestureDetector(
              onVerticalDragStart: (details) {
                setState(() => _initialPositionY = details.globalPosition.dy);
              },
              onVerticalDragUpdate: (details) {
                if (!_block) {
                  setState(() {
                    _currentPositionY = details.globalPosition.dy;
                    _positionYDelta = _currentPositionY - _initialPositionY;
                    setOpacity();
                  });
                }
              },
              onVerticalDragEnd: (details) {
                if (_positionYDelta > _disposeLevel ||
                    _positionYDelta < -_disposeLevel) {
                  Navigator.of(context).pop();
                } else {
                  setState(() {
                    _animationDuration = const Duration(milliseconds: 300);
                    _opacity = 1;
                    _positionYDelta = 0;
                  });

                  Future.delayed(_animationDuration).then((_) {
                    setState(() {
                      _animationDuration = Duration.zero;
                    });
                  });
                }
              },
              child: InteractiveViewer(
                maxScale: 10,
                minScale: 1,
                boundaryMargin: const EdgeInsets.all(0),
                onInteractionUpdate: (details) {
                  if (details.pointerCount >= 2) setState(() => _block = true);
                },
                child: Hero(
                  tag: widget.tag ?? widget.hashCode,
                  child: widget.child,
                ),
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
