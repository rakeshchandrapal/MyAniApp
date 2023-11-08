import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/search/search.graphql.dart';
import 'package:myaniapp/providers/search.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/common/custom_dropdown.dart';
import 'package:myaniapp/ui/routes/search/editor/tags.dart';

class EditorSheet extends ConsumerStatefulWidget {
  const EditorSheet({super.key});

  @override
  ConsumerState<EditorSheet> createState() => _EditorSheetState();
}

class _EditorSheetState extends ConsumerState<EditorSheet>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    Future(() => ref
        .read(searchEditorProvider('side').notifier)
        .set(ref.read(searchEditorProvider('main'))));
  }

  @override
  Widget build(BuildContext context) {
    var onList =
        ref.watch(searchEditorProvider('side').select((value) => value.onList));

    return DraggableScrollableSheet(
      minChildSize: 0.3,
      initialChildSize: 1,
      expand: false,
      builder: (context, scrollController) => ListView(
        controller: scrollController,
        children: [
          // TabBar.secondary(
          //   controller: controller,
          //   splashBorderRadius:
          //       const BorderRadius.vertical(top: Radius.circular(28)),
          //   tabs: const [
          //     Tab(text: 'hi'),
          //     Tab(text: 'penis'),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    ref
                        .read(searchEditorProvider('main').notifier)
                        .set(ref.read(searchEditorProvider('side')));
                    context.popRoute();
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
                  const TypeButton(),
                  const SeasonButton(),
                  const FormatButton(),
                  const SortButton(),
                  const GenresButton(),
                  const YearPicker(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RadioListTile.adaptive(
            value: false,
            groupValue: onList,
            toggleable: true,
            onChanged: (value) {
              ref.read(searchEditorProvider('side').notifier).set(ref
                  .read(searchEditorProvider('side'))
                  .copyWith(onList: value == false ? false : null));
            },
            controlAffinity: ListTileControlAffinity.trailing,
            title: const Text('Not From My List'),
          ),
          RadioListTile.adaptive(
            value: true,
            groupValue: onList,
            controlAffinity: ListTileControlAffinity.trailing,
            toggleable: true,
            onChanged: (value) {
              ref.read(searchEditorProvider('side').notifier).set(ref
                  .read(searchEditorProvider('side'))
                  .copyWith(onList: value == true ? true : null));
            },
            title: const Text('Only From My List'),
          ),
          const TagsButton(),
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

class TagsButton extends ConsumerWidget {
  const TagsButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var included = ref
        .watch(searchEditorProvider('side').select((value) => value.with_tags));
    var excluded = ref.watch(
        searchEditorProvider('side').select((value) => value.without_tags));

    return Query$GenreCollection$Widget(
      options:
          Options$Query$GenreCollection(fetchPolicy: FetchPolicy.cacheFirst),
      builder: (result, {fetchMore, refetch}) {
        if ((result.isLoading && result.data == null) || result.hasException) {
          return const SizedBox();
        }

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
                        context, Tag.sort(result.parsedData!.tags!.cast())),
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
                  for (var tag in (included ?? [].cast<String>()))
                    TagButton(
                      tag: tag!,
                      included: true,
                      onClear: () =>
                          ref.read(searchEditorProvider('side').notifier).set(
                                ref.read(searchEditorProvider('side')).copyWith(
                                      with_tags: included!.length == 1
                                          ? null
                                          : included
                                        ?..remove(tag),
                                    ),
                              ),
                    ),
                  for (var tag in (excluded ?? [].cast<String>()))
                    TagButton(
                      tag: tag!,
                      included: false,
                      onClear: () =>
                          ref.read(searchEditorProvider('side').notifier).set(
                                ref.read(searchEditorProvider('side')).copyWith(
                                      without_tags: excluded!.length == 1
                                          ? null
                                          : excluded
                                        ?..remove(tag),
                                    ),
                              ),
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

class GenresButton extends ConsumerWidget {
  const GenresButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var genres =
        ref.watch(searchEditorProvider('side').select((value) => value.genres));

    return Query$GenreCollection$Widget(
      options:
          Options$Query$GenreCollection(fetchPolicy: FetchPolicy.cacheFirst),
      builder: (result, {fetchMore, refetch}) {
        if ((result.isLoading && result.data == null) || result.hasException) {
          return const SizedBox();
        }

        return CustomDropdown.checkbox(
          hint: 'Genres',
          buttonPadding: const EdgeInsets.symmetric(horizontal: 14),
          dropdownWidth: 230,
          isChecked: (value) =>
              ref.read(searchEditorProvider('side')).genres?.contains(value) ??
              false,
          values: genres,
          selectedItemBuilder: (context) => result.parsedData!.genres!
              .map(
                (e) => Container(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    (genres ?? []).join(', '),
                    style: const TextStyle(
                      fontSize: 14,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 1,
                  ),
                ),
              )
              .toList(),
          items: result.parsedData!.genres!
              .map(
                (e) => DropdownMenuItem(
                  value: e!,
                  child: Text(e),
                ),
              )
              .toList(),
          onChanged: (value) {
            var displayAdult =
                ref.read(userProvider).value!.options!.displayAdultContent ??
                    false;
            var options = ref.read(searchEditorProvider('side'));
            if (options.genres == null) {
              return ref.read(searchEditorProvider('side').notifier).merge(
                    Variables$Query$Search(
                      genres: [value],
                      isAdult: value == 'Hentai' && displayAdult,
                    ),
                  );
            }

            if (options.genres!.contains(value) == true) {
              if (options.genres!.length == 1) {
                return ref
                    .read(searchEditorProvider('side').notifier)
                    .set(options.copyWith(genres: null, isAdult: null));
              }
              return ref.read(searchEditorProvider('side').notifier).merge(
                    Variables$Query$Search(
                        genres: options.genres!..remove(value),
                        isAdult: (value == 'Hentai' ||
                                options.genres!.contains('Hentai')) &&
                            displayAdult),
                  );
            } else {
              return ref.read(searchEditorProvider('side').notifier).merge(
                    Variables$Query$Search(
                        genres: options.genres!..add(value),
                        isAdult: (value == 'Hentai' ||
                                options.genres!.contains('Hentai')) &&
                            displayAdult),
                  );
            }
          },
        );
      },
    );
  }
}

class TypeButton extends ConsumerWidget {
  const TypeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var type =
        ref.watch(searchEditorProvider('side').select((value) => value.type));

    return CustomDropdown(
      hint: 'Type',
      value: type,
      onClear: () => ref
          .read(searchEditorProvider('side').notifier)
          .set(ref.read(searchEditorProvider('side')).copyWith(type: null)),
      dropdownItems: Enum$MediaType.values
          .take(2)
          .map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e.name.capitalize(),
                ),
              ))
          .toList(),
      onChanged: (value) {
        ref
            .read(searchEditorProvider('side').notifier)
            .merge(Variables$Query$Search(type: value));
      },
    );
  }
}

class SeasonButton extends ConsumerWidget {
  const SeasonButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var season =
        ref.watch(searchEditorProvider('side').select((value) => value.season));

    return CustomDropdown(
      hint: 'Season',
      value: season,
      onClear: () => ref
          .read(searchEditorProvider('side').notifier)
          .set(ref.read(searchEditorProvider('side')).copyWith(season: null)),
      dropdownItems: Enum$MediaSeason.values
          .take(4)
          .map((e) => DropdownMenuItem(
                value: e,
                child: Text(
                  e.name.capitalize(),
                ),
              ))
          .toList(),
      onChanged: (value) {
        ref
            .read(searchEditorProvider('side').notifier)
            .merge(Variables$Query$Search(season: value));
      },
    );
  }
}

class YearPicker extends ConsumerWidget {
  const YearPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var vars =
        ref.watch(searchEditorProvider('side').select((value) => value.year));

    var years = List<int>.generate(
      DateTime.now().year + 2 - 1940,
      (index) => 1940 + index,
    );

    return CustomDropdown(
      hint: 'Year',
      value: vars?.replaceAll('%', ''),
      onChanged: (value) => ref
          .read(searchEditorProvider('side').notifier)
          .merge(Variables$Query$Search(year: '$value%')),
      onClear: () => ref
          .read(searchEditorProvider('side').notifier)
          .set(ref.read(searchEditorProvider('side')).copyWith(year: null)),
      dropdownItems: years.reversed
          .map(
            (e) => DropdownMenuItem(
              value: e.toString(),
              child: Text(e.toString()),
            ),
          )
          .toList(),
    );
  }
}

class FormatButton extends ConsumerWidget {
  const FormatButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var format =
        ref.watch(searchEditorProvider('side').select((value) => value.format));

    return CustomDropdown.checkbox(
      hint: 'Format',
      buttonPadding: const EdgeInsets.symmetric(horizontal: 14),
      dropdownWidth: 230,
      isChecked: (value) =>
          ref.read(searchEditorProvider('side')).format?.contains(value) ??
          false,
      values: format,
      selectedItemBuilder: (context) => Enum$MediaFormat.values
          .map(
            (e) => Container(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                (format ?? []).map((e) => e!.name.capitalize()).join(', '),
                style: const TextStyle(
                  fontSize: 14,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 1,
              ),
            ),
          )
          .toList(),
      items: Enum$MediaFormat.values
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Text(e.name),
            ),
          )
          .toList(),
      onChanged: (value) {
        var options = ref.read(searchEditorProvider('side'));
        if (options.format == null) {
          return ref
              .read(searchEditorProvider('side').notifier)
              .merge(Variables$Query$Search(format: [value]));
        }

        if (options.format!.contains(value) == true) {
          if (options.format!.length == 1) {
            return ref
                .read(searchEditorProvider('side').notifier)
                .set(options.copyWith(format: null));
            // return menuSetState(() {});
          }
          return ref.read(searchEditorProvider('side').notifier).merge(
              Variables$Query$Search(format: options.format!..remove(value)));
          // menuSetState(() {});
        } else {
          return ref.read(searchEditorProvider('side').notifier).merge(
              Variables$Query$Search(format: options.format!..add(value)));
          // menuSetState(() {});
        }
      },
    );
  }
}

class SortButton extends ConsumerWidget {
  const SortButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sort =
        ref.watch(searchEditorProvider('side').select((value) => value.sort));
    // print(sort);

    return CustomDropdown.checkbox(
      hint: 'Sort',
      buttonPadding: const EdgeInsets.symmetric(horizontal: 14),
      dropdownWidth: 230,
      isChecked: (value) =>
          ref.read(searchEditorProvider('side')).sort?.contains(value) ?? false,
      values: sort,
      selectedItemBuilder: (context) => Enum$MediaSort.values
          .map(
            (e) => Container(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                (sort ?? []).map((e) => e!.name.capitalize()).join(', '),
                style: const TextStyle(
                  fontSize: 14,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 1,
              ),
            ),
          )
          .toList(),
      items: Enum$MediaSort.values
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Text(e.name),
            ),
          )
          .toList(),
      onChanged: (value) {
        var options = ref.read(searchEditorProvider('side'));
        if (options.sort == null) {
          return ref
              .read(searchEditorProvider('side').notifier)
              .merge(Variables$Query$Search(sort: [value]));
        }

        if (options.sort!.contains(value) == true) {
          if (options.sort!.length == 1) {
            return ref
                .read(searchEditorProvider('side').notifier)
                .set(options.copyWith(sort: null));
            // return menuSetState(() {});
          }
          return ref.read(searchEditorProvider('side').notifier).merge(
              Variables$Query$Search(sort: options.sort!..remove(value)));
          // menuSetState(() {});
        } else {
          return ref
              .read(searchEditorProvider('side').notifier)
              .merge(Variables$Query$Search(sort: options.sort!..add(value)));
          // menuSetState(() {});
        }
      },
    );
  }
}
