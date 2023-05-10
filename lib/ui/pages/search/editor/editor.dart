import 'package:auto_route/auto_route.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/search/editor/genre.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/search/search.graphql.dart';
import 'package:myaniapp/providers/graphql.dart';
import 'package:myaniapp/providers/user.dart';
import 'package:myaniapp/ui/pages/search/editor/tags.dart';
import 'package:myaniapp/ui/pages/search/provider.dart';

class SearchEditor extends StatefulHookConsumerWidget {
  const SearchEditor({super.key});

  @override
  ConsumerState<SearchEditor> createState() => _SearchEditorState();
}

class _SearchEditorState extends ConsumerState<SearchEditor> {
  late final Search before;

  @override
  void initState() {
    super.initState();
    var e = ref.read(searchProvider(Variables$Query$Search()).notifier);
    before = ref.read(searchProvider(Variables$Query$Search(
      isAdult: e.vars.isAdult,
      genres: e.vars.genres,
      search: e.vars.search,
      season: e.vars.season,
      sort: e.vars.sort,
      type: e.vars.type,
      year: e.vars.year,
      tags: e.vars.tags,
    )).notifier);
  }

  @override
  Widget build(BuildContext context) {
    // used just to rebuild the widget
    var search = ref.watch(searchProvider(Variables$Query$Search()));
    var user = ref.watch(userProvider);
    var years = List<int>.generate(
        DateTime.now().year + 2 - 1940, (index) => 1940 + index);
    var theme = Theme.of(context);
    var collection = useQuery$GenreCollection(
      Options$Query$GenreCollection(fetchPolicy: FetchPolicy.cacheFirst),
    );

    var sortedGenres = collection.result.parsedData?.genres
      ?..removeWhere(
        (element) =>
            element == 'Hentai' &&
            user.value!.options!.displayAdultContent != true,
      );

    var sortedTags = collection.result.parsedData?.tags
      ?..removeWhere(
        (element) =>
            element?.category == 'Sexual Content' &&
            user.value!.options!.displayAdultContent != true,
      );

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            ref.read(searchProvider(Variables$Query$Search()).notifier).update(
                  isAdult: before.vars.isAdult,
                  genres: before.vars.genres,
                  season: before.vars.season,
                  sort: before.vars.sort,
                  type: before.vars.type,
                  year: before.vars.year,
                  onList: before.vars.onList,
                  tags: before.vars.tags,
                  refetch: false,
                );

            context.router.pop();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              ref
                  .read(searchProvider(Variables$Query$Search()).notifier)
                  .refetch();
              context.router.pop();
            },
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Type',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownSearch<Enum$MediaType>(
              selectedItem: ref
                  .read(searchProvider(Variables$Query$Search()).notifier)
                  .vars
                  .type,
              items: Enum$MediaType.values.take(2).toList(),
              itemAsString: (item) => item.name.capitalize(),
              onChanged: (value) => ref
                  .read(searchProvider(Variables$Query$Search()).notifier)
                  .update(type: value, refetch: false),
              clearButtonProps: ClearButtonProps(
                isVisible: true,
                onPressed: () => ref
                    .read(searchProvider(Variables$Query$Search()).notifier)
                    .update(type: null, refetch: false),
              ),
              popupProps: PopupProps.menu(
                itemBuilder: (context, item, _) {
                  var isSelected = ref
                          .read(
                              searchProvider(Variables$Query$Search()).notifier)
                          .vars
                          .type ==
                      item;
                  return ListTile(
                    title: Text(item.name.capitalize()),
                    selected: isSelected,
                    trailing: isSelected ? const Icon(Icons.check) : null,
                  );
                },
              ),
            ),
            Text(
              'Season',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownSearch<Enum$MediaSeason>(
              selectedItem: ref
                  .read(searchProvider(Variables$Query$Search()).notifier)
                  .vars
                  .season,
              items: Enum$MediaSeason.values.take(4).toList(),
              itemAsString: (item) => item.name.capitalize(),
              onChanged: (value) => ref
                  .read(searchProvider(Variables$Query$Search()).notifier)
                  .update(season: value, refetch: false),
              clearButtonProps: ClearButtonProps(
                isVisible: true,
                onPressed: () => ref
                    .read(searchProvider(Variables$Query$Search()).notifier)
                    .update(season: null, refetch: false),
              ),
              popupProps: PopupProps.menu(
                itemBuilder: (context, item, _) {
                  var isSelected = ref
                          .read(
                              searchProvider(Variables$Query$Search()).notifier)
                          .vars
                          .season ==
                      item;
                  return ListTile(
                    title: Text(item.name.capitalize()),
                    selected: isSelected,
                    trailing: isSelected ? const Icon(Icons.check) : null,
                  );
                },
              ),
            ),
            Text(
              'Year',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownSearch<int>(
              selectedItem: ref
                  .read(searchProvider(Variables$Query$Search()).notifier)
                  .year,
              items: years.reversed.toList(),
              // itemAsString: (item) => item.name.capitalize(),
              onChanged: (value) {
                var e =
                    ref.read(searchProvider(Variables$Query$Search()).notifier);

                e.update(
                  year: '$value%',
                  seasonYear: value,
                );
              },
              clearButtonProps: ClearButtonProps(
                isVisible: true,
                onPressed: () => ref
                    .read(searchProvider(Variables$Query$Search()).notifier)
                    .update(year: null, refetch: false),
              ),
              popupProps: PopupProps.dialog(
                itemBuilder: (context, item, _) {
                  var isSelected = ref
                          .read(
                              searchProvider(Variables$Query$Search()).notifier)
                          .year ==
                      item;
                  return ListTile(
                    title: Text(item.toString()),
                    selected: isSelected,
                    trailing: isSelected ? const Icon(Icons.check) : null,
                  );
                },
              ),
            ),
            if (collection.result.parsedData != null) ...[
              Text(
                'Genres',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownSearch<String>.multiSelection(
                selectedItems: ref
                        .read(searchProvider(Variables$Query$Search()).notifier)
                        .vars
                        .genres
                        ?.whereType<String>()
                        .toList() ??
                    [],
                items: sortedGenres!.whereType<String>().toList(),
                onChanged: (value) => ref
                    .read(searchProvider(Variables$Query$Search()).notifier)
                    .update(genres: value, refetch: false),
                popupProps: const PopupPropsMultiSelection.dialog(),
              ),
              Tags(
                tags: sortedTags!
                    .whereType<Query$GenreCollection$tags>()
                    .toList(),
              ),
            ],
            if (user.value?.options?.displayAdultContent == true)
              CheckboxListTile(
                title: const Text('Adult'),
                value: ref
                        .read(searchProvider(Variables$Query$Search()).notifier)
                        .vars
                        .isAdult ??
                    false,
                onChanged: (value) => ref
                    .read(searchProvider(Variables$Query$Search()).notifier)
                    .update(isAdult: value, refetch: false),
              ),
            CheckboxListTile(
              title: const Text('Hide From My List'),
              value: ref
                      .read(searchProvider(Variables$Query$Search()).notifier)
                      .vars
                      .onList ==
                  false,
              onChanged: (value) => ref
                  .read(searchProvider(Variables$Query$Search()).notifier)
                  .update(onList: value == true ? false : null, refetch: false),
            ),
          ],
        ),
      ),
    );
  }
}

void showSearchEditor(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const Dialog.fullscreen(
      child: GraphQlProvider(
        child: SearchEditor(),
      ),
    ),
  );
}
