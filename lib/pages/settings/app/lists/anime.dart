import 'package:MyAniApp/providers/settings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:provider/provider.dart';

@RoutePage()
class AnimeListSettingPage extends StatelessWidget {
  const AnimeListSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var settings = context.watch<SettingsProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime List'),
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
            list: settings.animeList,
            onChanged: (style) => settings.changeListView(
              style ?? ListStyle.grid,
              SettingStrings.animeList,
            ),
          ),
        ],
      ),
    );
  }
}

class ListSetting extends StatelessWidget {
  const ListSetting({
    super.key,
    required this.list,
    required this.onChanged,
  });

  final ListStyle list;
  final void Function(ListStyle? style)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RadioGroup<ListStyle>.builder(
        groupValue: list,
        onChanged: onChanged,
        items: ListStyle.values,
        itemBuilder: (item) {
          late String name;
          if (item == ListStyle.grid) {
            name = 'Grid';
          } else if (item == ListStyle.detailedList) {
            name = 'List (detailed)';
          } else if (item == ListStyle.simpleList) {
            name = 'List (simple)';
          }

          return RadioButtonBuilder(
            name,
          );
        },
      ),
    );
  }
}
