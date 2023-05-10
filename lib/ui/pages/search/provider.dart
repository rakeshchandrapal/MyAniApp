import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:myaniapp/graphql/__generated/graphql/schema.graphql.dart';
import 'package:myaniapp/graphql/__generated/ui/pages/search/search.graphql.dart';
import 'package:myaniapp/providers/graphql.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class Search extends _$Search {
  @override
  late Variables$Query$Search vars;

  late ObservableQuery<Query$Search> _query;

  int? get year => (vars.year != null && vars.seasonYear == null)
      ? int.tryParse(vars.year!.replaceAll('%', ''))
      : vars.seasonYear;

  void refetch() {
    if (shouldSearch() == false) return;

    _query.addResult(
        QueryResult.loading(options: WatchOptions$Query$Search(), data: null));

    _query.fetchMore(
      FetchMoreOptions$Query$Search(
        variables: Variables$Query$Search(
          genres: vars.genres?.isNotEmpty == true ? vars.genres : null,
          isAdult: vars.isAdult,
          search: vars.search?.isNotEmpty == true ? vars.search : null,
          season: vars.season,
          seasonYear: vars.season != null && vars.seasonYear != null
              ? vars.seasonYear
              : null,
          sort: vars.sort,
          type: vars.type,
          year: vars.season == null && vars.year != null ? vars.year : null,
          onList: vars.onList,
          tags: vars.tags,
        ),
        updateQuery: (previousResultData, fetchMoreResultData) =>
            fetchMoreResultData,
      ),
    );
  }

  void nextPage() {
    if (state == null) return;

    vars = vars.copyWith(
        page: state!.parsedData!.Page!.pageInfo!.currentPage! + 1);

    _query.fetchMore(
      FetchMoreOptions$Query$Search(
        variables: vars,
        updateQuery: (previousResultData, fetchMoreResultData) {
          var list = [
            ...previousResultData!['Page']!['media'],
            ...fetchMoreResultData!['Page']!['media'],
          ];
          fetchMoreResultData['Page']!['media'] = list;
          return fetchMoreResultData;
        },
      ),
    );
  }

  void update({
    Object? type = _undefined,
    Object? sort = _undefined,
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? search = _undefined,
    Object? year = _undefined,
    Object? genres = _undefined,
    Object? tags = _undefined,
    Object? isAdult = _undefined,
    Object? onList = _undefined,
    bool refetch = true,
  }) {
    vars = Variables$Query$Search.fromJson({
      ...vars.toJson(),
      if (type != _undefined) 'type': (type as Enum$MediaType?)?.name,
      if (sort != _undefined)
        'sort': (sort as List<Enum$MediaSort?>?)?.map((e) => e?.name).toList(),
      if (season != _undefined) 'season': (season as Enum$MediaSeason?)?.name,
      if (seasonYear != _undefined) 'seasonYear': (seasonYear as int?),
      if (search != _undefined) 'search': (search as String?),
      if (year != _undefined) 'year': (year as String?),
      if (genres != _undefined) 'genres': (genres as List<String?>?),
      if (tags != _undefined) 'tags': (tags as List<String?>?),
      if (isAdult != _undefined) 'isAdult': (isAdult as bool?),
      if (onList != _undefined) 'onList': (onList as bool?),
      'page': null,
    });

    if (refetch) {
      this.refetch();
    } else {
      ref.notifyListeners();
    }
  }

  bool shouldSearch() {
    return vars.isAdult != null ||
        vars.type != null ||
        vars.sort?.isNotEmpty == true ||
        vars.year != null ||
        vars.season != null ||
        vars.search?.isNotEmpty == true ||
        vars.genres?.isNotEmpty == true ||
        vars.tags?.isNotEmpty == true;
  }

  @override
  QueryResult<Query$Search>? build(
    Variables$Query$Search vars, {
    bool fetch = true,
  }) {
    var graphql = ref.watch(graphQLProvider);

    _query = graphql.value!.value.watchQuery$Search();

    _query.stream.listen((event) {
      state = event;
    });

    if (!fetch) return null;

    if (shouldSearch()) refetch();

    return _query.latestResult;
  }
}

const Map<dynamic, dynamic> _undefined = {};
