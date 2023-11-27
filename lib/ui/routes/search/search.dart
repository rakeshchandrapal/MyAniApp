import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/routes/search/search.graphql.dart';
import 'package:myaniapp/providers/shared_preferrences.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/routes/search/editor/sheet.dart';
import 'package:myaniapp/utils/graphql.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({
    super.key,
    this.search,
    this.sort,
    this.format,
    this.genre,
    this.withTags,
    this.type,
    this.page,
    this.season,
    this.seasonYear,
    this.year,
    this.startDate,
    this.endDate,
    this.isAdult,
    this.onList,
    this.withoutTags,
    this.autofocus,
  });

  final List<String>? sort;
  final List<String>? format;
  final List<String>? genre;
  final List<String>? withTags;
  final List<String>? withoutTags;
  final String? search;
  final String? type;
  final int? page;
  final String? season;
  final int? seasonYear;
  final int? year;
  final int? startDate;
  final int? endDate;
  final bool? isAdult;
  final bool? onList;
  final bool? autofocus;

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  SearchQuery? query;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.search);
    setQuery();
  }

  Future<void> setQuery() async {
    var q = await SearchQuery.from(
      widget.sort,
      widget.format,
      widget.genre,
      widget.withTags,
      widget.withoutTags,
      widget.search,
      widget.type,
      widget.page,
      widget.season,
      widget.seasonYear,
      widget.year,
      widget.startDate,
      widget.endDate,
      widget.isAdult,
      widget.onList,
    );
    if (q.toString() != query.toString()) {
      query = q;
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    setQuery();

    print(query.toString());

    if (query?.search?.isNotEmpty == true &&
        _controller.text != query?.search) {
      _controller.text = query!.search!;
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: query == null,
        toolbarHeight: 80,
        flexibleSpace: query == null
            ? null
            : FlexibleSpaceBar(
                background: SafeArea(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextField(
                        controller: _controller,
                        onSubmitted: (value) {
                          if (mounted) {
                            query!.search = value.isNotEmpty ? value : null;
                            context.replace('/search${query.toString()}');

                            if (value.isNotEmpty) {
                              ref.read(sharedPrefProvider).setStringList(
                                  'recentSearches',
                                  (ref
                                          .read(sharedPrefProvider)
                                          .getStringList('recentSearch') ??
                                      [])
                                    ..add(value));
                            }
                          }
                        },
                        // onSubmitted: (value) {
                        //   ref.read(searchEditorProvider('main').notifier).set(
                        //         vars.copyWith(search: value.isEmpty ? null : value),
                        //       );

                        //   if (value.isNotEmpty) {
                        //     ref.read(sharedPrefProvider).setStringList(
                        //         'recentSearches',
                        //         (ref
                        //                 .read(sharedPrefProvider)
                        //                 .getStringList('recentSearch') ??
                        //             [])
                        //           ..add(value));
                        //   }
                        // },
                        focusNode: FocusNode(canRequestFocus: false),
                        autofocus: widget.autofocus ?? false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: BackButton(),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: IconButton(
                              onPressed: () => showModalBottomSheet(
                                builder: (context) => EditorSheet(
                                  query: query!,
                                ),
                                context: context,
                              ),
                              icon: const Icon(Icons.more_horiz),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ),
      body: query == null
          ? const Center(
              child: CircularProgressIndicator.adaptive(),
            )
          : query.toString() != '?'
              ? Query$Search$Widget(
                  options: Options$Query$Search(variables: query!.toVar()),
                  builder: queryBuilder(
                    (result, {fetchMore, refetch}) {
                      if (result.parsedData!.Page!.media!.isEmpty) {
                        return const Center(
                          child: Text('No Results Found'),
                        );
                      }

                      return Pagination(
                        fetchMore: fetchMore!,
                        opts: FetchMoreOptions$Query$Search(
                          updateQuery:
                              (previousResultData, fetchMoreResultData) {
                            var list = [
                              ...previousResultData!['Page']!['media'],
                              ...fetchMoreResultData!['Page']!['media'],
                            ];
                            fetchMoreResultData['Page']!['media'] = list;
                            return fetchMoreResultData;
                          },
                          variables: query!.toVar().copyWith(
                              page: (result.parsedData!.Page!.pageInfo!
                                          .currentPage ??
                                      1) +
                                  1),
                        ),
                        pageInfo: result.parsedData!.Page!.pageInfo!,
                        child: MediaCards(
                          padding: const EdgeInsets.all(8),
                          list: result.parsedData!.Page!.media!
                              .cast<Fragment$MediaFragment>(),
                          aspectRatio: 1.9 / 3,
                          onTap: (media, index) =>
                              context.push('/media/${media.id}'),
                          underTitle: (media, style, __) {
                            if (style != ListStyle.detailedList) return null;

                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    media.genres!.join(', '),
                                  ),
                                  if (media.format != null)
                                    Text.rich(
                                      TextSpan(
                                        text: media.type!.name.capitalize(),
                                        children: [
                                          TextSpan(
                                              text:
                                                  ' · ${media.format!.name.capitalize()}')
                                        ],
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                )
              : RecentSearches(
                  onTap: (s) => context.replace('/search?search=$s'),
                ),
    );
  }
}

class RecentSearches extends ConsumerWidget {
  const RecentSearches({super.key, required this.onTap});

  final void Function(String search) onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var list = ref.watch(sharedPrefProvider).getStringList('recentSearches');

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () => onTap(list[index]),
        title: Row(
          children: [
            const Icon(Icons.history),
            const SizedBox(
              width: 10,
            ),
            Text(list![index]),
          ],
        ),
      ),
      itemCount: list?.length ?? 0,
    );
  }
}

class SearchQuery {
  SearchQuery({
    this.withTags,
    this.withoutTags,
    this.search,
    this.sort,
    this.type,
    this.format,
    this.genres,
    this.page,
    this.season,
    this.seasonYear,
    this.year,
    this.startDate,
    this.endDate,
    this.isAdult,
    this.onList,
  });

  String? search;
  List<Enum$MediaSort>? sort;
  Enum$MediaType? type;
  List<Enum$MediaFormat>? format;
  List<String>? genres;
  List<Query$GenreCollection$tags>? withTags;
  List<Query$GenreCollection$tags>? withoutTags;
  int? page;
  Enum$MediaSeason? season;
  int? seasonYear;
  int? year;
  // yearGreater
  int? startDate;
  // yearLesser
  int? endDate;
  bool? isAdult;
  bool? onList;

  static Future<SearchQuery> from(
    List<String>? sort,
    List<String>? format,
    List<String>? genre,
    List<String>? withTags,
    List<String>? withoutTags,
    String? search,
    String? type,
    int? page,
    String? season,
    int? seasonYear,
    int? year,
    int? startDate,
    int? endDate,
    bool? isAdult,
    bool? onList,
  ) async {
    List<Enum$MediaSort>? sort0;
    List<Enum$MediaFormat>? format0;
    List<String>? genre0;
    List<Query$GenreCollection$tags>? withTag0;
    List<Query$GenreCollection$tags>? withoutTag0;
    Enum$MediaType? type0 = Enum$MediaType.values
        .firstWhereOrNull((element) => element.name == type);
    Enum$MediaSeason? season0 = Enum$MediaSeason.values
        .firstWhereOrNull((element) => element.name == season);

    Query$GenreCollection? collection;

    if (withTags != null || withoutTags != null || genre != null) {
      collection = (await client.value.query$GenreCollection(
        Options$Query$GenreCollection(
          fetchPolicy: FetchPolicy.cacheFirst,
        ),
      ))
          .parsedData;
    }

    if (sort != null) {
      var s =
          Enum$MediaSort.values.where((element) => sort.contains(element.name));
      if (s.isNotEmpty) {
        sort0 = s.toList();
      }
    }

    if (genre != null) {
      var g = collection!.genres!.where((element) => genre.contains(element));
      if (g.isNotEmpty) {
        genre0 = g.cast<String>().toList();
      }
    }

    if (withTags != null) {
      var t = collection!.tags!
          .where((element) => withTags.contains(element!.name));
      if (withTags.isNotEmpty) {
        withTag0 = t.cast<Query$GenreCollection$tags>().toList();
      }
    }

    if (withoutTags != null) {
      var t = collection!.tags!
          .where((element) => withoutTags.contains(element!.name));
      if (withoutTags.isNotEmpty == true) {
        withoutTag0 = t.cast<Query$GenreCollection$tags>().toList();
      }
    }

    if (format != null) {
      var f = Enum$MediaFormat.values
          .where((element) => format.contains(element.name));
      if (f.isNotEmpty) {
        format0 = f.toList();
      }
    }

    return SearchQuery(
      search: search,
      sort: sort0,
      type: type0,
      format: format0,
      genres: genre0,
      withTags: withTag0,
      withoutTags: withoutTag0,
      season: season0,
      endDate: endDate,
      isAdult: isAdult,
      onList: onList,
      page: page,
      seasonYear: seasonYear,
      startDate: startDate,
      year: year,
    );
  }

  Variables$Query$Search toVar() {
    return _removeNulls(Variables$Query$Search(
      format: format,
      genres: genres,
      isAdult: isAdult,
      onList: onList,
      page: page,
      search: search,
      season: season,
      seasonYear: seasonYear,
      sort: sort,
      type: type,
      with_tags: withTags?.map((e) => e.name).toList(),
      without_tags: withoutTags?.map((e) => e.name).toList(),
      year: year != null ? '$year%' : null,
      yearGreater: endDate,
      yearLesser: startDate,
    ));
  }

  Variables$Query$Search _removeNulls(Variables$Query$Search vars) {
    return Variables$Query$Search.fromJson(
        vars.toJson()..removeWhere((key, value) => value == null));
  }

  @override
  String toString() {
    List<String> query = [];

    query.addAll([
      if (search != null) 'search=$search',
      if (sort?.isNotEmpty == true)
        sort!.map((e) => 'sort=${e.name}').join('&'),
      if (type != null) 'type=${type!.name}',
      if (format?.isNotEmpty == true)
        format!.map((e) => 'format=${e.name}').join('&'),
      if (genres?.isNotEmpty == true) genres!.map((e) => 'genre=$e').join('&'),
      if (season != null) 'season=${season!.name}',
      if (endDate != null) 'endDate=$endDate',
      if (startDate != null) 'startDate=$startDate',
      if (isAdult == true) 'isAdult=true',
      if (onList != null) 'onList=$onList',
      if (page != null) 'page=$page',
      if (seasonYear != null) 'seasonYear=$seasonYear',
      if (year != null) 'year=$year',
      if (withTags?.isNotEmpty == true)
        withTags!.map((e) => 'withTags=${e.name}').join('&'),
      if (withoutTags?.isNotEmpty == true)
        withoutTags!.map((e) => 'withoutTags=${e.name}').join('&'),
    ]);

    return '?${query.join('&')}';
  }
}
