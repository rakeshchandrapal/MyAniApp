import 'package:MyAniApp/pages/settings/app/lists/anime.dart';
import 'package:MyAniApp/providers/settings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class MangaListSettingPage extends ConsumerWidget {
  const MangaListSettingPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manga List'),
        leading: const AutoLeadingButton(),
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
            onChanged: (style) =>
                ref.read(settingsProvider.notifier).changeListView(
                      style ?? ListStyle.grid,
                      SettingStrings.mangaList,
                    ),
          ),
        ],
      ),
    );
  }
}
