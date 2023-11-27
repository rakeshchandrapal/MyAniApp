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
            CustomDropdown(
              hint: 'Theme',
              value: settings.theme,
              onChanged: (value) => ref
                  .read(settingsProvider.notifier)
                  .changeTheme(value ?? settings.theme),
              dropdownItems: ThemeMode.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name.capitalize()),
                    ),
                  )
                  .toList(),
            ),
            const Text('Anime List Style'),
            CustomDropdown(
              hint: 'List Style',
              value: settings.animeList,
              onChanged: (value) => ref
                  .read(settingsProvider.notifier)
                  .changeListStyle(
                      Setting.animeList, value ?? settings.animeList),
              dropdownItems: ListStyle.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: switch (e) {
                        ListStyle.grid => Text(e.name.capitalize()),
                        ListStyle.detailedList => const Text('Detailed List'),
                        ListStyle.simpleList => const Text('Simple List')
                      },
                    ),
                  )
                  .toList(),
            ),
            const Text('Manga List Style'),
            CustomDropdown(
              hint: 'List Style',
              value: settings.mangaList,
              onChanged: (value) => ref
                  .read(settingsProvider.notifier)
                  .changeListStyle(
                      Setting.mangaList, value ?? settings.mangaList),
              dropdownItems: ListStyle.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: switch (e) {
                        ListStyle.grid => Text(e.name.capitalize()),
                        ListStyle.detailedList => const Text('Detailed List'),
                        ListStyle.simpleList => const Text('Simple List')
                      },
                    ),
                  )
                  .toList(),
            ),
            const Text(
                'Fallback List Style (where anime and manga list aren\'t applicable)'),
            CustomDropdown(
              hint: 'List Style',
              value: settings.fallbackList,
              onChanged: (value) => ref
                  .read(settingsProvider.notifier)
                  .changeListStyle(
                      Setting.fallbackList, value ?? settings.fallbackList),
              dropdownItems: ListStyle.values
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: switch (e) {
                        ListStyle.grid => Text(e.name.capitalize()),
                        ListStyle.detailedList => const Text('Detailed List'),
                        ListStyle.simpleList => const Text('Simple List')
                      },
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
