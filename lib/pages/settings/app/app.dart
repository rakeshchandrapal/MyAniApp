import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/providers/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:provider/provider.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    var settings = context.watch<SettingsProvider>();
    var theme = settings.theme;

    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            title: Text('Settings'),
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
              child: RadioGroup<AppTheme>.builder(
                groupValue: theme,
                onChanged: (p0) {
                  settings.changeTheme(p0 ?? AppTheme.dark);
                },
                items: AppTheme.values,
                itemBuilder: (item) {
                  late String name;
                  if (item == AppTheme.dark) {
                    name = 'Dark';
                  } else if (item == AppTheme.light) {
                    name = 'Light';
                  }

                  return RadioButtonBuilder(
                    name,
                  );
                },
              ),
            ),
            ListTile(
              title: const Text('Anime List Settings'),
              onTap: () => context.push('/settings/lists/anime'),
            ),
            ListTile(
              title: const Text('Manga List Settings'),
              onTap: () => context.push('/settings/lists/manga'),
            ),
            ListTile(
              title: const Text('Fallback List Settings'),
              onTap: () => context.push('/settings/lists/fallback'),
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
