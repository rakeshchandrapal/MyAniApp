import 'package:collection/collection.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myaniapp/app/search/media/__generated__/mediaSearch.data.gql.dart';
import 'package:myaniapp/app/search/media/__generated__/mediaSearch.req.gql.dart';
import 'package:myaniapp/app/search/media/editor.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/list_settings.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    var query = GoRouterState.of(context).uri.queryParametersAll;
    return FutureBuilder(
      future: MediaSearchQuery.from(query, client: client),
      builder: (context, snapshot) => Show(
        when: snapshot.data != null,
        fallback: Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        ),
        child: () => SearchView(query: snapshot.data!),
      ),
    );
  }
}

class SearchView extends ConsumerStatefulWidget {
  const SearchView({super.key, required this.query});

  final MediaSearchQuery query;

  @override
  ConsumerState<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends ConsumerState<SearchView> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    maybeFocus();
  }

  void maybeFocus() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (GoRouterState.of(context).extra is Map &&
          (GoRouterState.of(context).extra! as Map)['autofocus'] == true) {
        _focusNode.requestFocus();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var listSetting = ref.watch(listSettingsProvider.select(
      (value) => value.search,
    ));

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        scrolledUnderElevation: 0,
        shape: UnderlineInputBorder(
          borderSide: BorderSide(color: context.theme.dividerColor),
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: SafeArea(
            child: TextField(
              focusNode: _focusNode,
              autofocus: false,
              onTap: () => _focusNode.requestFocus(),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: BackButton(),
                ),
                hintText: "Search",
                contentPadding: const EdgeInsets.all(20),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: IconButton(
                    onPressed: () {
                      MediaSearchEditor.show(context, widget.query);
                      _focusNode.unfocus();
                    },
                    icon: const Icon(Icons.more_horiz),
                  ),
                ),
              ),
              onSubmitted: (value) {
                widget.query.search = value.isEmpty ? null : value;
                context.replace("/search/media${widget.query.toString()}");
              },
            ),
          ),
        ),
      ),
      body: Show(
        when: widget.query.toString() != '?',
        fallback: const SizedBox(),
        child: () => GQLRequest(
          key: Key(widget.query.toString()),
          operationRequest: widget.query.toReq(),
          builder: (context, response, error, refetch) => GraphqlPagination(
            pageInfo: response!.data!.Page!.pageInfo!,
            req: (nextPage) {
              return (response.operationRequest as GSearchReq).rebuild(
                (p0) => p0
                  ..vars.page = nextPage
                  ..updateResult = (previous, result) => result?.rebuild(
                        (p0) => p0
                          ..Page.media.insertAll(
                                0,
                                previous?.Page?.media?.whereNot((p0) =>
                                        result.Page?.media?.contains(p0) ??
                                        false) ??
                                    [],
                              ),
                      ),
              );
            },
            child: MediaCards(
              listType: listSetting,
              padding: EdgeInsets.all(listSetting == ListType.grid ? 8 : 0),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: GridCard.listRatio,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                var media = response.data!.Page!.media![index]!;

                return MediaCard(
                  listType: listSetting,
                  image: media.coverImage!.extraLarge!,
                  title: media.title!.userPreferred!,
                  blur: media.isAdult!,
                  onLongPress: () => MediaSheet.show(context, media),
                  onTap: () => context
                      .push("/media/${media.id}/info", extra: {"media": media}),
                );
              },
              itemCount: response.data!.Page!.media!.length,
            ),
          ),
        ),
      ),
    );
  }
}

class MediaSearchQuery {
  MediaSearchQuery({
    this.withTags,
    this.withoutTags,
    this.search,
    this.sort,
    this.type,
    this.format,
    this.genres,
    this.season,
    // this.seasonYear,
    this.year,
    this.startDate,
    this.endDate,
    this.isAdult,
    this.onList,
    this.countryOfOrigin,
  });

  String? search;
  List<GMediaSort>? sort;
  GMediaType? type;
  List<GMediaFormat>? format;
  List<String>? genres;
  List<GGenreCollectionData_tags>? withTags;
  List<GGenreCollectionData_tags>? withoutTags;
  GMediaSeason? season;
  // int? seasonYear;
  int? year;
  // yearGreater
  int? startDate;
  // yearLesser
  int? endDate;
  bool? isAdult;
  bool? onList;
  String? countryOfOrigin;

  static Future<MediaSearchQuery> from(Map<String, List<String>> query,
      {required Client client}) async {
    List<GMediaSort>? sort0;
    List<GMediaFormat>? format0;
    List<String>? genre0;
    List<GGenreCollectionData_tags>? withTag0;
    List<GGenreCollectionData_tags>? withoutTag0;
    GMediaType? type0 = GMediaType.values.firstWhereOrNull(
        (element) => element.name == query["type"]?.firstOrNull);
    GMediaSeason? season0 = GMediaSeason.values.firstWhereOrNull(
        (element) => element.name == query["season"]?.firstOrNull);

    GGenreCollectionData? collection;

    if (query["withTags"] != null ||
        query["withoutTags"] != null ||
        query["genre"] != null) {
      collection = (await client
              .request(GGenreCollectionReq(
                (b) => b..fetchPolicy = FetchPolicy.NoCache,
              ))
              .first)
          .data!;
    }
    // print(client.cache.);

    if (query["sort"] != null) {
      var s = GMediaSort.values
          .where((element) => query["sort"]!.contains(element.name));
      if (s.isNotEmpty) {
        sort0 = s.toList();
      }
    }

    if (query["genre"] != null) {
      var g = collection!.genres!
          .where((element) => query["genre"]!.contains(element));
      if (g.isNotEmpty) {
        genre0 = g.cast<String>().toList();
      }
    }

    if (query["withTags"] != null) {
      var t = collection!.tags!
          .where((element) => query["withTags"]!.contains(element!.name));
      if (t.isNotEmpty) {
        withTag0 = t.cast<GGenreCollectionData_tags>().toList();
      }
    }

    if (query["withoutTags"] != null) {
      var t = collection!.tags!
          .where((element) => query["withoutTags"]!.contains(element!.name));
      if (t.isNotEmpty == true) {
        withoutTag0 = t.cast<GGenreCollectionData_tags>().toList();
      }
    }

    if (query["format"] != null) {
      var f = GMediaFormat.values
          .where((element) => query["format"]!.contains(element.name));
      if (f.isNotEmpty) {
        format0 = f.toList();
      }
    }

    return MediaSearchQuery(
      search: query["search"]?.firstOrNull,
      sort: sort0,
      type: type0,
      format: format0,
      genres: genre0,
      withTags: withTag0,
      withoutTags: withoutTag0,
      season: season0,
      countryOfOrigin: query["countryOfOrigin"]?.firstOrNull,
      endDate: query["endDate"] != null
          ? int.tryParse(query["endDate"]!.first)
          : null,
      isAdult: query["isAdult"] != null
          ? bool.tryParse(query["isAdult"]!.first)
          : null,
      onList: query["onList"] != null
          ? bool.tryParse(query["onList"]!.first)
          : null,
      // seasonYear: query["seasonYear"] != null
      //     ? int.tryParse(query["seasonYear"]!.first)
      //     : null,
      startDate: query["startDate"] != null
          ? int.tryParse(query["startDate"]!.first)
          : null,
      year: query["year"] != null ? int.tryParse(query["year"]!.first) : null,
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
        if (search != null) b.vars.search = search;
        if (season != null) b.vars.season = season;
        if (year != null && season != null) b.vars.seasonYear = year;
        if (type != null) b.vars.type = type;
        if (year != null && season == null) b.vars.year = '$year%';
        if (endDate != null) b.vars.yearGreater = endDate;
        if (startDate != null) b.vars.yearLesser = startDate;
        if (countryOfOrigin != null) {
          b.vars.countryOfOrigin.update((p0) => p0.value = countryOfOrigin);
        }

        b.requestId = "search";
      },
    );
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
      if (isAdult != null) 'isAdult=$isAdult',
      if (onList != null) 'onList=$onList',
      if (year != null) 'year=$year',
      if (withTags?.isNotEmpty == true)
        withTags!.map((e) => 'withTags=${e.name}').join('&'),
      if (withoutTags?.isNotEmpty == true)
        withoutTags!.map((e) => 'withoutTags=${e.name}').join('&'),
      if (countryOfOrigin != null) 'countryOfOrigin=$countryOfOrigin',
    ]);

    return '?${query.join('&')}';
  }
}
