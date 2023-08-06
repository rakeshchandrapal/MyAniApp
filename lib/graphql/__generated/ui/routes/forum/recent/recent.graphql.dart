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

class Variables$Query$RecentThreads {
  factory Variables$Query$RecentThreads({int? page}) =>
      Variables$Query$RecentThreads._({
        if (page != null) r'page': page,
      });

  Variables$Query$RecentThreads._(this._$data);

  factory Variables$Query$RecentThreads.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$RecentThreads._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$RecentThreads<Variables$Query$RecentThreads>
      get copyWith => CopyWith$Variables$Query$RecentThreads(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$RecentThreads) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    return Object.hashAll([_$data.containsKey('page') ? l$page : const {}]);
  }
}

abstract class CopyWith$Variables$Query$RecentThreads<TRes> {
  factory CopyWith$Variables$Query$RecentThreads(
    Variables$Query$RecentThreads instance,
    TRes Function(Variables$Query$RecentThreads) then,
  ) = _CopyWithImpl$Variables$Query$RecentThreads;

  factory CopyWith$Variables$Query$RecentThreads.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$RecentThreads;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$RecentThreads<TRes>
    implements CopyWith$Variables$Query$RecentThreads<TRes> {
  _CopyWithImpl$Variables$Query$RecentThreads(
    this._instance,
    this._then,
  );

  final Variables$Query$RecentThreads _instance;

  final TRes Function(Variables$Query$RecentThreads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$RecentThreads._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$RecentThreads<TRes>
    implements CopyWith$Variables$Query$RecentThreads<TRes> {
  _CopyWithStubImpl$Variables$Query$RecentThreads(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$RecentThreads {
  Query$RecentThreads({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$RecentThreads.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$RecentThreads(
      Page: l$Page == null
          ? null
          : Query$RecentThreads$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$RecentThreads$Page? Page;

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
    if (!(other is Query$RecentThreads) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$RecentThreads on Query$RecentThreads {
  CopyWith$Query$RecentThreads<Query$RecentThreads> get copyWith =>
      CopyWith$Query$RecentThreads(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$RecentThreads<TRes> {
  factory CopyWith$Query$RecentThreads(
    Query$RecentThreads instance,
    TRes Function(Query$RecentThreads) then,
  ) = _CopyWithImpl$Query$RecentThreads;

  factory CopyWith$Query$RecentThreads.stub(TRes res) =
      _CopyWithStubImpl$Query$RecentThreads;

  TRes call({
    Query$RecentThreads$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$RecentThreads$Page<TRes> get Page;
}

class _CopyWithImpl$Query$RecentThreads<TRes>
    implements CopyWith$Query$RecentThreads<TRes> {
  _CopyWithImpl$Query$RecentThreads(
    this._instance,
    this._then,
  );

  final Query$RecentThreads _instance;

  final TRes Function(Query$RecentThreads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RecentThreads(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$RecentThreads$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$RecentThreads$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$RecentThreads$Page.stub(_then(_instance))
        : CopyWith$Query$RecentThreads$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$RecentThreads<TRes>
    implements CopyWith$Query$RecentThreads<TRes> {
  _CopyWithStubImpl$Query$RecentThreads(this._res);

  TRes _res;

  call({
    Query$RecentThreads$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$RecentThreads$Page<TRes> get Page =>
      CopyWith$Query$RecentThreads$Page.stub(_res);
}

const documentNodeQueryRecentThreads = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'RecentThreads'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
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
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'REPLIED_AT_DESC')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ThreadFragment'),
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
  fragmentDefinitionThreadFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionUserFragment,
]);
Query$RecentThreads _parserFn$Query$RecentThreads(Map<String, dynamic> data) =>
    Query$RecentThreads.fromJson(data);
typedef OnQueryComplete$Query$RecentThreads = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$RecentThreads?,
);

class Options$Query$RecentThreads
    extends graphql.QueryOptions<Query$RecentThreads> {
  Options$Query$RecentThreads({
    String? operationName,
    Variables$Query$RecentThreads? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RecentThreads? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$RecentThreads? onComplete,
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
                    data == null ? null : _parserFn$Query$RecentThreads(data),
                  ),
          onError: onError,
          document: documentNodeQueryRecentThreads,
          parserFn: _parserFn$Query$RecentThreads,
        );

  final OnQueryComplete$Query$RecentThreads? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$RecentThreads
    extends graphql.WatchQueryOptions<Query$RecentThreads> {
  WatchOptions$Query$RecentThreads({
    String? operationName,
    Variables$Query$RecentThreads? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RecentThreads? typedOptimisticResult,
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
          document: documentNodeQueryRecentThreads,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$RecentThreads,
        );
}

class FetchMoreOptions$Query$RecentThreads extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$RecentThreads({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$RecentThreads? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryRecentThreads,
        );
}

extension ClientExtension$Query$RecentThreads on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$RecentThreads>> query$RecentThreads(
          [Options$Query$RecentThreads? options]) async =>
      await this.query(options ?? Options$Query$RecentThreads());
  graphql.ObservableQuery<Query$RecentThreads> watchQuery$RecentThreads(
          [WatchOptions$Query$RecentThreads? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$RecentThreads());
  void writeQuery$RecentThreads({
    required Query$RecentThreads data,
    Variables$Query$RecentThreads? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryRecentThreads),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$RecentThreads? readQuery$RecentThreads({
    Variables$Query$RecentThreads? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryRecentThreads),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$RecentThreads.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$RecentThreads> useQuery$RecentThreads(
        [Options$Query$RecentThreads? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$RecentThreads());
graphql.ObservableQuery<Query$RecentThreads> useWatchQuery$RecentThreads(
        [WatchOptions$Query$RecentThreads? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$RecentThreads());

class Query$RecentThreads$Widget
    extends graphql_flutter.Query<Query$RecentThreads> {
  Query$RecentThreads$Widget({
    widgets.Key? key,
    Options$Query$RecentThreads? options,
    required graphql_flutter.QueryBuilder<Query$RecentThreads> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$RecentThreads(),
          builder: builder,
        );
}

class Query$RecentThreads$Page {
  Query$RecentThreads$Page({
    this.pageInfo,
    this.threads,
    this.$__typename = 'Page',
  });

  factory Query$RecentThreads$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$threads = json['threads'];
    final l$$__typename = json['__typename'];
    return Query$RecentThreads$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      threads: (l$threads as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ThreadFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$ThreadFragment?>? threads;

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
    if (!(other is Query$RecentThreads$Page) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$RecentThreads$Page
    on Query$RecentThreads$Page {
  CopyWith$Query$RecentThreads$Page<Query$RecentThreads$Page> get copyWith =>
      CopyWith$Query$RecentThreads$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$RecentThreads$Page<TRes> {
  factory CopyWith$Query$RecentThreads$Page(
    Query$RecentThreads$Page instance,
    TRes Function(Query$RecentThreads$Page) then,
  ) = _CopyWithImpl$Query$RecentThreads$Page;

  factory CopyWith$Query$RecentThreads$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$RecentThreads$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes threads(
      Iterable<Fragment$ThreadFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$ThreadFragment<Fragment$ThreadFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$RecentThreads$Page<TRes>
    implements CopyWith$Query$RecentThreads$Page<TRes> {
  _CopyWithImpl$Query$RecentThreads$Page(
    this._instance,
    this._then,
  );

  final Query$RecentThreads$Page _instance;

  final TRes Function(Query$RecentThreads$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? threads = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RecentThreads$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        threads: threads == _undefined
            ? _instance.threads
            : (threads as List<Fragment$ThreadFragment?>?),
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
          Iterable<Fragment$ThreadFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$ThreadFragment<
                          Fragment$ThreadFragment>?>?)
              _fn) =>
      call(
          threads: _fn(_instance.threads?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ThreadFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$RecentThreads$Page<TRes>
    implements CopyWith$Query$RecentThreads$Page<TRes> {
  _CopyWithStubImpl$Query$RecentThreads$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  threads(_fn) => _res;
}
