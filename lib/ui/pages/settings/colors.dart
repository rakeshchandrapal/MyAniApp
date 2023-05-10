import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            color: colors.background,
            height: 150,
            child: Text(
              'Background',
              style: TextStyle(color: colors.onBackground),
            ),
          ),
          Container(
            color: colors.onBackground,
            height: 150,
            child: Text(
              'On Background',
              style: TextStyle(color: colors.background),
            ),
          ),
          Container(
            color: colors.error,
            height: 150,
            child: Text(
              'Error',
              style: TextStyle(color: colors.onError),
            ),
          ),
          Container(
            color: colors.onError,
            height: 150,
            child: Text(
              'On Error',
              style: TextStyle(color: colors.error),
            ),
          ),
          Container(
            color: colors.errorContainer,
            height: 150,
            child: Text(
              'Error Container',
              style: TextStyle(color: colors.onErrorContainer),
            ),
          ),
          Container(
            color: colors.onErrorContainer,
            height: 150,
            child: Text(
              'On Error Container',
              style: TextStyle(color: colors.errorContainer),
            ),
          ),
          Container(
            color: colors.surface,
            height: 150,
            child: Text(
              'Surface',
              style: TextStyle(color: colors.onSurface),
            ),
          ),
          Container(
            color: colors.onSurface,
            height: 150,
            child: Text(
              'On Surface',
              style: TextStyle(color: colors.surface),
            ),
          ),
          Container(
            color: colors.inverseSurface,
            height: 150,
            child: Text(
              'Inverse Surface',
              style: TextStyle(color: colors.onInverseSurface),
            ),
          ),
          Container(
            color: colors.onInverseSurface,
            height: 150,
            child: Text(
              'On Inverse Surface',
              style: TextStyle(color: colors.inverseSurface),
            ),
          ),
          Container(
            color: colors.surfaceTint,
            height: 150,
            child: const Text(
              'Surface Tint',
              // style: TextStyle(color: colors.onSu),
            ),
          ),
          Container(
            color: colors.surfaceVariant,
            height: 150,
            child: Text(
              'Surface Variant',
              style: TextStyle(color: colors.onSurfaceVariant),
            ),
          ),
          Container(
            color: colors.onSurfaceVariant,
            height: 150,
            child: Text(
              'On Surface Variant',
              style: TextStyle(color: colors.surfaceVariant),
            ),
          ),
          Container(
            color: colors.primary,
            height: 150,
            child: Text(
              'Primary',
              style: TextStyle(color: colors.onPrimary),
            ),
          ),
          Container(
            color: colors.onPrimary,
            height: 150,
            child: Text(
              'On Primary',
              style: TextStyle(color: colors.primary),
            ),
          ),
          Container(
            color: colors.primaryContainer,
            height: 150,
            child: Text(
              'Primary Container',
              style: TextStyle(color: colors.onPrimaryContainer),
            ),
          ),
          Container(
            color: colors.onPrimaryContainer,
            height: 150,
            child: Text(
              'On Primary Container',
              style: TextStyle(color: colors.primaryContainer),
            ),
          ),
          Container(
            color: colors.inversePrimary,
            height: 150,
            child: const Text(
              'Inverse Primary',
            ),
          ),
          Container(
            color: colors.secondary,
            height: 150,
            child: Text(
              'Secondary',
              style: TextStyle(color: colors.onSecondary),
            ),
          ),
          Container(
            color: colors.onSecondary,
            height: 150,
            child: Text(
              'On Secondary',
              style: TextStyle(color: colors.secondary),
            ),
          ),
          Container(
            color: colors.secondaryContainer,
            height: 150,
            child: Text(
              'Secondary Container',
              style: TextStyle(color: colors.onSecondaryContainer),
            ),
          ),
          Container(
            color: colors.onSecondaryContainer,
            height: 150,
            child: Text(
              'On Secondary Container',
              style: TextStyle(color: colors.secondaryContainer),
            ),
          ),
          Container(
            color: colors.tertiary,
            height: 150,
            child: Text(
              'Tertiary',
              style: TextStyle(color: colors.onTertiary),
            ),
          ),
          Container(
            color: colors.onTertiary,
            height: 150,
            child: Text(
              'On Tertiary',
              style: TextStyle(color: colors.tertiary),
            ),
          ),
          Container(
            color: colors.tertiaryContainer,
            height: 150,
            child: Text(
              'Tertiary Container',
              style: TextStyle(color: colors.onTertiaryContainer),
            ),
          ),
          Container(
            color: colors.onTertiaryContainer,
            height: 150,
            child: Text(
              'On Tertiary Container',
              style: TextStyle(color: colors.tertiaryContainer),
            ),
          ),
          Container(
            color: colors.outline,
            height: 150,
            child: const Text(
              'Outline',
            ),
          ),
          Container(
            color: colors.outlineVariant,
            height: 150,
            child: const Text(
              'Outline Variant',
            ),
          ),
          Container(
            color: colors.scrim,
            height: 150,
            child: const Text(
              'Scrim',
              // style: TextStyle(color: colors.scrim),
            ),
          ),
          Container(
            color: colors.shadow,
            height: 150,
            child: const Text(
              'Shadow',
              // style: TextStyle(color: colors.sha),
            ),
          ),
        ],
      ),
    );
  }
}
