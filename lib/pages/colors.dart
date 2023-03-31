import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme.toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: ListView(
        children: [
          for (var color in colors)
            Container(
              height: 150,
              color: color,
              child: Text('${color.toString()}, ${colors.indexOf(color)}'),
            )
        ],
      ),
    );
  }
}

extension ColorList on ColorScheme {
  List<Color> toList() => [
        background,
        onBackground,
        error,
        errorContainer,
        onError,
        onErrorContainer,
        inversePrimary,
        inverseSurface,
        primary,
        primaryContainer,
        onPrimary,
        onPrimaryContainer,
        secondary,
        secondaryContainer,
        onSecondary,
        onSecondaryContainer,
        surface,
        surfaceTint,
        surfaceVariant,
        onSurface,
        onSurfaceVariant,
        inverseSurface,
        onInverseSurface,
        tertiary,
        tertiaryContainer,
        onTertiary,
        onTertiaryContainer,
        outline,
        outlineVariant,
        scrim,
        shadow
      ];
}
