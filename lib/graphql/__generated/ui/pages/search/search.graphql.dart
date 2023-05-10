// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../../graphql/fragments.graphql.dart';
import '../../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Search {
  factory Variables$Query$Search({
    int? page,
    int? perPage,
    Enum$MediaType? type,
    List<Enum$MediaSort?>? sort,
    Enum$MediaSeason? season,
    int? seasonYear,
    String? search,
    String? year,
    List<String?>? genres,
    List<String?>? tags,
    bool? isAdult,
    bool? onList,
  }) =>
      Variables$Query$Search._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (type != null) r'type': type,
        if (sort != null) r'sort': sort,
        if (season != null) r'season': season,
        if (seasonYear != null) r'seasonYear': seasonYear,
        if (search != null) r'search': search,
        if (year != null) r'year': year,
        if (genres != null) r'genres': genres,
        if (tags != null) r'tags': tags,
        if (isAdult != null) r'isAdult': isAdult,
        if (onList != null) r'onList': onList,
      });

  Variables$Query$Search._(this._$data);

  factory Variables$Query$Search.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJson$Enum$MediaSort((e as String)))
          .toList();
    }
    if (data.containsKey('season')) {
      final l$season = data['season'];
      result$data['season'] = l$season == null
          ? null
          : fromJson$Enum$MediaSeason((l$season as String));
    }
    if (data.containsKey('seasonYear')) {
      final l$seasonYear = data['seasonYear'];
      result$data['seasonYear'] = (l$seasonYear as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('year')) {
      final l$year = data['year'];
      result$data['year'] = (l$year as String?);
    }
    if (data.containsKey('genres')) {
      final l$genres = data['genres'];
      result$data['genres'] =
          (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] =
          (l$tags as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('isAdult')) {
      final l$isAdult = data['isAdult'];
      result$data['isAdult'] = (l$isAdult as bool?);
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    return Variables$Query$Search._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);
  int? get perPage => (_$data['perPage'] as int?);
  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);
  List<Enum$MediaSort?>? get sort => (_$data['sort'] as List<Enum$MediaSort?>?);
  Enum$MediaSeason? get season => (_$data['season'] as Enum$MediaSeason?);
  int? get seasonYear => (_$data['seasonYear'] as int?);
  String? get search => (_$data['search'] as String?);
  String? get year => (_$data['year'] as String?);
  List<String?>? get genres => (_$data['genres'] as List<String?>?);
  List<String?>? get tags => (_$data['tags'] as List<String?>?);
  bool? get isAdult => (_$data['isAdult'] as bool?);
  bool? get onList => (_$data['onList'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$MediaSort(e))
          .toList();
    }
    if (_$data.containsKey('season')) {
      final l$season = season;
      result$data['season'] =
          l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    }
    if (_$data.containsKey('seasonYear')) {
      final l$seasonYear = seasonYear;
      result$data['seasonYear'] = l$seasonYear;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('year')) {
      final l$year = year;
      result$data['year'] = l$year;
    }
    if (_$data.containsKey('genres')) {
      final l$genres = genres;
      result$data['genres'] = l$genres?.map((e) => e).toList();
    }
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.map((e) => e).toList();
    }
    if (_$data.containsKey('isAdult')) {
      final l$isAdult = isAdult;
      result$data['isAdult'] = l$isAdult;
    }
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Search<Variables$Query$Search> get copyWith =>
      CopyWith$Variables$Query$Search(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Search) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (_$data.containsKey('perPage') != other._$data.containsKey('perPage')) {
      return false;
    }
    if (l$perPage != lOther$perPage) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (_$data.containsKey('season') != other._$data.containsKey('season')) {
      return false;
    }
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (_$data.containsKey('seasonYear') !=
        other._$data.containsKey('seasonYear')) {
      return false;
    }
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (_$data.containsKey('year') != other._$data.containsKey('year')) {
      return false;
    }
    if (l$year != lOther$year) {
      return false;
    }
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (_$data.containsKey('genres') != other._$data.containsKey('genres')) {
      return false;
    }
    if (l$genres != null && lOther$genres != null) {
      if (l$genres.length != lOther$genres.length) {
        return false;
      }
      for (int i = 0; i < l$genres.length; i++) {
        final l$genres$entry = l$genres[i];
        final lOther$genres$entry = lOther$genres[i];
        if (l$genres$entry != lOther$genres$entry) {
          return false;
        }
      }
    } else if (l$genres != lOther$genres) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (_$data.containsKey('tags') != other._$data.containsKey('tags')) {
      return false;
    }
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (_$data.containsKey('isAdult') != other._$data.containsKey('isAdult')) {
      return false;
    }
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    final l$onList = onList;
    final lOther$onList = other.onList;
    if (_$data.containsKey('onList') != other._$data.containsKey('onList')) {
      return false;
    }
    if (l$onList != lOther$onList) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    final l$type = type;
    final l$sort = sort;
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$search = search;
    final l$year = year;
    final l$genres = genres;
    final l$tags = tags;
    final l$isAdult = isAdult;
    final l$onList = onList;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('season') ? l$season : const {},
      _$data.containsKey('seasonYear') ? l$seasonYear : const {},
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('year') ? l$year : const {},
      _$data.containsKey('genres')
          ? l$genres == null
              ? null
              : Object.hashAll(l$genres.map((v) => v))
          : const {},
      _$data.containsKey('tags')
          ? l$tags == null
              ? null
              : Object.hashAll(l$tags.map((v) => v))
          : const {},
      _$data.containsKey('isAdult') ? l$isAdult : const {},
      _$data.containsKey('onList') ? l$onList : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Search<TRes> {
  factory CopyWith$Variables$Query$Search(
    Variables$Query$Search instance,
    TRes Function(Variables$Query$Search) then,
  ) = _CopyWithImpl$Variables$Query$Search;

  factory CopyWith$Variables$Query$Search.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Search;

  TRes call({
    int? page,
    int? perPage,
    Enum$MediaType? type,
    List<Enum$MediaSort?>? sort,
    Enum$MediaSeason? season,
    int? seasonYear,
    String? search,
    String? year,
    List<String?>? genres,
    List<String?>? tags,
    bool? isAdult,
    bool? onList,
  });
}

class _CopyWithImpl$Variables$Query$Search<TRes>
    implements CopyWith$Variables$Query$Search<TRes> {
  _CopyWithImpl$Variables$Query$Search(
    this._instance,
    this._then,
  );

  final Variables$Query$Search _instance;

  final TRes Function(Variables$Query$Search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
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
  }) =>
      _then(Variables$Query$Search._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
        if (sort != _undefined) 'sort': (sort as List<Enum$MediaSort?>?),
        if (season != _undefined) 'season': (season as Enum$MediaSeason?),
        if (seasonYear != _undefined) 'seasonYear': (seasonYear as int?),
        if (search != _undefined) 'search': (search as String?),
        if (year != _undefined) 'year': (year as String?),
        if (genres != _undefined) 'genres': (genres as List<String?>?),
        if (tags != _undefined) 'tags': (tags as List<String?>?),
        if (isAdult != _undefined) 'isAdult': (isAdult as bool?),
        if (onList != _undefined) 'onList': (onList as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Search<TRes>
    implements CopyWith$Variables$Query$Search<TRes> {
  _CopyWithStubImpl$Variables$Query$Search(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    Enum$MediaType? type,
    List<Enum$MediaSort?>? sort,
    Enum$MediaSeason? season,
    int? seasonYear,
    String? search,
    String? year,
    List<String?>? genres,
    List<String?>? tags,
    bool? isAdult,
    bool? onList,
  }) =>
      _res;
}

class Query$Search {
  Query$Search({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Search.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Search(
      Page: l$Page == null
          ? null
          : Query$Search$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Search$Page? Page;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Page = Page;
    _resultData['Page'] = l$Page?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Page = Page;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Page,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Search) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Page = Page;
    final lOther$Page = other.Page;
    if (l$Page != lOther$Page) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Search on Query$Search {
  CopyWith$Query$Search<Query$Search> get copyWith => CopyWith$Query$Search(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Search<TRes> {
  factory CopyWith$Query$Search(
    Query$Search instance,
    TRes Function(Query$Search) then,
  ) = _CopyWithImpl$Query$Search;

  factory CopyWith$Query$Search.stub(TRes res) = _CopyWithStubImpl$Query$Search;

  TRes call({
    Query$Search$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Search$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Search<TRes> implements CopyWith$Query$Search<TRes> {
  _CopyWithImpl$Query$Search(
    this._instance,
    this._then,
  );

  final Query$Search _instance;

  final TRes Function(Query$Search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search(
        Page:
            Page == _undefined ? _instance.Page : (Page as Query$Search$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Search$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Search$Page.stub(_then(_instance))
        : CopyWith$Query$Search$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Search<TRes>
    implements CopyWith$Query$Search<TRes> {
  _CopyWithStubImpl$Query$Search(this._res);

  TRes _res;

  call({
    Query$Search$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Search$Page<TRes> get Page =>
      CopyWith$Query$Search$Page.stub(_res);
}

const documentNodeQuerySearch = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Search'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'perPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ListValueNode(values: [
          EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
          EnumValueNode(name: NameNode(value: 'SCORE_DESC')),
        ])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'season')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaSeason'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'seasonYear')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'year')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'genres')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'tags')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isAdult')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'onList')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PageInfo'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: VariableNode(name: NameNode(value: 'isAdult')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'season'),
                value: VariableNode(name: NameNode(value: 'season')),
              ),
              ArgumentNode(
                name: NameNode(value: 'seasonYear'),
                value: VariableNode(name: NameNode(value: 'seasonYear')),
              ),
              ArgumentNode(
                name: NameNode(value: 'startDate_like'),
                value: VariableNode(name: NameNode(value: 'year')),
              ),
              ArgumentNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
              ArgumentNode(
                name: NameNode(value: 'genre_in'),
                value: VariableNode(name: NameNode(value: 'genres')),
              ),
              ArgumentNode(
                name: NameNode(value: 'tag_in'),
                value: VariableNode(name: NameNode(value: 'tags')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Media'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPageInfo,
  fragmentDefinitionMedia,
]);
Query$Search _parserFn$Query$Search(Map<String, dynamic> data) =>
    Query$Search.fromJson(data);
typedef OnQueryComplete$Query$Search = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Search?,
);

class Options$Query$Search extends graphql.QueryOptions<Query$Search> {
  Options$Query$Search({
    String? operationName,
    Variables$Query$Search? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Search? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Search? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Search(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearch,
          parserFn: _parserFn$Query$Search,
        );

  final OnQueryComplete$Query$Search? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Search
    extends graphql.WatchQueryOptions<Query$Search> {
  WatchOptions$Query$Search({
    String? operationName,
    Variables$Query$Search? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Search? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQuerySearch,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Search,
        );
}

class FetchMoreOptions$Query$Search extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Search({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Search? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerySearch,
        );
}

extension ClientExtension$Query$Search on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Search>> query$Search(
          [Options$Query$Search? options]) async =>
      await this.query(options ?? Options$Query$Search());
  graphql.ObservableQuery<Query$Search> watchQuery$Search(
          [WatchOptions$Query$Search? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Search());
  void writeQuery$Search({
    required Query$Search data,
    Variables$Query$Search? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySearch),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Search? readQuery$Search({
    Variables$Query$Search? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearch),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Search.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Search> useQuery$Search(
        [Options$Query$Search? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Search());
graphql.ObservableQuery<Query$Search> useWatchQuery$Search(
        [WatchOptions$Query$Search? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Search());

class Query$Search$Widget extends graphql_flutter.Query<Query$Search> {
  Query$Search$Widget({
    widgets.Key? key,
    Options$Query$Search? options,
    required graphql_flutter.QueryBuilder<Query$Search> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Search(),
          builder: builder,
        );
}

class Query$Search$Page {
  Query$Search$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Search$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Search$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$Media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$Media?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Search$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Search$Page on Query$Search$Page {
  CopyWith$Query$Search$Page<Query$Search$Page> get copyWith =>
      CopyWith$Query$Search$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Search$Page<TRes> {
  factory CopyWith$Query$Search$Page(
    Query$Search$Page instance,
    TRes Function(Query$Search$Page) then,
  ) = _CopyWithImpl$Query$Search$Page;

  factory CopyWith$Query$Search$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Search$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$Media?>? media,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$Media?>? Function(
              Iterable<CopyWith$Fragment$Media<Fragment$Media>?>?)
          _fn);
}

class _CopyWithImpl$Query$Search$Page<TRes>
    implements CopyWith$Query$Search$Page<TRes> {
  _CopyWithImpl$Query$Search$Page(
    this._instance,
    this._then,
  );

  final Query$Search$Page _instance;

  final TRes Function(Query$Search$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Search$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$Media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Fragment$PageInfo.stub(_then(_instance))
        : CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes media(
          Iterable<Fragment$Media?>? Function(
                  Iterable<CopyWith$Fragment$Media<Fragment$Media>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$Media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Search$Page<TRes>
    implements CopyWith$Query$Search$Page<TRes> {
  _CopyWithStubImpl$Query$Search$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$Media?>? media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  media(_fn) => _res;
}
