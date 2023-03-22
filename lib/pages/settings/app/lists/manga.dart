import 'package:MyAniApp/pages/settings/app/lists/anime.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MangaListSetting extends StatelessWidget {
  const MangaListSetting({super.key});

  @override
  Widget build(BuildContext context) {
    var settings = context.watch<SettingsProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manga List'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'List Style',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          ListSetting(
            list: settings.mangaList,
            onChanged: (style) => settings.changeListView(
              style ?? ListStyle.grid,
              SettingStrings.mangaList,
            ),
          ),
        ],
      ),
    );
  }
}
