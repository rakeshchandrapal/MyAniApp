import 'package:MyAniApp/providers/settings.dart';
import 'package:MyAniApp/providers/theme.dart';
import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:provider/provider.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [ThemeSelection()],
    );
  }
}

class ThemeSelection extends StatelessWidget {
  const ThemeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    var settings = context.watch<SettingsProvider>();
    var theme = settings.theme;
    var list = settings.list;

    return SizedBox(
      height: MediaQuery.of(context).size.height - 60,
      child: Scaffold(
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
              Text(
                'List View',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RadioGroup<ListStyle>.builder(
                  groupValue: list,
                  onChanged: (p0) {
                    settings.changeListView(p0 ?? ListStyle.grid);
                  },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
