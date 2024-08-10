import 'package:flutter/material.dart';

class WidgetGradient extends StatelessWidget {
  const WidgetGradient({super.key, required this.child, this.color});

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          Colors.transparent,
          color ?? Theme.of(context).colorScheme.surface,
        ],
        stops: const [0, 1],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(bounds),
      blendMode: BlendMode.srcOver,
      child: child,
    );
  }
}
