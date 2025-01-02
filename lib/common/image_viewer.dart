import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/common/cached_image.dart';

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
  double _opacity = 1;
  bool _block = false;
  final TransformationController _transformationController =
      TransformationController();

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
            key: const Key("was upp"),
            direction:
                _block ? DismissDirection.none : DismissDirection.vertical,
            onDismissed: (direction) {
              context.pop();
            },
            onUpdate: (details) {
              setState(() => _opacity = 1 - details.progress);
            },
            child: InteractiveViewer(
              maxScale: 10,
              minScale: 1,
              transformationController: _transformationController,
              boundaryMargin: const EdgeInsets.all(0),
              onInteractionUpdate: (details) {
                if (_transformationController.value.getMaxScaleOnAxis() >= 1) {
                  setState(() => _block = true);
                } else {
                  setState(() => _block = false);
                }
              },
              onInteractionEnd: (details) {
                if (_transformationController.value.getMaxScaleOnAxis() > 1) {
                  setState(() => _block = true);
                } else {
                  setState(() => _block = false);
                }
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
