// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$UserStats {
  factory Variables$Query$UserStats({String? name}) =>
      Variables$Query$UserStats._({
        if (name != null) r'name': name,
      });

  Variables$Query$UserStats._(this._$data);

  factory Variables$Query$UserStats.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Variables$Query$UserStats._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Variables$Query$UserStats<Variables$Query$UserStats> get copyWith =>
      CopyWith$Variables$Query$UserStats(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$UserStats) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith$Variables$Query$UserStats<TRes> {
  factory CopyWith$Variables$Query$UserStats(
    Variables$Query$UserStats instance,
    TRes Function(Variables$Query$UserStats) then,
  ) = _CopyWithImpl$Variables$Query$UserStats;

  factory CopyWith$Variables$Query$UserStats.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserStats;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Query$UserStats<TRes>
    implements CopyWith$Variables$Query$UserStats<TRes> {
  _CopyWithImpl$Variables$Query$UserStats(
    this._instance,
    this._then,
  );

  final Variables$Query$UserStats _instance;

  final TRes Function(Variables$Query$UserStats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Variables$Query$UserStats._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserStats<TRes>
    implements CopyWith$Variables$Query$UserStats<TRes> {
  _CopyWithStubImpl$Variables$Query$UserStats(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$UserStats {
  Query$UserStats({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$UserStats.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$UserStats(
      User: l$User == null
          ? null
          : Query$UserStats$User.fromJson((l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserStats$User? User;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$User = User;
    _resultData['User'] = l$User?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$User = User;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$User,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserStats) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$User = User;
    final lOther$User = other.User;
    if (l$User != lOther$User) {
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

extension UtilityExtension$Query$UserStats on Query$UserStats {
  CopyWith$Query$UserStats<Query$UserStats> get copyWith =>
      CopyWith$Query$UserStats(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserStats<TRes> {
  factory CopyWith$Query$UserStats(
    Query$UserStats instance,
    TRes Function(Query$UserStats) then,
  ) = _CopyWithImpl$Query$UserStats;

  factory CopyWith$Query$UserStats.stub(TRes res) =
      _CopyWithStubImpl$Query$UserStats;

  TRes call({
    Query$UserStats$User? User,
    String? $__typename,
  });
  CopyWith$Query$UserStats$User<TRes> get User;
}

class _CopyWithImpl$Query$UserStats<TRes>
    implements CopyWith$Query$UserStats<TRes> {
  _CopyWithImpl$Query$UserStats(
    this._instance,
    this._then,
  );

  final Query$UserStats _instance;

  final TRes Function(Query$UserStats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserStats(
        User: User == _undefined
            ? _instance.User
            : (User as Query$UserStats$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserStats$User<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Query$UserStats$User.stub(_then(_instance))
        : CopyWith$Query$UserStats$User(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$UserStats<TRes>
    implements CopyWith$Query$UserStats<TRes> {
  _CopyWithStubImpl$Query$UserStats(this._res);

  TRes _res;

  call({
    Query$UserStats$User? User,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserStats$User<TRes> get User =>
      CopyWith$Query$UserStats$User.stub(_res);
}

const documentNodeQueryUserStats = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserStats'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'User'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'statistics'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'anime'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'formats'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'format'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'meanScore'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'minutesWatched'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'chaptersRead'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mediaIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
                    name: NameNode(value: 'statuses'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'meanScore'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'minutesWatched'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'chaptersRead'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mediaIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
                    name: NameNode(value: 'scores'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'score'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'meanScore'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'minutesWatched'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'chaptersRead'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mediaIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
                    name: NameNode(value: 'lengths'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'length'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'meanScore'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'minutesWatched'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'chaptersRead'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mediaIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
                    name: NameNode(value: 'releaseYears'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'releaseYear'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'meanScore'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'minutesWatched'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'chaptersRead'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mediaIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
                    name: NameNode(value: 'startYears'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'startYear'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'meanScore'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'minutesWatched'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'chaptersRead'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mediaIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
                    name: NameNode(value: 'countries'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'country'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'meanScore'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'minutesWatched'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'chaptersRead'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mediaIds'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
]);
Query$UserStats _parserFn$Query$UserStats(Map<String, dynamic> data) =>
    Query$UserStats.fromJson(data);
typedef OnQueryComplete$Query$UserStats = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$UserStats?,
);

class Options$Query$UserStats extends graphql.QueryOptions<Query$UserStats> {
  Options$Query$UserStats({
    String? operationName,
    Variables$Query$UserStats? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserStats? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$UserStats? onComplete,
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
                    data == null ? null : _parserFn$Query$UserStats(data),
                  ),
          onError: onError,
          document: documentNodeQueryUserStats,
          parserFn: _parserFn$Query$UserStats,
        );

  final OnQueryComplete$Query$UserStats? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$UserStats
    extends graphql.WatchQueryOptions<Query$UserStats> {
  WatchOptions$Query$UserStats({
    String? operationName,
    Variables$Query$UserStats? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserStats? typedOptimisticResult,
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
          document: documentNodeQueryUserStats,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$UserStats,
        );
}

class FetchMoreOptions$Query$UserStats extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UserStats({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$UserStats? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryUserStats,
        );
}

extension ClientExtension$Query$UserStats on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UserStats>> query$UserStats(
          [Options$Query$UserStats? options]) async =>
      await this.query(options ?? Options$Query$UserStats());
  graphql.ObservableQuery<Query$UserStats> watchQuery$UserStats(
          [WatchOptions$Query$UserStats? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$UserStats());
  void writeQuery$UserStats({
    required Query$UserStats data,
    Variables$Query$UserStats? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryUserStats),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$UserStats? readQuery$UserStats({
    Variables$Query$UserStats? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUserStats),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$UserStats.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$UserStats> useQuery$UserStats(
        [Options$Query$UserStats? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$UserStats());
graphql.ObservableQuery<Query$UserStats> useWatchQuery$UserStats(
        [WatchOptions$Query$UserStats? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$UserStats());

class Query$UserStats$Widget extends graphql_flutter.Query<Query$UserStats> {
  Query$UserStats$Widget({
    widgets.Key? key,
    Options$Query$UserStats? options,
    required graphql_flutter.QueryBuilder<Query$UserStats> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$UserStats(),
          builder: builder,
        );
}

class Query$UserStats$User {
  Query$UserStats$User({
    required this.id,
    required this.name,
    this.statistics,
    this.$__typename = 'User',
  });

  factory Query$UserStats$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$statistics = json['statistics'];
    final l$$__typename = json['__typename'];
    return Query$UserStats$User(
      id: (l$id as int),
      name: (l$name as String),
      statistics: l$statistics == null
          ? null
          : Query$UserStats$User$statistics.fromJson(
              (l$statistics as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$UserStats$User$statistics? statistics;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$statistics = statistics;
    _resultData['statistics'] = l$statistics?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$statistics = statistics;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$statistics,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserStats$User) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$statistics = statistics;
    final lOther$statistics = other.statistics;
    if (l$statistics != lOther$statistics) {
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

extension UtilityExtension$Query$UserStats$User on Query$UserStats$User {
  CopyWith$Query$UserStats$User<Query$UserStats$User> get copyWith =>
      CopyWith$Query$UserStats$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserStats$User<TRes> {
  factory CopyWith$Query$UserStats$User(
    Query$UserStats$User instance,
    TRes Function(Query$UserStats$User) then,
  ) = _CopyWithImpl$Query$UserStats$User;

  factory CopyWith$Query$UserStats$User.stub(TRes res) =
      _CopyWithStubImpl$Query$UserStats$User;

  TRes call({
    int? id,
    String? name,
    Query$UserStats$User$statistics? statistics,
    String? $__typename,
  });
  CopyWith$Query$UserStats$User$statistics<TRes> get statistics;
}

class _CopyWithImpl$Query$UserStats$User<TRes>
    implements CopyWith$Query$UserStats$User<TRes> {
  _CopyWithImpl$Query$UserStats$User(
    this._instance,
    this._then,
  );

  final Query$UserStats$User _instance;

  final TRes Function(Query$UserStats$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? statistics = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserStats$User(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        statistics: statistics == _undefined
            ? _instance.statistics
            : (statistics as Query$UserStats$User$statistics?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserStats$User$statistics<TRes> get statistics {
    final local$statistics = _instance.statistics;
    return local$statistics == null
        ? CopyWith$Query$UserStats$User$statistics.stub(_then(_instance))
        : CopyWith$Query$UserStats$User$statistics(
            local$statistics, (e) => call(statistics: e));
  }
}

class _CopyWithStubImpl$Query$UserStats$User<TRes>
    implements CopyWith$Query$UserStats$User<TRes> {
  _CopyWithStubImpl$Query$UserStats$User(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$UserStats$User$statistics? statistics,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserStats$User$statistics<TRes> get statistics =>
      CopyWith$Query$UserStats$User$statistics.stub(_res);
}

class Query$UserStats$User$statistics {
  Query$UserStats$User$statistics({
    this.anime,
    this.$__typename = 'UserStatisticTypes',
  });

  factory Query$UserStats$User$statistics.fromJson(Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$$__typename = json['__typename'];
    return Query$UserStats$User$statistics(
      anime: l$anime == null
          ? null
          : Query$UserStats$User$statistics$anime.fromJson(
              (l$anime as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserStats$User$statistics$anime? anime;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserStats$User$statistics) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$anime = anime;
    final lOther$anime = other.anime;
    if (l$anime != lOther$anime) {
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

extension UtilityExtension$Query$UserStats$User$statistics
    on Query$UserStats$User$statistics {
  CopyWith$Query$UserStats$User$statistics<Query$UserStats$User$statistics>
      get copyWith => CopyWith$Query$UserStats$User$statistics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserStats$User$statistics<TRes> {
  factory CopyWith$Query$UserStats$User$statistics(
    Query$UserStats$User$statistics instance,
    TRes Function(Query$UserStats$User$statistics) then,
  ) = _CopyWithImpl$Query$UserStats$User$statistics;

  factory CopyWith$Query$UserStats$User$statistics.stub(TRes res) =
      _CopyWithStubImpl$Query$UserStats$User$statistics;

  TRes call({
    Query$UserStats$User$statistics$anime? anime,
    String? $__typename,
  });
  CopyWith$Query$UserStats$User$statistics$anime<TRes> get anime;
}

class _CopyWithImpl$Query$UserStats$User$statistics<TRes>
    implements CopyWith$Query$UserStats$User$statistics<TRes> {
  _CopyWithImpl$Query$UserStats$User$statistics(
    this._instance,
    this._then,
  );

  final Query$UserStats$User$statistics _instance;

  final TRes Function(Query$UserStats$User$statistics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserStats$User$statistics(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Query$UserStats$User$statistics$anime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserStats$User$statistics$anime<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Query$UserStats$User$statistics$anime.stub(_then(_instance))
        : CopyWith$Query$UserStats$User$statistics$anime(
            local$anime, (e) => call(anime: e));
  }
}

class _CopyWithStubImpl$Query$UserStats$User$statistics<TRes>
    implements CopyWith$Query$UserStats$User$statistics<TRes> {
  _CopyWithStubImpl$Query$UserStats$User$statistics(this._res);

  TRes _res;

  call({
    Query$UserStats$User$statistics$anime? anime,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserStats$User$statistics$anime<TRes> get anime =>
      CopyWith$Query$UserStats$User$statistics$anime.stub(_res);
}

class Query$UserStats$User$statistics$anime {
  Query$UserStats$User$statistics$anime({
    this.formats,
    this.statuses,
    this.scores,
    this.lengths,
    this.releaseYears,
    this.startYears,
    this.countries,
    this.$__typename = 'UserStatistics',
  });

  factory Query$UserStats$User$statistics$anime.fromJson(
      Map<String, dynamic> json) {
    final l$formats = json['formats'];
    final l$statuses = json['statuses'];
    final l$scores = json['scores'];
    final l$lengths = json['lengths'];
    final l$releaseYears = json['releaseYears'];
    final l$startYears = json['startYears'];
    final l$countries = json['countries'];
    final l$$__typename = json['__typename'];
    return Query$UserStats$User$statistics$anime(
      formats: (l$formats as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserStats$User$statistics$anime$formats.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      statuses: (l$statuses as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserStats$User$statistics$anime$statuses.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      scores: (l$scores as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserStats$User$statistics$anime$scores.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      lengths: (l$lengths as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserStats$User$statistics$anime$lengths.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      releaseYears: (l$releaseYears as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserStats$User$statistics$anime$releaseYears.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      startYears: (l$startYears as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserStats$User$statistics$anime$startYears.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      countries: (l$countries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserStats$User$statistics$anime$countries.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$UserStats$User$statistics$anime$formats?>? formats;

  final List<Query$UserStats$User$statistics$anime$statuses?>? statuses;

  final List<Query$UserStats$User$statistics$anime$scores?>? scores;

  final List<Query$UserStats$User$statistics$anime$lengths?>? lengths;

  final List<Query$UserStats$User$statistics$anime$releaseYears?>? releaseYears;

  final List<Query$UserStats$User$statistics$anime$startYears?>? startYears;

  final List<Query$UserStats$User$statistics$anime$countries?>? countries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$formats = formats;
    _resultData['formats'] = l$formats?.map((e) => e?.toJson()).toList();
    final l$statuses = statuses;
    _resultData['statuses'] = l$statuses?.map((e) => e?.toJson()).toList();
    final l$scores = scores;
    _resultData['scores'] = l$scores?.map((e) => e?.toJson()).toList();
    final l$lengths = lengths;
    _resultData['lengths'] = l$lengths?.map((e) => e?.toJson()).toList();
    final l$releaseYears = releaseYears;
    _resultData['releaseYears'] =
        l$releaseYears?.map((e) => e?.toJson()).toList();
    final l$startYears = startYears;
    _resultData['startYears'] = l$startYears?.map((e) => e?.toJson()).toList();
    final l$countries = countries;
    _resultData['countries'] = l$countries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$formats = formats;
    final l$statuses = statuses;
    final l$scores = scores;
    final l$lengths = lengths;
    final l$releaseYears = releaseYears;
    final l$startYears = startYears;
    final l$countries = countries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$formats == null ? null : Object.hashAll(l$formats.map((v) => v)),
      l$statuses == null ? null : Object.hashAll(l$statuses.map((v) => v)),
      l$scores == null ? null : Object.hashAll(l$scores.map((v) => v)),
      l$lengths == null ? null : Object.hashAll(l$lengths.map((v) => v)),
      l$releaseYears == null
          ? null
          : Object.hashAll(l$releaseYears.map((v) => v)),
      l$startYears == null ? null : Object.hashAll(l$startYears.map((v) => v)),
      l$countries == null ? null : Object.hashAll(l$countries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserStats$User$statistics$anime) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$formats = formats;
    final lOther$formats = other.formats;
    if (l$formats != null && lOther$formats != null) {
      if (l$formats.length != lOther$formats.length) {
        return false;
      }
      for (int i = 0; i < l$formats.length; i++) {
        final l$formats$entry = l$formats[i];
        final lOther$formats$entry = lOther$formats[i];
        if (l$formats$entry != lOther$formats$entry) {
          return false;
        }
      }
    } else if (l$formats != lOther$formats) {
      return false;
    }
    final l$statuses = statuses;
    final lOther$statuses = other.statuses;
    if (l$statuses != null && lOther$statuses != null) {
      if (l$statuses.length != lOther$statuses.length) {
        return false;
      }
      for (int i = 0; i < l$statuses.length; i++) {
        final l$statuses$entry = l$statuses[i];
        final lOther$statuses$entry = lOther$statuses[i];
        if (l$statuses$entry != lOther$statuses$entry) {
          return false;
        }
      }
    } else if (l$statuses != lOther$statuses) {
      return false;
    }
    final l$scores = scores;
    final lOther$scores = other.scores;
    if (l$scores != null && lOther$scores != null) {
      if (l$scores.length != lOther$scores.length) {
        return false;
      }
      for (int i = 0; i < l$scores.length; i++) {
        final l$scores$entry = l$scores[i];
        final lOther$scores$entry = lOther$scores[i];
        if (l$scores$entry != lOther$scores$entry) {
          return false;
        }
      }
    } else if (l$scores != lOther$scores) {
      return false;
    }
    final l$lengths = lengths;
    final lOther$lengths = other.lengths;
    if (l$lengths != null && lOther$lengths != null) {
      if (l$lengths.length != lOther$lengths.length) {
        return false;
      }
      for (int i = 0; i < l$lengths.length; i++) {
        final l$lengths$entry = l$lengths[i];
        final lOther$lengths$entry = lOther$lengths[i];
        if (l$lengths$entry != lOther$lengths$entry) {
          return false;
        }
      }
    } else if (l$lengths != lOther$lengths) {
      return false;
    }
    final l$releaseYears = releaseYears;
    final lOther$releaseYears = other.releaseYears;
    if (l$releaseYears != null && lOther$releaseYears != null) {
      if (l$releaseYears.length != lOther$releaseYears.length) {
        return false;
      }
      for (int i = 0; i < l$releaseYears.length; i++) {
        final l$releaseYears$entry = l$releaseYears[i];
        final lOther$releaseYears$entry = lOther$releaseYears[i];
        if (l$releaseYears$entry != lOther$releaseYears$entry) {
          return false;
        }
      }
    } else if (l$releaseYears != lOther$releaseYears) {
      return false;
    }
    final l$startYears = startYears;
    final lOther$startYears = other.startYears;
    if (l$startYears != null && lOther$startYears != null) {
      if (l$startYears.length != lOther$startYears.length) {
        return false;
      }
      for (int i = 0; i < l$startYears.length; i++) {
        final l$startYears$entry = l$startYears[i];
        final lOther$startYears$entry = lOther$startYears[i];
        if (l$startYears$entry != lOther$startYears$entry) {
          return false;
        }
      }
    } else if (l$startYears != lOther$startYears) {
      return false;
    }
    final l$countries = countries;
    final lOther$countries = other.countries;
    if (l$countries != null && lOther$countries != null) {
      if (l$countries.length != lOther$countries.length) {
        return false;
      }
      for (int i = 0; i < l$countries.length; i++) {
        final l$countries$entry = l$countries[i];
        final lOther$countries$entry = lOther$countries[i];
        if (l$countries$entry != lOther$countries$entry) {
          return false;
        }
      }
    } else if (l$countries != lOther$countries) {
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

extension UtilityExtension$Query$UserStats$User$statistics$anime
    on Query$UserStats$User$statistics$anime {
  CopyWith$Query$UserStats$User$statistics$anime<
          Query$UserStats$User$statistics$anime>
      get copyWith => CopyWith$Query$UserStats$User$statistics$anime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserStats$User$statistics$anime<TRes> {
  factory CopyWith$Query$UserStats$User$statistics$anime(
    Query$UserStats$User$statistics$anime instance,
    TRes Function(Query$UserStats$User$statistics$anime) then,
  ) = _CopyWithImpl$Query$UserStats$User$statistics$anime;

  factory CopyWith$Query$UserStats$User$statistics$anime.stub(TRes res) =
      _CopyWithStubImpl$Query$UserStats$User$statistics$anime;

  TRes call({
    List<Query$UserStats$User$statistics$anime$formats?>? formats,
    List<Query$UserStats$User$statistics$anime$statuses?>? statuses,
    List<Query$UserStats$User$statistics$anime$scores?>? scores,
    List<Query$UserStats$User$statistics$anime$lengths?>? lengths,
    List<Query$UserStats$User$statistics$anime$releaseYears?>? releaseYears,
    List<Query$UserStats$User$statistics$anime$startYears?>? startYears,
    List<Query$UserStats$User$statistics$anime$countries?>? countries,
    String? $__typename,
  });
  TRes formats(
      Iterable<Query$UserStats$User$statistics$anime$formats?>? Function(
              Iterable<
                  CopyWith$Query$UserStats$User$statistics$anime$formats<
                      Query$UserStats$User$statistics$anime$formats>?>?)
          _fn);
  TRes statuses(
      Iterable<Query$UserStats$User$statistics$anime$statuses?>? Function(
              Iterable<
                  CopyWith$Query$UserStats$User$statistics$anime$statuses<
                      Query$UserStats$User$statistics$anime$statuses>?>?)
          _fn);
  TRes scores(
      Iterable<Query$UserStats$User$statistics$anime$scores?>? Function(
              Iterable<
                  CopyWith$Query$UserStats$User$statistics$anime$scores<
                      Query$UserStats$User$statistics$anime$scores>?>?)
          _fn);
  TRes lengths(
      Iterable<Query$UserStats$User$statistics$anime$lengths?>? Function(
              Iterable<
                  CopyWith$Query$UserStats$User$statistics$anime$lengths<
                      Query$UserStats$User$statistics$anime$lengths>?>?)
          _fn);
  TRes releaseYears(
      Iterable<Query$UserStats$User$statistics$anime$releaseYears?>? Function(
              Iterable<
                  CopyWith$Query$UserStats$User$statistics$anime$releaseYears<
                      Query$UserStats$User$statistics$anime$releaseYears>?>?)
          _fn);
  TRes startYears(
      Iterable<Query$UserStats$User$statistics$anime$startYears?>? Function(
              Iterable<
                  CopyWith$Query$UserStats$User$statistics$anime$startYears<
                      Query$UserStats$User$statistics$anime$startYears>?>?)
          _fn);
  TRes countries(
      Iterable<Query$UserStats$User$statistics$anime$countries?>? Function(
              Iterable<
                  CopyWith$Query$UserStats$User$statistics$anime$countries<
                      Query$UserStats$User$statistics$anime$countries>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserStats$User$statistics$anime<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime<TRes> {
  _CopyWithImpl$Query$UserStats$User$statistics$anime(
    this._instance,
    this._then,
  );

  final Query$UserStats$User$statistics$anime _instance;

  final TRes Function(Query$UserStats$User$statistics$anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? formats = _undefined,
    Object? statuses = _undefined,
    Object? scores = _undefined,
    Object? lengths = _undefined,
    Object? releaseYears = _undefined,
    Object? startYears = _undefined,
    Object? countries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserStats$User$statistics$anime(
        formats: formats == _undefined
            ? _instance.formats
            : (formats
                as List<Query$UserStats$User$statistics$anime$formats?>?),
        statuses: statuses == _undefined
            ? _instance.statuses
            : (statuses
                as List<Query$UserStats$User$statistics$anime$statuses?>?),
        scores: scores == _undefined
            ? _instance.scores
            : (scores as List<Query$UserStats$User$statistics$anime$scores?>?),
        lengths: lengths == _undefined
            ? _instance.lengths
            : (lengths
                as List<Query$UserStats$User$statistics$anime$lengths?>?),
        releaseYears: releaseYears == _undefined
            ? _instance.releaseYears
            : (releaseYears
                as List<Query$UserStats$User$statistics$anime$releaseYears?>?),
        startYears: startYears == _undefined
            ? _instance.startYears
            : (startYears
                as List<Query$UserStats$User$statistics$anime$startYears?>?),
        countries: countries == _undefined
            ? _instance.countries
            : (countries
                as List<Query$UserStats$User$statistics$anime$countries?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes formats(
          Iterable<Query$UserStats$User$statistics$anime$formats?>? Function(
                  Iterable<
                      CopyWith$Query$UserStats$User$statistics$anime$formats<
                          Query$UserStats$User$statistics$anime$formats>?>?)
              _fn) =>
      call(
          formats: _fn(_instance.formats?.map((e) => e == null
              ? null
              : CopyWith$Query$UserStats$User$statistics$anime$formats(
                  e,
                  (i) => i,
                )))?.toList());

  TRes statuses(
          Iterable<Query$UserStats$User$statistics$anime$statuses?>? Function(
                  Iterable<
                      CopyWith$Query$UserStats$User$statistics$anime$statuses<
                          Query$UserStats$User$statistics$anime$statuses>?>?)
              _fn) =>
      call(
          statuses: _fn(_instance.statuses?.map((e) => e == null
              ? null
              : CopyWith$Query$UserStats$User$statistics$anime$statuses(
                  e,
                  (i) => i,
                )))?.toList());

  TRes scores(
          Iterable<Query$UserStats$User$statistics$anime$scores?>? Function(
                  Iterable<
                      CopyWith$Query$UserStats$User$statistics$anime$scores<
                          Query$UserStats$User$statistics$anime$scores>?>?)
              _fn) =>
      call(
          scores: _fn(_instance.scores?.map((e) => e == null
              ? null
              : CopyWith$Query$UserStats$User$statistics$anime$scores(
                  e,
                  (i) => i,
                )))?.toList());

  TRes lengths(
          Iterable<Query$UserStats$User$statistics$anime$lengths?>? Function(
                  Iterable<
                      CopyWith$Query$UserStats$User$statistics$anime$lengths<
                          Query$UserStats$User$statistics$anime$lengths>?>?)
              _fn) =>
      call(
          lengths: _fn(_instance.lengths?.map((e) => e == null
              ? null
              : CopyWith$Query$UserStats$User$statistics$anime$lengths(
                  e,
                  (i) => i,
                )))?.toList());

  TRes releaseYears(
          Iterable<Query$UserStats$User$statistics$anime$releaseYears?>? Function(
                  Iterable<
                      CopyWith$Query$UserStats$User$statistics$anime$releaseYears<
                          Query$UserStats$User$statistics$anime$releaseYears>?>?)
              _fn) =>
      call(
          releaseYears: _fn(_instance.releaseYears?.map((e) => e == null
              ? null
              : CopyWith$Query$UserStats$User$statistics$anime$releaseYears(
                  e,
                  (i) => i,
                )))?.toList());

  TRes startYears(
          Iterable<Query$UserStats$User$statistics$anime$startYears?>? Function(
                  Iterable<
                      CopyWith$Query$UserStats$User$statistics$anime$startYears<
                          Query$UserStats$User$statistics$anime$startYears>?>?)
              _fn) =>
      call(
          startYears: _fn(_instance.startYears?.map((e) => e == null
              ? null
              : CopyWith$Query$UserStats$User$statistics$anime$startYears(
                  e,
                  (i) => i,
                )))?.toList());

  TRes countries(
          Iterable<Query$UserStats$User$statistics$anime$countries?>? Function(
                  Iterable<
                      CopyWith$Query$UserStats$User$statistics$anime$countries<
                          Query$UserStats$User$statistics$anime$countries>?>?)
              _fn) =>
      call(
          countries: _fn(_instance.countries?.map((e) => e == null
              ? null
              : CopyWith$Query$UserStats$User$statistics$anime$countries(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$UserStats$User$statistics$anime<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime<TRes> {
  _CopyWithStubImpl$Query$UserStats$User$statistics$anime(this._res);

  TRes _res;

  call({
    List<Query$UserStats$User$statistics$anime$formats?>? formats,
    List<Query$UserStats$User$statistics$anime$statuses?>? statuses,
    List<Query$UserStats$User$statistics$anime$scores?>? scores,
    List<Query$UserStats$User$statistics$anime$lengths?>? lengths,
    List<Query$UserStats$User$statistics$anime$releaseYears?>? releaseYears,
    List<Query$UserStats$User$statistics$anime$startYears?>? startYears,
    List<Query$UserStats$User$statistics$anime$countries?>? countries,
    String? $__typename,
  }) =>
      _res;

  formats(_fn) => _res;

  statuses(_fn) => _res;

  scores(_fn) => _res;

  lengths(_fn) => _res;

  releaseYears(_fn) => _res;

  startYears(_fn) => _res;

  countries(_fn) => _res;
}

class Query$UserStats$User$statistics$anime$formats {
  Query$UserStats$User$statistics$anime$formats({
    this.format,
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.$__typename = 'UserFormatStatistic',
  });

  factory Query$UserStats$User$statistics$anime$formats.fromJson(
      Map<String, dynamic> json) {
    final l$format = json['format'];
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$$__typename = json['__typename'];
    return Query$UserStats$User$statistics$anime$formats(
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$MediaFormat? format;

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$format = format;
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$format,
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserStats$User$statistics$anime$formats) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserStats$User$statistics$anime$formats
    on Query$UserStats$User$statistics$anime$formats {
  CopyWith$Query$UserStats$User$statistics$anime$formats<
          Query$UserStats$User$statistics$anime$formats>
      get copyWith => CopyWith$Query$UserStats$User$statistics$anime$formats(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserStats$User$statistics$anime$formats<TRes> {
  factory CopyWith$Query$UserStats$User$statistics$anime$formats(
    Query$UserStats$User$statistics$anime$formats instance,
    TRes Function(Query$UserStats$User$statistics$anime$formats) then,
  ) = _CopyWithImpl$Query$UserStats$User$statistics$anime$formats;

  factory CopyWith$Query$UserStats$User$statistics$anime$formats.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserStats$User$statistics$anime$formats;

  TRes call({
    Enum$MediaFormat? format,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserStats$User$statistics$anime$formats<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime$formats<TRes> {
  _CopyWithImpl$Query$UserStats$User$statistics$anime$formats(
    this._instance,
    this._then,
  );

  final Query$UserStats$User$statistics$anime$formats _instance;

  final TRes Function(Query$UserStats$User$statistics$anime$formats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? format = _undefined,
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserStats$User$statistics$anime$formats(
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserStats$User$statistics$anime$formats<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime$formats<TRes> {
  _CopyWithStubImpl$Query$UserStats$User$statistics$anime$formats(this._res);

  TRes _res;

  call({
    Enum$MediaFormat? format,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserStats$User$statistics$anime$statuses {
  Query$UserStats$User$statistics$anime$statuses({
    this.status,
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.$__typename = 'UserStatusStatistic',
  });

  factory Query$UserStats$User$statistics$anime$statuses.fromJson(
      Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$$__typename = json['__typename'];
    return Query$UserStats$User$statistics$anime$statuses(
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$MediaListStatus? status;

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserStats$User$statistics$anime$statuses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserStats$User$statistics$anime$statuses
    on Query$UserStats$User$statistics$anime$statuses {
  CopyWith$Query$UserStats$User$statistics$anime$statuses<
          Query$UserStats$User$statistics$anime$statuses>
      get copyWith => CopyWith$Query$UserStats$User$statistics$anime$statuses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserStats$User$statistics$anime$statuses<TRes> {
  factory CopyWith$Query$UserStats$User$statistics$anime$statuses(
    Query$UserStats$User$statistics$anime$statuses instance,
    TRes Function(Query$UserStats$User$statistics$anime$statuses) then,
  ) = _CopyWithImpl$Query$UserStats$User$statistics$anime$statuses;

  factory CopyWith$Query$UserStats$User$statistics$anime$statuses.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserStats$User$statistics$anime$statuses;

  TRes call({
    Enum$MediaListStatus? status,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserStats$User$statistics$anime$statuses<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime$statuses<TRes> {
  _CopyWithImpl$Query$UserStats$User$statistics$anime$statuses(
    this._instance,
    this._then,
  );

  final Query$UserStats$User$statistics$anime$statuses _instance;

  final TRes Function(Query$UserStats$User$statistics$anime$statuses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserStats$User$statistics$anime$statuses(
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserStats$User$statistics$anime$statuses<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime$statuses<TRes> {
  _CopyWithStubImpl$Query$UserStats$User$statistics$anime$statuses(this._res);

  TRes _res;

  call({
    Enum$MediaListStatus? status,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserStats$User$statistics$anime$scores {
  Query$UserStats$User$statistics$anime$scores({
    this.score,
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.$__typename = 'UserScoreStatistic',
  });

  factory Query$UserStats$User$statistics$anime$scores.fromJson(
      Map<String, dynamic> json) {
    final l$score = json['score'];
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$$__typename = json['__typename'];
    return Query$UserStats$User$statistics$anime$scores(
      score: (l$score as int?),
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? score;

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$score = score;
    _resultData['score'] = l$score;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$score = score;
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$score,
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserStats$User$statistics$anime$scores) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserStats$User$statistics$anime$scores
    on Query$UserStats$User$statistics$anime$scores {
  CopyWith$Query$UserStats$User$statistics$anime$scores<
          Query$UserStats$User$statistics$anime$scores>
      get copyWith => CopyWith$Query$UserStats$User$statistics$anime$scores(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserStats$User$statistics$anime$scores<TRes> {
  factory CopyWith$Query$UserStats$User$statistics$anime$scores(
    Query$UserStats$User$statistics$anime$scores instance,
    TRes Function(Query$UserStats$User$statistics$anime$scores) then,
  ) = _CopyWithImpl$Query$UserStats$User$statistics$anime$scores;

  factory CopyWith$Query$UserStats$User$statistics$anime$scores.stub(TRes res) =
      _CopyWithStubImpl$Query$UserStats$User$statistics$anime$scores;

  TRes call({
    int? score,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserStats$User$statistics$anime$scores<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime$scores<TRes> {
  _CopyWithImpl$Query$UserStats$User$statistics$anime$scores(
    this._instance,
    this._then,
  );

  final Query$UserStats$User$statistics$anime$scores _instance;

  final TRes Function(Query$UserStats$User$statistics$anime$scores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? score = _undefined,
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserStats$User$statistics$anime$scores(
        score: score == _undefined ? _instance.score : (score as int?),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserStats$User$statistics$anime$scores<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime$scores<TRes> {
  _CopyWithStubImpl$Query$UserStats$User$statistics$anime$scores(this._res);

  TRes _res;

  call({
    int? score,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserStats$User$statistics$anime$lengths {
  Query$UserStats$User$statistics$anime$lengths({
    this.length,
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.$__typename = 'UserLengthStatistic',
  });

  factory Query$UserStats$User$statistics$anime$lengths.fromJson(
      Map<String, dynamic> json) {
    final l$length = json['length'];
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$$__typename = json['__typename'];
    return Query$UserStats$User$statistics$anime$lengths(
      length: (l$length as String?),
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? length;

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$length = length;
    _resultData['length'] = l$length;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$length = length;
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$length,
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserStats$User$statistics$anime$lengths) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$length = length;
    final lOther$length = other.length;
    if (l$length != lOther$length) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserStats$User$statistics$anime$lengths
    on Query$UserStats$User$statistics$anime$lengths {
  CopyWith$Query$UserStats$User$statistics$anime$lengths<
          Query$UserStats$User$statistics$anime$lengths>
      get copyWith => CopyWith$Query$UserStats$User$statistics$anime$lengths(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserStats$User$statistics$anime$lengths<TRes> {
  factory CopyWith$Query$UserStats$User$statistics$anime$lengths(
    Query$UserStats$User$statistics$anime$lengths instance,
    TRes Function(Query$UserStats$User$statistics$anime$lengths) then,
  ) = _CopyWithImpl$Query$UserStats$User$statistics$anime$lengths;

  factory CopyWith$Query$UserStats$User$statistics$anime$lengths.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserStats$User$statistics$anime$lengths;

  TRes call({
    String? length,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserStats$User$statistics$anime$lengths<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime$lengths<TRes> {
  _CopyWithImpl$Query$UserStats$User$statistics$anime$lengths(
    this._instance,
    this._then,
  );

  final Query$UserStats$User$statistics$anime$lengths _instance;

  final TRes Function(Query$UserStats$User$statistics$anime$lengths) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? length = _undefined,
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserStats$User$statistics$anime$lengths(
        length: length == _undefined ? _instance.length : (length as String?),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserStats$User$statistics$anime$lengths<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime$lengths<TRes> {
  _CopyWithStubImpl$Query$UserStats$User$statistics$anime$lengths(this._res);

  TRes _res;

  call({
    String? length,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserStats$User$statistics$anime$releaseYears {
  Query$UserStats$User$statistics$anime$releaseYears({
    this.releaseYear,
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.$__typename = 'UserReleaseYearStatistic',
  });

  factory Query$UserStats$User$statistics$anime$releaseYears.fromJson(
      Map<String, dynamic> json) {
    final l$releaseYear = json['releaseYear'];
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$$__typename = json['__typename'];
    return Query$UserStats$User$statistics$anime$releaseYears(
      releaseYear: (l$releaseYear as int?),
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? releaseYear;

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$releaseYear = releaseYear;
    _resultData['releaseYear'] = l$releaseYear;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$releaseYear = releaseYear;
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$releaseYear,
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserStats$User$statistics$anime$releaseYears) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$releaseYear = releaseYear;
    final lOther$releaseYear = other.releaseYear;
    if (l$releaseYear != lOther$releaseYear) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserStats$User$statistics$anime$releaseYears
    on Query$UserStats$User$statistics$anime$releaseYears {
  CopyWith$Query$UserStats$User$statistics$anime$releaseYears<
          Query$UserStats$User$statistics$anime$releaseYears>
      get copyWith =>
          CopyWith$Query$UserStats$User$statistics$anime$releaseYears(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserStats$User$statistics$anime$releaseYears<
    TRes> {
  factory CopyWith$Query$UserStats$User$statistics$anime$releaseYears(
    Query$UserStats$User$statistics$anime$releaseYears instance,
    TRes Function(Query$UserStats$User$statistics$anime$releaseYears) then,
  ) = _CopyWithImpl$Query$UserStats$User$statistics$anime$releaseYears;

  factory CopyWith$Query$UserStats$User$statistics$anime$releaseYears.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserStats$User$statistics$anime$releaseYears;

  TRes call({
    int? releaseYear,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserStats$User$statistics$anime$releaseYears<TRes>
    implements
        CopyWith$Query$UserStats$User$statistics$anime$releaseYears<TRes> {
  _CopyWithImpl$Query$UserStats$User$statistics$anime$releaseYears(
    this._instance,
    this._then,
  );

  final Query$UserStats$User$statistics$anime$releaseYears _instance;

  final TRes Function(Query$UserStats$User$statistics$anime$releaseYears) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? releaseYear = _undefined,
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserStats$User$statistics$anime$releaseYears(
        releaseYear: releaseYear == _undefined
            ? _instance.releaseYear
            : (releaseYear as int?),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserStats$User$statistics$anime$releaseYears<TRes>
    implements
        CopyWith$Query$UserStats$User$statistics$anime$releaseYears<TRes> {
  _CopyWithStubImpl$Query$UserStats$User$statistics$anime$releaseYears(
      this._res);

  TRes _res;

  call({
    int? releaseYear,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserStats$User$statistics$anime$startYears {
  Query$UserStats$User$statistics$anime$startYears({
    this.startYear,
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.$__typename = 'UserStartYearStatistic',
  });

  factory Query$UserStats$User$statistics$anime$startYears.fromJson(
      Map<String, dynamic> json) {
    final l$startYear = json['startYear'];
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$$__typename = json['__typename'];
    return Query$UserStats$User$statistics$anime$startYears(
      startYear: (l$startYear as int?),
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? startYear;

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$startYear = startYear;
    _resultData['startYear'] = l$startYear;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$startYear = startYear;
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$startYear,
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserStats$User$statistics$anime$startYears) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startYear = startYear;
    final lOther$startYear = other.startYear;
    if (l$startYear != lOther$startYear) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserStats$User$statistics$anime$startYears
    on Query$UserStats$User$statistics$anime$startYears {
  CopyWith$Query$UserStats$User$statistics$anime$startYears<
          Query$UserStats$User$statistics$anime$startYears>
      get copyWith => CopyWith$Query$UserStats$User$statistics$anime$startYears(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserStats$User$statistics$anime$startYears<TRes> {
  factory CopyWith$Query$UserStats$User$statistics$anime$startYears(
    Query$UserStats$User$statistics$anime$startYears instance,
    TRes Function(Query$UserStats$User$statistics$anime$startYears) then,
  ) = _CopyWithImpl$Query$UserStats$User$statistics$anime$startYears;

  factory CopyWith$Query$UserStats$User$statistics$anime$startYears.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserStats$User$statistics$anime$startYears;

  TRes call({
    int? startYear,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserStats$User$statistics$anime$startYears<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime$startYears<TRes> {
  _CopyWithImpl$Query$UserStats$User$statistics$anime$startYears(
    this._instance,
    this._then,
  );

  final Query$UserStats$User$statistics$anime$startYears _instance;

  final TRes Function(Query$UserStats$User$statistics$anime$startYears) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startYear = _undefined,
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserStats$User$statistics$anime$startYears(
        startYear:
            startYear == _undefined ? _instance.startYear : (startYear as int?),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserStats$User$statistics$anime$startYears<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime$startYears<TRes> {
  _CopyWithStubImpl$Query$UserStats$User$statistics$anime$startYears(this._res);

  TRes _res;

  call({
    int? startYear,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserStats$User$statistics$anime$countries {
  Query$UserStats$User$statistics$anime$countries({
    this.country,
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.$__typename = 'UserCountryStatistic',
  });

  factory Query$UserStats$User$statistics$anime$countries.fromJson(
      Map<String, dynamic> json) {
    final l$country = json['country'];
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$$__typename = json['__typename'];
    return Query$UserStats$User$statistics$anime$countries(
      country: (l$country as String?),
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? country;

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$country = country;
    _resultData['country'] = l$country;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$country = country;
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$country,
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserStats$User$statistics$anime$countries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserStats$User$statistics$anime$countries
    on Query$UserStats$User$statistics$anime$countries {
  CopyWith$Query$UserStats$User$statistics$anime$countries<
          Query$UserStats$User$statistics$anime$countries>
      get copyWith => CopyWith$Query$UserStats$User$statistics$anime$countries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserStats$User$statistics$anime$countries<TRes> {
  factory CopyWith$Query$UserStats$User$statistics$anime$countries(
    Query$UserStats$User$statistics$anime$countries instance,
    TRes Function(Query$UserStats$User$statistics$anime$countries) then,
  ) = _CopyWithImpl$Query$UserStats$User$statistics$anime$countries;

  factory CopyWith$Query$UserStats$User$statistics$anime$countries.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserStats$User$statistics$anime$countries;

  TRes call({
    String? country,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserStats$User$statistics$anime$countries<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime$countries<TRes> {
  _CopyWithImpl$Query$UserStats$User$statistics$anime$countries(
    this._instance,
    this._then,
  );

  final Query$UserStats$User$statistics$anime$countries _instance;

  final TRes Function(Query$UserStats$User$statistics$anime$countries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? country = _undefined,
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserStats$User$statistics$anime$countries(
        country:
            country == _undefined ? _instance.country : (country as String?),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserStats$User$statistics$anime$countries<TRes>
    implements CopyWith$Query$UserStats$User$statistics$anime$countries<TRes> {
  _CopyWithStubImpl$Query$UserStats$User$statistics$anime$countries(this._res);

  TRes _res;

  call({
    String? country,
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? $__typename,
  }) =>
      _res;
}
