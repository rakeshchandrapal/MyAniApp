import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/providers/search.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/custom_dropdown.dart';
import 'package:myaniapp/ui/routes/search/__generated__/search.data.gql.dart';
import 'package:myaniapp/ui/routes/search/__generated__/search.req.gql.dart';
import 'package:myaniapp/ui/routes/search/editor/tags.dart';
import 'package:myaniapp/ui/routes/search/search.dart';

class EditorSheet extends ConsumerStatefulWidget {
  const EditorSheet({super.key});

  @override
  ConsumerState<EditorSheet> createState() => _EditorSheetState();
}

class _EditorSheetState extends ConsumerState<EditorSheet> {
  late SearchQuery temp;

  @override
  void initState() {
    super.initState();

    var query = ref.read(searchProvider);

    temp = SearchQuery(
      endDate: query.q.endDate,
      format: query.q.format ?? [],
      genres: query.q.genres,
      isAdult: query.q.isAdult,
      onList: query.q.onList,
      page: query.q.page,
      search: query.q.search,
      season: query.q.season,
      seasonYear: query.q.seasonYear,
      sort: query.q.sort,
      startDate: query.q.startDate,
      type: query.q.type,
      withTags: query.q.withTags,
      withoutTags: query.q.withoutTags,
      year: query.q.year,
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
                      ref.read(searchProvider).update(temp);
                      context.pop(temp);
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
                    onChanged: (format) => setState(() => temp.format = format),
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

  final GMediaType? type;
  final void Function(GMediaType? type) onChanged;

  @override
  Widget build(BuildContext context) {
    return SheetDropdownMenu(
      hint: 'Type',
      values: [type],
      onClear: () => onChanged(null),
      items: GMediaType.values
          .take(2)
          .map((e) => DropdownMenuEntry(
                value: e,
                label: e.name.capitalize(),
              ))
          .toList(),
      isMulti: false,
      onChanged: (v) => onChanged(v.first),
    );
  }
}

class SeasonButton extends StatelessWidget {
  const SeasonButton({super.key, this.season, required this.onChanged});

  final GMediaSeason? season;
  final void Function(GMediaSeason? season) onChanged;

  @override
  Widget build(BuildContext context) {
    return SheetDropdownMenu(
      hint: 'Season',
      values: [season],
      onClear: () => onChanged(null),
      items: GMediaSeason.values
          .take(4)
          .map((e) => DropdownMenuEntry(
                value: e,
                label: e.name.capitalize(),
              ))
          .toList(),
      isMulti: false,
      onChanged: (v) => onChanged(v.first),
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
      values: [year],
      onClear: () => onChanged(null),
      items: [
        for (var year in years.reversed)
          DropdownMenuEntry(value: year, label: year.toString()),
      ],
      isMulti: false,
      onChanged: (v) => onChanged(v.first),
    );
  }
}

class FormatButton extends StatelessWidget {
  const FormatButton({super.key, this.format, required this.onChanged});

  final List<GMediaFormat>? format;
  final void Function(List<GMediaFormat>? format) onChanged;

  @override
  Widget build(BuildContext context) {
    return SheetDropdownMenu<GMediaFormat>(
      hint: 'Format',
      values: format ?? [],
      onChanged: (values) => onChanged(values.toList()),
      items: GMediaFormat.values
          .map((e) => DropdownMenuEntry(label: e.name.capitalize(), value: e))
          .toList(),
    );
  }
}

class SortButton extends StatelessWidget {
  const SortButton({super.key, this.sort, required this.onChanged});

  final List<GMediaSort>? sort;
  final void Function(List<GMediaSort>? format) onChanged;

  @override
  Widget build(BuildContext context) {
    return SheetDropdownMenu<GMediaSort>(
      hint: 'Sort',
      values: sort ?? [],
      onChanged: (values) => onChanged(values.toList()),
      onClear: () => onChanged(null),
      items: GMediaSort.values
          .map((e) => DropdownMenuEntry(label: e.name.capitalize(), value: e)),
    );
  }
}

class GenresButton extends StatelessWidget {
  const GenresButton({super.key, this.genres, required this.onChanged});

  final List<String>? genres;
  final void Function(List<String>? format) onChanged;

  @override
  Widget build(BuildContext context) {
    return GQLRequest(
      operationRequest:
          GGenreCollectionReq((b) => b..fetchPolicy = FetchPolicy.CacheFirst),
      builder: (context, response, error, refetch) {
        return SheetDropdownMenu<String>(
          hint: 'Genres',
          items: response!.data!.genres!
              .map((e) => DropdownMenuEntry(label: e!, value: e)),
          values: genres ?? [],
          onChanged: (values) => onChanged(values.toList()),
          onClear: () => onChanged(null),
        );
      },
    );
  }
}

class TagsButton extends StatelessWidget {
  const TagsButton(
      {super.key, this.withTags, this.withoutTags, required this.onChanged});

  final List<GGenreCollectionData_tags>? withTags;
  final List<GGenreCollectionData_tags>? withoutTags;
  final Function(List<GGenreCollectionData_tags>? tags, bool withOrWithout)
      onChanged;

  @override
  Widget build(BuildContext context) {
    // var included = ref
    //     .watch(searchEditorProvider('side').select((value) => value.with_tags));
    // var excluded = ref.watch(
    //     searchEditorProvider('side').select((value) => value.without_tags));

    return GQLRequest(
      operationRequest:
          GGenreCollectionReq((b) => b..fetchPolicy = FetchPolicy.CacheFirst),
      // options:
      //     Options$Query$GenreCollection(fetchPolicy: FetchPolicy.cacheFirst),
      builder: (context, response, error, refetch) {
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
                      tags: Tag.sort(response!.data!.tags!),
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
                      in (withTags ?? [].cast<GGenreCollectionData_tags>()))
                    TagButton(
                      tag: tag.name,
                      included: true,
                      onClear: () => onChanged(
                          withTags?.length == 1 ? null : withTags
                            ?..remove(tag),
                          true),
                    ),
                  for (var tag
                      in (withoutTags ?? [].cast<GGenreCollectionData_tags>()))
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
      },
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
