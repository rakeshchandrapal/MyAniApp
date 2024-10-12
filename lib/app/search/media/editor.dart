import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/app/search/media/page.dart';
import 'package:myaniapp/app/search/media/tags.dart';
import 'package:myaniapp/app/settings/settings_screen.dart';
import 'package:myaniapp/common/list_setting_button.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/search/media/mediaSearch.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:mygraphql/graphql.dart';

var countries = {
  "Japan": "JP",
  "South Korea": "KR",
  "China": "CN",
  "Taiwan": "TW",
};

class MediaSearchEditor extends ConsumerStatefulWidget {
  const MediaSearchEditor({super.key, required this.oldQuery});

  final MediaSearchQuery oldQuery;

  static void show(BuildContext context, MediaSearchQuery query) async {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => MediaSearchEditor(
        oldQuery: query,
      ),
    );
  }

  @override
  ConsumerState<MediaSearchEditor> createState() => _MediaSearchEditorState();
}

class _MediaSearchEditorState extends ConsumerState<MediaSearchEditor> {
  late final MediaSearchQuery query;

  @override
  void initState() {
    super.initState();
    query = MediaSearchQuery(
      endDate: widget.oldQuery.endDate,
      format: widget.oldQuery.format,
      genres: widget.oldQuery.genres,
      isAdult: widget.oldQuery.isAdult,
      onList: widget.oldQuery.onList,
      search: widget.oldQuery.search,
      season: widget.oldQuery.season,
      sort: widget.oldQuery.sort,
      startDate: widget.oldQuery.startDate,
      type: widget.oldQuery.type,
      withTags: widget.oldQuery.withTags,
      withoutTags: widget.oldQuery.withoutTags,
      year: widget.oldQuery.year,
      countryOfOrigin: widget.oldQuery.countryOfOrigin,
    );
    // setOld();
  }

  void setOld() {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   print(GoRouterState.of(context).uri.queryParametersAll);
    // });
  }

  @override
  Widget build(BuildContext context) {
    var listSettings = ref.watch(listSettingsProvider);

    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) => ListView(
        padding: const EdgeInsets.all(0),
        controller: scrollController,
        children: [
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          context.theme.colorScheme.surfaceContainer)),
                  onPressed: () {
                    if (query.genres?.contains("Hentai") == true) {
                      query.isAdult = true;
                    } else {
                      query.isAdult = null;
                    }
                    context.router
                        .replaceNamed("/search/media${query.toString()}");
                    context.maybePop();
                  },
                  child: const Text("Save"),
                ),
              ),
              const SizedBox(width: 5),
              ListSettingButton(
                type: listSettings.search,
                onUpdate: (type) =>
                    ref.read(listSettingsProvider.notifier).update(
                          listSettings.copyWith(search: type),
                        ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SettingsSection(
              title: null,
              tiles: [
                PopupSettingsTile(
                  title: "Type",
                  value: query.type,
                  items: [
                    for (var type in Enum$MediaType.values)
                      PopupSettingItem(
                        value: type,
                        label: type.name.capitalize(),
                      ),
                  ],
                  onClear: () => setState(() => query.type = null),
                  onSelected: (value) => setState(() => query.type = value),
                ),
                MultiPopupSettingsTile(
                  title: "Sort",
                  initialValues: query.sort,
                  items: [
                    for (var sort in Enum$MediaSort.values)
                      PopupSettingCheckbox(
                        value: sort,
                        label: sort.name.capitalize(),
                      ),
                  ],
                  onClear: () => setState(() => query.sort = null),
                  onSaved: (values) => setState(
                      () => query.sort = values.isEmpty ? null : values),
                ),
                GenresButton(
                  onChanged: (genres) => setState(() => query.genres = genres),
                  genres: query.genres,
                ),
                MultiPopupSettingsTile(
                  title: "Format",
                  initialValues: query.format,
                  onSaved: (values) => setState(
                      () => query.format = values.isEmpty ? null : values),
                  items: [
                    for (var format in Enum$MediaFormat.values)
                      PopupSettingCheckbox(
                        value: format,
                        label: format.name.capitalize(),
                      ),
                  ],
                  onClear: () => setState(() => query.format = null),
                ),
                // PopupSettingsTile(
                //   title: "Format",
                //   value: query.format?.firstOrNull,
                //   subtitle: Show(
                //     when: query.format != null,
                //     child: () => Text(
                //       query.format!.fold(
                //         "",
                //         (str, element) => str.isEmpty
                //             ? element.name.capitalize()
                //             : "$str, ${element.name.capitalize()}",
                //       ),
                //     ),
                //   ),
                //   items: [
                //     for (var format in GMediaFormat.values)
                //       CheckedPopupMenuItem(
                //         value: format,
                //         checked: query.format?.contains(format) == true,
                //         child: Text(format.name.capitalize()),
                //       ),
                //   ],
                //   onSelected: (value) {
                //     if (query.format?.contains(value) == true) {
                //       setState(() => query.format?.remove(value));
                //     } else if (query.format == null) {
                //       setState(() => query.format = [value]);
                //     } else {
                //       setState(() => query.format?.add(value));
                //     }
                //   },
                // ),
                PopupSettingsTile(
                  title: "Season",
                  value: query.season,
                  items: [
                    for (var season in Enum$MediaSeason.values)
                      PopupSettingItem(
                        value: season,
                        label: season.name.capitalize(),
                      ),
                  ],
                  onClear: () => setState(() => query.season = null),
                  onSelected: (value) => setState(() => query.season = value),
                ),
                YearButton(
                  onChanged: (year) => setState(() => query.year = year),
                  year: query.year,
                ),
                // PopupSettingsTile(
                //   title: "Country",
                //   value: query.countryOfOrigin,
                //   items: [
                //     for (var season in countries.entries)
                //       PopupMenuItem(
                //         value: season.value,
                //         child: Text(season.key),
                //       ),
                //   ],
                //   onClear: () => setState(() => query.countryOfOrigin = null),
                //   onSelected: (value) =>
                //       setState(() => query.countryOfOrigin = value),
                // ),
                PopupSettingsTile(
                  title: "Country",
                  value: query.countryOfOrigin,
                  items: [
                    for (var season in countries.entries)
                      PopupSettingItem(
                        value: season.value,
                        label: season.key,
                      ),
                  ],
                  onClear: () => setState(() => query.countryOfOrigin = null),
                  onSelected: (value) =>
                      setState(() => query.countryOfOrigin = value),
                ),
                RadioSettingsTile(
                  title: "Not From My List",
                  value: false,
                  groupValue: query.onList,
                  onChanged: (value) => setState(
                      () => query.onList = value == false ? false : null),
                ),
                RadioSettingsTile(
                  title: "Only From My List",
                  value: true,
                  groupValue: query.onList,
                  onChanged: (value) => setState(() => query.onList = value),
                ),
                SettingsTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Tags"),
                      const SizedBox(height: 5),
                      Wrap(
                        spacing: 5,
                        runSpacing: 5,
                        children: [
                          for (var tag in (query.withTags ?? []))
                            Chip(
                              label: Text(tag.name),
                              side: const BorderSide(color: Colors.green),
                              onDeleted: () =>
                                  setState(() => query.withTags!.remove(tag)),
                            ),
                          for (var tag in (query.withoutTags ?? []))
                            Chip(
                              label: Text(tag.name),
                              side: const BorderSide(color: Colors.red),
                              onDeleted: () => setState(
                                  () => query.withoutTags!.remove(tag)),
                            )
                        ],
                      ),
                    ],
                  ),
                  onTap: () => TagsEditorSheet.show(
                    context,
                    whitelistedTags: query.withTags ?? [],
                    blacklistedTags: query.withoutTags ?? [],
                    onChanged: (whitelistedTags, blacklistedTags) {
                      setState(() {
                        if (whitelistedTags.isNotEmpty) {
                          query.withTags = whitelistedTags;
                        } else {
                          query.withTags = null;
                        }

                        if (blacklistedTags.isNotEmpty) {
                          query.withoutTags = blacklistedTags;
                        } else {
                          query.withoutTags = null;
                        }
                      });
                    },
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

class GenresButton extends HookConsumerWidget {
  const GenresButton({super.key, this.genres, required this.onChanged});

  final List<String>? genres;
  final void Function(List<String>? genres) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var displayAdultContent = ref.watch(userProvider.select(
      (value) => value.value?.parsedData?.Viewer?.options?.displayAdultContent,
    ));
    var (:snapshot, :fetchMore, :refetch) = c.useQuery(GQLRequest(
      genreCollectionQuery,
      parseData: Query$GenreCollection.fromJson,
    ));

    return GQLWidget(
      refetch: refetch,
      response: snapshot,
      builder: () {
        var genresList = snapshot.parsedData!.genres!.toList();

        if ((displayAdultContent ?? true) == false) {
          genresList.remove("Hentai");
        }

        return MultiPopupSettingsTile(
          title: "Genres",
          initialValues: genres,
          subtitle: Show(
            when: genres != null,
            child: () => Text(genres!.join(", ")),
          ),
          items: [
            for (var genre in genresList)
              PopupSettingCheckbox(
                value: genre!,
                // checked: genres?.contains(genre) == true,
                label: genre,
              ),
          ],
          onClear: () => onChanged(null),
          onSaved: (values) => onChanged(values.isEmpty ? null : values),
        );
      },
    );
  }
}

class YearButton extends StatelessWidget {
  const YearButton({super.key, this.year, required this.onChanged});

  final int? year;
  final void Function(int? year) onChanged;

  @override
  Widget build(BuildContext context) {
    var years = List<int>.generate(
      DateTime.now().year + 2 - 1940,
      (index) => 1940 + index,
    );

    return PopupSettingsTile(
      title: "Year",
      value: year,
      items: [
        for (var year in years.reversed)
          PopupSettingItem(
            value: year,
            label: year.toString(),
          ),
      ],
      onClear: () => onChanged(null),
      onSelected: onChanged,
    );
  }
}
