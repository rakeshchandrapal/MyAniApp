import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/ui/common/custom_dropdown.dart';

class AppSettingsPage extends ConsumerWidget {
  const AppSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var settings = ref.watch(settingsProvider);
    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: DefaultTextStyle(
        style: theme.textTheme.titleMedium!,
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            const Text(
              'Theme',
            ),
            SheetDropdownMenu(
              hint: 'Theme',
              values: [settings.theme],
              onChanged: (value) =>
                  ref.read(settingsProvider.notifier).changeTheme(value.first),
              isMulti: false,
              items: ThemeMode.values.map(
                (e) => DropdownMenuEntry(
                  value: e,
                  label: e.name.capitalize(),
                ),
              ),
            ),
            const Text('Anime List Style'),
            SheetDropdownMenu(
              hint: 'List Style',
              values: [settings.animeList],
              isMulti: false,
              onChanged: (value) => ref
                  .read(settingsProvider.notifier)
                  .changeListStyle(Setting.animeList, value.first),
              items: ListStyle.values.map(
                (e) => DropdownMenuEntry(
                  value: e,
                  label: switch (e) {
                    ListStyle.grid => e.name.capitalize(),
                    ListStyle.detailedList => 'Detailed List',
                    ListStyle.simpleList => 'Simple List'
                  },
                ),
              ),
            ),
            const Text('Manga List Style'),
            SheetDropdownMenu(
              hint: 'List Style',
              isMulti: false,
              values: [settings.mangaList],
              onChanged: (value) => ref
                  .read(settingsProvider.notifier)
                  .changeListStyle(Setting.mangaList, value.first),
              items: ListStyle.values.map(
                (e) => DropdownMenuEntry(
                  value: e,
                  label: switch (e) {
                    ListStyle.grid => e.name.capitalize(),
                    ListStyle.detailedList => 'Detailed List',
                    ListStyle.simpleList => 'Simple List'
                  },
                ),
              ),
            ),
            const Text(
                'Fallback List Style (where anime and manga list aren\'t applicable)'),
            SheetDropdownMenu(
              hint: 'List Style',
              isMulti: false,
              values: [settings.fallbackList],
              onChanged: (value) => ref
                  .read(settingsProvider.notifier)
                  .changeListStyle(Setting.fallbackList, value.first),
              items: ListStyle.values.map(
                (e) => DropdownMenuEntry(
                  value: e,
                  label: switch (e) {
                    ListStyle.grid => e.name.capitalize(),
                    ListStyle.detailedList => 'Detailed List',
                    ListStyle.simpleList => 'Simple List'
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
