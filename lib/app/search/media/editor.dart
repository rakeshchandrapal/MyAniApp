import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/search/media/__generated__/mediaSearch.req.gql.dart';
import 'package:myaniapp/app/search/media/page.dart';
import 'package:myaniapp/common/custom_dropdown.dart';
import 'package:myaniapp/common/list_setting_button.dart';
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
                child: TextButton(
                  onPressed: () {
                    if (query.genres?.contains("Hentai") == true) {
                      query.isAdult = true;
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
          GridView(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.symmetric(horizontal: 4),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisExtent: 60,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            children: [
              SheetDropdownMenu(
                value: query.type,
                hint: "Type",
                onChanged: (values) => query.type = values.first,
                onClear: () => query.type = null,
                items: GMediaType.values.map(
                  (p0) => DropdownMenuEntry(
                    value: p0,
                    label: p0.name.capitalize(),
                  ),
                ),
              ),
              SheetDropdownMenu<GMediaSort>.multi(
                values: query.sort ?? [],
                onClear: () => query.sort = null,
                onChanged: (values) => query.sort = values.toList(),
                hint: "Sort",
                items: GMediaSort.values.map(
                  (p0) =>
                      DropdownMenuEntry(value: p0, label: p0.name.capitalize()),
                ),
              ),
              SheetDropdownMenu<GMediaFormat>.multi(
                values: query.format ?? [],
                hint: "Format",
                onClear: () => query.format = null,
                onChanged: (values) => query.format = values.toList(),
                items: GMediaFormat.values.map(
                  (p0) =>
                      DropdownMenuEntry(value: p0, label: p0.name.capitalize()),
                ),
              ),
              YearButton(
                onChanged: (year) => query.year = year,
                year: query.year,
              ),
              SheetDropdownMenu(
                value: query.season,
                hint: "Season",
                onChanged: (values) => query.season = values.first,
                onClear: () => query.season = null,
                items: GMediaSeason.values.map(
                  (p0) => DropdownMenuEntry(
                    value: p0,
                    label: p0.name.capitalize(),
                  ),
                ),
              ),
              SheetDropdownMenu(
                value: query.countryOfOrigin,
                hint: "Country",
                onChanged: (values) => query.countryOfOrigin = values.first,
                onClear: () => query.countryOfOrigin = null,
                items: countries.entries.map(
                  (e) => DropdownMenuEntry(value: e.value, label: e.key),
                ),
              ),
              GenresButton(
                onChanged: (genres) => query.genres = genres,
                genres: query.genres,
              ),
            ],
          ),
          RadioListTile.adaptive(
            value: false,
            groupValue: query.onList,
            toggleable: true,
            title: const Text("Not from my list"),
            onChanged: (value) =>
                setState(() => query.onList = value == false ? false : null),
          ),
          RadioListTile.adaptive(
            value: true,
            toggleable: true,
            groupValue: query.onList,
            title: const Text("Only from my list"),
            onChanged: (value) => setState(() => query.onList = value),
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
      operationRequest:
          GGenreCollectionReq((b) => b..requestId = "genreCollectionSearch"),
      builder: (context, response, error, refetch) {
        var genresList = response!.data!.genres!.toList();

        if ((displayAdultContent ?? false) == false) {
          genresList.remove("Hentai");
        }

        return SheetDropdownMenu<String>.multi(
          hint: 'Genres',
          items: genresList.map((e) => DropdownMenuEntry(label: e!, value: e)),
          values: genres ?? [],
          onChanged: (values) => onChanged(values.toList()),
          onClear: () => onChanged(null),
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

    return SheetDropdownMenu(
      hint: 'Year',
      value: year,
      onClear: () => onChanged(null),
      items: [
        for (var year in years.reversed)
          DropdownMenuEntry(value: year, label: year.toString()),
      ],
      onChanged: (v) => onChanged(v.first),
    );
  }
}
