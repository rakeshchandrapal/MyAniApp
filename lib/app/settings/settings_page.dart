import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/__generated__/viewer.req.gql.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/utils.dart';

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

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var settings = ref.watch(settingsProvider);
    var user = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
        children: [
          SettingsSection(
            title: "Appearance",
            tiles: [
              SettingsTile.popup(
                title: "Theme",
                icon: const Icon(Icons.palette),
                value: settings.themeMode,
                items: const [
                  PopupMenuItem(
                    value: ThemeMode.light,
                    child: Text("Light"),
                  ),
                  PopupMenuItem(
                    value: ThemeMode.dark,
                    child: Text("Dark"),
                  ),
                  PopupMenuItem(
                    value: ThemeMode.system,
                    child: Text("System"),
                  ),
                ],
                onChanged: (value) =>
                    ref.read(settingsProvider.notifier).updateThemeMode(value),
              ),
              SettingsTile.popup(
                title: "Color",
                value: settings.primaryColor ?? Colors.blue[500],
                icon: const Icon(Icons.palette),
                subtitle: Container(
                  height: 20,
                  width: 20,
                  color: settings.primaryColor ?? Colors.blue[500],
                ),
                items: Colors.primaries
                    .map(
                      (e) => PopupMenuItem(
                        value: e.shade500,
                        child: Container(
                          width: double.maxFinite,
                          height: 40,
                          color: e.shade500,
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) => ref
                    .read(settingsProvider.notifier)
                    .updatePrimaryColor(value),
              ),
              SettingsTile.switchTile(
                title: "Blur 18+ covers",
                value: settings.blurCovers,
                onChanged: (value) =>
                    ref.read(settingsProvider.notifier).updateBlurCovers(value),
              )
            ],
          ),
          SettingsSection(
            title: "Chat",
            tiles: [
              SettingsTile.switchTile(
                value: settings.showEmbedMediaCard,
                onChanged: (p0) => ref
                    .read(settingsProvider.notifier)
                    .updateEmbedMediaCard(p0),
                title:
                    "Show embed media card (more likely to hit the rate limit)",
                subtitle: const SizedBox(
                  height: 120,
                  child: MarkdownWidget(
                    data: "https://anilist.co/anime/21/ONE-PIECE/",
                  ),
                ),
              ),
            ],
          ),
          if (user.value?.data != null)
            SettingsSection(
              title: "Anime & Manga",
              tiles: [
                SettingsTile<GUserTitleLanguage>.popup(
                  title: "Title Language",
                  value: user.value?.data?.Viewer?.options?.titleLanguage,
                  items: [
                    PopupMenuItem(
                      value: GUserTitleLanguage.NATIVE,
                      child: Text(GUserTitleLanguage.NATIVE.name.capitalize()),
                    ),
                    PopupMenuItem(
                      value: GUserTitleLanguage.ROMAJI,
                      child: Text(GUserTitleLanguage.ROMAJI.name.capitalize()),
                    ),
                    PopupMenuItem(
                      value: GUserTitleLanguage.ENGLISH,
                      child: Text(GUserTitleLanguage.ENGLISH.name.capitalize()),
                    )
                  ],
                  onChanged: (value) => client
                      .request(GUpdateUserReq(
                        (b) => b..vars.titleLanguage = value,
                      ))
                      .first,
                ),
                SettingsTile<GUserStaffNameLanguage>.popup(
                  title: "Staff & Character Name Language",
                  value: user.value?.data?.Viewer?.options?.staffNameLanguage,
                  items: [
                    PopupMenuItem(
                      value: GUserStaffNameLanguage.NATIVE,
                      child:
                          Text(GUserStaffNameLanguage.NATIVE.name.capitalize()),
                    ),
                    PopupMenuItem(
                      value: GUserStaffNameLanguage.ROMAJI,
                      child:
                          Text(GUserStaffNameLanguage.ROMAJI.name.capitalize()),
                    ),
                    PopupMenuItem(
                      value: GUserStaffNameLanguage.ROMAJI_WESTERN,
                      child: Text(GUserStaffNameLanguage.ROMAJI_WESTERN.name
                          .capitalize()),
                    ),
                  ],
                  onChanged: (value) => client
                      .request(GUpdateUserReq(
                        (b) => b..vars.staffNameLanguage = value,
                      ))
                      .first,
                ),
                SettingsTile<int>.popup(
                  title: "Activity Time",
                  value: user.value!.data!.Viewer!.options!.activityMergeTime!,
                  items: mergeTimes
                      .map(
                        (e) => PopupMenuItem(
                          value: e,
                          child: Text(
                            switch (e) {
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
                      )
                      .toList(),
                  onChanged: (value) => client
                      .request(GUpdateUserReq(
                        (b) => b..vars.activityMergeTime = value,
                      ))
                      .first,
                ),
                SettingsTile.switchTile(
                  title: "Airing Anime Notifications",
                  value:
                      user.value!.data!.Viewer!.options!.airingNotifications!,
                  onChanged: (value) => client
                      .request(GUpdateUserReq(
                        (b) => b..vars.airingNotifications = value,
                      ))
                      .first,
                ),
                SettingsTile.switchTile(
                  title: "Adult Content",
                  value:
                      user.value!.data!.Viewer!.options!.displayAdultContent!,
                  onChanged: (value) => client
                      .request(GUpdateUserReq(
                        (b) => b..vars.displayAdultContent = value,
                      ))
                      .first,
                )
              ],
            ),
          if (user.value?.data?.Viewer != null)
            SettingsSection(
              title: "Lists",
              tiles: [
                SettingsTile<GScoreFormat>.popup(
                  title: "Scoring System",
                  value:
                      user.value!.data!.Viewer!.mediaListOptions!.scoreFormat!,
                  items: [
                    for (var score in GScoreFormat.values)
                      PopupMenuItem(
                        value: score,
                        child: Text(switch (score) {
                          GScoreFormat.POINT_3 =>
                            "3 Point Simily ${scoreToText(score, 3)}",
                          GScoreFormat.POINT_5 =>
                            "5 Point ${scoreToText(score, 3)}",
                          GScoreFormat.POINT_10 =>
                            "10 Point ${scoreToText(score, 5)}",
                          GScoreFormat.POINT_10_DECIMAL =>
                            "10 Point Decimal ${scoreToText(score, 5.5)}",
                          GScoreFormat.POINT_100 =>
                            "100 Point ${scoreToText(score, 50)}",
                          _ => "",
                        }),
                      ),
                  ],
                  onChanged: (value) => client
                      .request(GUpdateUserReq(
                        (b) => b..vars.scoreFormat = value,
                      ))
                      .first,
                ),
                SettingsTile<String>.popup(
                  title: "Default List Order",
                  value: user.value!.data!.Viewer!.mediaListOptions!.rowOrder!,
                  items: const [
                    PopupMenuItem(
                      value: "score",
                      child: Text("Score"),
                    ),
                    PopupMenuItem(
                      value: "title",
                      child: Text("Title"),
                    ),
                    PopupMenuItem(
                      value: "updatedAt",
                      child: Text("Last Updated"),
                    ),
                    PopupMenuItem(
                      value: "id",
                      child: Text("Last Added"),
                    ),
                  ],
                  onChanged: (value) => client
                      .request(GUpdateUserReq(
                        (b) => b..vars.rowOrder = value,
                      ))
                      .first,
                ),
                SettingsTile<String>.popup(
                  title: "Split Completed List Section By Format",
                  items: [
                    CheckedPopupMenuItem(
                      checked: user.value!.data!.Viewer!.mediaListOptions!
                              .animeList!.splitCompletedSectionByFormat ??
                          false,
                      value: "anime",
                      child: const Text("Anime"),
                    ),
                    CheckedPopupMenuItem(
                      checked: user.value!.data!.Viewer!.mediaListOptions!
                              .mangaList!.splitCompletedSectionByFormat ??
                          false,
                      value: "manga",
                      child: const Text("Manga"),
                    )
                  ],
                  onChanged: (value) => {
                    if (value == "anime")
                      client
                          .request(
                            GUpdateUserReq(
                              (b) => b
                                ..vars
                                    .animeListOptions
                                    .splitCompletedSectionByFormat = !(user
                                        .value!
                                        .data!
                                        .Viewer!
                                        .mediaListOptions!
                                        .animeList!
                                        .splitCompletedSectionByFormat ??
                                    false),
                            ),
                          )
                          .first
                    else if (value == "manga")
                      client
                          .request(
                            GUpdateUserReq(
                              (b) => b
                                ..vars
                                    .mangaListOptions
                                    .splitCompletedSectionByFormat = !(user
                                        .value!
                                        .data!
                                        .Viewer!
                                        .mediaListOptions!
                                        .mangaList!
                                        .splitCompletedSectionByFormat ??
                                    false),
                            ),
                          )
                          .first
                  },
                )
              ],
            ),
        ],
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
  const SettingsSection({
    super.key,
    required this.title,
    required this.tiles,
  });

  final List<Widget> tiles;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text(
              title!,
              style: context.theme.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
        Material(
          color:
              context.theme.colorScheme.surfaceContainerHighest.withOpacity(.3),
          borderRadius: imageRadius,
          borderOnForeground: true,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: tiles.length,
            itemBuilder: (context, index) => tiles[index],
            separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                height: 1,
                thickness: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SettingsTile<T> extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
  })  : switchValue = null,
        onSwitchChanged = null,
        popupItems = null,
        onPopupChanged = null,
        onCheckedChanged = null,
        checkedValue = null,
        initialValue = null,
        customWidget = null,
        enabled = null;

  const SettingsTile.switchTile({
    super.key,
    required this.title,
    this.enabled,
    this.subtitle,
    required bool value,
    required Function(bool) onChanged,
    this.icon,
  })  : switchValue = value,
        onSwitchChanged = onChanged,
        checkedValue = null,
        popupItems = null,
        onPopupChanged = null,
        onCheckedChanged = null,
        initialValue = null,
        customWidget = null;

  const SettingsTile.checkbox({
    super.key,
    required this.title,
    this.subtitle,
    this.enabled,
    required bool value,
    required Function(bool? value) onChanged,
    this.icon,
  })  : switchValue = null,
        onSwitchChanged = null,
        checkedValue = value,
        popupItems = null,
        onPopupChanged = null,
        onCheckedChanged = onChanged,
        initialValue = null,
        customWidget = null;

  const SettingsTile.popup({
    super.key,
    required this.title,
    this.subtitle,
    this.enabled,
    required List<PopupMenuEntry<T>> items,
    required Function(T value) onChanged,
    T? value,
    this.icon,
  })  : popupItems = items,
        onPopupChanged = onChanged,
        checkedValue = null,
        switchValue = null,
        onSwitchChanged = null,
        onCheckedChanged = null,
        initialValue = value,
        customWidget = null;

  const SettingsTile.custom({
    super.key,
    required this.title,
    required Widget child,
    this.icon,
    this.subtitle,
  })  : popupItems = null,
        onPopupChanged = null,
        checkedValue = null,
        switchValue = null,
        onSwitchChanged = null,
        onCheckedChanged = null,
        initialValue = null,
        customWidget = child,
        enabled = null;

  final String title;
  final Widget? subtitle;
  final Icon? icon;
  final bool? switchValue;
  final bool? checkedValue;
  final Function(bool value)? onSwitchChanged;
  final Function(bool? value)? onCheckedChanged;
  final List<PopupMenuEntry<T>>? popupItems;
  final T? initialValue;
  final Function(T value)? onPopupChanged;
  final Widget? customWidget;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    Widget? s;
    if (popupItems != null && subtitle == null && initialValue != null) {
      var text = (popupItems!.firstWhereOrNull(
        (element) {
          if (element is PopupMenuItem) {
            return (element as PopupMenuItem).value == initialValue;
          }
          return false;
        },
      ) as PopupMenuItem?)
          ?.child;
      if (text != null) s = text;
    }

    s ??= subtitle;

    var tile = Padding(
      padding: const EdgeInsetsDirectional.only(
          start: 24, end: 20, top: 10, bottom: 10),
      child: Row(
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconTheme(
                data: IconThemeData(color: context.theme.hintColor),
                child: icon!,
              ),
            ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.theme.textTheme.bodyLarge,
                ),
                if (s != null)
                  DefaultTextStyle(
                    style: (context.theme.primaryTextTheme.bodyMedium ??
                            const TextStyle())
                        .copyWith(color: context.theme.hintColor),
                    child: s,
                  )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          if (switchValue != null)
            Switch.adaptive(
              value: switchValue!,
              onChanged: enabled == false ? null : onSwitchChanged,
            ),
          if (checkedValue != null)
            Checkbox.adaptive(
              value: checkedValue!,
              onChanged: enabled == false ? null : onCheckedChanged,
            ),
          if (customWidget != null) customWidget!,
        ],
      ),
    );

    if (switchValue != null) {
      return InkWell(
        onTap: enabled == false ? null : () => onSwitchChanged!(!switchValue!),
        child: tile,
      );
    } else if (checkedValue != null) {
      return InkWell(
        onTap:
            enabled == false ? null : () => onCheckedChanged!(!checkedValue!),
        child: tile,
      );
    } else if (popupItems != null && enabled != false) {
      return PopupMenuButton(
        initialValue: initialValue,
        position: PopupMenuPosition.under,
        tooltip: "",
        itemBuilder: (context) => popupItems!,
        onSelected: onPopupChanged,
        constraints: const BoxConstraints(maxHeight: 500, maxWidth: 200),
        surfaceTintColor: context.theme.colorScheme.primary,
        child: tile,
      );
    }

    return tile;
  }
}
