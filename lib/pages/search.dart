import 'package:MyAniApp/graphql/Media.graphql.dart';
import 'package:MyAniApp/graphql/schema.graphql.dart';
import 'package:MyAniApp/providers/graphql.dart';
import 'package:MyAniApp/providers/user.dart';
import 'package:MyAniApp/widgets/graphql.dart';
import 'package:MyAniApp/widgets/lists/cards.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef OnSave = void Function(
  List<Enum$MediaSort>? sort,
  Enum$MediaType? type,
  int? year,
  Enum$MediaSeason? season,
  String? search,
  List<String>? genres,
  List<Query$GenreCollection$tags>? tags,
  bool? isAdult,
);

@RoutePage()
class SearchPage extends StatefulHookWidget {
  final List<dynamic>? sort;
  final Enum$MediaSeason? season;
  final String? search;
  final int? year;
  final Enum$MediaType? type;
  final List<String>? genres;
  final List<dynamic>? tags;
  final bool? isAdult;
  final bool? autofoucus;
  const SearchPage({
    super.key,
    this.sort,
    this.season,
    this.search,
    this.year,
    this.type,
    this.genres,
    this.tags,
    this.isAdult,
    this.autofoucus,
  });

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Enum$MediaSort>? sort;
  Enum$MediaSeason? season;
  String? search;
  int? year;
  Enum$MediaType? type;
  List<String>? genres;
  List<Query$GenreCollection$tags>? tags;
  bool? isAdult;
  FocusNode node = FocusNode();

  @override
  void initState() {
    super.initState();
    sort = widget.sort as List<Enum$MediaSort>?;
    year = widget.year;
    season = widget.season;
    type = widget.type;
    genres = widget.genres;
    tags = widget.tags as List<Query$GenreCollection$tags>?;
    isAdult = widget.isAdult;
    search = widget.search;
    if (widget.autofoucus == true) node.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    var shouldShow = sort?.isNotEmpty == true ||
        year != null ||
        season != null ||
        type != null ||
        genres?.isNotEmpty == true ||
        tags?.isNotEmpty == true ||
        search?.isNotEmpty == true ||
        isAdult == true;

    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          leading: const SizedBox(),
          floating: true,
          actions: [
            if (context.router.canPop())
              IconButton(
                onPressed: () => context.router.pop(),
                icon: const Icon(Icons.arrow_back),
              ),
            Expanded(
              child: SearchBar(
                sort: sort ?? [],
                focusNode: node,
                search: search?.isNotEmpty == true ? search : null,
                season: season,
                type: type,
                year: year,
                genres: genres,
                tags: tags,
                isAdult: isAdult,
                onSave: (List<Enum$MediaSort>? nsort,
                        Enum$MediaType? ntype,
                        int? nyear,
                        Enum$MediaSeason? nseason,
                        String? nsearch,
                        List<String>? ngenres,
                        List<Query$GenreCollection$tags>? ntags,
                        bool? nadult) =>
                    setState(
                  () {
                    sort = nsort ?? sort;
                    type = ntype;
                    year = nyear;
                    season = nseason;
                    search = nsearch;
                    genres = ngenres;
                    tags = ntags;
                    isAdult = nadult;
                  },
                ),
              ),
            ),
          ],
        ),
      ],
      body: shouldShow
          ? SearchResults(
              genres: genres,
              isAdult: isAdult,
              search: search,
              season: season,
              sort: sort,
              tags: tags,
              type: type,
              year: year != null && season == null ? '$year%' : null,
              seasonYear: season != null ? year : null,
            )
          : const SizedBox(),
    );
  }
}

class SearchResults extends HookWidget {
  final List<Enum$MediaSort>? sort;
  final Enum$MediaSeason? season;
  final String? search;
  final String? year;
  final int? seasonYear;
  final Enum$MediaType? type;
  final List<String>? genres;
  final List<Query$GenreCollection$tags>? tags;
  final bool? isAdult;
  const SearchResults({
    super.key,
    this.sort,
    this.season,
    this.search,
    this.year,
    this.seasonYear,
    this.type,
    this.genres,
    this.tags,
    this.isAdult,
  });

  @override
  Widget build(BuildContext context) {
    var hook = useQuery$FetchMedia(
      Options$Query$FetchMedia(
        variables: Variables$Query$FetchMedia(
          sort: sort?.isNotEmpty == true ? sort : null,
          type: type,
          year: year,
          seasonYear: seasonYear,
          season: season,
          search: search?.isNotEmpty == true ? search : null,
          genres: genres,
          tags: tags?.map((e) => e.name).toList(),
          isAdult: isAdult,
        ),
      ),
    );

    // if (hook.result.hasException) {
    //   return Graphql(hook.result.exception!);
    // }

    var nextPage = hook.result.parsedData?.Page?.pageInfo?.hasNextPage;
    // print(nextPage);

    FetchMoreOptions$Query$FetchMedia opts = FetchMoreOptions$Query$FetchMedia(
      variables: nextPage != null
          ? Variables$Query$FetchMedia(
              page: (hook.result.parsedData?.Page?.pageInfo?.currentPage ?? 1) +
                  1,
            )
          : null,
      updateQuery: (previousResultData, fetchMoreResultData) {
        var list = [
          ...previousResultData!['Page']!['media'],
          ...fetchMoreResultData!['Page']!['media'],
        ];
        fetchMoreResultData['Page']!['media'] = list;
        return fetchMoreResultData;
      },
    );

    return Graphql(
      hook: hook,
      builder: (result) => NotificationListener<ScrollEndNotification>(
        onNotification: (notification) {
          if (notification.metrics.pixels >
                  notification.metrics.maxScrollExtent - 100 &&
              nextPage == true) {
            hook.fetchMore(opts);
          }
          return true;
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: Cards(
              list: result.Page!.media!,
              underTitle: (media, style) {
                var count = media.episodes ?? media.chapters;

                return Text(
                  '${media.format != null ? '${media.format!.name} · ' : ''}${count != null ? media.type == Enum$MediaType.ANIME ? '$count episode(s)' : ' · $count chapter(s)' : ''}',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.labelSmall?.fontSize,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 1,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final List<Enum$MediaSort>? sort;
  final Enum$MediaSeason? season;
  final int? year;
  final Enum$MediaType? type;
  final String? search;
  final List<String>? genres;
  final List<Query$GenreCollection$tags>? tags;
  final bool? isAdult;
  final OnSave onSave;
  final FocusNode? focusNode;
  const SearchBar({
    super.key,
    required this.sort,
    required this.onSave,
    this.season,
    this.year,
    this.type,
    this.search,
    this.genres,
    this.tags,
    this.isAdult,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      controller: TextEditingController()..text = search ?? '',
      onSubmitted: (value) =>
          onSave(sort, type, year, season, value, genres, tags, isAdult),
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: IconButton(
          icon: const Icon(Icons.keyboard_control_sharp),
          onPressed: () => showFilterDialog(context),
          iconSize: 32,
        ),
      ),
    );
  }

  void showFilterDialog(BuildContext context) {
    focusNode?.unfocus();
    showDialog(
      context: context,
      builder: (context) => Dialog.fullscreen(
        child: GraphQlProvider(
          child: FilterDialog(
            season: season,
            sort: sort,
            type: type,
            year: year,
            genres: genres,
            tags: tags,
            search: search,
            isAdult: isAdult,
            onSave: (sort, type, year, season, search, genres, tags, isAdult) =>
                onSave(sort, type, year, season, search, genres, tags, isAdult),
          ),
        ),
      ),
    );
  }
}

class FilterDialog extends StatefulHookConsumerWidget {
  final List<Enum$MediaSort>? sort;
  final Enum$MediaSeason? season;
  final int? year;
  final Enum$MediaType? type;
  final List<String>? genres;
  final List<Query$GenreCollection$tags>? tags;
  final bool? isAdult;
  final String? search;
  final OnSave onSave;

  const FilterDialog({
    super.key,
    required this.onSave,
    this.sort = const [],
    this.type,
    this.year,
    this.season,
    this.genres,
    this.tags,
    this.isAdult,
    this.search,
  });

  @override
  ConsumerState<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends ConsumerState<FilterDialog> {
  List<Enum$MediaSort>? sort;
  Enum$MediaSeason? season;
  int? year;
  String? search;
  Enum$MediaType? type;
  List<String>? genres;
  List<Query$GenreCollection$tags>? tags;
  bool? isAdult;

  @override
  void initState() {
    sort = widget.sort;
    season = widget.season;
    year = widget.year;
    type = widget.type;
    genres = widget.genres;
    tags = widget.tags;
    isAdult = widget.isAdult;
    search = widget.search;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var user = ref.watch(userProvider);
    var years = List<int>.generate(
        DateTime.now().year + 2 - 1940, (index) => 1940 + index);
    var hook = useQuery$GenreCollection(
      Options$Query$GenreCollection(
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );

    var sortedGenres = hook.result.parsedData?.genres
      ?..removeWhere((element) =>
          element == 'Hentai' &&
          user.value?.options?.displayAdultContent == false);

    var sortedTags = hook.result.parsedData?.tags
      ?..removeWhere(
        (element) =>
            element?.isAdult == true &&
            user.value?.options?.displayAdultContent == false,
      );

    List<TagsModel> listsP = [];

    sortedTags?.forEach((tag) {
      var o = listsP.indexWhere((element) => element.name == tag?.category);
      if (o == -1) {
        listsP.add(TagsModel(name: tag!.category!)..tags.add(tag));
      } else {
        listsP[o].tags.add(tag!);
      }
    });

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                widget.onSave(
                    sort, type, year, season, search, genres, tags, isAdult);
                context.router.pop();
              },
              icon: const Icon(Icons.save),
            ),
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
              style: Theme.of(context).textTheme.titleMedium,
            ),
            _typeChips(),
            Text(
              'Season',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            _seasonChips(),
            Text(
              'Genres',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            if (sortedGenres?.isNotEmpty == true)
              _mediaChips(
                sortedGenres!.whereType<String>().toList(),
              ),
            Text(
              'Sort',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            _sortingChips(),
            Text(
              'Year',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: DropdownSearch<int>(
                items: years.reversed.toList(),
                selectedItem: year,
                clearButtonProps: const ClearButtonProps(isVisible: true),
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  baseStyle: TextStyle(overflow: TextOverflow.ellipsis),
                  dropdownSearchDecoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Any',
                  ),
                ),
                onChanged: (value) => setState(() => year = value),
                popupProps: const PopupProps.dialog(),
              ),
            ),
            if (sortedTags?.isNotEmpty == true)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Tags(
                  selected: tags ?? [],
                  tags: sortedTags!
                      .whereType<Query$GenreCollection$tags>()
                      .toList(),
                  onChange: (selected) => setState(() => tags = selected),
                ),
              ),
            CheckboxListTile(
              value: isAdult ?? false,
              title: const Text('Adult'),
              onChanged: (value) => setState(() => isAdult = value),
            ),
          ],
        ),
      ),
    );
  }

  _typeChips() {
    const types = [Enum$MediaType.ANIME, Enum$MediaType.MANGA];

    return SizedBox(
      height: 50,
      child: ListView.separated(
        itemCount: types.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) {
          var item = types[index];
          late String str;

          if (item == Enum$MediaType.ANIME) {
            str = 'Anime';
          } else if (item == Enum$MediaType.MANGA) {
            str = 'Manga';
          }

          return FilterChip(
            label: Text(str),
            selected: type == item,
            onSelected: (value) => setState(
              () {
                if (value) {
                  type = item;
                } else {
                  type = null;
                }
              },
            ),
          );
        },
      ),
    );
  }

  _sortingChips() {
    const sorts = [
      Enum$MediaSort.TRENDING_DESC,
      Enum$MediaSort.POPULARITY_DESC,
      Enum$MediaSort.SCORE_DESC,
      Enum$MediaSort.FAVOURITES_DESC,
      Enum$MediaSort.ID_DESC,
      Enum$MediaSort.START_DATE_DESC
    ];

    return SizedBox(
      height: 50,
      child: ListView.separated(
        itemCount: sorts.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) {
          var item = sorts[index];
          late String str;

          if (item == Enum$MediaSort.TRENDING_DESC) {
            str = 'Trending';
          } else if (item == Enum$MediaSort.POPULARITY_DESC) {
            str = 'Popularity';
          } else if (item == Enum$MediaSort.SCORE_DESC) {
            str = 'Average Score';
          } else if (item == Enum$MediaSort.FAVOURITES_DESC) {
            str = 'Favorites';
          } else if (item == Enum$MediaSort.ID_DESC) {
            str = 'Date Added';
          } else if (item == Enum$MediaSort.START_DATE_DESC) {
            str = 'Start Date';
          }

          return FilterChip(
            label: Text(str),
            selected: sort?.contains(item) ?? false,
            onSelected: (value) => setState(
              () {
                List<Enum$MediaSort> g = [...sort ?? []];

                if (value) {
                  sort = g..add(item);
                } else {
                  sort = g..remove(item);
                }
              },
            ),
          );
        },
      ),
    );
  }

  _mediaChips(List<String> gs) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: gs.length,
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemBuilder: (context, index) {
            var genre = gs[index];
            return FilterChip(
              label: Text(genre),
              selected: genres?.contains(genre) ?? false,
              onSelected: (value) => setState(
                () {
                  List<String> g = [...genres ?? []];
                  if (value) {
                    genres = g..add(genre);
                  } else {
                    genres = g..remove(genre);
                  }
                },
              ),
            );
          }),
    );
  }

  _seasonChips() {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: Enum$MediaSeason.values.take(4).length,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) {
          var item = Enum$MediaSeason.values[index];

          return FilterChip(
            label: Text(item.name),
            selected: season == item,
            onSelected: (value) =>
                setState(() => value ? season = item : season = null),
          );
        },
      ),
    );
  }
}

class Tags extends StatelessWidget {
  final List<Query$GenreCollection$tags> tags;
  final void Function(List<Query$GenreCollection$tags> selected) onChange;
  final List<Query$GenreCollection$tags> selected;

  const Tags({
    super.key,
    required this.tags,
    required this.onChange,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Tags'),
            TextButton(
              onPressed: () => showBottom(context),
              child: const Text('add'),
            ),
          ],
        ),
        Wrap(
          runSpacing: 10,
          spacing: 10,
          children: [
            for (var tag in selected)
              Chip(
                label: Text(tag.name),
                deleteIcon: const Icon(Icons.close),
                onDeleted: () => onChange(selected..remove(tag)),
              ),
          ],
        ),
      ],
    );
  }

  showBottom(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => TagsModal(
        tags: tags,
        selected: selected,
        onChange: onChange,
      ),
    );
  }
}

class TagsModal extends StatefulWidget {
  final List<Query$GenreCollection$tags> tags;
  final List<Query$GenreCollection$tags> selected;
  final void Function(List<Query$GenreCollection$tags> selected) onChange;
  const TagsModal({
    super.key,
    required this.tags,
    required this.selected,
    required this.onChange,
  });

  @override
  State<TagsModal> createState() => _TagsModalState();
}

class _TagsModalState extends State<TagsModal> {
  late List<Query$GenreCollection$tags> selected;

  @override
  void initState() {
    super.initState();
    selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    var sorted = TagsModel.sort(widget.tags);
    return DefaultTabController(
      length: sorted.length,
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox(),
          title: const Text('Tags'),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              for (var tab in sorted)
                Tab(
                  text: tab.name,
                )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            for (var tab in sorted)
              ListView.separated(
                itemCount: tab.tags.length,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemBuilder: (context, index) {
                  var tag = tab.tags[index];

                  return CheckboxListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tag.name),
                        if (tag.description != null)
                          Text(
                            tag.description!,
                            style: Theme.of(context).textTheme.labelSmall,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          )
                      ],
                    ),
                    // secondary: tag.description != null
                    //     ? Text(
                    //         tag.description!,
                    //         overflow: TextOverflow.ellipsis,
                    //       )
                    //     : null,
                    value: widget.selected.contains(tag),
                    onChanged: (value) {
                      // print(value);
                      if (value == true) {
                        widget.selected.add(tag);
                        widget.onChange(widget.selected);
                      } else {
                        widget.selected.remove(tag);
                        widget.onChange(widget.selected);
                      }

                      setState(() => selected = selected);
                    },
                  );
                },
              )
          ],
        ),
      ),
    );
  }
}

class TagsModel {
  String name;
  List<Query$GenreCollection$tags> tags = [];
  TagsModel({required this.name});

  static List<TagsModel> sort(List<Query$GenreCollection$tags> tags) {
    List<TagsModel> listsP = [];

    for (var tag in tags) {
      var o = listsP.indexWhere((element) => element.name == tag.category);
      if (o == -1) {
        listsP.add(TagsModel(name: tag.category!)..tags.add(tag));
      } else {
        listsP[o].tags.add(tag);
      }
    }
    return listsP;
  }

  bool isEqual(TagsModel model) {
    return name == model.name;
  }

  @override
  String toString() => name;
}
