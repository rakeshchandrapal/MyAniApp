import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:multi_dropdown/models/value_item.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/search/search.graphql.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/custom_dropdown.dart';
import 'package:myaniapp/ui/routes/search/editor/tags.dart';
import 'package:myaniapp/ui/routes/search/search.dart';
import 'package:myaniapp/utils/graphql.dart';

class EditorSheet extends ConsumerStatefulWidget {
  const EditorSheet({super.key, required this.query});

  final SearchQuery query;

  @override
  ConsumerState<EditorSheet> createState() => _EditorSheetState();
}

class _EditorSheetState extends ConsumerState<EditorSheet> {
  late SearchQuery temp;

  @override
  void initState() {
    super.initState();

    temp = SearchQuery(
      endDate: widget.query.endDate,
      format: widget.query.format ?? [],
      genres: widget.query.genres,
      isAdult: widget.query.isAdult,
      onList: widget.query.onList,
      page: widget.query.page,
      search: widget.query.search,
      season: widget.query.season,
      seasonYear: widget.query.seasonYear,
      sort: widget.query.sort,
      startDate: widget.query.startDate,
      type: widget.query.type,
      withTags: widget.query.withTags,
      withoutTags: widget.query.withoutTags,
      year: widget.query.year,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: 0.3,
      initialChildSize: 1,
      expand: false,
      builder: (context, scrollController) => ListView(
        controller: scrollController,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    if (mounted) {
                      context.replace('/search${temp.toString()}');
                      context.pop();
                    }
                  },
                  child: const Text('Apply'),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: wrapAll(
                [
                  TypeButton(
                    type: temp.type,
                    onChanged: (value) => setState(() => temp.type = value),
                  ),
                  SeasonButton(
                    season: temp.season,
                    onChanged: (season) => setState(() => temp.season = season),
                  ),
                  YearButton(
                    year: temp.year,
                    onChanged: (year) => setState(() => temp.year = year),
                  ),
                  FormatButton(
                    format: temp.format,
                    // setState wont be called because the dropdown menu has it own state
                    onChanged: (format) => temp.format = format,
                  ),
                  SortButton(
                    sort: temp.sort,
                    onChanged: (sort) => temp.sort = sort,
                  ),
                  GenresButton(
                    genres: temp.genres,
                    onChanged: (genres) {
                      temp.genres = genres;

                      if (temp.genres?.contains('Hentai') == true) {
                        var displayAdult = ref
                                .read(userProvider)
                                .value!
                                .options!
                                .displayAdultContent ??
                            false;
                        temp.isAdult = displayAdult;
                      } else {
                        temp.isAdult = false;
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RadioListTile.adaptive(
            value: false,
            groupValue: temp.onList,
            toggleable: true,
            onChanged: (value) =>
                setState(() => temp.onList = value == false ? false : null),
            controlAffinity: ListTileControlAffinity.trailing,
            title: const Text('Not From My List'),
          ),
          RadioListTile.adaptive(
            value: true,
            groupValue: temp.onList,
            controlAffinity: ListTileControlAffinity.trailing,
            toggleable: true,
            onChanged: (value) =>
                setState(() => temp.onList = value == true ? true : null),
            title: const Text('Only From My List'),
          ),
          TagsButton(
            withTags: temp.withTags,
            withoutTags: temp.withoutTags,
            onChanged: (tags, withOrWithout) => setState(() =>
                withOrWithout ? temp.withTags = tags : temp.withoutTags = tags),
          )
        ],
      ),
    );
  }

  wrapAll(List<Widget> widgets) {
    return widgets
        .map(
          (e) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: SizedBox(
              width: 150,
              child: e,
            ),
          ),
        )
        .toList();
  }
}

class TypeButton extends StatelessWidget {
  const TypeButton({super.key, this.type, required this.onChanged});

  final Enum$MediaType? type;
  final void Function(Enum$MediaType? type) onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomDropdown(
      hint: 'Type',
      value: type,
      onClear: () => onChanged(null),
      dropdownItems: Enum$MediaType.values
          .take(2)
          .map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e.name.capitalize(),
                ),
              ))
          .toList(),
      onChanged: onChanged,
    );
  }
}

class SeasonButton extends StatelessWidget {
  const SeasonButton({super.key, this.season, required this.onChanged});

  final Enum$MediaSeason? season;
  final void Function(Enum$MediaSeason? season) onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomDropdown(
      hint: 'Season',
      value: season,
      onClear: () => onChanged(null),
      dropdownItems: Enum$MediaSeason.values
          .take(4)
          .map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e.name.capitalize(),
                ),
              ))
          .toList(),
      onChanged: onChanged,
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

    return CustomDropdown(
      hint: 'Year',
      value: year,
      onClear: () => onChanged(null),
      dropdownItems: [
        for (var year in years.reversed)
          DropdownMenuItem(value: year, child: Text(year.toString())),
      ],
      onChanged: onChanged,
    );
  }
}

class FormatButton extends StatelessWidget {
  const FormatButton({super.key, this.format, required this.onChanged});

  final List<Enum$MediaFormat>? format;
  final void Function(List<Enum$MediaFormat>? format) onChanged;

  @override
  Widget build(BuildContext context) {
    return MultiDropdown(
      hint: 'Format',
      selectedItems: format
          ?.map((e) => ValueItem(label: e.name.capitalize(), value: e))
          .toList(),
      onSelected: (values) => onChanged(values.map((e) => e.value!).toList()),
      items: Enum$MediaFormat.values
          .map((e) => ValueItem(label: e.name.capitalize(), value: e))
          .toList(),
    );
  }
}

class SortButton extends StatelessWidget {
  const SortButton({super.key, this.sort, required this.onChanged});

  final List<Enum$MediaSort>? sort;
  final void Function(List<Enum$MediaSort>? format) onChanged;

  @override
  Widget build(BuildContext context) {
    return MultiDropdown(
      hint: 'Sort',
      selectedItems: sort
          ?.map((e) => ValueItem(label: e.name.capitalize(), value: e))
          .toList(),
      onSelected: (values) => onChanged(values.map((e) => e.value!).toList()),
      items: Enum$MediaSort.values
          .map((e) => ValueItem(label: e.name.capitalize(), value: e))
          .toList(),
    );
  }
}

class GenresButton extends StatelessWidget {
  const GenresButton({super.key, this.genres, required this.onChanged});

  final List<String>? genres;
  final void Function(List<String>? format) onChanged;

  @override
  Widget build(BuildContext context) {
    return Query$GenreCollection$Widget(
      options:
          Options$Query$GenreCollection(fetchPolicy: FetchPolicy.cacheFirst),
      builder: queryBuilder((result, [fetchMore, refetch]) {
        return MultiDropdown(
          hint: 'Genres',
          items: result.parsedData!.genres!
              .map((e) => ValueItem(label: e!, value: e))
              .toList(),
          selectedItems: genres
              ?.map((e) => ValueItem(label: e.capitalize(), value: e))
              .toList(),
          onSelected: (values) =>
              onChanged(values.map((e) => e.value!).toList()),
          // items: Enum$MediaSort.values
          //     .map((e) => ValueItem(label: e.name.capitalize(), value: e))
          //     .toList(),
        );
      }),
    );
  }
}

class TagsButton extends StatelessWidget {
  const TagsButton(
      {super.key, this.withTags, this.withoutTags, required this.onChanged});

  final List<Query$GenreCollection$tags>? withTags;
  final List<Query$GenreCollection$tags>? withoutTags;
  final Function(List<Query$GenreCollection$tags>? tags, bool withOrWithout)
      onChanged;

  @override
  Widget build(BuildContext context) {
    // var included = ref
    //     .watch(searchEditorProvider('side').select((value) => value.with_tags));
    // var excluded = ref.watch(
    //     searchEditorProvider('side').select((value) => value.without_tags));

    return Query$GenreCollection$Widget(
      options:
          Options$Query$GenreCollection(fetchPolicy: FetchPolicy.cacheFirst),
      builder: queryBuilder((result, [fetchMore, refetch]) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tags',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  IconButton(
                    onPressed: () => showTags(
                      context,
                      tags: Tag.sort(result.parsedData!.tags!.cast()),
                      withTags: withTags,
                      withoutTags: withoutTags,
                      onChanged: onChanged,
                    ),
                    icon: const Icon(Icons.add),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Wrap(
                spacing: 5,
                runSpacing: 10,
                children: [
                  for (var tag
                      in (withTags ?? [].cast<Query$GenreCollection$tags>()))
                    TagButton(
                      tag: tag.name,
                      included: true,
                      onClear: () => onChanged(
                          withTags?.length == 1 ? null : withTags
                            ?..remove(tag),
                          true),
                    ),
                  for (var tag
                      in (withoutTags ?? [].cast<Query$GenreCollection$tags>()))
                    TagButton(
                      tag: tag.name,
                      included: false,
                      onClear: () => onChanged(
                          withoutTags?.length == 1 ? null : withoutTags
                            ?..remove(tag),
                          false),
                    ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}

class TagButton extends StatelessWidget {
  const TagButton({
    super.key,
    required this.tag,
    required this.included,
    required this.onClear,
  });

  final String tag;
  final bool included;
  final void Function() onClear;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: included ? Colors.green : Colors.red),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(tag),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            iconSize: 15,
            visualDensity: VisualDensity.compact,
            onPressed: onClear,
            icon: const Icon(Icons.clear),
          )
        ],
      ),
    );
  }
}
