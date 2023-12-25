// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../graphql/fragments.graphql.dart';
import '../../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Browsing {
  factory Variables$Query$Browsing({
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  }) =>
      Variables$Query$Browsing._({
        if (season != null) r'season': season,
        if (seasonYear != null) r'seasonYear': seasonYear,
        if (nextSeason != null) r'nextSeason': nextSeason,
        if (nextYear != null) r'nextYear': nextYear,
      });

  Variables$Query$Browsing._(this._$data);

  factory Variables$Query$Browsing.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('nextSeason')) {
      final l$nextSeason = data['nextSeason'];
      result$data['nextSeason'] = l$nextSeason == null
          ? null
          : fromJson$Enum$MediaSeason((l$nextSeason as String));
    }
    if (data.containsKey('nextYear')) {
      final l$nextYear = data['nextYear'];
      result$data['nextYear'] = (l$nextYear as int?);
    }
    return Variables$Query$Browsing._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$MediaSeason? get season => (_$data['season'] as Enum$MediaSeason?);

  int? get seasonYear => (_$data['seasonYear'] as int?);

  Enum$MediaSeason? get nextSeason =>
      (_$data['nextSeason'] as Enum$MediaSeason?);

  int? get nextYear => (_$data['nextYear'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('season')) {
      final l$season = season;
      result$data['season'] =
          l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    }
    if (_$data.containsKey('seasonYear')) {
      final l$seasonYear = seasonYear;
      result$data['seasonYear'] = l$seasonYear;
    }
    if (_$data.containsKey('nextSeason')) {
      final l$nextSeason = nextSeason;
      result$data['nextSeason'] =
          l$nextSeason == null ? null : toJson$Enum$MediaSeason(l$nextSeason);
    }
    if (_$data.containsKey('nextYear')) {
      final l$nextYear = nextYear;
      result$data['nextYear'] = l$nextYear;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Browsing<Variables$Query$Browsing> get copyWith =>
      CopyWith$Variables$Query$Browsing(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Browsing) ||
        runtimeType != other.runtimeType) {
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
    final l$nextSeason = nextSeason;
    final lOther$nextSeason = other.nextSeason;
    if (_$data.containsKey('nextSeason') !=
        other._$data.containsKey('nextSeason')) {
      return false;
    }
    if (l$nextSeason != lOther$nextSeason) {
      return false;
    }
    final l$nextYear = nextYear;
    final lOther$nextYear = other.nextYear;
    if (_$data.containsKey('nextYear') !=
        other._$data.containsKey('nextYear')) {
      return false;
    }
    if (l$nextYear != lOther$nextYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$nextSeason = nextSeason;
    final l$nextYear = nextYear;
    return Object.hashAll([
      _$data.containsKey('season') ? l$season : const {},
      _$data.containsKey('seasonYear') ? l$seasonYear : const {},
      _$data.containsKey('nextSeason') ? l$nextSeason : const {},
      _$data.containsKey('nextYear') ? l$nextYear : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Browsing<TRes> {
  factory CopyWith$Variables$Query$Browsing(
    Variables$Query$Browsing instance,
    TRes Function(Variables$Query$Browsing) then,
  ) = _CopyWithImpl$Variables$Query$Browsing;

  factory CopyWith$Variables$Query$Browsing.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Browsing;

  TRes call({
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  });
}

class _CopyWithImpl$Variables$Query$Browsing<TRes>
    implements CopyWith$Variables$Query$Browsing<TRes> {
  _CopyWithImpl$Variables$Query$Browsing(
    this._instance,
    this._then,
  );

  final Variables$Query$Browsing _instance;

  final TRes Function(Variables$Query$Browsing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? nextSeason = _undefined,
    Object? nextYear = _undefined,
  }) =>
      _then(Variables$Query$Browsing._({
        ..._instance._$data,
        if (season != _undefined) 'season': (season as Enum$MediaSeason?),
        if (seasonYear != _undefined) 'seasonYear': (seasonYear as int?),
        if (nextSeason != _undefined)
          'nextSeason': (nextSeason as Enum$MediaSeason?),
        if (nextYear != _undefined) 'nextYear': (nextYear as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Browsing<TRes>
    implements CopyWith$Variables$Query$Browsing<TRes> {
  _CopyWithStubImpl$Variables$Query$Browsing(this._res);

  TRes _res;

  call({
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  }) =>
      _res;
}

class Query$Browsing {
  Query$Browsing({
    this.trending,
    this.season,
    this.nextSeason,
    this.popular,
    this.recent,
    this.$__typename = 'Query',
  });

  factory Query$Browsing.fromJson(Map<String, dynamic> json) {
    final l$trending = json['trending'];
    final l$season = json['season'];
    final l$nextSeason = json['nextSeason'];
    final l$popular = json['popular'];
    final l$recent = json['recent'];
    final l$$__typename = json['__typename'];
    return Query$Browsing(
      trending: l$trending == null
          ? null
          : Query$Browsing$trending.fromJson(
              (l$trending as Map<String, dynamic>)),
      season: l$season == null
          ? null
          : Query$Browsing$season.fromJson((l$season as Map<String, dynamic>)),
      nextSeason: l$nextSeason == null
          ? null
          : Query$Browsing$nextSeason.fromJson(
              (l$nextSeason as Map<String, dynamic>)),
      popular: l$popular == null
          ? null
          : Query$Browsing$popular.fromJson(
              (l$popular as Map<String, dynamic>)),
      recent: l$recent == null
          ? null
          : Query$Browsing$recent.fromJson((l$recent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Browsing$trending? trending;

  final Query$Browsing$season? season;

  final Query$Browsing$nextSeason? nextSeason;

  final Query$Browsing$popular? popular;

  final Query$Browsing$recent? recent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$trending = trending;
    _resultData['trending'] = l$trending?.toJson();
    final l$season = season;
    _resultData['season'] = l$season?.toJson();
    final l$nextSeason = nextSeason;
    _resultData['nextSeason'] = l$nextSeason?.toJson();
    final l$popular = popular;
    _resultData['popular'] = l$popular?.toJson();
    final l$recent = recent;
    _resultData['recent'] = l$recent?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$trending = trending;
    final l$season = season;
    final l$nextSeason = nextSeason;
    final l$popular = popular;
    final l$recent = recent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$trending,
      l$season,
      l$nextSeason,
      l$popular,
      l$recent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Browsing) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$trending = trending;
    final lOther$trending = other.trending;
    if (l$trending != lOther$trending) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    final l$nextSeason = nextSeason;
    final lOther$nextSeason = other.nextSeason;
    if (l$nextSeason != lOther$nextSeason) {
      return false;
    }
    final l$popular = popular;
    final lOther$popular = other.popular;
    if (l$popular != lOther$popular) {
      return false;
    }
    final l$recent = recent;
    final lOther$recent = other.recent;
    if (l$recent != lOther$recent) {
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

extension UtilityExtension$Query$Browsing on Query$Browsing {
  CopyWith$Query$Browsing<Query$Browsing> get copyWith =>
      CopyWith$Query$Browsing(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Browsing<TRes> {
  factory CopyWith$Query$Browsing(
    Query$Browsing instance,
    TRes Function(Query$Browsing) then,
  ) = _CopyWithImpl$Query$Browsing;

  factory CopyWith$Query$Browsing.stub(TRes res) =
      _CopyWithStubImpl$Query$Browsing;

  TRes call({
    Query$Browsing$trending? trending,
    Query$Browsing$season? season,
    Query$Browsing$nextSeason? nextSeason,
    Query$Browsing$popular? popular,
    Query$Browsing$recent? recent,
    String? $__typename,
  });
  CopyWith$Query$Browsing$trending<TRes> get trending;
  CopyWith$Query$Browsing$season<TRes> get season;
  CopyWith$Query$Browsing$nextSeason<TRes> get nextSeason;
  CopyWith$Query$Browsing$popular<TRes> get popular;
  CopyWith$Query$Browsing$recent<TRes> get recent;
}

class _CopyWithImpl$Query$Browsing<TRes>
    implements CopyWith$Query$Browsing<TRes> {
  _CopyWithImpl$Query$Browsing(
    this._instance,
    this._then,
  );

  final Query$Browsing _instance;

  final TRes Function(Query$Browsing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trending = _undefined,
    Object? season = _undefined,
    Object? nextSeason = _undefined,
    Object? popular = _undefined,
    Object? recent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Browsing(
        trending: trending == _undefined
            ? _instance.trending
            : (trending as Query$Browsing$trending?),
        season: season == _undefined
            ? _instance.season
            : (season as Query$Browsing$season?),
        nextSeason: nextSeason == _undefined
            ? _instance.nextSeason
            : (nextSeason as Query$Browsing$nextSeason?),
        popular: popular == _undefined
            ? _instance.popular
            : (popular as Query$Browsing$popular?),
        recent: recent == _undefined
            ? _instance.recent
            : (recent as Query$Browsing$recent?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Browsing$trending<TRes> get trending {
    final local$trending = _instance.trending;
    return local$trending == null
        ? CopyWith$Query$Browsing$trending.stub(_then(_instance))
        : CopyWith$Query$Browsing$trending(
            local$trending, (e) => call(trending: e));
  }

  CopyWith$Query$Browsing$season<TRes> get season {
    final local$season = _instance.season;
    return local$season == null
        ? CopyWith$Query$Browsing$season.stub(_then(_instance))
        : CopyWith$Query$Browsing$season(local$season, (e) => call(season: e));
  }

  CopyWith$Query$Browsing$nextSeason<TRes> get nextSeason {
    final local$nextSeason = _instance.nextSeason;
    return local$nextSeason == null
        ? CopyWith$Query$Browsing$nextSeason.stub(_then(_instance))
        : CopyWith$Query$Browsing$nextSeason(
            local$nextSeason, (e) => call(nextSeason: e));
  }

  CopyWith$Query$Browsing$popular<TRes> get popular {
    final local$popular = _instance.popular;
    return local$popular == null
        ? CopyWith$Query$Browsing$popular.stub(_then(_instance))
        : CopyWith$Query$Browsing$popular(
            local$popular, (e) => call(popular: e));
  }

  CopyWith$Query$Browsing$recent<TRes> get recent {
    final local$recent = _instance.recent;
    return local$recent == null
        ? CopyWith$Query$Browsing$recent.stub(_then(_instance))
        : CopyWith$Query$Browsing$recent(local$recent, (e) => call(recent: e));
  }
}

class _CopyWithStubImpl$Query$Browsing<TRes>
    implements CopyWith$Query$Browsing<TRes> {
  _CopyWithStubImpl$Query$Browsing(this._res);

  TRes _res;

  call({
    Query$Browsing$trending? trending,
    Query$Browsing$season? season,
    Query$Browsing$nextSeason? nextSeason,
    Query$Browsing$popular? popular,
    Query$Browsing$recent? recent,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Browsing$trending<TRes> get trending =>
      CopyWith$Query$Browsing$trending.stub(_res);

  CopyWith$Query$Browsing$season<TRes> get season =>
      CopyWith$Query$Browsing$season.stub(_res);

  CopyWith$Query$Browsing$nextSeason<TRes> get nextSeason =>
      CopyWith$Query$Browsing$nextSeason.stub(_res);

  CopyWith$Query$Browsing$popular<TRes> get popular =>
      CopyWith$Query$Browsing$popular.stub(_res);

  CopyWith$Query$Browsing$recent<TRes> get recent =>
      CopyWith$Query$Browsing$recent.stub(_res);
}

const documentNodeQueryBrowsing = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Browsing'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'nextSeason')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaSeason'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nextYear')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
        alias: NameNode(value: 'trending'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '10'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'TRENDING_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaFragment'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'season'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '13'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'season'),
                value: VariableNode(name: NameNode(value: 'season')),
              ),
              ArgumentNode(
                name: NameNode(value: 'seasonYear'),
                value: VariableNode(name: NameNode(value: 'seasonYear')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaFragment'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'nextSeason'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '14'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'season'),
                value: VariableNode(name: NameNode(value: 'nextSeason')),
              ),
              ArgumentNode(
                name: NameNode(value: 'seasonYear'),
                value: VariableNode(name: NameNode(value: 'nextYear')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaFragment'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'popular'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '11'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaFragment'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'recent'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '12'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaFragment'),
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
  fragmentDefinitionMediaFragment,
]);
Query$Browsing _parserFn$Query$Browsing(Map<String, dynamic> data) =>
    Query$Browsing.fromJson(data);
typedef OnQueryComplete$Query$Browsing = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Browsing?,
);

class Options$Query$Browsing extends graphql.QueryOptions<Query$Browsing> {
  Options$Query$Browsing({
    String? operationName,
    Variables$Query$Browsing? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Browsing? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Browsing? onComplete,
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
                    data == null ? null : _parserFn$Query$Browsing(data),
                  ),
          onError: onError,
          document: documentNodeQueryBrowsing,
          parserFn: _parserFn$Query$Browsing,
        );

  final OnQueryComplete$Query$Browsing? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Browsing
    extends graphql.WatchQueryOptions<Query$Browsing> {
  WatchOptions$Query$Browsing({
    String? operationName,
    Variables$Query$Browsing? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Browsing? typedOptimisticResult,
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
          document: documentNodeQueryBrowsing,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Browsing,
        );
}

class FetchMoreOptions$Query$Browsing extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Browsing({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Browsing? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryBrowsing,
        );
}

extension ClientExtension$Query$Browsing on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Browsing>> query$Browsing(
          [Options$Query$Browsing? options]) async =>
      await this.query(options ?? Options$Query$Browsing());
  graphql.ObservableQuery<Query$Browsing> watchQuery$Browsing(
          [WatchOptions$Query$Browsing? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Browsing());
  void writeQuery$Browsing({
    required Query$Browsing data,
    Variables$Query$Browsing? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryBrowsing),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Browsing? readQuery$Browsing({
    Variables$Query$Browsing? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryBrowsing),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Browsing.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Browsing> useQuery$Browsing(
        [Options$Query$Browsing? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Browsing());
graphql.ObservableQuery<Query$Browsing> useWatchQuery$Browsing(
        [WatchOptions$Query$Browsing? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Browsing());

class Query$Browsing$Widget extends graphql_flutter.Query<Query$Browsing> {
  Query$Browsing$Widget({
    widgets.Key? key,
    Options$Query$Browsing? options,
    required graphql_flutter.QueryBuilder<Query$Browsing> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Browsing(),
          builder: builder,
        );
}

class Query$Browsing$trending {
  Query$Browsing$trending({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Browsing$trending.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Browsing$trending(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Browsing$trending) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Browsing$trending on Query$Browsing$trending {
  CopyWith$Query$Browsing$trending<Query$Browsing$trending> get copyWith =>
      CopyWith$Query$Browsing$trending(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Browsing$trending<TRes> {
  factory CopyWith$Query$Browsing$trending(
    Query$Browsing$trending instance,
    TRes Function(Query$Browsing$trending) then,
  ) = _CopyWithImpl$Query$Browsing$trending;

  factory CopyWith$Query$Browsing$trending.stub(TRes res) =
      _CopyWithStubImpl$Query$Browsing$trending;

  TRes call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Browsing$trending<TRes>
    implements CopyWith$Query$Browsing$trending<TRes> {
  _CopyWithImpl$Query$Browsing$trending(
    this._instance,
    this._then,
  );

  final Query$Browsing$trending _instance;

  final TRes Function(Query$Browsing$trending) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Browsing$trending(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Browsing$trending<TRes>
    implements CopyWith$Query$Browsing$trending<TRes> {
  _CopyWithStubImpl$Query$Browsing$trending(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}

class Query$Browsing$season {
  Query$Browsing$season({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Browsing$season.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Browsing$season(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Browsing$season) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Browsing$season on Query$Browsing$season {
  CopyWith$Query$Browsing$season<Query$Browsing$season> get copyWith =>
      CopyWith$Query$Browsing$season(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Browsing$season<TRes> {
  factory CopyWith$Query$Browsing$season(
    Query$Browsing$season instance,
    TRes Function(Query$Browsing$season) then,
  ) = _CopyWithImpl$Query$Browsing$season;

  factory CopyWith$Query$Browsing$season.stub(TRes res) =
      _CopyWithStubImpl$Query$Browsing$season;

  TRes call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Browsing$season<TRes>
    implements CopyWith$Query$Browsing$season<TRes> {
  _CopyWithImpl$Query$Browsing$season(
    this._instance,
    this._then,
  );

  final Query$Browsing$season _instance;

  final TRes Function(Query$Browsing$season) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Browsing$season(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Browsing$season<TRes>
    implements CopyWith$Query$Browsing$season<TRes> {
  _CopyWithStubImpl$Query$Browsing$season(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}

class Query$Browsing$nextSeason {
  Query$Browsing$nextSeason({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Browsing$nextSeason.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Browsing$nextSeason(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Browsing$nextSeason) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Browsing$nextSeason
    on Query$Browsing$nextSeason {
  CopyWith$Query$Browsing$nextSeason<Query$Browsing$nextSeason> get copyWith =>
      CopyWith$Query$Browsing$nextSeason(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Browsing$nextSeason<TRes> {
  factory CopyWith$Query$Browsing$nextSeason(
    Query$Browsing$nextSeason instance,
    TRes Function(Query$Browsing$nextSeason) then,
  ) = _CopyWithImpl$Query$Browsing$nextSeason;

  factory CopyWith$Query$Browsing$nextSeason.stub(TRes res) =
      _CopyWithStubImpl$Query$Browsing$nextSeason;

  TRes call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Browsing$nextSeason<TRes>
    implements CopyWith$Query$Browsing$nextSeason<TRes> {
  _CopyWithImpl$Query$Browsing$nextSeason(
    this._instance,
    this._then,
  );

  final Query$Browsing$nextSeason _instance;

  final TRes Function(Query$Browsing$nextSeason) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Browsing$nextSeason(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Browsing$nextSeason<TRes>
    implements CopyWith$Query$Browsing$nextSeason<TRes> {
  _CopyWithStubImpl$Query$Browsing$nextSeason(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}

class Query$Browsing$popular {
  Query$Browsing$popular({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Browsing$popular.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Browsing$popular(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Browsing$popular) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Browsing$popular on Query$Browsing$popular {
  CopyWith$Query$Browsing$popular<Query$Browsing$popular> get copyWith =>
      CopyWith$Query$Browsing$popular(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Browsing$popular<TRes> {
  factory CopyWith$Query$Browsing$popular(
    Query$Browsing$popular instance,
    TRes Function(Query$Browsing$popular) then,
  ) = _CopyWithImpl$Query$Browsing$popular;

  factory CopyWith$Query$Browsing$popular.stub(TRes res) =
      _CopyWithStubImpl$Query$Browsing$popular;

  TRes call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Browsing$popular<TRes>
    implements CopyWith$Query$Browsing$popular<TRes> {
  _CopyWithImpl$Query$Browsing$popular(
    this._instance,
    this._then,
  );

  final Query$Browsing$popular _instance;

  final TRes Function(Query$Browsing$popular) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Browsing$popular(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Browsing$popular<TRes>
    implements CopyWith$Query$Browsing$popular<TRes> {
  _CopyWithStubImpl$Query$Browsing$popular(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}

class Query$Browsing$recent {
  Query$Browsing$recent({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Browsing$recent.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Browsing$recent(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaFragment?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Browsing$recent) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Browsing$recent on Query$Browsing$recent {
  CopyWith$Query$Browsing$recent<Query$Browsing$recent> get copyWith =>
      CopyWith$Query$Browsing$recent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Browsing$recent<TRes> {
  factory CopyWith$Query$Browsing$recent(
    Query$Browsing$recent instance,
    TRes Function(Query$Browsing$recent) then,
  ) = _CopyWithImpl$Query$Browsing$recent;

  factory CopyWith$Query$Browsing$recent.stub(TRes res) =
      _CopyWithStubImpl$Query$Browsing$recent;

  TRes call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Browsing$recent<TRes>
    implements CopyWith$Query$Browsing$recent<TRes> {
  _CopyWithImpl$Query$Browsing$recent(
    this._instance,
    this._then,
  );

  final Query$Browsing$recent _instance;

  final TRes Function(Query$Browsing$recent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Browsing$recent(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes media(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Browsing$recent<TRes>
    implements CopyWith$Query$Browsing$recent<TRes> {
  _CopyWithStubImpl$Query$Browsing$recent(this._res);

  TRes _res;

  call({
    List<Fragment$MediaFragment?>? media,
    String? $__typename,
  }) =>
      _res;

  media(_fn) => _res;
}
