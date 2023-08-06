import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/search/search.graphql.dart';
import 'package:myaniapp/providers/search.dart';
import 'package:myaniapp/ui/common/custom_dropdown.dart';
import 'package:myaniapp/ui/common/graphql_error.dart';
import 'package:myaniapp/ui/routes/search/editor/tags.dart';

class SearchEditor extends ConsumerStatefulWidget {
  const SearchEditor({super.key});

  @override
  ConsumerState<SearchEditor> createState() => _SearchEditorState();
}

class _SearchEditorState extends ConsumerState<SearchEditor> {
  late Variables$Query$Search options;

  @override
  void initState() {
    super.initState();
    options = ref.read(searchProvider.notifier).variables?.copyWith() ??
        Variables$Query$Search();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Query$GenreCollection$Widget(
      options:
          Options$Query$GenreCollection(fetchPolicy: FetchPolicy.cacheFirst),
      builder: (result, {fetchMore, refetch}) {
        if (result.hasException) {
          return GraphqlError(exception: result.exception!);
        }

        return Scaffold(
          appBar: AppBar(
            actions: [
              TextButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Apply',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  if (ref.read(searchProvider.notifier).variables != options) {
                    ref.read(searchProvider.notifier).setVariables(
                          options.genres?.contains('Hentai') == true
                              ? options.copyWith(isAdult: true)
                              : options.copyWith(isAdult: false),
                        );
                  }
                  context.popRoute();
                },
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                MasonryGridView.custom(
                  shrinkWrap: true,
                  // crossAxisCount: 2,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                  ),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childrenDelegate: SliverChildListDelegate(
                    [
                      CustomDropdown(
                        hint: 'Type',
                        value: options.type,
                        onClear: () {
                          options = options.copyWith(type: null);
                          setState(() {
                            options = removeNulls();
                          });
                        },
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
                          setState(
                              () => options = options.copyWith(type: value));
                        },
                      ),
                      CustomDropdown(
                        hint: 'Season',
                        value: options.season,
                        onClear: () {
                          options = options.copyWith(season: null);
                          setState(() {
                            options = removeNulls();
                          });
                        },
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
                          setState(
                              () => options = options.copyWith(season: value));
                        },
                      ),
                      CustomDropdown(
                        hint: 'Format',
                        value: options.format,
                        onClear: () {
                          options = options.copyWith(format: null);
                          setState(() {
                            options = removeNulls();
                          });
                        },
                        dropdownItems: Enum$MediaFormat.values
                            .takeWhile(
                                (value) => value != Enum$MediaFormat.$unknown)
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.name.capitalize()),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(
                              () => options = options.copyWith(format: value));
                        },
                      ),
                      CustomDropdown(
                        hint: 'Sort',
                        buttonPadding:
                            const EdgeInsets.symmetric(horizontal: 14),
                        dropdownWidth: 200,
                        value: options.sort?.last,
                        onClear: () {
                          options = options.copyWith(sort: null);
                          setState(() {
                            options = removeNulls();
                          });
                        },
                        dropdownItems: Enum$MediaSort.values
                            .takeWhile(
                                (value) => value != Enum$MediaSort.$unknown)
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  enabled: false,
                                  child: StatefulBuilder(
                                      builder: (context, menuSetState) {
                                    return InkWell(
                                      onTap: () {
                                        if (options.sort == null) {
                                          setState(() => options =
                                              options.copyWith(sort: [e]));
                                          return menuSetState(() {});
                                        }

                                        if (options.sort?.contains(e) == true) {
                                          if (options.sort!.length == 1) {
                                            setState(() => options =
                                                options.copyWith(sort: null));
                                            return menuSetState(() {});
                                          }
                                          setState(
                                            () => options = options.copyWith(
                                                sort: options.sort!..remove(e)),
                                          );
                                          menuSetState(() {});
                                        } else {
                                          setState(
                                            () => options = options.copyWith(
                                                sort: options.sort!..add(e)),
                                          );
                                          menuSetState(() {});
                                        }
                                      },
                                      child: SizedBox(
                                        height: double.maxFinite,
                                        child: Row(
                                          children: [
                                            if (options.sort?.contains(e) ==
                                                true)
                                              const Icon(
                                                  Icons.check_box_outlined)
                                            else
                                              const Icon(Icons
                                                  .check_box_outline_blank),
                                            const SizedBox(width: 16),
                                            Text(e.name.capitalize()),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                                ))
                            .toList(),
                        selectedItemBuilder: (context) => Enum$MediaSort.values
                            .map(
                              (e) => Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  (options.sort ?? [])
                                      .map((e) => e!.name.capitalize())
                                      .join(', '),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  maxLines: 1,
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {},
                      ),
                      if (result.parsedData?.genres != null)
                        CustomDropdown<String>(
                          hint: 'Genres',
                          value: options.genres?.last,
                          buttonPadding:
                              const EdgeInsets.symmetric(horizontal: 14),
                          dropdownWidth: 200,
                          onClear: () {
                            options = options.copyWith(genres: null);
                            setState(() {
                              options = removeNulls();
                            });
                          },
                          dropdownItems: result.parsedData!.genres!
                              .cast<String>()
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  enabled: false,
                                  child: StatefulBuilder(
                                      builder: (context, menuSetState) {
                                    return InkWell(
                                      onTap: () {
                                        if (options.genres == null) {
                                          setState(() => options =
                                              options.copyWith(genres: [e]));
                                          return menuSetState(() {});
                                        }

                                        if (options.genres?.contains(e) ==
                                            true) {
                                          if (options.genres!.length == 1) {
                                            setState(() => options =
                                                options.copyWith(genres: null));
                                            return menuSetState(() {});
                                          }
                                          setState(
                                            () => options = options.copyWith(
                                                genres: options.genres!
                                                  ..remove(e)),
                                          );
                                          menuSetState(() {});
                                        } else {
                                          setState(
                                            () => options = options.copyWith(
                                                genres: options.genres!
                                                  ..add(e)),
                                          );
                                          menuSetState(() {});
                                        }
                                      },
                                      child: SizedBox(
                                        height: double.maxFinite,
                                        child: Row(
                                          children: [
                                            if (options.genres?.contains(e) ==
                                                true)
                                              const Icon(
                                                  Icons.check_box_outlined)
                                            else
                                              const Icon(Icons
                                                  .check_box_outline_blank),
                                            const SizedBox(width: 16),
                                            Text(e),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {},
                          selectedItemBuilder: (context) => result
                              .parsedData!.genres!
                              .cast<String>()
                              .map(
                                (e) => Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: Text(
                                    (options.genres ?? []).join(', '),
                                    style: const TextStyle(
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                    ],
                  ),
                ),
                RadioListTile.adaptive(
                  value: false,
                  groupValue: options.onList,
                  toggleable: true,
                  onChanged: (value) {
                    setState(() => options = options.copyWith(
                        onList: value == false ? false : null));
                  },
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: const Text('Not From My List'),
                ),
                RadioListTile.adaptive(
                  value: true,
                  groupValue: options.onList,
                  controlAffinity: ListTileControlAffinity.trailing,
                  toggleable: true,
                  onChanged: (value) {
                    setState(() => options =
                        options.copyWith(onList: value == true ? true : null));
                  },
                  title: const Text('Only From My List'),
                ),
                if (result.parsedData != null) ...[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Included Tags',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () => showTags(
                              context,
                              result.parsedData!.tags!.cast(),
                              selected: options.with_tags?.cast(),
                              onAdd: (tags) => setState(() =>
                                  options = options.copyWith(with_tags: tags)),
                              onRemove: (tags) => setState(
                                () => options = options.copyWith(
                                    with_tags: tags.isNotEmpty ? tags : null),
                              ),
                            ),
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        runSpacing: 5,
                        spacing: 5,
                        children: [
                          for (String tag in options.with_tags?.cast() ?? [])
                            Chip(
                              label: Text(tag),
                              onDeleted: () => setState(
                                () => options = options.copyWith(
                                  with_tags: options.with_tags!.length == 1
                                      ? null
                                      : options.with_tags
                                    ?..remove(tag),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Excluded Tags',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () => showTags(
                              context,
                              result.parsedData!.tags!.cast(),
                              selected: options.without_tags?.cast(),
                              onAdd: (tags) => setState(() => options =
                                  options.copyWith(without_tags: tags)),
                              onRemove: (tags) => setState(
                                () => options = options.copyWith(
                                    without_tags:
                                        tags.isNotEmpty ? tags : null),
                              ),
                            ),
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        runSpacing: 5,
                        spacing: 5,
                        children: [
                          for (String tag in options.without_tags?.cast() ?? [])
                            Chip(
                              label: Text(tag),
                              onDeleted: () => setState(
                                () => options = options.copyWith(
                                  without_tags:
                                      options.without_tags!.length == 1
                                          ? null
                                          : options.without_tags
                                        ?..remove(tag),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  // not removing properties that are null can mess up the query
  Variables$Query$Search removeNulls() {
    return Variables$Query$Search.fromJson(
        options.toJson()..removeWhere((key, value) => value == null));
  }
}

void showSearchEditor(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const Dialog.fullscreen(
      child: SearchEditor(),
    ),
  );
}
