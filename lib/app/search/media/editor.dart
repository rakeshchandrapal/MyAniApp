import 'package:ferry_exec/ferry_exec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/search/media/__generated__/mediaSearch.req.gql.dart';
import 'package:myaniapp/app/search/media/page.dart';
import 'package:myaniapp/app/settings/settings_page.dart';
import 'package:myaniapp/common/list_setting_button.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/providers/user.dart';

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
                    context.replace("/search/media${query.toString()}");
                    context.pop();
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
                    for (var type in GMediaType.values)
                      PopupMenuItem(
                        value: type,
                        child: Text(type.name.capitalize()),
                      ),
                  ],
                  onClear: () => setState(() => query.type = null),
                  onSelected: (value) => setState(() => query.type = value),
                ),
                PopupSettingsTile(
                  title: "Sort",
                  value: query.sort?.firstOrNull,
                  subtitle: Show(
                    when: query.sort != null,
                    child: () => Text(
                      query.sort!.fold(
                        "",
                        (str, element) => str.isEmpty
                            ? element.name.capitalize()
                            : "$str, ${element.name.capitalize()}",
                      ),
                    ),
                  ),
                  items: [
                    for (var sort in GMediaSort.values)
                      CheckedPopupMenuItem(
                        value: sort,
                        checked: query.sort?.contains(sort) == true,
                        child: Text(sort.name.capitalize()),
                      ),
                  ],
                  onClear: () => setState(() => query.sort = null),
                  onSelected: (value) {
                    if (query.sort?.contains(value) == true) {
                      setState(() => query.sort?.remove(value));
                    } else if (query.sort == null) {
                      setState(() => query.sort = [value]);
                    } else {
                      setState(() => query.sort?.add(value));
                    }
                  },
                ),
                PopupSettingsTile(
                  title: "Format",
                  value: query.format?.firstOrNull,
                  subtitle: Show(
                    when: query.format != null,
                    child: () => Text(
                      query.format!.fold(
                        "",
                        (str, element) => str.isEmpty
                            ? element.name.capitalize()
                            : "$str, ${element.name.capitalize()}",
                      ),
                    ),
                  ),
                  items: [
                    for (var format in GMediaFormat.values)
                      CheckedPopupMenuItem(
                        value: format,
                        checked: query.format?.contains(format) == true,
                        child: Text(format.name.capitalize()),
                      ),
                  ],
                  onClear: () => setState(() => query.format = null),
                  onSelected: (value) {
                    if (query.format?.contains(value) == true) {
                      setState(() => query.format?.remove(value));
                    } else if (query.format == null) {
                      setState(() => query.format = [value]);
                    } else {
                      setState(() => query.format?.add(value));
                    }
                  },
                ),
                PopupSettingsTile(
                  title: "Season",
                  value: query.season,
                  items: [
                    for (var season in GMediaSeason.values)
                      PopupMenuItem(
                        value: season,
                        child: Text(season.name.capitalize()),
                      ),
                  ],
                  onClear: () => setState(() => query.season = null),
                  onSelected: (value) => setState(() => query.season = value),
                ),
                YearButton(
                  onChanged: (year) => setState(() => query.year = year),
                  year: query.year,
                ),
                PopupSettingsTile(
                  title: "Country",
                  value: query.countryOfOrigin,
                  items: [
                    for (var season in countries.entries)
                      PopupMenuItem(
                        value: season.value,
                        child: Text(season.key),
                      ),
                  ],
                  onClear: () => setState(() => query.countryOfOrigin = null),
                  onSelected: (value) =>
                      setState(() => query.countryOfOrigin = value),
                ),
                GenresButton(
                  onChanged: (genres) => setState(() => query.genres = genres),
                  genres: query.genres,
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GenresButton extends ConsumerWidget {
  const GenresButton({super.key, this.genres, required this.onChanged});

  final List<String>? genres;
  final void Function(List<String>? genres) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var displayAdultContent = ref.watch(userProvider.select(
      (value) => value.value?.data?.Viewer?.options?.displayAdultContent,
    ));

    return GQLRequest(
      operationRequest: GGenreCollectionReq((b) => b
        ..requestId = "genreCollectionSearch"
        ..fetchPolicy = FetchPolicy.NetworkOnly),
      builder: (context, response, error, refetch) {
        var genresList = response!.data!.genres!.toList();

        if ((displayAdultContent ?? false) == false) {
          genresList.remove("Hentai");
        }

        return PopupSettingsTile(
          title: "Generes",
          value: genres?.firstOrNull,
          subtitle: Show(
            when: genres != null,
            child: () => Text(genres!.join(", ")),
          ),
          items: [
            for (var genre in genresList)
              CheckedPopupMenuItem(
                value: genre,
                checked: genres?.contains(genre) == true,
                child: Text(genre!),
              ),
          ],
          onClear: () => onChanged(null),
          onSelected: (value) {
            if (genres?.contains(value) == true) {
              onChanged(genres!..remove(value));
            } else if (genres == null) {
              onChanged([value]);
            } else {
              onChanged(genres!..add(value));
            }
          },
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
          PopupMenuItem(
            value: year,
            child: Text(year.toString()),
            // checked: query.format?.contains(format) == true,
          ),
      ],
      onClear: () => onChanged(null),
      onSelected: onChanged,
    );
  }
}
