import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/__generated__/viewer.var.gql.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/custom_dropdown.dart';

var mergeTimes = [
  0,
  30,
  60,
  120,
  180,
  360,
  720,
  1440,
  2880,
  4320,
  10080,
  20160,
  29160
];

class AnilistSettingsPage extends ConsumerWidget {
  const AnilistSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);
    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          SwitchListTile.adaptive(
            value: user.value!.options?.airingNotifications ?? false,
            onChanged: (value) =>
                ref.read(userProvider.notifier).updateSettings(
                      GUpdateUserVarsBuilder()..airingNotifications = value,
                    ),
            title: const Text('Airing Notifications'),
          ),
          SwitchListTile.adaptive(
            value: user.value?.options?.displayAdultContent ?? false,
            onChanged: (value) =>
                ref.read(userProvider.notifier).updateSettings(
                      GUpdateUserVarsBuilder()..displayAdultContent = value,
                    ),
            title: const Text('18+ content'),
          ),
          CheckboxListTile.adaptive(
            value: user.value!.options?.restrictMessagesToFollowing,
            onChanged: (value) =>
                ref.read(userProvider.notifier).updateSettings(
                      GUpdateUserVarsBuilder()
                        ..restrictMessagesToFollowing = value,
                    ),
            title: const Text('Allow only users I follow to message me'),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Title Language',
                  style: theme.textTheme.titleMedium,
                ),
                SheetDropdownMenu(
                  hint: 'Title Language',
                  values: [user.value!.options?.titleLanguage],
                  onChanged: (value) =>
                      ref.read(userProvider.notifier).updateSettings(
                            GUpdateUserVarsBuilder()
                              ..titleLanguage = value.first,
                          ),
                  items: [
                    GUserTitleLanguage.ENGLISH,
                    GUserTitleLanguage.ROMAJI,
                    GUserTitleLanguage.NATIVE,
                  ]
                      .map(
                        (e) => DropdownMenuEntry(
                          value: e,
                          label: switch (e) {
                            GUserTitleLanguage.ENGLISH =>
                              'English (Attack on Titan)',
                            GUserTitleLanguage.ROMAJI =>
                              'Romaji (Shingeki no Kyojin)',
                            GUserTitleLanguage.NATIVE => 'Native (進撃の巨人)',
                            _ => (e.name)
                          },
                        ),
                      )
                      .toList(),
                ),
                Text(
                  'Staff & Character Name Language',
                  style: theme.textTheme.titleMedium,
                ),
                SheetDropdownMenu(
                  hint: 'Staff & Character Name Language',
                  values: [user.value!.options?.staffNameLanguage],
                  isMulti: false,
                  onChanged: (value) =>
                      ref.read(userProvider.notifier).updateSettings(
                            GUpdateUserVarsBuilder()
                              ..staffNameLanguage = value.first,
                          ),
                  items: GUserStaffNameLanguage.values
                      .map(
                        (e) => DropdownMenuEntry(
                            value: e,
                            label: switch (e) {
                              GUserStaffNameLanguage.NATIVE =>
                                'Native (キルア=ゾルディック)',
                              GUserStaffNameLanguage.ROMAJI =>
                                'Romaji (Zoldyck Killua)',
                              GUserStaffNameLanguage.ROMAJI_WESTERN =>
                                'Romaji, Western Order (Killua Zoldyck)',
                              _ => e.name.capitalize()
                            }),
                      )
                      .toList(),
                ),
                Text(
                  'Activity Merge Time',
                  style: theme.textTheme.titleMedium,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Episode and chapter activity created within this time period will be merged together (E.g. Watched episodes 10-12)',
                    style: Theme.of(context).primaryTextTheme.bodySmall,
                  ),
                ),
                SheetDropdownMenu(
                  hint: 'Activity Merge Time',
                  values: [user.value!.options?.activityMergeTime],
                  onChanged: (value) =>
                      ref.read(userProvider.notifier).updateSettings(
                            GUpdateUserVarsBuilder()
                              ..activityMergeTime = value.first,
                          ),
                  isMulti: false,
                  items: mergeTimes.map(
                    (e) => DropdownMenuEntry(
                      value: e,
                      label: switch (e) {
                        0 => 'Never',
                        30 => '30 Minutes',
                        60 => '1 Hour',
                        120 => '2 Hours',
                        180 => '3 Hours',
                        360 => '6 Hours',
                        720 => '12 Hours',
                        1440 => '1 Day',
                        2880 => '2 Days',
                        4320 => '3 Days',
                        10080 => '1 Week',
                        20160 => '2 Weeks',
                        29160 => 'Always',
                        _ => e.toString(),
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
