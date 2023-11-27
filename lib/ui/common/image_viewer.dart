import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/ui/common/image.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({super.key, required this.child, this.tag});

  final Widget child;
  final Object? tag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.3),
        body: Stack(
          fit: StackFit.expand,
          children: [
            InteractiveViewer(
              maxScale: 10,
              minScale: 0.3,
              boundaryMargin: const EdgeInsets.all(100),
              child: Center(
                child: Hero(
                  tag: tag ?? child.hashCode,
                  child: child,
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
      ),
    );
  }
}

void showImage(BuildContext context, String url, {Object? tag}) {
  Navigator.of(context).push(
    PageRouteBuilder(
      opaque: false,
      pageBuilder: (_, __, ___) => ImageViewer(
        tag: tag,
        child: CImage(
          imageUrl: url,
        ),
      ),
    ),
  );
}
