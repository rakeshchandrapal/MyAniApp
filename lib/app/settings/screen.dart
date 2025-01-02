import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/app/settings/widgets.dart';
import 'package:myaniapp/common/markdown/markdown.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/schema.graphql.dart';
import 'package:myaniapp/graphql/__gen/viewer.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/utils.dart';
import 'package:mygraphql/graphql.dart';

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
                  value: user.value?.parsedData?.Viewer?.options?.titleLanguage,
                  items: [
                    PopupSettingItem(
                      value: Enum$UserTitleLanguage.NATIVE,
                      label: Enum$UserTitleLanguage.NATIVE.name.capitalize(),
                    ),
                    PopupSettingItem(
                      value: Enum$UserTitleLanguage.ROMAJI,
                      label: Enum$UserTitleLanguage.ROMAJI.name.capitalize(),
                    ),
                    PopupSettingItem(
                      value: Enum$UserTitleLanguage.ENGLISH,
                      label: Enum$UserTitleLanguage.ENGLISH.name.capitalize(),
                    )
                  ],
                  onSelected: (value) => c
                      .query(
                        GQLRequest(
                          updateUserQuery,
                          variables: Variables$Mutation$UpdateUser(
                                  titleLanguage: value)
                              .toJson(),
                        ),
                      )
                      .last
                      .then(
                        (value) => ref.refresh(userProvider),
                      ),
                ),
                PopupSettingsTile(
                  title: "Staff & Character Name Language",
                  value: user
                      .value?.parsedData?.Viewer?.options?.staffNameLanguage,
                  items: [
                    PopupSettingItem(
                      value: Enum$UserStaffNameLanguage.NATIVE,
                      label:
                          Enum$UserStaffNameLanguage.NATIVE.name.capitalize(),
                    ),
                    PopupSettingItem(
                      value: Enum$UserStaffNameLanguage.ROMAJI,
                      label:
                          Enum$UserStaffNameLanguage.ROMAJI.name.capitalize(),
                    ),
                    PopupSettingItem(
                      value: Enum$UserStaffNameLanguage.ROMAJI_WESTERN,
                      label: Enum$UserStaffNameLanguage.ROMAJI_WESTERN.name
                          .capitalize(),
                    ),
                  ],
                  onSelected: (value) => c
                      .query(
                        GQLRequest(
                          updateUserQuery,
                          variables: Variables$Mutation$UpdateUser(
                                  staffNameLanguage: value)
                              .toJson(),
                        ),
                      )
                      .last
                      .then(
                        (value) => ref.refresh(userProvider),
                      ),
                ),
                PopupSettingsTile(
                  title: "Activity Time",
                  value: user
                      .value!.parsedData!.Viewer!.options!.activityMergeTime!,
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
                  onSelected: (value) => c
                      .query(
                        GQLRequest(
                          updateUserQuery,
                          variables: Variables$Mutation$UpdateUser(
                                  activityMergeTime: value)
                              .toJson(),
                        ),
                      )
                      .last
                      .then(
                        (value) => ref.refresh(userProvider),
                      ),
                ),
                SwitchSettingsTile(
                  title: "Airing Anime Notifications",
                  value: user
                      .value!.parsedData!.Viewer!.options!.airingNotifications!,
                  onChanged: (value) => c
                      .query(
                        GQLRequest(
                          updateUserQuery,
                          variables: Variables$Mutation$UpdateUser(
                                  airingNotifications: value)
                              .toJson(),
                        ),
                      )
                      .last
                      .then(
                        (value) => ref.refresh(userProvider),
                      ),
                ),
                SwitchSettingsTile(
                  title: "Adult Content",
                  value: user
                      .value!.parsedData!.Viewer!.options!.displayAdultContent!,
                  onChanged: (value) => c
                      .query(
                        GQLRequest(
                          updateUserQuery,
                          variables: Variables$Mutation$UpdateUser(
                                  displayAdultContent: value)
                              .toJson(),
                        ),
                      )
                      .last
                      .then(
                        (value) => ref.refresh(userProvider),
                      ),
                )
              ],
            ),
          if (user.value?.parsedData?.Viewer != null)
            SettingsSection(
              title: "Lists",
              tiles: [
                PopupSettingsTile(
                  title: "Scoring System",
                  value: user.value!.parsedData!.Viewer!.mediaListOptions!
                      .scoreFormat!,
                  items: [
                    for (var score in Enum$ScoreFormat.values)
                      PopupSettingItem(
                        value: score,
                        label: switch (score) {
                          Enum$ScoreFormat.POINT_3 =>
                            "3 Point Smiley ${scoreToText(score, 3)}",
                          Enum$ScoreFormat.POINT_5 =>
                            "5 Point ${scoreToText(score, 3)}",
                          Enum$ScoreFormat.POINT_10 =>
                            "10 Point ${scoreToText(score, 5)}",
                          Enum$ScoreFormat.POINT_10_DECIMAL =>
                            "10 Point Decimal ${scoreToText(score, 5.5)}",
                          Enum$ScoreFormat.POINT_100 =>
                            "100 Point ${scoreToText(score, 50)}",
                          _ => "",
                        },
                      ),
                  ],
                  onSelected: (value) => c
                      .query(
                        GQLRequest(
                          updateUserQuery,
                          variables:
                              Variables$Mutation$UpdateUser(scoreFormat: value)
                                  .toJson(),
                        ),
                      )
                      .last
                      .then(
                        (value) => ref.refresh(userProvider),
                      ),
                ),
                PopupSettingsTile(
                  title: "Default List Order",
                  value: user
                      .value!.parsedData!.Viewer!.mediaListOptions!.rowOrder!,
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
                  onSelected: (value) => c
                      .query(
                        GQLRequest(
                          updateUserQuery,
                          variables:
                              Variables$Mutation$UpdateUser(rowOrder: value)
                                  .toJson(),
                        ),
                      )
                      .last
                      .then(
                        (value) => ref.refresh(userProvider),
                      ),
                ),
                MultiPopupSettingsTile(
                  title: "Split Completed List Section By Format",
                  initialValues: [
                    user.value!.parsedData!.Viewer!.mediaListOptions!.animeList!
                                .splitCompletedSectionByFormat ==
                            true
                        ? "anime"
                        : null,
                    user.value!.parsedData!.Viewer!.mediaListOptions!.mangaList!
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
                  onSaved: (values) {
                    if (values.contains("anime")) {
                      c
                          .query(
                            GQLRequest(
                              updateUserQuery,
                              variables: Variables$Mutation$UpdateUser(
                                      animeListOptions: Input$MediaListOptionsInput(
                                          splitCompletedSectionByFormat: !(user
                                                  .value!
                                                  .parsedData!
                                                  .Viewer!
                                                  .mediaListOptions!
                                                  .animeList!
                                                  .splitCompletedSectionByFormat ??
                                              false)))
                                  .toJson(),
                            ),
                          )
                          .last
                          .then(
                            (value) => ref.refresh(userProvider),
                          );
                    }
                    if (values.contains("manga")) {
                      c
                          .query(
                            GQLRequest(
                              updateUserQuery,
                              variables: Variables$Mutation$UpdateUser(
                                      mangaListOptions: Input$MediaListOptionsInput(
                                          splitCompletedSectionByFormat: !(user
                                                  .value!
                                                  .parsedData!
                                                  .Viewer!
                                                  .mediaListOptions!
                                                  .mangaList!
                                                  .splitCompletedSectionByFormat ??
                                              false)))
                                  .toJson(),
                            ),
                          )
                          .last
                          .then(
                            (value) => ref.refresh(userProvider),
                          );
                    }

                    if (values.length == 1 && values.first == null) {
                      c
                          .query(
                            GQLRequest(
                              updateUserQuery,
                              variables: Variables$Mutation$UpdateUser(
                                  mangaListOptions: Input$MediaListOptionsInput(
                                    splitCompletedSectionByFormat: false,
                                  ),
                                  animeListOptions: Input$MediaListOptionsInput(
                                    splitCompletedSectionByFormat: false,
                                  )).toJson(),
                            ),
                          )
                          .last
                          .then(
                            (value) => ref.refresh(userProvider),
                          );
                    }
                  },
                ),
                PopupSettingsTile(
                  title: "Default Home Page List",
                  value: settings.defaultHomeList,
                  onSelected: (value) => ref
                      .read(settingsProvider.notifier)
                      .updateDefaultHomeList(value),
                  items: [
                    PopupSettingItem(
                      value: Enum$MediaType.ANIME,
                      label: "Anime",
                    ),
                    PopupSettingItem(
                      value: Enum$MediaType.MANGA,
                      label: "Manga",
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}
