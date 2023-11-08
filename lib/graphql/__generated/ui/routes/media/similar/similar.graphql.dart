// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../../graphql/fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Recommendations {
  factory Variables$Query$Recommendations({
    int? mediaId,
    int? page,
  }) =>
      Variables$Query$Recommendations._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
      });

  Variables$Query$Recommendations._(this._$data);

  factory Variables$Query$Recommendations.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Recommendations._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaId => (_$data['mediaId'] as int?);

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Recommendations<Variables$Query$Recommendations>
      get copyWith => CopyWith$Variables$Query$Recommendations(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Recommendations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Recommendations<TRes> {
  factory CopyWith$Variables$Query$Recommendations(
    Variables$Query$Recommendations instance,
    TRes Function(Variables$Query$Recommendations) then,
  ) = _CopyWithImpl$Variables$Query$Recommendations;

  factory CopyWith$Variables$Query$Recommendations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Recommendations;

  TRes call({
    int? mediaId,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$Recommendations<TRes>
    implements CopyWith$Variables$Query$Recommendations<TRes> {
  _CopyWithImpl$Variables$Query$Recommendations(
    this._instance,
    this._then,
  );

  final Variables$Query$Recommendations _instance;

  final TRes Function(Variables$Query$Recommendations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Recommendations._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Recommendations<TRes>
    implements CopyWith$Variables$Query$Recommendations<TRes> {
  _CopyWithStubImpl$Variables$Query$Recommendations(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? page,
  }) =>
      _res;
}

class Query$Recommendations {
  Query$Recommendations({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$Recommendations.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$Recommendations(
      Media: l$Media == null
          ? null
          : Query$Recommendations$Media.fromJson(
              (l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Recommendations$Media? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recommendations) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtension$Query$Recommendations on Query$Recommendations {
  CopyWith$Query$Recommendations<Query$Recommendations> get copyWith =>
      CopyWith$Query$Recommendations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Recommendations<TRes> {
  factory CopyWith$Query$Recommendations(
    Query$Recommendations instance,
    TRes Function(Query$Recommendations) then,
  ) = _CopyWithImpl$Query$Recommendations;

  factory CopyWith$Query$Recommendations.stub(TRes res) =
      _CopyWithStubImpl$Query$Recommendations;

  TRes call({
    Query$Recommendations$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$Recommendations$Media<TRes> get Media;
}

class _CopyWithImpl$Query$Recommendations<TRes>
    implements CopyWith$Query$Recommendations<TRes> {
  _CopyWithImpl$Query$Recommendations(
    this._instance,
    this._then,
  );

  final Query$Recommendations _instance;

  final TRes Function(Query$Recommendations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recommendations(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$Recommendations$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Recommendations$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$Recommendations$Media.stub(_then(_instance))
        : CopyWith$Query$Recommendations$Media(
            local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$Recommendations<TRes>
    implements CopyWith$Query$Recommendations<TRes> {
  _CopyWithStubImpl$Query$Recommendations(this._res);

  TRes _res;

  call({
    Query$Recommendations$Media? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Recommendations$Media<TRes> get Media =>
      CopyWith$Query$Recommendations$Media.stub(_res);
}

const documentNodeQueryRecommendations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Recommendations'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
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
        name: NameNode(value: 'Media'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'mediaId')),
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
            name: NameNode(value: 'recommendations'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'RATING_DESC')),
                  EnumValueNode(name: NameNode(value: 'ID')),
                ]),
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
                name: NameNode(value: 'nodes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'mediaRecommendation'),
                    alias: null,
                    arguments: [],
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
  fragmentDefinitionMediaFragment,
]);
Query$Recommendations _parserFn$Query$Recommendations(
        Map<String, dynamic> data) =>
    Query$Recommendations.fromJson(data);
typedef OnQueryComplete$Query$Recommendations = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Recommendations?,
);

class Options$Query$Recommendations
    extends graphql.QueryOptions<Query$Recommendations> {
  Options$Query$Recommendations({
    String? operationName,
    Variables$Query$Recommendations? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Recommendations? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Recommendations? onComplete,
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
                    data == null ? null : _parserFn$Query$Recommendations(data),
                  ),
          onError: onError,
          document: documentNodeQueryRecommendations,
          parserFn: _parserFn$Query$Recommendations,
        );

  final OnQueryComplete$Query$Recommendations? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Recommendations
    extends graphql.WatchQueryOptions<Query$Recommendations> {
  WatchOptions$Query$Recommendations({
    String? operationName,
    Variables$Query$Recommendations? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Recommendations? typedOptimisticResult,
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
          document: documentNodeQueryRecommendations,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Recommendations,
        );
}

class FetchMoreOptions$Query$Recommendations extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Recommendations({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Recommendations? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryRecommendations,
        );
}

extension ClientExtension$Query$Recommendations on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Recommendations>> query$Recommendations(
          [Options$Query$Recommendations? options]) async =>
      await this.query(options ?? Options$Query$Recommendations());
  graphql.ObservableQuery<Query$Recommendations> watchQuery$Recommendations(
          [WatchOptions$Query$Recommendations? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Recommendations());
  void writeQuery$Recommendations({
    required Query$Recommendations data,
    Variables$Query$Recommendations? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryRecommendations),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Recommendations? readQuery$Recommendations({
    Variables$Query$Recommendations? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryRecommendations),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Recommendations.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Recommendations> useQuery$Recommendations(
        [Options$Query$Recommendations? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Recommendations());
graphql.ObservableQuery<Query$Recommendations> useWatchQuery$Recommendations(
        [WatchOptions$Query$Recommendations? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$Recommendations());

class Query$Recommendations$Widget
    extends graphql_flutter.Query<Query$Recommendations> {
  Query$Recommendations$Widget({
    widgets.Key? key,
    Options$Query$Recommendations? options,
    required graphql_flutter.QueryBuilder<Query$Recommendations> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Recommendations(),
          builder: builder,
        );
}

class Query$Recommendations$Media {
  Query$Recommendations$Media({
    required this.id,
    this.recommendations,
    this.$__typename = 'Media',
  });

  factory Query$Recommendations$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$recommendations = json['recommendations'];
    final l$$__typename = json['__typename'];
    return Query$Recommendations$Media(
      id: (l$id as int),
      recommendations: l$recommendations == null
          ? null
          : Query$Recommendations$Media$recommendations.fromJson(
              (l$recommendations as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Recommendations$Media$recommendations? recommendations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$recommendations = recommendations;
    _resultData['recommendations'] = l$recommendations?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$recommendations = recommendations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$recommendations,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recommendations$Media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$recommendations = recommendations;
    final lOther$recommendations = other.recommendations;
    if (l$recommendations != lOther$recommendations) {
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

extension UtilityExtension$Query$Recommendations$Media
    on Query$Recommendations$Media {
  CopyWith$Query$Recommendations$Media<Query$Recommendations$Media>
      get copyWith => CopyWith$Query$Recommendations$Media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recommendations$Media<TRes> {
  factory CopyWith$Query$Recommendations$Media(
    Query$Recommendations$Media instance,
    TRes Function(Query$Recommendations$Media) then,
  ) = _CopyWithImpl$Query$Recommendations$Media;

  factory CopyWith$Query$Recommendations$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$Recommendations$Media;

  TRes call({
    int? id,
    Query$Recommendations$Media$recommendations? recommendations,
    String? $__typename,
  });
  CopyWith$Query$Recommendations$Media$recommendations<TRes>
      get recommendations;
}

class _CopyWithImpl$Query$Recommendations$Media<TRes>
    implements CopyWith$Query$Recommendations$Media<TRes> {
  _CopyWithImpl$Query$Recommendations$Media(
    this._instance,
    this._then,
  );

  final Query$Recommendations$Media _instance;

  final TRes Function(Query$Recommendations$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? recommendations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recommendations$Media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        recommendations: recommendations == _undefined
            ? _instance.recommendations
            : (recommendations as Query$Recommendations$Media$recommendations?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Recommendations$Media$recommendations<TRes>
      get recommendations {
    final local$recommendations = _instance.recommendations;
    return local$recommendations == null
        ? CopyWith$Query$Recommendations$Media$recommendations.stub(
            _then(_instance))
        : CopyWith$Query$Recommendations$Media$recommendations(
            local$recommendations, (e) => call(recommendations: e));
  }
}

class _CopyWithStubImpl$Query$Recommendations$Media<TRes>
    implements CopyWith$Query$Recommendations$Media<TRes> {
  _CopyWithStubImpl$Query$Recommendations$Media(this._res);

  TRes _res;

  call({
    int? id,
    Query$Recommendations$Media$recommendations? recommendations,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Recommendations$Media$recommendations<TRes>
      get recommendations =>
          CopyWith$Query$Recommendations$Media$recommendations.stub(_res);
}

class Query$Recommendations$Media$recommendations {
  Query$Recommendations$Media$recommendations({
    this.pageInfo,
    this.nodes,
    this.$__typename = 'RecommendationConnection',
  });

  factory Query$Recommendations$Media$recommendations.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$Recommendations$Media$recommendations(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Recommendations$Media$recommendations$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Recommendations$Media$recommendations$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recommendations$Media$recommendations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$Recommendations$Media$recommendations
    on Query$Recommendations$Media$recommendations {
  CopyWith$Query$Recommendations$Media$recommendations<
          Query$Recommendations$Media$recommendations>
      get copyWith => CopyWith$Query$Recommendations$Media$recommendations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recommendations$Media$recommendations<TRes> {
  factory CopyWith$Query$Recommendations$Media$recommendations(
    Query$Recommendations$Media$recommendations instance,
    TRes Function(Query$Recommendations$Media$recommendations) then,
  ) = _CopyWithImpl$Query$Recommendations$Media$recommendations;

  factory CopyWith$Query$Recommendations$Media$recommendations.stub(TRes res) =
      _CopyWithStubImpl$Query$Recommendations$Media$recommendations;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Recommendations$Media$recommendations$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$Recommendations$Media$recommendations$nodes?>? Function(
              Iterable<
                  CopyWith$Query$Recommendations$Media$recommendations$nodes<
                      Query$Recommendations$Media$recommendations$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$Recommendations$Media$recommendations<TRes>
    implements CopyWith$Query$Recommendations$Media$recommendations<TRes> {
  _CopyWithImpl$Query$Recommendations$Media$recommendations(
    this._instance,
    this._then,
  );

  final Query$Recommendations$Media$recommendations _instance;

  final TRes Function(Query$Recommendations$Media$recommendations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recommendations$Media$recommendations(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes
                as List<Query$Recommendations$Media$recommendations$nodes?>?),
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

  TRes nodes(
          Iterable<Query$Recommendations$Media$recommendations$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$Recommendations$Media$recommendations$nodes<
                          Query$Recommendations$Media$recommendations$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$Recommendations$Media$recommendations$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Recommendations$Media$recommendations<TRes>
    implements CopyWith$Query$Recommendations$Media$recommendations<TRes> {
  _CopyWithStubImpl$Query$Recommendations$Media$recommendations(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Recommendations$Media$recommendations$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$Recommendations$Media$recommendations$nodes {
  Query$Recommendations$Media$recommendations$nodes({
    this.mediaRecommendation,
    this.$__typename = 'Recommendation',
  });

  factory Query$Recommendations$Media$recommendations$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$mediaRecommendation = json['mediaRecommendation'];
    final l$$__typename = json['__typename'];
    return Query$Recommendations$Media$recommendations$nodes(
      mediaRecommendation: l$mediaRecommendation == null
          ? null
          : Fragment$MediaFragment.fromJson(
              (l$mediaRecommendation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MediaFragment? mediaRecommendation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaRecommendation = mediaRecommendation;
    _resultData['mediaRecommendation'] = l$mediaRecommendation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaRecommendation = mediaRecommendation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mediaRecommendation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recommendations$Media$recommendations$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaRecommendation = mediaRecommendation;
    final lOther$mediaRecommendation = other.mediaRecommendation;
    if (l$mediaRecommendation != lOther$mediaRecommendation) {
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

extension UtilityExtension$Query$Recommendations$Media$recommendations$nodes
    on Query$Recommendations$Media$recommendations$nodes {
  CopyWith$Query$Recommendations$Media$recommendations$nodes<
          Query$Recommendations$Media$recommendations$nodes>
      get copyWith =>
          CopyWith$Query$Recommendations$Media$recommendations$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recommendations$Media$recommendations$nodes<
    TRes> {
  factory CopyWith$Query$Recommendations$Media$recommendations$nodes(
    Query$Recommendations$Media$recommendations$nodes instance,
    TRes Function(Query$Recommendations$Media$recommendations$nodes) then,
  ) = _CopyWithImpl$Query$Recommendations$Media$recommendations$nodes;

  factory CopyWith$Query$Recommendations$Media$recommendations$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Recommendations$Media$recommendations$nodes;

  TRes call({
    Fragment$MediaFragment? mediaRecommendation,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get mediaRecommendation;
}

class _CopyWithImpl$Query$Recommendations$Media$recommendations$nodes<TRes>
    implements
        CopyWith$Query$Recommendations$Media$recommendations$nodes<TRes> {
  _CopyWithImpl$Query$Recommendations$Media$recommendations$nodes(
    this._instance,
    this._then,
  );

  final Query$Recommendations$Media$recommendations$nodes _instance;

  final TRes Function(Query$Recommendations$Media$recommendations$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaRecommendation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recommendations$Media$recommendations$nodes(
        mediaRecommendation: mediaRecommendation == _undefined
            ? _instance.mediaRecommendation
            : (mediaRecommendation as Fragment$MediaFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaFragment<TRes> get mediaRecommendation {
    final local$mediaRecommendation = _instance.mediaRecommendation;
    return local$mediaRecommendation == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(
            local$mediaRecommendation, (e) => call(mediaRecommendation: e));
  }
}

class _CopyWithStubImpl$Query$Recommendations$Media$recommendations$nodes<TRes>
    implements
        CopyWith$Query$Recommendations$Media$recommendations$nodes<TRes> {
  _CopyWithStubImpl$Query$Recommendations$Media$recommendations$nodes(
      this._res);

  TRes _res;

  call({
    Fragment$MediaFragment? mediaRecommendation,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFragment<TRes> get mediaRecommendation =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}
