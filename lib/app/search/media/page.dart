import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myaniapp/app/home/home.dart';
import 'package:myaniapp/app/search/media/editor.dart';
import 'package:myaniapp/common/media_cards/grid_card.dart';
import 'package:myaniapp/common/media_cards/media_card.dart';
import 'package:myaniapp/common/media_cards/sheet.dart';
import 'package:myaniapp/common/pagination.dart';
import 'package:myaniapp/common/show.dart';
import 'package:myaniapp/extensions.dart';
import 'package:myaniapp/graphql/__gen/app/search/media/mediaSearch.graphql.dart';
import 'package:myaniapp/graphql/__gen/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/queries.dart';
import 'package:myaniapp/graphql/widget.dart';
import 'package:myaniapp/main.dart';
import 'package:myaniapp/providers/list_settings.dart';
import 'package:myaniapp/router.gr.dart';
import 'package:mygraphql/graphql.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key, this.autofocus});

  final bool? autofocus;

  @override
  Widget build(BuildContext context) {
    var query = context.routeData.queryParams;
    return FutureBuilder(
      future: MediaSearchQuery.from(query.rawMap),
      builder: (context, snapshot) => Show(
        when: snapshot.data != null,
        fallback: Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        ),
        child: () => SearchView(
          query: snapshot.data!,
          autofocus: autofocus,
        ),
      ),
    );
  }
}

class SearchView extends ConsumerStatefulWidget {
  const SearchView({super.key, required this.query, this.autofocus});

  final MediaSearchQuery query;
  final bool? autofocus;

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
      if (widget.autofocus == true) {
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
                context.router
                    .replaceNamed("/search/media${widget.query.toString()}");
              },
            ),
          ),
        ),
      ),
      body: Show(
        when: widget.query.toString() != '?',
        fallback: const SizedBox(),
        child: () => HookBuilder(
          builder: (context) {
            var (:snapshot, :fetchMore, :refetch) =
                c.useQuery(widget.query.toReq());

            // print(snapshot.request?.variables?['genres'][0]);

            return RefreshIndicator.adaptive(
              onRefresh: refetch,
              child: GQLWidget(
                key: Key(widget.query.toString()),
                refetch: refetch,
                response: snapshot,
                builder: () => GraphqlPagination(
                  pageInfo: snapshot!.parsedData!.Page!.pageInfo!,
                  req: (nextPage) => fetchMore(
                      variables: Variables$Query$Search.fromJson(
                              snapshot.request!.variables)
                          .copyWith(page: nextPage)
                          .toJson()),
                  child: MediaCards(
                    listType: listSetting,
                    padding:
                        EdgeInsets.all(listSetting == ListType.grid ? 8 : 0),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 150,
                      childAspectRatio: GridCard.listRatio,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      var media = snapshot.parsedData!.Page!.media![index]!;

                      return MediaCard(
                        listType: listSetting,
                        image: media.coverImage!.extraLarge!,
                        title: media.title!.userPreferred!,
                        blur: media.isAdult!,
                        onLongPress: () => MediaSheet.show(context, media),
                        onTap: () => context.pushRoute(
                            MediaRoute(id: media.id, placeholder: media)),
                        // onTap: () => context
                        //     .push("/media/${media.id}/info", extra: {"media": media}),
                      );
                    },
                    itemCount: snapshot.parsedData!.Page!.media!.length,
                  ),
                ),
              ),
            );
          },
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
  List<Enum$MediaSort>? sort;
  Enum$MediaType? type;
  List<Enum$MediaFormat>? format;
  List<String>? genres;
  List<Query$GenreCollection$tags>? withTags;
  List<Query$GenreCollection$tags>? withoutTags;
  Enum$MediaSeason? season;
  // int? seasonYear;
  int? year;
  // yearGreater
  int? startDate;
  // yearLesser
  int? endDate;
  bool? isAdult;
  bool? onList;
  String? countryOfOrigin;

  static Future<MediaSearchQuery> from(Map<String, dynamic> query) async {
    List<Enum$MediaSort>? sort0;
    List<Enum$MediaFormat>? format0;
    List<String>? genre0;
    List<Query$GenreCollection$tags>? withTag0;
    List<Query$GenreCollection$tags>? withoutTag0;
    Enum$MediaType? type0 = Enum$MediaType.values
        .firstWhereOrNull((element) => element.name == query["type"]);
    Enum$MediaSeason? season0 = Enum$MediaSeason.values
        .firstWhereOrNull((element) => element.name == query["season"]);

    Query$GenreCollection? collection;

    if (query["withTags"] != null ||
        query["withoutTags"] != null ||
        query["genre"] != null) {
      collection = (await c
              .query(GQLRequest(genreCollectionQuery,
                  fetchPolicy: FetchPolicy.noCache,
                  parseData: Query$GenreCollection.fromJson))
              .last)
          .parsedData;
      // collection = (await client
      //         .request(GGenreCollectionReq(
      //           (b) => b..fetchPolicy = FetchPolicy.NoCache,
      //         ))
      //         .first)
      //     .data!;
    }

    if (query["sort"] != null) {
      var list = query["sort"] is List ? query["sort"] : [query["sort"]];
      var s =
          Enum$MediaSort.values.where((element) => list.contains(element.name));
      if (s.isNotEmpty) {
        sort0 = s.toList();
      }
    }

    if (query["genre"] != null) {
      var list = query["genre"] is List ? query["genre"] : [query["genre"]];
      var g = collection!.genres!.where((element) => list.contains(element));
      if (g.isNotEmpty) {
        genre0 = g.cast<String>().toList();
      }
    }

    if (query["withTags"] != null) {
      var list =
          query["withTags"] is List ? query["withTags"] : [query["withTags"]];
      var t =
          collection!.tags!.where((element) => list.contains(element!.name));
      if (t.isNotEmpty) {
        withTag0 = t.cast<Query$GenreCollection$tags>().toList();
      }
    }

    if (query["withoutTags"] != null) {
      var list = query["withoutTags"] is List
          ? query["withoutTags"]
          : [query["withoutTags"]];
      var t =
          collection!.tags!.where((element) => list.contains(element!.name));
      if (t.isNotEmpty == true) {
        withoutTag0 = t.cast<Query$GenreCollection$tags>().toList();
      }
    }

    if (query["format"] != null) {
      var list = query["format"] is List ? query["format"] : [query["format"]];
      var f = Enum$MediaFormat.values
          .where((element) => list.contains(element.name));
      if (f.isNotEmpty) {
        format0 = f.toList();
      }
    }

    return MediaSearchQuery(
      search: query["search"],
      sort: sort0,
      type: type0,
      format: format0,
      genres: genre0,
      withTags: withTag0,
      withoutTags: withoutTag0,
      season: season0,
      countryOfOrigin: query["countryOfOrigin"],
      endDate: query["endDate"] != null ? int.tryParse(query["endDate"]) : null,
      isAdult:
          query["isAdult"] != null ? bool.tryParse(query["isAdult"]) : null,
      onList: query["onList"] != null ? bool.tryParse(query["onList"]) : null,
      startDate:
          query["startDate"] != null ? int.tryParse(query["startDate"]) : null,
      year: query["year"] != null ? int.tryParse(query["year"]) : null,
    );
  }

  GQLRequest<Query$Search> toReq() {
    return GQLRequest(
      searchQuery,
      parseData: Query$Search.fromJson,
      mergeResults: defaultMergeResults("Page.media"),
      variables: _removeNulls(Variables$Query$Search(
        format: format,
        sort: sort,
        countryOfOrigin: countryOfOrigin,
        genres: genres,
        isAdult: isAdult,
        onList: onList,
        search: search,
        season: season,
        seasonYear: (year != null && season != null) ? year : null,
        type: type,
        with_tags: withTags
            ?.map(
              (e) => e.name,
            )
            .toList(),
        without_tags: withoutTags
            ?.map(
              (e) => e.name,
            )
            .toList(),
        year: (year != null && season == null) ? "$year%" : null,
        yearGreater: endDate.toString(),
        yearLesser: startDate.toString(),
      )).toJson(),
    );
  }

  Variables$Query$Search _removeNulls(Variables$Query$Search vars) {
    return Variables$Query$Search.fromJson(
        vars.toJson()..removeWhere((key, value) => value == 'null'));
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
