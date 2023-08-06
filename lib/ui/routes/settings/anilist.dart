import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/viewer.graphql.dart';
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

@RoutePage()
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
                      Variables$Mutation$UpdateUser(airingNotifications: value),
                    ),
            title: const Text('Airing Notifications'),
          ),
          SwitchListTile.adaptive(
            value: user.value?.options?.displayAdultContent ?? false,
            onChanged: (value) =>
                ref.read(userProvider.notifier).updateSettings(
                      Variables$Mutation$UpdateUser(
                        displayAdultContent: value,
                      ),
                    ),
            title: const Text('18+ content'),
          ),
          CheckboxListTile.adaptive(
            value: user.value!.options?.restrictMessagesToFollowing,
            onChanged: (value) =>
                ref.read(userProvider.notifier).updateSettings(
                      Variables$Mutation$UpdateUser(
                          restrictMessagesToFollowing: value),
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
                CustomDropdown(
                  hint: 'Title Language',
                  value: user.value!.options?.titleLanguage,
                  onChanged: (value) =>
                      ref.read(userProvider.notifier).updateSettings(
                            Variables$Mutation$UpdateUser(titleLanguage: value),
                          ),
                  dropdownItems: [
                    Enum$UserTitleLanguage.ENGLISH,
                    Enum$UserTitleLanguage.ROMAJI,
                    Enum$UserTitleLanguage.NATIVE,
                  ]
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: switch (e) {
                            Enum$UserTitleLanguage.ENGLISH =>
                              const Text('English (Attack on Titan)'),
                            Enum$UserTitleLanguage.ROMAJI =>
                              const Text('Romaji (Shingeki no Kyojin)'),
                            Enum$UserTitleLanguage.NATIVE =>
                              const Text('Native (進撃の巨人)'),
                            _ => Text(e.name)
                          },
                        ),
                      )
                      .toList(),
                ),
                Text(
                  'Staff & Character Name Language',
                  style: theme.textTheme.titleMedium,
                ),
                CustomDropdown(
                  hint: 'Staff & Character Name Language',
                  value: user.value!.options?.staffNameLanguage,
                  onChanged: (value) => ref
                      .read(userProvider.notifier)
                      .updateSettings(
                        Variables$Mutation$UpdateUser(staffNameLanguage: value),
                      ),
                  dropdownItems: Enum$UserStaffNameLanguage.values
                      .takeWhile(
                        (value) => value != Enum$UserStaffNameLanguage.$unknown,
                      )
                      .map(
                        (e) => DropdownMenuItem(
                            value: e,
                            child: switch (e) {
                              Enum$UserStaffNameLanguage.NATIVE =>
                                const Text('Native (キルア=ゾルディック)'),
                              Enum$UserStaffNameLanguage.ROMAJI =>
                                const Text('Romaji (Zoldyck Killua)'),
                              Enum$UserStaffNameLanguage.ROMAJI_WESTERN =>
                                const Text(
                                    'Romaji, Western Order (Killua Zoldyck)'),
                              _ => Text(e.name.capitalize())
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
                CustomDropdown(
                  hint: 'Activity Merge Time',
                  value: user.value!.options?.activityMergeTime,
                  onChanged: (value) => ref
                      .read(userProvider.notifier)
                      .updateSettings(
                        Variables$Mutation$UpdateUser(activityMergeTime: value),
                      ),
                  dropdownItems: mergeTimes
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(switch (e) {
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
                          }),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
