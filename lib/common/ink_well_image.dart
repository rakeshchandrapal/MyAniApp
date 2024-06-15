import 'package:flutter/material.dart';

class InkWellImage extends StatelessWidget {
  const InkWellImage({
    super.key,
    required this.child,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.borderRadius,
  });

  final Widget child;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onDoubleTap;
  final GestureLongPressCallback? onLongPress;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              onDoubleTap: onDoubleTap,
              onLongPress: onLongPress,
              borderRadius: borderRadius,
            ),
          ),
        ),
      ],
    );
  }
}
