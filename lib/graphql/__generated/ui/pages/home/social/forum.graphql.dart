// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../../../graphql/fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$PinnedThreads {
  Query$PinnedThreads({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$PinnedThreads.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$PinnedThreads(
      Page: l$Page == null
          ? null
          : Query$PinnedThreads$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PinnedThreads$Page? Page;

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
    if (!(other is Query$PinnedThreads) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$PinnedThreads on Query$PinnedThreads {
  CopyWith$Query$PinnedThreads<Query$PinnedThreads> get copyWith =>
      CopyWith$Query$PinnedThreads(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PinnedThreads<TRes> {
  factory CopyWith$Query$PinnedThreads(
    Query$PinnedThreads instance,
    TRes Function(Query$PinnedThreads) then,
  ) = _CopyWithImpl$Query$PinnedThreads;

  factory CopyWith$Query$PinnedThreads.stub(TRes res) =
      _CopyWithStubImpl$Query$PinnedThreads;

  TRes call({
    Query$PinnedThreads$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$PinnedThreads$Page<TRes> get Page;
}

class _CopyWithImpl$Query$PinnedThreads<TRes>
    implements CopyWith$Query$PinnedThreads<TRes> {
  _CopyWithImpl$Query$PinnedThreads(
    this._instance,
    this._then,
  );

  final Query$PinnedThreads _instance;

  final TRes Function(Query$PinnedThreads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PinnedThreads(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$PinnedThreads$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$PinnedThreads$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$PinnedThreads$Page.stub(_then(_instance))
        : CopyWith$Query$PinnedThreads$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$PinnedThreads<TRes>
    implements CopyWith$Query$PinnedThreads<TRes> {
  _CopyWithStubImpl$Query$PinnedThreads(this._res);

  TRes _res;

  call({
    Query$PinnedThreads$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$PinnedThreads$Page<TRes> get Page =>
      CopyWith$Query$PinnedThreads$Page.stub(_res);
}

const documentNodeQueryPinnedThreads = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PinnedThreads'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '10'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'threads'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'IS_STICKY')),
              )
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
  fragmentDefinitionThread,
]);
Query$PinnedThreads _parserFn$Query$PinnedThreads(Map<String, dynamic> data) =>
    Query$PinnedThreads.fromJson(data);
typedef OnQueryComplete$Query$PinnedThreads = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PinnedThreads?,
);

class Options$Query$PinnedThreads
    extends graphql.QueryOptions<Query$PinnedThreads> {
  Options$Query$PinnedThreads({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PinnedThreads? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PinnedThreads? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$PinnedThreads(data),
                  ),
          onError: onError,
          document: documentNodeQueryPinnedThreads,
          parserFn: _parserFn$Query$PinnedThreads,
        );

  final OnQueryComplete$Query$PinnedThreads? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PinnedThreads
    extends graphql.WatchQueryOptions<Query$PinnedThreads> {
  WatchOptions$Query$PinnedThreads({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PinnedThreads? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryPinnedThreads,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PinnedThreads,
        );
}

class FetchMoreOptions$Query$PinnedThreads extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PinnedThreads(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryPinnedThreads,
        );
}

extension ClientExtension$Query$PinnedThreads on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PinnedThreads>> query$PinnedThreads(
          [Options$Query$PinnedThreads? options]) async =>
      await this.query(options ?? Options$Query$PinnedThreads());
  graphql.ObservableQuery<Query$PinnedThreads> watchQuery$PinnedThreads(
          [WatchOptions$Query$PinnedThreads? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$PinnedThreads());
  void writeQuery$PinnedThreads({
    required Query$PinnedThreads data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryPinnedThreads)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PinnedThreads? readQuery$PinnedThreads({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryPinnedThreads)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PinnedThreads.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PinnedThreads> useQuery$PinnedThreads(
        [Options$Query$PinnedThreads? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$PinnedThreads());
graphql.ObservableQuery<Query$PinnedThreads> useWatchQuery$PinnedThreads(
        [WatchOptions$Query$PinnedThreads? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$PinnedThreads());

class Query$PinnedThreads$Widget
    extends graphql_flutter.Query<Query$PinnedThreads> {
  Query$PinnedThreads$Widget({
    widgets.Key? key,
    Options$Query$PinnedThreads? options,
    required graphql_flutter.QueryBuilder<Query$PinnedThreads> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$PinnedThreads(),
          builder: builder,
        );
}

class Query$PinnedThreads$Page {
  Query$PinnedThreads$Page({
    this.threads,
    this.$__typename = 'Page',
  });

  factory Query$PinnedThreads$Page.fromJson(Map<String, dynamic> json) {
    final l$threads = json['threads'];
    final l$$__typename = json['__typename'];
    return Query$PinnedThreads$Page(
      threads: (l$threads as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$Thread.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Thread?>? threads;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$threads = threads;
    _resultData['threads'] = l$threads?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$threads = threads;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$threads == null ? null : Object.hashAll(l$threads.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PinnedThreads$Page) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$PinnedThreads$Page
    on Query$PinnedThreads$Page {
  CopyWith$Query$PinnedThreads$Page<Query$PinnedThreads$Page> get copyWith =>
      CopyWith$Query$PinnedThreads$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PinnedThreads$Page<TRes> {
  factory CopyWith$Query$PinnedThreads$Page(
    Query$PinnedThreads$Page instance,
    TRes Function(Query$PinnedThreads$Page) then,
  ) = _CopyWithImpl$Query$PinnedThreads$Page;

  factory CopyWith$Query$PinnedThreads$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$PinnedThreads$Page;

  TRes call({
    List<Fragment$Thread?>? threads,
    String? $__typename,
  });
  TRes threads(
      Iterable<Fragment$Thread?>? Function(
              Iterable<CopyWith$Fragment$Thread<Fragment$Thread>?>?)
          _fn);
}

class _CopyWithImpl$Query$PinnedThreads$Page<TRes>
    implements CopyWith$Query$PinnedThreads$Page<TRes> {
  _CopyWithImpl$Query$PinnedThreads$Page(
    this._instance,
    this._then,
  );

  final Query$PinnedThreads$Page _instance;

  final TRes Function(Query$PinnedThreads$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? threads = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PinnedThreads$Page(
        threads: threads == _undefined
            ? _instance.threads
            : (threads as List<Fragment$Thread?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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

class _CopyWithStubImpl$Query$PinnedThreads$Page<TRes>
    implements CopyWith$Query$PinnedThreads$Page<TRes> {
  _CopyWithStubImpl$Query$PinnedThreads$Page(this._res);

  TRes _res;

  call({
    List<Fragment$Thread?>? threads,
    String? $__typename,
  }) =>
      _res;
  threads(_fn) => _res;
}
