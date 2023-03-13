import 'Media.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Query$Recommendations {
  factory Variables$Query$Recommendations({
    int? page,
    int? perPage,
    List<Enum$RecommendationSort?>? sort,
    bool? onList,
  }) =>
      Variables$Query$Recommendations._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (sort != null) r'sort': sort,
        if (onList != null) r'onList': onList,
      });

  Variables$Query$Recommendations._(this._$data);

  factory Variables$Query$Recommendations.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : fromJson$Enum$RecommendationSort((e as String)))
          .toList();
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    return Variables$Query$Recommendations._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);
  int? get perPage => (_$data['perPage'] as int?);
  List<Enum$RecommendationSort?>? get sort =>
      (_$data['sort'] as List<Enum$RecommendationSort?>?);
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
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$RecommendationSort(e))
          .toList();
    }
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
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
    final l$sort = sort;
    final l$onList = onList;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('onList') ? l$onList : const {},
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
    int? page,
    int? perPage,
    List<Enum$RecommendationSort?>? sort,
    bool? onList,
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
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? sort = _undefined,
    Object? onList = _undefined,
  }) =>
      _then(Variables$Query$Recommendations._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (sort != _undefined)
          'sort': (sort as List<Enum$RecommendationSort?>?),
        if (onList != _undefined) 'onList': (onList as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Recommendations<TRes>
    implements CopyWith$Variables$Query$Recommendations<TRes> {
  _CopyWithStubImpl$Variables$Query$Recommendations(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    List<Enum$RecommendationSort?>? sort,
    bool? onList,
  }) =>
      _res;
}

class Query$Recommendations {
  Query$Recommendations({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Recommendations.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Recommendations(
      Page: l$Page == null
          ? null
          : Query$Recommendations$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Recommendations$Page? Page;

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
    if (!(other is Query$Recommendations) || runtimeType != other.runtimeType) {
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
    Query$Recommendations$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Recommendations$Page<TRes> get Page;
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
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recommendations(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$Recommendations$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Recommendations$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Recommendations$Page.stub(_then(_instance))
        : CopyWith$Query$Recommendations$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Recommendations<TRes>
    implements CopyWith$Query$Recommendations<TRes> {
  _CopyWithStubImpl$Query$Recommendations(this._res);

  TRes _res;

  call({
    Query$Recommendations$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Recommendations$Page<TRes> get Page =>
      CopyWith$Query$Recommendations$Page.stub(_res);
}

const documentNodeQueryRecommendations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Recommendations'),
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
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'RecommendationSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
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
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'currentPage'),
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
            name: NameNode(value: 'recommendations'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'rating'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'userRating'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'media'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'BasicMedia'),
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
                name: NameNode(value: 'mediaRecommendation'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'BasicMedia'),
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
  fragmentDefinitionBasicMedia,
]);
Query$Recommendations _parserFn$Query$Recommendations(
        Map<String, dynamic> data) =>
    Query$Recommendations.fromJson(data);

class Options$Query$Recommendations
    extends graphql.QueryOptions<Query$Recommendations> {
  Options$Query$Recommendations({
    String? operationName,
    Variables$Query$Recommendations? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryRecommendations,
          parserFn: _parserFn$Query$Recommendations,
        );
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
          optimisticResult: optimisticResult,
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

class Query$Recommendations$Page {
  Query$Recommendations$Page({
    this.pageInfo,
    this.recommendations,
    this.$__typename = 'Page',
  });

  factory Query$Recommendations$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$recommendations = json['recommendations'];
    final l$$__typename = json['__typename'];
    return Query$Recommendations$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$Recommendations$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      recommendations: (l$recommendations as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Recommendations$Page$recommendations.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Recommendations$Page$pageInfo? pageInfo;

  final List<Query$Recommendations$Page$recommendations?>? recommendations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$recommendations = recommendations;
    _resultData['recommendations'] =
        l$recommendations?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$recommendations = recommendations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$recommendations == null
          ? null
          : Object.hashAll(l$recommendations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recommendations$Page) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$recommendations = recommendations;
    final lOther$recommendations = other.recommendations;
    if (l$recommendations != null && lOther$recommendations != null) {
      if (l$recommendations.length != lOther$recommendations.length) {
        return false;
      }
      for (int i = 0; i < l$recommendations.length; i++) {
        final l$recommendations$entry = l$recommendations[i];
        final lOther$recommendations$entry = lOther$recommendations[i];
        if (l$recommendations$entry != lOther$recommendations$entry) {
          return false;
        }
      }
    } else if (l$recommendations != lOther$recommendations) {
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

extension UtilityExtension$Query$Recommendations$Page
    on Query$Recommendations$Page {
  CopyWith$Query$Recommendations$Page<Query$Recommendations$Page>
      get copyWith => CopyWith$Query$Recommendations$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recommendations$Page<TRes> {
  factory CopyWith$Query$Recommendations$Page(
    Query$Recommendations$Page instance,
    TRes Function(Query$Recommendations$Page) then,
  ) = _CopyWithImpl$Query$Recommendations$Page;

  factory CopyWith$Query$Recommendations$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Recommendations$Page;

  TRes call({
    Query$Recommendations$Page$pageInfo? pageInfo,
    List<Query$Recommendations$Page$recommendations?>? recommendations,
    String? $__typename,
  });
  CopyWith$Query$Recommendations$Page$pageInfo<TRes> get pageInfo;
  TRes recommendations(
      Iterable<Query$Recommendations$Page$recommendations?>? Function(
              Iterable<
                  CopyWith$Query$Recommendations$Page$recommendations<
                      Query$Recommendations$Page$recommendations>?>?)
          _fn);
}

class _CopyWithImpl$Query$Recommendations$Page<TRes>
    implements CopyWith$Query$Recommendations$Page<TRes> {
  _CopyWithImpl$Query$Recommendations$Page(
    this._instance,
    this._then,
  );

  final Query$Recommendations$Page _instance;

  final TRes Function(Query$Recommendations$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? recommendations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recommendations$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$Recommendations$Page$pageInfo?),
        recommendations: recommendations == _undefined
            ? _instance.recommendations
            : (recommendations
                as List<Query$Recommendations$Page$recommendations?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Recommendations$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$Recommendations$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$Recommendations$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes recommendations(
          Iterable<Query$Recommendations$Page$recommendations?>? Function(
                  Iterable<
                      CopyWith$Query$Recommendations$Page$recommendations<
                          Query$Recommendations$Page$recommendations>?>?)
              _fn) =>
      call(
          recommendations: _fn(_instance.recommendations?.map((e) => e == null
              ? null
              : CopyWith$Query$Recommendations$Page$recommendations(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Recommendations$Page<TRes>
    implements CopyWith$Query$Recommendations$Page<TRes> {
  _CopyWithStubImpl$Query$Recommendations$Page(this._res);

  TRes _res;

  call({
    Query$Recommendations$Page$pageInfo? pageInfo,
    List<Query$Recommendations$Page$recommendations?>? recommendations,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Recommendations$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Recommendations$Page$pageInfo.stub(_res);
  recommendations(_fn) => _res;
}

class Query$Recommendations$Page$pageInfo {
  Query$Recommendations$Page$pageInfo({
    this.hasNextPage,
    this.currentPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Recommendations$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$currentPage = json['currentPage'];
    final l$$__typename = json['__typename'];
    return Query$Recommendations$Page$pageInfo(
      hasNextPage: (l$hasNextPage as bool?),
      currentPage: (l$currentPage as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? hasNextPage;

  final int? currentPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$currentPage = currentPage;
    _resultData['currentPage'] = l$currentPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$currentPage = currentPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$currentPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recommendations$Page$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$currentPage = currentPage;
    final lOther$currentPage = other.currentPage;
    if (l$currentPage != lOther$currentPage) {
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

extension UtilityExtension$Query$Recommendations$Page$pageInfo
    on Query$Recommendations$Page$pageInfo {
  CopyWith$Query$Recommendations$Page$pageInfo<
          Query$Recommendations$Page$pageInfo>
      get copyWith => CopyWith$Query$Recommendations$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recommendations$Page$pageInfo<TRes> {
  factory CopyWith$Query$Recommendations$Page$pageInfo(
    Query$Recommendations$Page$pageInfo instance,
    TRes Function(Query$Recommendations$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$Recommendations$Page$pageInfo;

  factory CopyWith$Query$Recommendations$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Recommendations$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    int? currentPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Recommendations$Page$pageInfo<TRes>
    implements CopyWith$Query$Recommendations$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$Recommendations$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Recommendations$Page$pageInfo _instance;

  final TRes Function(Query$Recommendations$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? currentPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recommendations$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        currentPage: currentPage == _undefined
            ? _instance.currentPage
            : (currentPage as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Recommendations$Page$pageInfo<TRes>
    implements CopyWith$Query$Recommendations$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Recommendations$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    int? currentPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$Recommendations$Page$recommendations {
  Query$Recommendations$Page$recommendations({
    this.rating,
    this.userRating,
    this.media,
    this.mediaRecommendation,
    this.$__typename = 'Recommendation',
  });

  factory Query$Recommendations$Page$recommendations.fromJson(
      Map<String, dynamic> json) {
    final l$rating = json['rating'];
    final l$userRating = json['userRating'];
    final l$media = json['media'];
    final l$mediaRecommendation = json['mediaRecommendation'];
    final l$$__typename = json['__typename'];
    return Query$Recommendations$Page$recommendations(
      rating: (l$rating as int?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$RecommendationRating((l$userRating as String)),
      media: l$media == null
          ? null
          : Fragment$BasicMedia.fromJson((l$media as Map<String, dynamic>)),
      mediaRecommendation: l$mediaRecommendation == null
          ? null
          : Fragment$BasicMedia.fromJson(
              (l$mediaRecommendation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? rating;

  final Enum$RecommendationRating? userRating;

  final Fragment$BasicMedia? media;

  final Fragment$BasicMedia? mediaRecommendation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$userRating = userRating;
    _resultData['userRating'] = l$userRating == null
        ? null
        : toJson$Enum$RecommendationRating(l$userRating);
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$mediaRecommendation = mediaRecommendation;
    _resultData['mediaRecommendation'] = l$mediaRecommendation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rating = rating;
    final l$userRating = userRating;
    final l$media = media;
    final l$mediaRecommendation = mediaRecommendation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rating,
      l$userRating,
      l$media,
      l$mediaRecommendation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Recommendations$Page$recommendations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Query$Recommendations$Page$recommendations
    on Query$Recommendations$Page$recommendations {
  CopyWith$Query$Recommendations$Page$recommendations<
          Query$Recommendations$Page$recommendations>
      get copyWith => CopyWith$Query$Recommendations$Page$recommendations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Recommendations$Page$recommendations<TRes> {
  factory CopyWith$Query$Recommendations$Page$recommendations(
    Query$Recommendations$Page$recommendations instance,
    TRes Function(Query$Recommendations$Page$recommendations) then,
  ) = _CopyWithImpl$Query$Recommendations$Page$recommendations;

  factory CopyWith$Query$Recommendations$Page$recommendations.stub(TRes res) =
      _CopyWithStubImpl$Query$Recommendations$Page$recommendations;

  TRes call({
    int? rating,
    Enum$RecommendationRating? userRating,
    Fragment$BasicMedia? media,
    Fragment$BasicMedia? mediaRecommendation,
    String? $__typename,
  });
  CopyWith$Fragment$BasicMedia<TRes> get media;
  CopyWith$Fragment$BasicMedia<TRes> get mediaRecommendation;
}

class _CopyWithImpl$Query$Recommendations$Page$recommendations<TRes>
    implements CopyWith$Query$Recommendations$Page$recommendations<TRes> {
  _CopyWithImpl$Query$Recommendations$Page$recommendations(
    this._instance,
    this._then,
  );

  final Query$Recommendations$Page$recommendations _instance;

  final TRes Function(Query$Recommendations$Page$recommendations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rating = _undefined,
    Object? userRating = _undefined,
    Object? media = _undefined,
    Object? mediaRecommendation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Recommendations$Page$recommendations(
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$RecommendationRating?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$BasicMedia?),
        mediaRecommendation: mediaRecommendation == _undefined
            ? _instance.mediaRecommendation
            : (mediaRecommendation as Fragment$BasicMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$BasicMedia<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$BasicMedia.stub(_then(_instance))
        : CopyWith$Fragment$BasicMedia(local$media, (e) => call(media: e));
  }

  CopyWith$Fragment$BasicMedia<TRes> get mediaRecommendation {
    final local$mediaRecommendation = _instance.mediaRecommendation;
    return local$mediaRecommendation == null
        ? CopyWith$Fragment$BasicMedia.stub(_then(_instance))
        : CopyWith$Fragment$BasicMedia(
            local$mediaRecommendation, (e) => call(mediaRecommendation: e));
  }
}

class _CopyWithStubImpl$Query$Recommendations$Page$recommendations<TRes>
    implements CopyWith$Query$Recommendations$Page$recommendations<TRes> {
  _CopyWithStubImpl$Query$Recommendations$Page$recommendations(this._res);

  TRes _res;

  call({
    int? rating,
    Enum$RecommendationRating? userRating,
    Fragment$BasicMedia? media,
    Fragment$BasicMedia? mediaRecommendation,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$BasicMedia<TRes> get media =>
      CopyWith$Fragment$BasicMedia.stub(_res);
  CopyWith$Fragment$BasicMedia<TRes> get mediaRecommendation =>
      CopyWith$Fragment$BasicMedia.stub(_res);
}

class Variables$Mutation$SaveRecommendation {
  factory Variables$Mutation$SaveRecommendation({
    int? mediaId,
    int? mediaRecommendationId,
    Enum$RecommendationRating? rating,
  }) =>
      Variables$Mutation$SaveRecommendation._({
        if (mediaId != null) r'mediaId': mediaId,
        if (mediaRecommendationId != null)
          r'mediaRecommendationId': mediaRecommendationId,
        if (rating != null) r'rating': rating,
      });

  Variables$Mutation$SaveRecommendation._(this._$data);

  factory Variables$Mutation$SaveRecommendation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('mediaRecommendationId')) {
      final l$mediaRecommendationId = data['mediaRecommendationId'];
      result$data['mediaRecommendationId'] = (l$mediaRecommendationId as int?);
    }
    if (data.containsKey('rating')) {
      final l$rating = data['rating'];
      result$data['rating'] = l$rating == null
          ? null
          : fromJson$Enum$RecommendationRating((l$rating as String));
    }
    return Variables$Mutation$SaveRecommendation._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaId => (_$data['mediaId'] as int?);
  int? get mediaRecommendationId => (_$data['mediaRecommendationId'] as int?);
  Enum$RecommendationRating? get rating =>
      (_$data['rating'] as Enum$RecommendationRating?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('mediaRecommendationId')) {
      final l$mediaRecommendationId = mediaRecommendationId;
      result$data['mediaRecommendationId'] = l$mediaRecommendationId;
    }
    if (_$data.containsKey('rating')) {
      final l$rating = rating;
      result$data['rating'] =
          l$rating == null ? null : toJson$Enum$RecommendationRating(l$rating);
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveRecommendation<
          Variables$Mutation$SaveRecommendation>
      get copyWith => CopyWith$Variables$Mutation$SaveRecommendation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SaveRecommendation) ||
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
    final l$mediaRecommendationId = mediaRecommendationId;
    final lOther$mediaRecommendationId = other.mediaRecommendationId;
    if (_$data.containsKey('mediaRecommendationId') !=
        other._$data.containsKey('mediaRecommendationId')) {
      return false;
    }
    if (l$mediaRecommendationId != lOther$mediaRecommendationId) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (_$data.containsKey('rating') != other._$data.containsKey('rating')) {
      return false;
    }
    if (l$rating != lOther$rating) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$mediaRecommendationId = mediaRecommendationId;
    final l$rating = rating;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('mediaRecommendationId')
          ? l$mediaRecommendationId
          : const {},
      _$data.containsKey('rating') ? l$rating : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveRecommendation<TRes> {
  factory CopyWith$Variables$Mutation$SaveRecommendation(
    Variables$Mutation$SaveRecommendation instance,
    TRes Function(Variables$Mutation$SaveRecommendation) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveRecommendation;

  factory CopyWith$Variables$Mutation$SaveRecommendation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveRecommendation;

  TRes call({
    int? mediaId,
    int? mediaRecommendationId,
    Enum$RecommendationRating? rating,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveRecommendation<TRes>
    implements CopyWith$Variables$Mutation$SaveRecommendation<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveRecommendation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveRecommendation _instance;

  final TRes Function(Variables$Mutation$SaveRecommendation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? mediaRecommendationId = _undefined,
    Object? rating = _undefined,
  }) =>
      _then(Variables$Mutation$SaveRecommendation._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (mediaRecommendationId != _undefined)
          'mediaRecommendationId': (mediaRecommendationId as int?),
        if (rating != _undefined)
          'rating': (rating as Enum$RecommendationRating?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveRecommendation<TRes>
    implements CopyWith$Variables$Mutation$SaveRecommendation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveRecommendation(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? mediaRecommendationId,
    Enum$RecommendationRating? rating,
  }) =>
      _res;
}

class Mutation$SaveRecommendation {
  Mutation$SaveRecommendation({
    this.SaveRecommendation,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveRecommendation.fromJson(Map<String, dynamic> json) {
    final l$SaveRecommendation = json['SaveRecommendation'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveRecommendation(
      SaveRecommendation: l$SaveRecommendation == null
          ? null
          : Mutation$SaveRecommendation$SaveRecommendation.fromJson(
              (l$SaveRecommendation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveRecommendation$SaveRecommendation? SaveRecommendation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$SaveRecommendation = SaveRecommendation;
    _resultData['SaveRecommendation'] = l$SaveRecommendation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$SaveRecommendation = SaveRecommendation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$SaveRecommendation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SaveRecommendation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$SaveRecommendation = SaveRecommendation;
    final lOther$SaveRecommendation = other.SaveRecommendation;
    if (l$SaveRecommendation != lOther$SaveRecommendation) {
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

extension UtilityExtension$Mutation$SaveRecommendation
    on Mutation$SaveRecommendation {
  CopyWith$Mutation$SaveRecommendation<Mutation$SaveRecommendation>
      get copyWith => CopyWith$Mutation$SaveRecommendation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveRecommendation<TRes> {
  factory CopyWith$Mutation$SaveRecommendation(
    Mutation$SaveRecommendation instance,
    TRes Function(Mutation$SaveRecommendation) then,
  ) = _CopyWithImpl$Mutation$SaveRecommendation;

  factory CopyWith$Mutation$SaveRecommendation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveRecommendation;

  TRes call({
    Mutation$SaveRecommendation$SaveRecommendation? SaveRecommendation,
    String? $__typename,
  });
  CopyWith$Mutation$SaveRecommendation$SaveRecommendation<TRes>
      get SaveRecommendation;
}

class _CopyWithImpl$Mutation$SaveRecommendation<TRes>
    implements CopyWith$Mutation$SaveRecommendation<TRes> {
  _CopyWithImpl$Mutation$SaveRecommendation(
    this._instance,
    this._then,
  );

  final Mutation$SaveRecommendation _instance;

  final TRes Function(Mutation$SaveRecommendation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? SaveRecommendation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveRecommendation(
        SaveRecommendation: SaveRecommendation == _undefined
            ? _instance.SaveRecommendation
            : (SaveRecommendation
                as Mutation$SaveRecommendation$SaveRecommendation?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$SaveRecommendation$SaveRecommendation<TRes>
      get SaveRecommendation {
    final local$SaveRecommendation = _instance.SaveRecommendation;
    return local$SaveRecommendation == null
        ? CopyWith$Mutation$SaveRecommendation$SaveRecommendation.stub(
            _then(_instance))
        : CopyWith$Mutation$SaveRecommendation$SaveRecommendation(
            local$SaveRecommendation, (e) => call(SaveRecommendation: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveRecommendation<TRes>
    implements CopyWith$Mutation$SaveRecommendation<TRes> {
  _CopyWithStubImpl$Mutation$SaveRecommendation(this._res);

  TRes _res;

  call({
    Mutation$SaveRecommendation$SaveRecommendation? SaveRecommendation,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$SaveRecommendation$SaveRecommendation<TRes>
      get SaveRecommendation =>
          CopyWith$Mutation$SaveRecommendation$SaveRecommendation.stub(_res);
}

const documentNodeMutationSaveRecommendation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveRecommendation'),
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
        variable: VariableNode(name: NameNode(value: 'mediaRecommendationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'rating')),
        type: NamedTypeNode(
          name: NameNode(value: 'RecommendationRating'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'SaveRecommendation'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'mediaId'),
            value: VariableNode(name: NameNode(value: 'mediaId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mediaRecommendationId'),
            value: VariableNode(name: NameNode(value: 'mediaRecommendationId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'rating'),
            value: VariableNode(name: NameNode(value: 'rating')),
          ),
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
Mutation$SaveRecommendation _parserFn$Mutation$SaveRecommendation(
        Map<String, dynamic> data) =>
    Mutation$SaveRecommendation.fromJson(data);
typedef OnMutationCompleted$Mutation$SaveRecommendation = FutureOr<void>
    Function(
  dynamic,
  Mutation$SaveRecommendation?,
);

class Options$Mutation$SaveRecommendation
    extends graphql.MutationOptions<Mutation$SaveRecommendation> {
  Options$Mutation$SaveRecommendation({
    String? operationName,
    Variables$Mutation$SaveRecommendation? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveRecommendation? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveRecommendation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveRecommendation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveRecommendation,
          parserFn: _parserFn$Mutation$SaveRecommendation,
        );

  final OnMutationCompleted$Mutation$SaveRecommendation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SaveRecommendation
    extends graphql.WatchQueryOptions<Mutation$SaveRecommendation> {
  WatchOptions$Mutation$SaveRecommendation({
    String? operationName,
    Variables$Mutation$SaveRecommendation? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
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
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationSaveRecommendation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SaveRecommendation,
        );
}

extension ClientExtension$Mutation$SaveRecommendation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SaveRecommendation>>
      mutate$SaveRecommendation(
              [Options$Mutation$SaveRecommendation? options]) async =>
          await this.mutate(options ?? Options$Mutation$SaveRecommendation());
  graphql.ObservableQuery<
      Mutation$SaveRecommendation> watchMutation$SaveRecommendation(
          [WatchOptions$Mutation$SaveRecommendation? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$SaveRecommendation());
}

class Mutation$SaveRecommendation$HookResult {
  Mutation$SaveRecommendation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SaveRecommendation runMutation;

  final graphql.QueryResult<Mutation$SaveRecommendation> result;
}

Mutation$SaveRecommendation$HookResult useMutation$SaveRecommendation(
    [WidgetOptions$Mutation$SaveRecommendation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SaveRecommendation());
  return Mutation$SaveRecommendation$HookResult(
    ({variables, optimisticResult}) => result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SaveRecommendation>
    useWatchMutation$SaveRecommendation(
            [WatchOptions$Mutation$SaveRecommendation? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$SaveRecommendation());

class WidgetOptions$Mutation$SaveRecommendation
    extends graphql.MutationOptions<Mutation$SaveRecommendation> {
  WidgetOptions$Mutation$SaveRecommendation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveRecommendation? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveRecommendation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveRecommendation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveRecommendation,
          parserFn: _parserFn$Mutation$SaveRecommendation,
        );

  final OnMutationCompleted$Mutation$SaveRecommendation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SaveRecommendation
    = graphql.MultiSourceResult<Mutation$SaveRecommendation> Function({
  Variables$Mutation$SaveRecommendation? variables,
  Object? optimisticResult,
});
typedef Builder$Mutation$SaveRecommendation = widgets.Widget Function(
  RunMutation$Mutation$SaveRecommendation,
  graphql.QueryResult<Mutation$SaveRecommendation>?,
);

class Mutation$SaveRecommendation$Widget
    extends graphql_flutter.Mutation<Mutation$SaveRecommendation> {
  Mutation$SaveRecommendation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SaveRecommendation? options,
    required Builder$Mutation$SaveRecommendation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SaveRecommendation(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$SaveRecommendation$SaveRecommendation {
  Mutation$SaveRecommendation$SaveRecommendation({
    required this.id,
    this.$__typename = 'Recommendation',
  });

  factory Mutation$SaveRecommendation$SaveRecommendation.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveRecommendation$SaveRecommendation(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SaveRecommendation$SaveRecommendation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$SaveRecommendation$SaveRecommendation
    on Mutation$SaveRecommendation$SaveRecommendation {
  CopyWith$Mutation$SaveRecommendation$SaveRecommendation<
          Mutation$SaveRecommendation$SaveRecommendation>
      get copyWith => CopyWith$Mutation$SaveRecommendation$SaveRecommendation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveRecommendation$SaveRecommendation<TRes> {
  factory CopyWith$Mutation$SaveRecommendation$SaveRecommendation(
    Mutation$SaveRecommendation$SaveRecommendation instance,
    TRes Function(Mutation$SaveRecommendation$SaveRecommendation) then,
  ) = _CopyWithImpl$Mutation$SaveRecommendation$SaveRecommendation;

  factory CopyWith$Mutation$SaveRecommendation$SaveRecommendation.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SaveRecommendation$SaveRecommendation;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveRecommendation$SaveRecommendation<TRes>
    implements CopyWith$Mutation$SaveRecommendation$SaveRecommendation<TRes> {
  _CopyWithImpl$Mutation$SaveRecommendation$SaveRecommendation(
    this._instance,
    this._then,
  );

  final Mutation$SaveRecommendation$SaveRecommendation _instance;

  final TRes Function(Mutation$SaveRecommendation$SaveRecommendation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveRecommendation$SaveRecommendation(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SaveRecommendation$SaveRecommendation<TRes>
    implements CopyWith$Mutation$SaveRecommendation$SaveRecommendation<TRes> {
  _CopyWithStubImpl$Mutation$SaveRecommendation$SaveRecommendation(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}
