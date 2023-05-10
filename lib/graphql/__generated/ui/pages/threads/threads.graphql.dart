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

class Variables$Query$Threads {
  factory Variables$Query$Threads({
    int? page,
    bool? subscribed,
    int? categoryId,
    int? mediaCategoryId,
    String? search,
    List<Enum$ThreadSort?>? sort,
  }) =>
      Variables$Query$Threads._({
        if (page != null) r'page': page,
        if (subscribed != null) r'subscribed': subscribed,
        if (categoryId != null) r'categoryId': categoryId,
        if (mediaCategoryId != null) r'mediaCategoryId': mediaCategoryId,
        if (search != null) r'search': search,
        if (sort != null) r'sort': sort,
      });

  Variables$Query$Threads._(this._$data);

  factory Variables$Query$Threads.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('subscribed')) {
      final l$subscribed = data['subscribed'];
      result$data['subscribed'] = (l$subscribed as bool?);
    }
    if (data.containsKey('categoryId')) {
      final l$categoryId = data['categoryId'];
      result$data['categoryId'] = (l$categoryId as int?);
    }
    if (data.containsKey('mediaCategoryId')) {
      final l$mediaCategoryId = data['mediaCategoryId'];
      result$data['mediaCategoryId'] = (l$mediaCategoryId as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJson$Enum$ThreadSort((e as String)))
          .toList();
    }
    return Variables$Query$Threads._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);
  bool? get subscribed => (_$data['subscribed'] as bool?);
  int? get categoryId => (_$data['categoryId'] as int?);
  int? get mediaCategoryId => (_$data['mediaCategoryId'] as int?);
  String? get search => (_$data['search'] as String?);
  List<Enum$ThreadSort?>? get sort =>
      (_$data['sort'] as List<Enum$ThreadSort?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('subscribed')) {
      final l$subscribed = subscribed;
      result$data['subscribed'] = l$subscribed;
    }
    if (_$data.containsKey('categoryId')) {
      final l$categoryId = categoryId;
      result$data['categoryId'] = l$categoryId;
    }
    if (_$data.containsKey('mediaCategoryId')) {
      final l$mediaCategoryId = mediaCategoryId;
      result$data['mediaCategoryId'] = l$mediaCategoryId;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$ThreadSort(e))
          .toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$Threads<Variables$Query$Threads> get copyWith =>
      CopyWith$Variables$Query$Threads(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Threads) ||
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
    final l$subscribed = subscribed;
    final lOther$subscribed = other.subscribed;
    if (_$data.containsKey('subscribed') !=
        other._$data.containsKey('subscribed')) {
      return false;
    }
    if (l$subscribed != lOther$subscribed) {
      return false;
    }
    final l$categoryId = categoryId;
    final lOther$categoryId = other.categoryId;
    if (_$data.containsKey('categoryId') !=
        other._$data.containsKey('categoryId')) {
      return false;
    }
    if (l$categoryId != lOther$categoryId) {
      return false;
    }
    final l$mediaCategoryId = mediaCategoryId;
    final lOther$mediaCategoryId = other.mediaCategoryId;
    if (_$data.containsKey('mediaCategoryId') !=
        other._$data.containsKey('mediaCategoryId')) {
      return false;
    }
    if (l$mediaCategoryId != lOther$mediaCategoryId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$subscribed = subscribed;
    final l$categoryId = categoryId;
    final l$mediaCategoryId = mediaCategoryId;
    final l$search = search;
    final l$sort = sort;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('subscribed') ? l$subscribed : const {},
      _$data.containsKey('categoryId') ? l$categoryId : const {},
      _$data.containsKey('mediaCategoryId') ? l$mediaCategoryId : const {},
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Threads<TRes> {
  factory CopyWith$Variables$Query$Threads(
    Variables$Query$Threads instance,
    TRes Function(Variables$Query$Threads) then,
  ) = _CopyWithImpl$Variables$Query$Threads;

  factory CopyWith$Variables$Query$Threads.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Threads;

  TRes call({
    int? page,
    bool? subscribed,
    int? categoryId,
    int? mediaCategoryId,
    String? search,
    List<Enum$ThreadSort?>? sort,
  });
}

class _CopyWithImpl$Variables$Query$Threads<TRes>
    implements CopyWith$Variables$Query$Threads<TRes> {
  _CopyWithImpl$Variables$Query$Threads(
    this._instance,
    this._then,
  );

  final Variables$Query$Threads _instance;

  final TRes Function(Variables$Query$Threads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? subscribed = _undefined,
    Object? categoryId = _undefined,
    Object? mediaCategoryId = _undefined,
    Object? search = _undefined,
    Object? sort = _undefined,
  }) =>
      _then(Variables$Query$Threads._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (subscribed != _undefined) 'subscribed': (subscribed as bool?),
        if (categoryId != _undefined) 'categoryId': (categoryId as int?),
        if (mediaCategoryId != _undefined)
          'mediaCategoryId': (mediaCategoryId as int?),
        if (search != _undefined) 'search': (search as String?),
        if (sort != _undefined) 'sort': (sort as List<Enum$ThreadSort?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Threads<TRes>
    implements CopyWith$Variables$Query$Threads<TRes> {
  _CopyWithStubImpl$Variables$Query$Threads(this._res);

  TRes _res;

  call({
    int? page,
    bool? subscribed,
    int? categoryId,
    int? mediaCategoryId,
    String? search,
    List<Enum$ThreadSort?>? sort,
  }) =>
      _res;
}

class Query$Threads {
  Query$Threads({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Threads.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Threads(
      Page: l$Page == null
          ? null
          : Query$Threads$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Threads$Page? Page;

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
    if (!(other is Query$Threads) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Threads on Query$Threads {
  CopyWith$Query$Threads<Query$Threads> get copyWith => CopyWith$Query$Threads(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Threads<TRes> {
  factory CopyWith$Query$Threads(
    Query$Threads instance,
    TRes Function(Query$Threads) then,
  ) = _CopyWithImpl$Query$Threads;

  factory CopyWith$Query$Threads.stub(TRes res) =
      _CopyWithStubImpl$Query$Threads;

  TRes call({
    Query$Threads$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Threads$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Threads<TRes>
    implements CopyWith$Query$Threads<TRes> {
  _CopyWithImpl$Query$Threads(
    this._instance,
    this._then,
  );

  final Query$Threads _instance;

  final TRes Function(Query$Threads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Threads(
        Page:
            Page == _undefined ? _instance.Page : (Page as Query$Threads$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Threads$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Threads$Page.stub(_then(_instance))
        : CopyWith$Query$Threads$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Threads<TRes>
    implements CopyWith$Query$Threads<TRes> {
  _CopyWithStubImpl$Query$Threads(this._res);

  TRes _res;

  call({
    Query$Threads$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Threads$Page<TRes> get Page =>
      CopyWith$Query$Threads$Page.stub(_res);
}

const documentNodeQueryThreads = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Threads'),
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
        variable: VariableNode(name: NameNode(value: 'subscribed')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'categoryId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaCategoryId')),
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
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ThreadSort'),
            isNonNull: false,
          ),
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
          )
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
            name: NameNode(value: 'threads'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'subscribed'),
                value: VariableNode(name: NameNode(value: 'subscribed')),
              ),
              ArgumentNode(
                name: NameNode(value: 'categoryId'),
                value: VariableNode(name: NameNode(value: 'categoryId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'mediaCategoryId'),
                value: VariableNode(name: NameNode(value: 'mediaCategoryId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Thread'),
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
  fragmentDefinitionThread,
]);
Query$Threads _parserFn$Query$Threads(Map<String, dynamic> data) =>
    Query$Threads.fromJson(data);
typedef OnQueryComplete$Query$Threads = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Threads?,
);

class Options$Query$Threads extends graphql.QueryOptions<Query$Threads> {
  Options$Query$Threads({
    String? operationName,
    Variables$Query$Threads? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Threads? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Threads? onComplete,
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
                    data == null ? null : _parserFn$Query$Threads(data),
                  ),
          onError: onError,
          document: documentNodeQueryThreads,
          parserFn: _parserFn$Query$Threads,
        );

  final OnQueryComplete$Query$Threads? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Threads
    extends graphql.WatchQueryOptions<Query$Threads> {
  WatchOptions$Query$Threads({
    String? operationName,
    Variables$Query$Threads? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Threads? typedOptimisticResult,
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
          document: documentNodeQueryThreads,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Threads,
        );
}

class FetchMoreOptions$Query$Threads extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Threads({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Threads? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryThreads,
        );
}

extension ClientExtension$Query$Threads on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Threads>> query$Threads(
          [Options$Query$Threads? options]) async =>
      await this.query(options ?? Options$Query$Threads());
  graphql.ObservableQuery<Query$Threads> watchQuery$Threads(
          [WatchOptions$Query$Threads? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Threads());
  void writeQuery$Threads({
    required Query$Threads data,
    Variables$Query$Threads? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryThreads),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Threads? readQuery$Threads({
    Variables$Query$Threads? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryThreads),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Threads.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Threads> useQuery$Threads(
        [Options$Query$Threads? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Threads());
graphql.ObservableQuery<Query$Threads> useWatchQuery$Threads(
        [WatchOptions$Query$Threads? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Threads());

class Query$Threads$Widget extends graphql_flutter.Query<Query$Threads> {
  Query$Threads$Widget({
    widgets.Key? key,
    Options$Query$Threads? options,
    required graphql_flutter.QueryBuilder<Query$Threads> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Threads(),
          builder: builder,
        );
}

class Query$Threads$Page {
  Query$Threads$Page({
    this.pageInfo,
    this.threads,
    this.$__typename = 'Page',
  });

  factory Query$Threads$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$threads = json['threads'];
    final l$$__typename = json['__typename'];
    return Query$Threads$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      threads: (l$threads as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$Thread.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$Thread?>? threads;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$threads = threads;
    _resultData['threads'] = l$threads?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$threads = threads;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$threads == null ? null : Object.hashAll(l$threads.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Threads$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$threads = threads;
    final lOther$threads = other.threads;
    if (l$threads != null && lOther$threads != null) {
      if (l$threads.length != lOther$threads.length) {
        return false;
      }
      for (int i = 0; i < l$threads.length; i++) {
        final l$threads$entry = l$threads[i];
        final lOther$threads$entry = lOther$threads[i];
        if (l$threads$entry != lOther$threads$entry) {
          return false;
        }
      }
    } else if (l$threads != lOther$threads) {
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

extension UtilityExtension$Query$Threads$Page on Query$Threads$Page {
  CopyWith$Query$Threads$Page<Query$Threads$Page> get copyWith =>
      CopyWith$Query$Threads$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Threads$Page<TRes> {
  factory CopyWith$Query$Threads$Page(
    Query$Threads$Page instance,
    TRes Function(Query$Threads$Page) then,
  ) = _CopyWithImpl$Query$Threads$Page;

  factory CopyWith$Query$Threads$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Threads$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$Thread?>? threads,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes threads(
      Iterable<Fragment$Thread?>? Function(
              Iterable<CopyWith$Fragment$Thread<Fragment$Thread>?>?)
          _fn);
}

class _CopyWithImpl$Query$Threads$Page<TRes>
    implements CopyWith$Query$Threads$Page<TRes> {
  _CopyWithImpl$Query$Threads$Page(
    this._instance,
    this._then,
  );

  final Query$Threads$Page _instance;

  final TRes Function(Query$Threads$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? threads = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Threads$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        threads: threads == _undefined
            ? _instance.threads
            : (threads as List<Fragment$Thread?>?),
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

  TRes threads(
          Iterable<Fragment$Thread?>? Function(
                  Iterable<CopyWith$Fragment$Thread<Fragment$Thread>?>?)
              _fn) =>
      call(
          threads: _fn(_instance.threads?.map((e) => e == null
              ? null
              : CopyWith$Fragment$Thread(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Threads$Page<TRes>
    implements CopyWith$Query$Threads$Page<TRes> {
  _CopyWithStubImpl$Query$Threads$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$Thread?>? threads,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  threads(_fn) => _res;
}
