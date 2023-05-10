import 'package:auto_route/auto_route.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/providers/settings.dart';

@RoutePage()
class AppSettingsPage extends ConsumerWidget {
  const AppSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
      ),
      body: ListView(
        children: [
          RadioListTile(
            value: ThemeMode.system,
            groupValue: settings.theme,
            onChanged: (value) => ref
                .read(settingsProvider.notifier)
                .changeTheme(value ?? ThemeMode.system),
            title: const Text('System'),
          ),
          RadioListTile(
            value: ThemeMode.light,
            groupValue: settings.theme,
            onChanged: (value) => ref
                .read(settingsProvider.notifier)
                .changeTheme(value ?? ThemeMode.system),
            title: const Text('Light'),
          ),
          RadioListTile(
            value: ThemeMode.dark,
            groupValue: settings.theme,
            onChanged: (value) => ref
                .read(settingsProvider.notifier)
                .changeTheme(value ?? ThemeMode.system),
            title: const Text('Dark'),
          ),
          ListTile(
            title: const Text('Anime List Style'),
            trailing: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 150),
              child: DropdownSearch<ListStyle>(
                items: ListStyle.values,
                selectedItem: settings.animeList,
                itemAsString: (item) {
                  if (item == ListStyle.grid) {
                    return 'Grid';
                  } else if (item == ListStyle.detailedList) {
                    return 'Detailed List';
                  }

                  return item.name.capitalize();
                },
                onChanged: (value) => ref
                    .read(settingsProvider.notifier)
                    .changeListStyle(
                        Setting.animeList, value ?? ListStyle.grid),
              ),
            ),
          ),
          ListTile(
            title: const Text('Manga List Style'),
            trailing: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 150),
              child: DropdownSearch<ListStyle>(
                items: ListStyle.values,
                selectedItem: settings.mangaList,
                itemAsString: (item) {
                  if (item == ListStyle.grid) {
                    return 'Grid';
                  } else if (item == ListStyle.detailedList) {
                    return 'Detailed List';
                  }

                  return item.name.capitalize();
                },
                onChanged: (value) => ref
                    .read(settingsProvider.notifier)
                    .changeListStyle(
                        Setting.mangaList, value ?? ListStyle.grid),
              ),
            ),
          ),
          if (kDebugMode)
            ListTile(
              title: const Text('Colors'),
              onTap: () => context.router.pushNamed('colors'),
            ),
        ],
      ),
    );
  }
}
