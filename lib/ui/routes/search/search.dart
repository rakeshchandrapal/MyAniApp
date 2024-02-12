import 'package:collection/collection.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/constants.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart';
import 'package:myaniapp/providers/ferry.dart';
import 'package:myaniapp/providers/search.dart';
import 'package:myaniapp/providers/shared_preferences.dart';
import 'package:myaniapp/ui/common/cards/media_cards.dart';
import 'package:myaniapp/ui/common/pagination.dart';
import 'package:myaniapp/ui/routes/search/__generated__/search.data.gql.dart';
import 'package:myaniapp/ui/routes/search/__generated__/search.req.gql.dart';
import 'package:myaniapp/ui/routes/search/editor/sheet.dart';

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
      client: ref.read(ferryClientProvider),
    );
    ref.read(searchProvider).update(q);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var provider = ref.watch(searchProvider);
    print("jhgj");
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        flexibleSpace: FlexibleSpaceBar(
          background: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  controller: _controller,
                  onSubmitted: (value) {
                    if (mounted) {
                      ref.read(searchProvider).q.search =
                          value.isNotEmpty ? value : null;
                      context.replace(
                          '/search${ref.read(searchProvider).q.toString()}');

                      if (value.isNotEmpty) {
                        ref.read(sharedPrefProvider).setStringList(
                            'recentSearches',
                            (ref
                                    .read(sharedPrefProvider)
                                    .getStringList('recentSearches') ??
                                [])
                              ..add(value));
                      }
                    }
                  },
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
                          builder: (context) => const EditorSheet(),
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
      body: provider.q.toString() != '?'
          ? GQLRequest(
              key: Key(provider.q.toString()),
              operationRequest: provider.q.toReq(),
              builder: (context, response, error, refetch) {
                if (response!.data!.Page!.media!.isEmpty) {
                  return const Center(
                    child: Text('No Results Found'),
                  );
                }

                return RefreshIndicator.adaptive(
                  onRefresh: refetch,
                  child: GraphqlPagination(
                    req: (nextPage) => GSearchReq(
                      (b) => b
                        ..replace(response.operationRequest as GSearchReq)
                        ..vars.page = nextPage
                        ..updateResult = (previous, result) => result?.rebuild(
                            (p0) => p0
                              ..Page.media.insertAll(
                                  0,
                                  previous?.Page?.media?.whereNot((p0) =>
                                          result.Page?.media?.contains(p0) ??
                                          false) ??
                                      [])),
                    ),
                    pageInfo: response.data!.Page!.pageInfo!,
                    child: MediaCards(
                      padding: const EdgeInsets.all(8),
                      list: response.data!.Page!.media!
                          .toList()
                          .cast<GMediaFragment>(),
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
                  ),
                );
              },
            )
          : RecentSearches(
              onTap: (s) {
                context.replace('/search?search=$s');
                ref.read(searchProvider).q.search = s;
                _controller.text = s;
              },
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
  List<GMediaSort>? sort;
  GMediaType? type;
  List<GMediaFormat>? format;
  List<String>? genres;
  List<GGenreCollectionData_tags>? withTags;
  List<GGenreCollectionData_tags>? withoutTags;
  int? page;
  GMediaSeason? season;
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
      {required Client client}) async {
    List<GMediaSort>? sort0;
    List<GMediaFormat>? format0;
    List<String>? genre0;
    List<GGenreCollectionData_tags>? withTag0;
    List<GGenreCollectionData_tags>? withoutTag0;
    GMediaType? type0 =
        GMediaType.values.firstWhereOrNull((element) => element.name == type);
    GMediaSeason? season0 = GMediaSeason.values
        .firstWhereOrNull((element) => element.name == season);

    GGenreCollectionData? collection;

    if (withTags != null || withoutTags != null || genre != null) {
      collection = (await client
              .request(GGenreCollectionReq(
                (b) => b..fetchPolicy = FetchPolicy.NoCache,
              ))
              .first)
          .data!;
      // collection = (await client.value.query$GenreCollection(
      //   Options$Query$GenreCollection(
      //     fetchPolicy: FetchPolicy.cacheFirst,
      //   ),
      // ))
      //     .parsedData;
    }

    if (sort != null) {
      var s = GMediaSort.values.where((element) => sort.contains(element.name));
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
        withTag0 = t.cast<GGenreCollectionData_tags>().toList();
      }
    }

    if (withoutTags != null) {
      var t = collection!.tags!
          .where((element) => withoutTags.contains(element!.name));
      if (withoutTags.isNotEmpty == true) {
        withoutTag0 = t.cast<GGenreCollectionData_tags>().toList();
      }
    }

    if (format != null) {
      var f =
          GMediaFormat.values.where((element) => format.contains(element.name));
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

  GSearchReq toReq() {
    return GSearchReq(
      (b) {
        if (format?.isNotEmpty == true) b.vars.format.addAll(format!);
        if (genres?.isNotEmpty == true) b.vars.genres.addAll(genres!);
        if (withTags?.isNotEmpty == true) {
          b.vars.with_tags.addAll(withTags!.map((e) => e.name));
        }
        if (withoutTags?.isNotEmpty == true) {
          b.vars.without_tags.addAll(withoutTags!.map((e) => e.name));
        }
        if (sort?.isNotEmpty == true) b.vars.sort.addAll(sort!);
        if (isAdult != null) b.vars.isAdult = isAdult;
        if (onList != null) b.vars.onList = onList;
        if (page != null) b.vars.page = page;
        if (search != null) b.vars.search = search;
        if (season != null) b.vars.season = season;
        if (seasonYear != null) b.vars.seasonYear = seasonYear;
        if (type != null) b.vars.type = type;
        if (year != null) b.vars.year = year != null ? '$year%' : null;
        if (endDate != null) b.vars.yearGreater = endDate;
        if (startDate != null) b.vars.yearLesser = startDate;

        b.requestId = "search";

        return b;
      },
    );
  }

  // Variables$Query$Search toVar() {
  //   return _removeNulls(Variables$Query$Search(
  //     format: format,
  //     genres: genres,
  //     isAdult: isAdult,
  //     onList: onList,
  //     page: page,
  //     search: search,
  //     season: season,
  //     seasonYear: seasonYear,
  //     sort: sort,
  //     type: type,
  //     with_tags: withTags?.map((e) => e.name).toList(),
  //     without_tags: withoutTags?.map((e) => e.name).toList(),
  //     year: year != null ? '$year%' : null,
  //     yearGreater: endDate,
  //     yearLesser: startDate,
  //   ));
  // }

  // Variables$Query$Search _removeNulls(Variables$Query$Search vars) {
  //   return Variables$Query$Search.fromJson(
  //       vars.toJson()..removeWhere((key, value) => value == null));
  // }

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
