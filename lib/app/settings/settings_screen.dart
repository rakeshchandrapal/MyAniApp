import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/common/show.dart';
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

@RoutePage()
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

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
              PopupSettingsTile(
                title: "Theme",
                icon: const Icon(Icons.palette),
                value: settings.themeMode,
                items: [
                  PopupSettingItem(
                    value: ThemeMode.light,
                    label: "Light",
                  ),
                  PopupSettingItem(
                    value: ThemeMode.dark,
                    label: "Dark",
                  ),
                  PopupSettingItem(
                    value: ThemeMode.system,
                    label: "System",
                  ),
                ],
                onSelected: (value) =>
                    ref.read(settingsProvider.notifier).updateThemeMode(value),
              ),
              PopupSettingsTile(
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
                      (e) => PopupSettingItem(
                        value: e.shade500,
                        label: null,
                        child: Container(
                          width: double.maxFinite,
                          height: 40,
                          color: e.shade500,
                        ),
                      ),
                    )
                    .toList(),
                onSelected: (value) => ref
                    .read(settingsProvider.notifier)
                    .updatePrimaryColor(value),
              ),
              SwitchSettingsTile(
                title: "Blur 18+ covers",
                value: settings.blurCovers,
                onChanged: (value) =>
                    ref.read(settingsProvider.notifier).updateBlurCovers(value),
              ),
            ],
          ),
          SettingsSection(
            title: "Chat",
            tiles: [
              SwitchSettingsTile(
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
                PopupSettingsTile(
                  title: "Title Language",
                  value: user.value?.data?.Viewer?.options?.titleLanguage,
                  items: [
                    PopupSettingItem(
                      value: GUserTitleLanguage.NATIVE,
                      label: GUserTitleLanguage.NATIVE.name.capitalize(),
                    ),
                    PopupSettingItem(
                      value: GUserTitleLanguage.ROMAJI,
                      label: GUserTitleLanguage.ROMAJI.name.capitalize(),
                    ),
                    PopupSettingItem(
                      value: GUserTitleLanguage.ENGLISH,
                      label: GUserTitleLanguage.ENGLISH.name.capitalize(),
                    )
                  ],
                  onSelected: (value) => client
                      .request(GUpdateUserReq(
                        (b) => b..vars.titleLanguage = value,
                      ))
                      .first,
                ),
                PopupSettingsTile(
                  title: "Staff & Character Name Language",
                  value: user.value?.data?.Viewer?.options?.staffNameLanguage,
                  items: [
                    PopupSettingItem(
                      value: GUserStaffNameLanguage.NATIVE,
                      label: GUserStaffNameLanguage.NATIVE.name.capitalize(),
                    ),
                    PopupSettingItem(
                      value: GUserStaffNameLanguage.ROMAJI,
                      label: GUserStaffNameLanguage.ROMAJI.name.capitalize(),
                    ),
                    PopupSettingItem(
                      value: GUserStaffNameLanguage.ROMAJI_WESTERN,
                      label: GUserStaffNameLanguage.ROMAJI_WESTERN.name
                          .capitalize(),
                    ),
                  ],
                  onSelected: (value) => client
                      .request(GUpdateUserReq(
                        (b) => b..vars.staffNameLanguage = value,
                      ))
                      .first,
                ),
                PopupSettingsTile(
                  title: "Activity Time",
                  value: user.value!.data!.Viewer!.options!.activityMergeTime!,
                  items: mergeTimes
                      .map(
                        (e) => PopupSettingItem(
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
                      )
                      .toList(),
                  onSelected: (value) => client
                      .request(GUpdateUserReq(
                        (b) => b..vars.activityMergeTime = value,
                      ))
                      .first,
                ),
                SwitchSettingsTile(
                  title: "Airing Anime Notifications",
                  value:
                      user.value!.data!.Viewer!.options!.airingNotifications!,
                  onChanged: (value) => client
                      .request(GUpdateUserReq(
                        (b) => b..vars.airingNotifications = value,
                      ))
                      .first,
                ),
                SwitchSettingsTile(
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
                PopupSettingsTile(
                  title: "Scoring System",
                  value:
                      user.value!.data!.Viewer!.mediaListOptions!.scoreFormat!,
                  items: [
                    for (var score in GScoreFormat.values)
                      PopupSettingItem(
                        value: score,
                        label: switch (score) {
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
                        },
                      ),
                  ],
                  onSelected: (value) => client
                      .request(GUpdateUserReq(
                        (b) => b..vars.scoreFormat = value,
                      ))
                      .first,
                ),
                PopupSettingsTile(
                  title: "Default List Order",
                  value: user.value!.data!.Viewer!.mediaListOptions!.rowOrder!,
                  items: [
                    PopupSettingItem(
                      value: "score",
                      label: "Score",
                    ),
                    PopupSettingItem(
                      value: "title",
                      label: "Title",
                    ),
                    PopupSettingItem(
                      value: "updatedAt",
                      label: "Last Updated",
                    ),
                    PopupSettingItem(
                      value: "id",
                      label: "Last Added",
                    ),
                  ],
                  onSelected: (value) => client
                      .request(GUpdateUserReq(
                        (b) => b..vars.rowOrder = value,
                      ))
                      .first,
                ),
                MultiPopupSettingsTile(
                  title: "Split Completed List Section By Format",
                  initialValues: [
                    user.value!.data!.Viewer!.mediaListOptions!.animeList!
                                .splitCompletedSectionByFormat ==
                            true
                        ? "anime"
                        : null,
                    user.value!.data!.Viewer!.mediaListOptions!.mangaList!
                                .splitCompletedSectionByFormat ==
                            true
                        ? "manga"
                        : null,
                  ],
                  items: [
                    PopupSettingCheckbox(
                      value: "anime",
                      label: "Anime",
                    ),
                    PopupSettingCheckbox(
                      value: "manga",
                      label: "Manga",
                    )
                  ],
                  // onSelected: (value) => {
                  //   if (value == "anime")
                  //     client
                  //         .request(
                  //           GUpdateUserReq(
                  //             (b) => b
                  //               ..vars
                  //                   .animeListOptions
                  //                   .splitCompletedSectionByFormat = !(user
                  //                       .value!
                  //                       .data!
                  //                       .Viewer!
                  //                       .mediaListOptions!
                  //                       .animeList!
                  //                       .splitCompletedSectionByFormat ??
                  //                   false),
                  //           ),
                  //         )
                  //         .first
                  //   else if (value == "manga")
                  //     client
                  //         .request(
                  //           GUpdateUserReq(
                  //             (b) => b
                  //               ..vars
                  //                   .mangaListOptions
                  //                   .splitCompletedSectionByFormat = !(user
                  //                       .value!
                  //                       .data!
                  //                       .Viewer!
                  //                       .mediaListOptions!
                  //                       .mangaList!
                  //                       .splitCompletedSectionByFormat ??
                  //                   false),
                  //           ),
                  //         )
                  //         .first
                  // },
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
            primary: false,
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

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    this.onTap,
    this.enabled,
    this.child,
  });

  final Widget title;
  final Widget? subtitle;
  final Icon? icon;
  final VoidCallback? onTap;
  final Widget? child;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enabled == false ? null : onTap,
      child: Padding(
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
                  DefaultTextStyle(
                    style: context.theme.textTheme.bodyLarge ?? TextStyle(),
                    child: title,
                  ),
                  if (subtitle != null)
                    DefaultTextStyle(
                      style: (context.theme.primaryTextTheme.bodyMedium ??
                              const TextStyle())
                          .copyWith(
                              color: context.theme.hintColor,
                              overflow: TextOverflow.ellipsis),
                      maxLines: 1,
                      child: subtitle!,
                    )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            if (child != null) child!,
          ],
        ),
      ),
    );
  }
}

class SwitchSettingsTile extends SettingsTile {
  SwitchSettingsTile({
    super.key,
    required String title,
    required this.value,
    required this.onChanged,
    super.icon,
    super.subtitle,
    super.enabled,
  }) : super(
          child: Switch.adaptive(
            value: value,
            onChanged: enabled == false ? null : onChanged,
          ),
          onTap: () => onChanged(!value),
          title: Text(title),
        );

  final void Function(bool value) onChanged;
  final bool value;
}

class CheckboxSettingsTile extends SettingsTile {
  CheckboxSettingsTile({
    super.key,
    required String title,
    required this.value,
    required this.onChanged,
    super.icon,
    super.subtitle,
    super.enabled,
  }) : super(
          child: Checkbox.adaptive(
            value: value,
            onChanged: enabled == false ? null : onChanged,
          ),
          onTap: () => onChanged(!value),
          title: Text(title),
        );

  final void Function(bool? value) onChanged;
  final bool value;
}

class RadioSettingsTile extends SettingsTile {
  RadioSettingsTile({
    super.key,
    required String title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    super.icon,
    super.subtitle,
    super.enabled,
  }) : super(
          child: Radio.adaptive(
            value: value,
            groupValue: groupValue,
            onChanged: enabled == false ? null : onChanged,
            toggleable: true,
          ),
          onTap: () => onChanged(value == groupValue ? null : value),
          title: Text(title),
        );

  final void Function(bool? value) onChanged;
  final bool value;
  final bool? groupValue;
}

// class PopupSettingsTile<T> extends StatelessWidget {
//   const PopupSettingsTile({
//     super.key,
//     required this.title,
//     required this.items,
//     this.value,
//     this.subtitle,
//     this.icon,
//     this.enabled,
//     this.onSelected,
//     this.onClear,
//   });

//   final String title;
//   final Widget? subtitle;
//   final Icon? icon;
//   final bool? enabled;
//   final List<PopupMenuEntry<T>> items;
//   final T? value;
//   final void Function(T value)? onSelected;
//   final VoidCallback? onClear;

//   @override
//   Widget build(BuildContext context) {
//     Widget? s;
//     if (subtitle == null && value != null) {
//       var text = (items.firstWhereOrNull(
//         (element) {
//           if (element is PopupMenuItem) {
//             return (element as PopupMenuItem).value == value;
//           }
//           return false;
//         },
//       ) as PopupMenuItem?)
//           ?.child;
//       if (text != null) s = text;
//     }

//     s ??= subtitle;

//     return PopupMenuButton(
//       initialValue: value,
//       position: PopupMenuPosition.under,
//       tooltip: "",
//       itemBuilder: (context) => items,
//       onSelected: onSelected,
//       constraints: const BoxConstraints(maxHeight: 500, maxWidth: 200),
//       surfaceTintColor: context.theme.colorScheme.primary,
//       enabled: enabled ?? true,
//       child: SettingsTile(
//         title: Text(title),
//         subtitle: s,
//         icon: icon,
//         child: Show(
//           when: value != null && onClear != null,
//           child: () => IconButton(
//             icon: const Icon(Icons.clear),
//             onPressed: onClear!,
//           ),
//         ),
//       ),
//     );
//   }
// }

class PopupSettingsTile<T> extends StatelessWidget {
  const PopupSettingsTile({
    super.key,
    required this.title,
    required this.items,
    this.value,
    this.subtitle,
    this.icon,
    this.enabled,
    this.onSelected,
    this.onClear,
  });

  final String title;
  final Widget? subtitle;
  final Icon? icon;
  final bool? enabled;
  final List<PopupSettingItem<T>> items;
  final T? value;
  final void Function(T value)? onSelected;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    Widget? s;
    if (subtitle == null && value != null) {
      var text = (items.firstWhereOrNull(
        (element) => element.value == value,
      ))?.label;
      if (text != null) s = Text(text);
    }

    s ??= subtitle;

    return SettingsTile(
      title: Text(title),
      subtitle: s,
      icon: icon,
      onTap: () => showDialog(
        context: context,
        builder: (context) => AlertDialog.adaptive(
          title: Text(title),
          contentPadding: EdgeInsets.only(top: 10, bottom: 20),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (var item in items)
                  ListTile(
                    title: item.label != null ? Text(item.label!) : item.child,
                    onTap: () {
                      onSelected?.call(item.value);
                      context.maybePop();
                    },
                    trailing: Radio.adaptive(
                      value: item.value,
                      groupValue: value,
                      onChanged: (value) => onSelected?.call(item.value),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      child: Show(
        when: value != null && onClear != null,
        child: () => IconButton(
          icon: const Icon(Icons.clear),
          onPressed: onClear!,
        ),
      ),
    );
  }
}

class MultiPopupSettingsTile<T> extends StatelessWidget {
  const MultiPopupSettingsTile({
    super.key,
    required this.title,
    required this.items,
    this.initialValues,
    this.subtitle,
    this.icon,
    this.enabled,
    this.onSaved,
    this.onClear,
  });

  final String title;
  final Widget? subtitle;
  final Icon? icon;
  final bool? enabled;
  final List<PopupSettingCheckbox<T>> items;
  final List<T>? initialValues;
  final void Function(List<T> values)? onSaved;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    Widget? s;
    if (subtitle == null && initialValues?.isNotEmpty == true) {
      var text = (items.where(
        (element) => initialValues!.contains(element.value),
      ))
          .map(
            (e) => e.label,
          )
          .join(", ");
      if (text.isNotEmpty) s = Text(text);
    }

    s ??= subtitle;

    return SettingsTile(
      title: Text(title),
      subtitle: s,
      icon: icon,
      onTap: () => showDialog(
        context: context,
        builder: (context) => _MultiPopupMenu<T>(
          title: title,
          items: items,
          initialValues: initialValues,
          onSaved: onSaved,
        ),
      ),
      child: Show(
        when: initialValues?.isNotEmpty == true && onClear != null,
        child: () => IconButton(
          icon: const Icon(Icons.clear),
          onPressed: onClear!,
        ),
      ),
    );
  }
}

class _MultiPopupMenu<T> extends StatefulWidget {
  const _MultiPopupMenu({
    super.key,
    required this.title,
    required this.items,
    this.initialValues,
    this.onSaved,
  });

  final String title;
  final List<PopupSettingCheckbox<T>> items;
  final List<T>? initialValues;
  final void Function(List<T> values)? onSaved;

  @override
  State<_MultiPopupMenu<T>> createState() => __MultiPopupMenuState<T>();
}

class __MultiPopupMenuState<T> extends State<_MultiPopupMenu<T>> {
  late List<T> values = widget.initialValues?.toList() ?? [];

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(widget.title),
      actions: [
        ElevatedButton(
          onPressed: () {
            widget.onSaved?.call(values);
            context.maybePop();
          },
          child: Text(
            "Save",
            style:
                TextStyle(color: context.theme.colorScheme.onPrimaryContainer),
          ),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
                context.theme.colorScheme.primaryContainer),
          ),
        )
      ],
      actionsPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      contentPadding: EdgeInsets.only(top: 10),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var item in widget.items)
              ListTile(
                title: item.label != null ? Text(item.label!) : item.child,
                onTap: () => setState(() {
                  // widget.onSelected?.call(item.value);
                  if (values.contains(item.value))
                    values.remove(item.value);
                  else
                    values.add(item.value);
                  // context.pop();
                }),
                trailing: Checkbox.adaptive(
                  value: values.contains(item.value),
                  onChanged: (value) => setState(() {
                    // widget.onSelected?.call(item.value);
                    if (values.contains(item.value))
                      values.remove(item.value);
                    else
                      values.add(item.value);
                    // context.pop();
                  }),
                ),
              ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

abstract class PopupSettingEntry<T> {
  final String? label;
  final Widget? child;
  final T value;

  const PopupSettingEntry(
      {required this.label, required this.value, this.child});
}

class PopupSettingItem<T> extends PopupSettingEntry<T> {
  PopupSettingItem({required super.label, required super.value, super.child});
}

class PopupSettingCheckbox<T> extends PopupSettingEntry<T> {
  PopupSettingCheckbox({
    required super.label,
    required super.value,
  });
}
