import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/routes.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:group_radio_button/group_radio_button.dart';

@RoutePage()
class AppSettingsPage extends ConsumerWidget {
  const AppSettingsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var settings = ref.watch(settingsProvider);
    var theme = settings.theme;

    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            title: Text('Settings'),
            leading: AutoLeadingButton(),
            floating: true,
            snap: true,
          ),
        ],
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Theme',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RadioGroup<ThemeMode>.builder(
                groupValue: theme,
                onChanged: (p0) {
                  ref
                      .read(settingsProvider.notifier)
                      .changeTheme(p0 ?? ThemeMode.system);
                },
                items: ThemeMode.values,
                itemBuilder: (item) {
                  late String name;
                  if (item == ThemeMode.dark) {
                    name = 'Dark';
                  } else if (item == ThemeMode.light) {
                    name = 'Light';
                  } else if (item == ThemeMode.system) {
                    name = 'System';
                  }

                  return RadioButtonBuilder(
                    name,
                  );
                },
              ),
            ),
            ListTile(
              title: const Text('View Colors'),
              onTap: () => context.router.push(const ColorsRoute()),
            ),
            ListTile(
              title: const Text('Anime List Settings'),
              onTap: () => context.router.push(const AnimeListSettingRoute()),
            ),
            ListTile(
              title: const Text('Manga List Settings'),
              onTap: () => context.router.push(const MangaListSettingRoute()),
            ),
            ListTile(
              title: const Text('Fallback List Settings'),
              onTap: () =>
                  context.router.push(const FallbackListSettingRoute()),
              subtitle: const Text('Search results, relations, etc'),
            ),
            // Text(
            //   'Anime List View',
            //   style: Theme.of(context).textTheme.titleMedium,
            // ),
            // ListSetting(
            //   list: settings.animeList,
            //   onChanged: (style) => settings.changeListView(
            //     style ?? ListStyle.grid,
            //     SettingStrings.animeList,
            //   ),
            // ),
            // Text(
            //   'Manga List View',
            //   style: Theme.of(context).textTheme.titleMedium,
            // ),
            // ListSetting(
            //   list: settings.mangaList,
            //   onChanged: (style) => settings.changeListView(
            //     style ?? ListStyle.grid,
            //     SettingStrings.mangaList,
            //   ),
            // ),
            // Text(
            //   'Fallback List View (search result, relations, etc)',
            //   style: Theme.of(context).textTheme.titleMedium,
            // ),
            // ListSetting(
            //   list: settings.fallbackList,
            //   onChanged: (style) => settings.changeListView(
            //     style ?? ListStyle.grid,
            //     SettingStrings.fallbackList,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
