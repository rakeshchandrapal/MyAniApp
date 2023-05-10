// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../../../graphql/fragments.graphql.dart';
import '../../../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Discovery {
  factory Variables$Query$Discovery({
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  }) =>
      Variables$Query$Discovery._({
        if (season != null) r'season': season,
        if (seasonYear != null) r'seasonYear': seasonYear,
        if (nextSeason != null) r'nextSeason': nextSeason,
        if (nextYear != null) r'nextYear': nextYear,
      });

  Variables$Query$Discovery._(this._$data);

  factory Variables$Query$Discovery.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$Discovery._(result$data);
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

  CopyWith$Variables$Query$Discovery<Variables$Query$Discovery> get copyWith =>
      CopyWith$Variables$Query$Discovery(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Discovery) ||
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

abstract class CopyWith$Variables$Query$Discovery<TRes> {
  factory CopyWith$Variables$Query$Discovery(
    Variables$Query$Discovery instance,
    TRes Function(Variables$Query$Discovery) then,
  ) = _CopyWithImpl$Variables$Query$Discovery;

  factory CopyWith$Variables$Query$Discovery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Discovery;

  TRes call({
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  });
}

class _CopyWithImpl$Variables$Query$Discovery<TRes>
    implements CopyWith$Variables$Query$Discovery<TRes> {
  _CopyWithImpl$Variables$Query$Discovery(
    this._instance,
    this._then,
  );

  final Variables$Query$Discovery _instance;

  final TRes Function(Variables$Query$Discovery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? nextSeason = _undefined,
    Object? nextYear = _undefined,
  }) =>
      _then(Variables$Query$Discovery._({
        ..._instance._$data,
        if (season != _undefined) 'season': (season as Enum$MediaSeason?),
        if (seasonYear != _undefined) 'seasonYear': (seasonYear as int?),
        if (nextSeason != _undefined)
          'nextSeason': (nextSeason as Enum$MediaSeason?),
        if (nextYear != _undefined) 'nextYear': (nextYear as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Discovery<TRes>
    implements CopyWith$Variables$Query$Discovery<TRes> {
  _CopyWithStubImpl$Variables$Query$Discovery(this._res);

  TRes _res;

  call({
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  }) =>
      _res;
}

class Query$Discovery {
  Query$Discovery({
    this.trending,
    this.season,
    this.nextSeason,
    this.popular,
    this.$__typename = 'Query',
  });

  factory Query$Discovery.fromJson(Map<String, dynamic> json) {
    final l$trending = json['trending'];
    final l$season = json['season'];
    final l$nextSeason = json['nextSeason'];
    final l$popular = json['popular'];
    final l$$__typename = json['__typename'];
    return Query$Discovery(
      trending: l$trending == null
          ? null
          : Query$Discovery$trending.fromJson(
              (l$trending as Map<String, dynamic>)),
      season: l$season == null
          ? null
          : Query$Discovery$season.fromJson((l$season as Map<String, dynamic>)),
      nextSeason: l$nextSeason == null
          ? null
          : Query$Discovery$nextSeason.fromJson(
              (l$nextSeason as Map<String, dynamic>)),
      popular: l$popular == null
          ? null
          : Query$Discovery$popular.fromJson(
              (l$popular as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Discovery$trending? trending;

  final Query$Discovery$season? season;

  final Query$Discovery$nextSeason? nextSeason;

  final Query$Discovery$popular? popular;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$trending,
      l$season,
      l$nextSeason,
      l$popular,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Discovery) || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Discovery on Query$Discovery {
  CopyWith$Query$Discovery<Query$Discovery> get copyWith =>
      CopyWith$Query$Discovery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Discovery<TRes> {
  factory CopyWith$Query$Discovery(
    Query$Discovery instance,
    TRes Function(Query$Discovery) then,
  ) = _CopyWithImpl$Query$Discovery;

  factory CopyWith$Query$Discovery.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery;

  TRes call({
    Query$Discovery$trending? trending,
    Query$Discovery$season? season,
    Query$Discovery$nextSeason? nextSeason,
    Query$Discovery$popular? popular,
    String? $__typename,
  });
  CopyWith$Query$Discovery$trending<TRes> get trending;
  CopyWith$Query$Discovery$season<TRes> get season;
  CopyWith$Query$Discovery$nextSeason<TRes> get nextSeason;
  CopyWith$Query$Discovery$popular<TRes> get popular;
}

class _CopyWithImpl$Query$Discovery<TRes>
    implements CopyWith$Query$Discovery<TRes> {
  _CopyWithImpl$Query$Discovery(
    this._instance,
    this._then,
  );

  final Query$Discovery _instance;

  final TRes Function(Query$Discovery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? trending = _undefined,
    Object? season = _undefined,
    Object? nextSeason = _undefined,
    Object? popular = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery(
        trending: trending == _undefined
            ? _instance.trending
            : (trending as Query$Discovery$trending?),
        season: season == _undefined
            ? _instance.season
            : (season as Query$Discovery$season?),
        nextSeason: nextSeason == _undefined
            ? _instance.nextSeason
            : (nextSeason as Query$Discovery$nextSeason?),
        popular: popular == _undefined
            ? _instance.popular
            : (popular as Query$Discovery$popular?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Discovery$trending<TRes> get trending {
    final local$trending = _instance.trending;
    return local$trending == null
        ? CopyWith$Query$Discovery$trending.stub(_then(_instance))
        : CopyWith$Query$Discovery$trending(
            local$trending, (e) => call(trending: e));
  }

  CopyWith$Query$Discovery$season<TRes> get season {
    final local$season = _instance.season;
    return local$season == null
        ? CopyWith$Query$Discovery$season.stub(_then(_instance))
        : CopyWith$Query$Discovery$season(local$season, (e) => call(season: e));
  }

  CopyWith$Query$Discovery$nextSeason<TRes> get nextSeason {
    final local$nextSeason = _instance.nextSeason;
    return local$nextSeason == null
        ? CopyWith$Query$Discovery$nextSeason.stub(_then(_instance))
        : CopyWith$Query$Discovery$nextSeason(
            local$nextSeason, (e) => call(nextSeason: e));
  }

  CopyWith$Query$Discovery$popular<TRes> get popular {
    final local$popular = _instance.popular;
    return local$popular == null
        ? CopyWith$Query$Discovery$popular.stub(_then(_instance))
        : CopyWith$Query$Discovery$popular(
            local$popular, (e) => call(popular: e));
  }
}

class _CopyWithStubImpl$Query$Discovery<TRes>
    implements CopyWith$Query$Discovery<TRes> {
  _CopyWithStubImpl$Query$Discovery(this._res);

  TRes _res;

  call({
    Query$Discovery$trending? trending,
    Query$Discovery$season? season,
    Query$Discovery$nextSeason? nextSeason,
    Query$Discovery$popular? popular,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Discovery$trending<TRes> get trending =>
      CopyWith$Query$Discovery$trending.stub(_res);
  CopyWith$Query$Discovery$season<TRes> get season =>
      CopyWith$Query$Discovery$season.stub(_res);
  CopyWith$Query$Discovery$nextSeason<TRes> get nextSeason =>
      CopyWith$Query$Discovery$nextSeason.stub(_res);
  CopyWith$Query$Discovery$popular<TRes> get popular =>
      CopyWith$Query$Discovery$popular.stub(_res);
}

const documentNodeQueryDiscovery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Discovery'),
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
            value: IntValueNode(value: '15'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'season'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '15'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'nextSeason'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '15'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'popular'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '15'),
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
  fragmentDefinitionMedia,
]);
Query$Discovery _parserFn$Query$Discovery(Map<String, dynamic> data) =>
    Query$Discovery.fromJson(data);
typedef OnQueryComplete$Query$Discovery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Discovery?,
);

class Options$Query$Discovery extends graphql.QueryOptions<Query$Discovery> {
  Options$Query$Discovery({
    String? operationName,
    Variables$Query$Discovery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Discovery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Discovery? onComplete,
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
                    data == null ? null : _parserFn$Query$Discovery(data),
                  ),
          onError: onError,
          document: documentNodeQueryDiscovery,
          parserFn: _parserFn$Query$Discovery,
        );

  final OnQueryComplete$Query$Discovery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Discovery
    extends graphql.WatchQueryOptions<Query$Discovery> {
  WatchOptions$Query$Discovery({
    String? operationName,
    Variables$Query$Discovery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Discovery? typedOptimisticResult,
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
          document: documentNodeQueryDiscovery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Discovery,
        );
}

class FetchMoreOptions$Query$Discovery extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Discovery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Discovery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryDiscovery,
        );
}

extension ClientExtension$Query$Discovery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Discovery>> query$Discovery(
          [Options$Query$Discovery? options]) async =>
      await this.query(options ?? Options$Query$Discovery());
  graphql.ObservableQuery<Query$Discovery> watchQuery$Discovery(
          [WatchOptions$Query$Discovery? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Discovery());
  void writeQuery$Discovery({
    required Query$Discovery data,
    Variables$Query$Discovery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryDiscovery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Discovery? readQuery$Discovery({
    Variables$Query$Discovery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryDiscovery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Discovery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Discovery> useQuery$Discovery(
        [Options$Query$Discovery? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Discovery());
graphql.ObservableQuery<Query$Discovery> useWatchQuery$Discovery(
        [WatchOptions$Query$Discovery? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Discovery());

class Query$Discovery$Widget extends graphql_flutter.Query<Query$Discovery> {
  Query$Discovery$Widget({
    widgets.Key? key,
    Options$Query$Discovery? options,
    required graphql_flutter.QueryBuilder<Query$Discovery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Discovery(),
          builder: builder,
        );
}

class Query$Discovery$trending {
  Query$Discovery$trending({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Discovery$trending.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Discovery$trending(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$Media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Media?>? media;

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
    if (!(other is Query$Discovery$trending) ||
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

extension UtilityExtension$Query$Discovery$trending
    on Query$Discovery$trending {
  CopyWith$Query$Discovery$trending<Query$Discovery$trending> get copyWith =>
      CopyWith$Query$Discovery$trending(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Discovery$trending<TRes> {
  factory CopyWith$Query$Discovery$trending(
    Query$Discovery$trending instance,
    TRes Function(Query$Discovery$trending) then,
  ) = _CopyWithImpl$Query$Discovery$trending;

  factory CopyWith$Query$Discovery$trending.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$trending;

  TRes call({
    List<Fragment$Media?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$Media?>? Function(
              Iterable<CopyWith$Fragment$Media<Fragment$Media>?>?)
          _fn);
}

class _CopyWithImpl$Query$Discovery$trending<TRes>
    implements CopyWith$Query$Discovery$trending<TRes> {
  _CopyWithImpl$Query$Discovery$trending(
    this._instance,
    this._then,
  );

  final Query$Discovery$trending _instance;

  final TRes Function(Query$Discovery$trending) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery$trending(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$Media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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

class _CopyWithStubImpl$Query$Discovery$trending<TRes>
    implements CopyWith$Query$Discovery$trending<TRes> {
  _CopyWithStubImpl$Query$Discovery$trending(this._res);

  TRes _res;

  call({
    List<Fragment$Media?>? media,
    String? $__typename,
  }) =>
      _res;
  media(_fn) => _res;
}

class Query$Discovery$season {
  Query$Discovery$season({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Discovery$season.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Discovery$season(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$Media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Media?>? media;

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
    if (!(other is Query$Discovery$season) ||
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

extension UtilityExtension$Query$Discovery$season on Query$Discovery$season {
  CopyWith$Query$Discovery$season<Query$Discovery$season> get copyWith =>
      CopyWith$Query$Discovery$season(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Discovery$season<TRes> {
  factory CopyWith$Query$Discovery$season(
    Query$Discovery$season instance,
    TRes Function(Query$Discovery$season) then,
  ) = _CopyWithImpl$Query$Discovery$season;

  factory CopyWith$Query$Discovery$season.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$season;

  TRes call({
    List<Fragment$Media?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$Media?>? Function(
              Iterable<CopyWith$Fragment$Media<Fragment$Media>?>?)
          _fn);
}

class _CopyWithImpl$Query$Discovery$season<TRes>
    implements CopyWith$Query$Discovery$season<TRes> {
  _CopyWithImpl$Query$Discovery$season(
    this._instance,
    this._then,
  );

  final Query$Discovery$season _instance;

  final TRes Function(Query$Discovery$season) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery$season(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$Media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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

class _CopyWithStubImpl$Query$Discovery$season<TRes>
    implements CopyWith$Query$Discovery$season<TRes> {
  _CopyWithStubImpl$Query$Discovery$season(this._res);

  TRes _res;

  call({
    List<Fragment$Media?>? media,
    String? $__typename,
  }) =>
      _res;
  media(_fn) => _res;
}

class Query$Discovery$nextSeason {
  Query$Discovery$nextSeason({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Discovery$nextSeason.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Discovery$nextSeason(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$Media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Media?>? media;

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
    if (!(other is Query$Discovery$nextSeason) ||
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

extension UtilityExtension$Query$Discovery$nextSeason
    on Query$Discovery$nextSeason {
  CopyWith$Query$Discovery$nextSeason<Query$Discovery$nextSeason>
      get copyWith => CopyWith$Query$Discovery$nextSeason(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Discovery$nextSeason<TRes> {
  factory CopyWith$Query$Discovery$nextSeason(
    Query$Discovery$nextSeason instance,
    TRes Function(Query$Discovery$nextSeason) then,
  ) = _CopyWithImpl$Query$Discovery$nextSeason;

  factory CopyWith$Query$Discovery$nextSeason.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$nextSeason;

  TRes call({
    List<Fragment$Media?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$Media?>? Function(
              Iterable<CopyWith$Fragment$Media<Fragment$Media>?>?)
          _fn);
}

class _CopyWithImpl$Query$Discovery$nextSeason<TRes>
    implements CopyWith$Query$Discovery$nextSeason<TRes> {
  _CopyWithImpl$Query$Discovery$nextSeason(
    this._instance,
    this._then,
  );

  final Query$Discovery$nextSeason _instance;

  final TRes Function(Query$Discovery$nextSeason) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery$nextSeason(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$Media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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

class _CopyWithStubImpl$Query$Discovery$nextSeason<TRes>
    implements CopyWith$Query$Discovery$nextSeason<TRes> {
  _CopyWithStubImpl$Query$Discovery$nextSeason(this._res);

  TRes _res;

  call({
    List<Fragment$Media?>? media,
    String? $__typename,
  }) =>
      _res;
  media(_fn) => _res;
}

class Query$Discovery$popular {
  Query$Discovery$popular({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Discovery$popular.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Discovery$popular(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$Media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Media?>? media;

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
    if (!(other is Query$Discovery$popular) ||
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

extension UtilityExtension$Query$Discovery$popular on Query$Discovery$popular {
  CopyWith$Query$Discovery$popular<Query$Discovery$popular> get copyWith =>
      CopyWith$Query$Discovery$popular(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Discovery$popular<TRes> {
  factory CopyWith$Query$Discovery$popular(
    Query$Discovery$popular instance,
    TRes Function(Query$Discovery$popular) then,
  ) = _CopyWithImpl$Query$Discovery$popular;

  factory CopyWith$Query$Discovery$popular.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$popular;

  TRes call({
    List<Fragment$Media?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$Media?>? Function(
              Iterable<CopyWith$Fragment$Media<Fragment$Media>?>?)
          _fn);
}

class _CopyWithImpl$Query$Discovery$popular<TRes>
    implements CopyWith$Query$Discovery$popular<TRes> {
  _CopyWithImpl$Query$Discovery$popular(
    this._instance,
    this._then,
  );

  final Query$Discovery$popular _instance;

  final TRes Function(Query$Discovery$popular) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery$popular(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$Media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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

class _CopyWithStubImpl$Query$Discovery$popular<TRes>
    implements CopyWith$Query$Discovery$popular<TRes> {
  _CopyWithStubImpl$Query$Discovery$popular(this._res);

  TRes _res;

  call({
    List<Fragment$Media?>? media,
    String? $__typename,
  }) =>
      _res;
  media(_fn) => _res;
}
