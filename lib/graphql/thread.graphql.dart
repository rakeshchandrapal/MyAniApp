import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Query$Threads {
  factory Variables$Query$Threads({
    int? mediaId,
    int? page,
    int? perPage,
  }) =>
      Variables$Query$Threads._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
      });

  Variables$Query$Threads._(this._$data);

  factory Variables$Query$Threads.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    return Variables$Query$Threads._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaId => (_$data['mediaId'] as int?);
  int? get page => (_$data['page'] as int?);
  int? get perPage => (_$data['perPage'] as int?);
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
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
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
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (_$data.containsKey('perPage') != other._$data.containsKey('perPage')) {
      return false;
    }
    if (l$perPage != lOther$perPage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$page = page;
    final l$perPage = perPage;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
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
    int? mediaId,
    int? page,
    int? perPage,
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
    Object? mediaId = _undefined,
    Object? page = _undefined,
    Object? perPage = _undefined,
  }) =>
      _then(Variables$Query$Threads._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Threads<TRes>
    implements CopyWith$Variables$Query$Threads<TRes> {
  _CopyWithStubImpl$Variables$Query$Threads(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? page,
    int? perPage,
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'perPage')),
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
            name: NameNode(value: 'threads'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mediaCategoryId'),
                value: VariableNode(name: NameNode(value: 'mediaId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
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
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'replyCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'viewCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'replyCommentId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'repliedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'categories'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'user'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: 'avatar'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'large'),
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
                name: NameNode(value: 'replyUser'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: 'avatar'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'large'),
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
          : Query$Threads$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      threads: (l$threads as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Threads$Page$threads.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Threads$Page$pageInfo? pageInfo;

  final List<Query$Threads$Page$threads?>? threads;

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
    Query$Threads$Page$pageInfo? pageInfo,
    List<Query$Threads$Page$threads?>? threads,
    String? $__typename,
  });
  CopyWith$Query$Threads$Page$pageInfo<TRes> get pageInfo;
  TRes threads(
      Iterable<Query$Threads$Page$threads?>? Function(
              Iterable<
                  CopyWith$Query$Threads$Page$threads<
                      Query$Threads$Page$threads>?>?)
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
            : (pageInfo as Query$Threads$Page$pageInfo?),
        threads: threads == _undefined
            ? _instance.threads
            : (threads as List<Query$Threads$Page$threads?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Threads$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$Threads$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$Threads$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes threads(
          Iterable<Query$Threads$Page$threads?>? Function(
                  Iterable<
                      CopyWith$Query$Threads$Page$threads<
                          Query$Threads$Page$threads>?>?)
              _fn) =>
      call(
          threads: _fn(_instance.threads?.map((e) => e == null
              ? null
              : CopyWith$Query$Threads$Page$threads(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Threads$Page<TRes>
    implements CopyWith$Query$Threads$Page<TRes> {
  _CopyWithStubImpl$Query$Threads$Page(this._res);

  TRes _res;

  call({
    Query$Threads$Page$pageInfo? pageInfo,
    List<Query$Threads$Page$threads?>? threads,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Threads$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Threads$Page$pageInfo.stub(_res);
  threads(_fn) => _res;
}

class Query$Threads$Page$pageInfo {
  Query$Threads$Page$pageInfo({
    this.hasNextPage,
    this.currentPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Threads$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$currentPage = json['currentPage'];
    final l$$__typename = json['__typename'];
    return Query$Threads$Page$pageInfo(
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
    if (!(other is Query$Threads$Page$pageInfo) ||
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

extension UtilityExtension$Query$Threads$Page$pageInfo
    on Query$Threads$Page$pageInfo {
  CopyWith$Query$Threads$Page$pageInfo<Query$Threads$Page$pageInfo>
      get copyWith => CopyWith$Query$Threads$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Threads$Page$pageInfo<TRes> {
  factory CopyWith$Query$Threads$Page$pageInfo(
    Query$Threads$Page$pageInfo instance,
    TRes Function(Query$Threads$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$Threads$Page$pageInfo;

  factory CopyWith$Query$Threads$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Threads$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    int? currentPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Threads$Page$pageInfo<TRes>
    implements CopyWith$Query$Threads$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$Threads$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Threads$Page$pageInfo _instance;

  final TRes Function(Query$Threads$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? currentPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Threads$Page$pageInfo(
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

class _CopyWithStubImpl$Query$Threads$Page$pageInfo<TRes>
    implements CopyWith$Query$Threads$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Threads$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    int? currentPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$Threads$Page$threads {
  Query$Threads$Page$threads({
    required this.id,
    this.title,
    this.replyCount,
    this.viewCount,
    this.replyCommentId,
    this.repliedAt,
    required this.createdAt,
    this.categories,
    this.user,
    this.replyUser,
    this.$__typename = 'Thread',
  });

  factory Query$Threads$Page$threads.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$replyCount = json['replyCount'];
    final l$viewCount = json['viewCount'];
    final l$replyCommentId = json['replyCommentId'];
    final l$repliedAt = json['repliedAt'];
    final l$createdAt = json['createdAt'];
    final l$categories = json['categories'];
    final l$user = json['user'];
    final l$replyUser = json['replyUser'];
    final l$$__typename = json['__typename'];
    return Query$Threads$Page$threads(
      id: (l$id as int),
      title: (l$title as String?),
      replyCount: (l$replyCount as int?),
      viewCount: (l$viewCount as int?),
      replyCommentId: (l$replyCommentId as int?),
      repliedAt: (l$repliedAt as int?),
      createdAt: (l$createdAt as int),
      categories: (l$categories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Threads$Page$threads$categories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      user: l$user == null
          ? null
          : Query$Threads$Page$threads$user.fromJson(
              (l$user as Map<String, dynamic>)),
      replyUser: l$replyUser == null
          ? null
          : Query$Threads$Page$threads$replyUser.fromJson(
              (l$replyUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final int? replyCount;

  final int? viewCount;

  final int? replyCommentId;

  final int? repliedAt;

  final int createdAt;

  final List<Query$Threads$Page$threads$categories?>? categories;

  final Query$Threads$Page$threads$user? user;

  final Query$Threads$Page$threads$replyUser? replyUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$viewCount = viewCount;
    _resultData['viewCount'] = l$viewCount;
    final l$replyCommentId = replyCommentId;
    _resultData['replyCommentId'] = l$replyCommentId;
    final l$repliedAt = repliedAt;
    _resultData['repliedAt'] = l$repliedAt;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$categories = categories;
    _resultData['categories'] = l$categories?.map((e) => e?.toJson()).toList();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$replyUser = replyUser;
    _resultData['replyUser'] = l$replyUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$replyCount = replyCount;
    final l$viewCount = viewCount;
    final l$replyCommentId = replyCommentId;
    final l$repliedAt = repliedAt;
    final l$createdAt = createdAt;
    final l$categories = categories;
    final l$user = user;
    final l$replyUser = replyUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$replyCount,
      l$viewCount,
      l$replyCommentId,
      l$repliedAt,
      l$createdAt,
      l$categories == null ? null : Object.hashAll(l$categories.map((v) => v)),
      l$user,
      l$replyUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Threads$Page$threads) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$viewCount = viewCount;
    final lOther$viewCount = other.viewCount;
    if (l$viewCount != lOther$viewCount) {
      return false;
    }
    final l$replyCommentId = replyCommentId;
    final lOther$replyCommentId = other.replyCommentId;
    if (l$replyCommentId != lOther$replyCommentId) {
      return false;
    }
    final l$repliedAt = repliedAt;
    final lOther$repliedAt = other.repliedAt;
    if (l$repliedAt != lOther$repliedAt) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories != null && lOther$categories != null) {
      if (l$categories.length != lOther$categories.length) {
        return false;
      }
      for (int i = 0; i < l$categories.length; i++) {
        final l$categories$entry = l$categories[i];
        final lOther$categories$entry = lOther$categories[i];
        if (l$categories$entry != lOther$categories$entry) {
          return false;
        }
      }
    } else if (l$categories != lOther$categories) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$replyUser = replyUser;
    final lOther$replyUser = other.replyUser;
    if (l$replyUser != lOther$replyUser) {
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

extension UtilityExtension$Query$Threads$Page$threads
    on Query$Threads$Page$threads {
  CopyWith$Query$Threads$Page$threads<Query$Threads$Page$threads>
      get copyWith => CopyWith$Query$Threads$Page$threads(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Threads$Page$threads<TRes> {
  factory CopyWith$Query$Threads$Page$threads(
    Query$Threads$Page$threads instance,
    TRes Function(Query$Threads$Page$threads) then,
  ) = _CopyWithImpl$Query$Threads$Page$threads;

  factory CopyWith$Query$Threads$Page$threads.stub(TRes res) =
      _CopyWithStubImpl$Query$Threads$Page$threads;

  TRes call({
    int? id,
    String? title,
    int? replyCount,
    int? viewCount,
    int? replyCommentId,
    int? repliedAt,
    int? createdAt,
    List<Query$Threads$Page$threads$categories?>? categories,
    Query$Threads$Page$threads$user? user,
    Query$Threads$Page$threads$replyUser? replyUser,
    String? $__typename,
  });
  TRes categories(
      Iterable<Query$Threads$Page$threads$categories?>? Function(
              Iterable<
                  CopyWith$Query$Threads$Page$threads$categories<
                      Query$Threads$Page$threads$categories>?>?)
          _fn);
  CopyWith$Query$Threads$Page$threads$user<TRes> get user;
  CopyWith$Query$Threads$Page$threads$replyUser<TRes> get replyUser;
}

class _CopyWithImpl$Query$Threads$Page$threads<TRes>
    implements CopyWith$Query$Threads$Page$threads<TRes> {
  _CopyWithImpl$Query$Threads$Page$threads(
    this._instance,
    this._then,
  );

  final Query$Threads$Page$threads _instance;

  final TRes Function(Query$Threads$Page$threads) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? replyCount = _undefined,
    Object? viewCount = _undefined,
    Object? replyCommentId = _undefined,
    Object? repliedAt = _undefined,
    Object? createdAt = _undefined,
    Object? categories = _undefined,
    Object? user = _undefined,
    Object? replyUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Threads$Page$threads(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        replyCount: replyCount == _undefined
            ? _instance.replyCount
            : (replyCount as int?),
        viewCount:
            viewCount == _undefined ? _instance.viewCount : (viewCount as int?),
        replyCommentId: replyCommentId == _undefined
            ? _instance.replyCommentId
            : (replyCommentId as int?),
        repliedAt:
            repliedAt == _undefined ? _instance.repliedAt : (repliedAt as int?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        categories: categories == _undefined
            ? _instance.categories
            : (categories as List<Query$Threads$Page$threads$categories?>?),
        user: user == _undefined
            ? _instance.user
            : (user as Query$Threads$Page$threads$user?),
        replyUser: replyUser == _undefined
            ? _instance.replyUser
            : (replyUser as Query$Threads$Page$threads$replyUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes categories(
          Iterable<Query$Threads$Page$threads$categories?>? Function(
                  Iterable<
                      CopyWith$Query$Threads$Page$threads$categories<
                          Query$Threads$Page$threads$categories>?>?)
              _fn) =>
      call(
          categories: _fn(_instance.categories?.map((e) => e == null
              ? null
              : CopyWith$Query$Threads$Page$threads$categories(
                  e,
                  (i) => i,
                )))?.toList());
  CopyWith$Query$Threads$Page$threads$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$Threads$Page$threads$user.stub(_then(_instance))
        : CopyWith$Query$Threads$Page$threads$user(
            local$user, (e) => call(user: e));
  }

  CopyWith$Query$Threads$Page$threads$replyUser<TRes> get replyUser {
    final local$replyUser = _instance.replyUser;
    return local$replyUser == null
        ? CopyWith$Query$Threads$Page$threads$replyUser.stub(_then(_instance))
        : CopyWith$Query$Threads$Page$threads$replyUser(
            local$replyUser, (e) => call(replyUser: e));
  }
}

class _CopyWithStubImpl$Query$Threads$Page$threads<TRes>
    implements CopyWith$Query$Threads$Page$threads<TRes> {
  _CopyWithStubImpl$Query$Threads$Page$threads(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    int? replyCount,
    int? viewCount,
    int? replyCommentId,
    int? repliedAt,
    int? createdAt,
    List<Query$Threads$Page$threads$categories?>? categories,
    Query$Threads$Page$threads$user? user,
    Query$Threads$Page$threads$replyUser? replyUser,
    String? $__typename,
  }) =>
      _res;
  categories(_fn) => _res;
  CopyWith$Query$Threads$Page$threads$user<TRes> get user =>
      CopyWith$Query$Threads$Page$threads$user.stub(_res);
  CopyWith$Query$Threads$Page$threads$replyUser<TRes> get replyUser =>
      CopyWith$Query$Threads$Page$threads$replyUser.stub(_res);
}

class Query$Threads$Page$threads$categories {
  Query$Threads$Page$threads$categories({
    required this.id,
    required this.name,
    this.$__typename = 'ThreadCategory',
  });

  factory Query$Threads$Page$threads$categories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Threads$Page$threads$categories(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Threads$Page$threads$categories) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Threads$Page$threads$categories
    on Query$Threads$Page$threads$categories {
  CopyWith$Query$Threads$Page$threads$categories<
          Query$Threads$Page$threads$categories>
      get copyWith => CopyWith$Query$Threads$Page$threads$categories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Threads$Page$threads$categories<TRes> {
  factory CopyWith$Query$Threads$Page$threads$categories(
    Query$Threads$Page$threads$categories instance,
    TRes Function(Query$Threads$Page$threads$categories) then,
  ) = _CopyWithImpl$Query$Threads$Page$threads$categories;

  factory CopyWith$Query$Threads$Page$threads$categories.stub(TRes res) =
      _CopyWithStubImpl$Query$Threads$Page$threads$categories;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Threads$Page$threads$categories<TRes>
    implements CopyWith$Query$Threads$Page$threads$categories<TRes> {
  _CopyWithImpl$Query$Threads$Page$threads$categories(
    this._instance,
    this._then,
  );

  final Query$Threads$Page$threads$categories _instance;

  final TRes Function(Query$Threads$Page$threads$categories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Threads$Page$threads$categories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Threads$Page$threads$categories<TRes>
    implements CopyWith$Query$Threads$Page$threads$categories<TRes> {
  _CopyWithStubImpl$Query$Threads$Page$threads$categories(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Threads$Page$threads$user {
  Query$Threads$Page$threads$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$Threads$Page$threads$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$Threads$Page$threads$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$Threads$Page$threads$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$Threads$Page$threads$user$avatar? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Threads$Page$threads$user) ||
        runtimeType != other.runtimeType) {
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtension$Query$Threads$Page$threads$user
    on Query$Threads$Page$threads$user {
  CopyWith$Query$Threads$Page$threads$user<Query$Threads$Page$threads$user>
      get copyWith => CopyWith$Query$Threads$Page$threads$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Threads$Page$threads$user<TRes> {
  factory CopyWith$Query$Threads$Page$threads$user(
    Query$Threads$Page$threads$user instance,
    TRes Function(Query$Threads$Page$threads$user) then,
  ) = _CopyWithImpl$Query$Threads$Page$threads$user;

  factory CopyWith$Query$Threads$Page$threads$user.stub(TRes res) =
      _CopyWithStubImpl$Query$Threads$Page$threads$user;

  TRes call({
    int? id,
    String? name,
    Query$Threads$Page$threads$user$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$Threads$Page$threads$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Query$Threads$Page$threads$user<TRes>
    implements CopyWith$Query$Threads$Page$threads$user<TRes> {
  _CopyWithImpl$Query$Threads$Page$threads$user(
    this._instance,
    this._then,
  );

  final Query$Threads$Page$threads$user _instance;

  final TRes Function(Query$Threads$Page$threads$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Threads$Page$threads$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$Threads$Page$threads$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Threads$Page$threads$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$Threads$Page$threads$user$avatar.stub(_then(_instance))
        : CopyWith$Query$Threads$Page$threads$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$Threads$Page$threads$user<TRes>
    implements CopyWith$Query$Threads$Page$threads$user<TRes> {
  _CopyWithStubImpl$Query$Threads$Page$threads$user(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$Threads$Page$threads$user$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Threads$Page$threads$user$avatar<TRes> get avatar =>
      CopyWith$Query$Threads$Page$threads$user$avatar.stub(_res);
}

class Query$Threads$Page$threads$user$avatar {
  Query$Threads$Page$threads$user$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$Threads$Page$threads$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Threads$Page$threads$user$avatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Threads$Page$threads$user$avatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Query$Threads$Page$threads$user$avatar
    on Query$Threads$Page$threads$user$avatar {
  CopyWith$Query$Threads$Page$threads$user$avatar<
          Query$Threads$Page$threads$user$avatar>
      get copyWith => CopyWith$Query$Threads$Page$threads$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Threads$Page$threads$user$avatar<TRes> {
  factory CopyWith$Query$Threads$Page$threads$user$avatar(
    Query$Threads$Page$threads$user$avatar instance,
    TRes Function(Query$Threads$Page$threads$user$avatar) then,
  ) = _CopyWithImpl$Query$Threads$Page$threads$user$avatar;

  factory CopyWith$Query$Threads$Page$threads$user$avatar.stub(TRes res) =
      _CopyWithStubImpl$Query$Threads$Page$threads$user$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Threads$Page$threads$user$avatar<TRes>
    implements CopyWith$Query$Threads$Page$threads$user$avatar<TRes> {
  _CopyWithImpl$Query$Threads$Page$threads$user$avatar(
    this._instance,
    this._then,
  );

  final Query$Threads$Page$threads$user$avatar _instance;

  final TRes Function(Query$Threads$Page$threads$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Threads$Page$threads$user$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Threads$Page$threads$user$avatar<TRes>
    implements CopyWith$Query$Threads$Page$threads$user$avatar<TRes> {
  _CopyWithStubImpl$Query$Threads$Page$threads$user$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Threads$Page$threads$replyUser {
  Query$Threads$Page$threads$replyUser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$Threads$Page$threads$replyUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$Threads$Page$threads$replyUser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$Threads$Page$threads$replyUser$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$Threads$Page$threads$replyUser$avatar? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Threads$Page$threads$replyUser) ||
        runtimeType != other.runtimeType) {
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtension$Query$Threads$Page$threads$replyUser
    on Query$Threads$Page$threads$replyUser {
  CopyWith$Query$Threads$Page$threads$replyUser<
          Query$Threads$Page$threads$replyUser>
      get copyWith => CopyWith$Query$Threads$Page$threads$replyUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Threads$Page$threads$replyUser<TRes> {
  factory CopyWith$Query$Threads$Page$threads$replyUser(
    Query$Threads$Page$threads$replyUser instance,
    TRes Function(Query$Threads$Page$threads$replyUser) then,
  ) = _CopyWithImpl$Query$Threads$Page$threads$replyUser;

  factory CopyWith$Query$Threads$Page$threads$replyUser.stub(TRes res) =
      _CopyWithStubImpl$Query$Threads$Page$threads$replyUser;

  TRes call({
    int? id,
    String? name,
    Query$Threads$Page$threads$replyUser$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$Threads$Page$threads$replyUser$avatar<TRes> get avatar;
}

class _CopyWithImpl$Query$Threads$Page$threads$replyUser<TRes>
    implements CopyWith$Query$Threads$Page$threads$replyUser<TRes> {
  _CopyWithImpl$Query$Threads$Page$threads$replyUser(
    this._instance,
    this._then,
  );

  final Query$Threads$Page$threads$replyUser _instance;

  final TRes Function(Query$Threads$Page$threads$replyUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Threads$Page$threads$replyUser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$Threads$Page$threads$replyUser$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Threads$Page$threads$replyUser$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$Threads$Page$threads$replyUser$avatar.stub(
            _then(_instance))
        : CopyWith$Query$Threads$Page$threads$replyUser$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$Threads$Page$threads$replyUser<TRes>
    implements CopyWith$Query$Threads$Page$threads$replyUser<TRes> {
  _CopyWithStubImpl$Query$Threads$Page$threads$replyUser(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$Threads$Page$threads$replyUser$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Threads$Page$threads$replyUser$avatar<TRes> get avatar =>
      CopyWith$Query$Threads$Page$threads$replyUser$avatar.stub(_res);
}

class Query$Threads$Page$threads$replyUser$avatar {
  Query$Threads$Page$threads$replyUser$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$Threads$Page$threads$replyUser$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Threads$Page$threads$replyUser$avatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Threads$Page$threads$replyUser$avatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Query$Threads$Page$threads$replyUser$avatar
    on Query$Threads$Page$threads$replyUser$avatar {
  CopyWith$Query$Threads$Page$threads$replyUser$avatar<
          Query$Threads$Page$threads$replyUser$avatar>
      get copyWith => CopyWith$Query$Threads$Page$threads$replyUser$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Threads$Page$threads$replyUser$avatar<TRes> {
  factory CopyWith$Query$Threads$Page$threads$replyUser$avatar(
    Query$Threads$Page$threads$replyUser$avatar instance,
    TRes Function(Query$Threads$Page$threads$replyUser$avatar) then,
  ) = _CopyWithImpl$Query$Threads$Page$threads$replyUser$avatar;

  factory CopyWith$Query$Threads$Page$threads$replyUser$avatar.stub(TRes res) =
      _CopyWithStubImpl$Query$Threads$Page$threads$replyUser$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Threads$Page$threads$replyUser$avatar<TRes>
    implements CopyWith$Query$Threads$Page$threads$replyUser$avatar<TRes> {
  _CopyWithImpl$Query$Threads$Page$threads$replyUser$avatar(
    this._instance,
    this._then,
  );

  final Query$Threads$Page$threads$replyUser$avatar _instance;

  final TRes Function(Query$Threads$Page$threads$replyUser$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Threads$Page$threads$replyUser$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Threads$Page$threads$replyUser$avatar<TRes>
    implements CopyWith$Query$Threads$Page$threads$replyUser$avatar<TRes> {
  _CopyWithStubImpl$Query$Threads$Page$threads$replyUser$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Thread {
  factory Variables$Query$Thread({int? id}) => Variables$Query$Thread._({
        if (id != null) r'id': id,
      });

  Variables$Query$Thread._(this._$data);

  factory Variables$Query$Thread.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Query$Thread._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Thread<Variables$Query$Thread> get copyWith =>
      CopyWith$Variables$Query$Thread(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Thread) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Query$Thread<TRes> {
  factory CopyWith$Variables$Query$Thread(
    Variables$Query$Thread instance,
    TRes Function(Variables$Query$Thread) then,
  ) = _CopyWithImpl$Variables$Query$Thread;

  factory CopyWith$Variables$Query$Thread.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Thread;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$Thread<TRes>
    implements CopyWith$Variables$Query$Thread<TRes> {
  _CopyWithImpl$Variables$Query$Thread(
    this._instance,
    this._then,
  );

  final Variables$Query$Thread _instance;

  final TRes Function(Variables$Query$Thread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Thread._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Thread<TRes>
    implements CopyWith$Variables$Query$Thread<TRes> {
  _CopyWithStubImpl$Variables$Query$Thread(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$Thread {
  Query$Thread({
    this.Thread,
    this.$__typename = 'Query',
  });

  factory Query$Thread.fromJson(Map<String, dynamic> json) {
    final l$Thread = json['Thread'];
    final l$$__typename = json['__typename'];
    return Query$Thread(
      Thread: l$Thread == null
          ? null
          : Query$Thread$Thread.fromJson((l$Thread as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Thread$Thread? Thread;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Thread = Thread;
    _resultData['Thread'] = l$Thread?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Thread = Thread;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Thread,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Thread) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Thread = Thread;
    final lOther$Thread = other.Thread;
    if (l$Thread != lOther$Thread) {
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

extension UtilityExtension$Query$Thread on Query$Thread {
  CopyWith$Query$Thread<Query$Thread> get copyWith => CopyWith$Query$Thread(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Thread<TRes> {
  factory CopyWith$Query$Thread(
    Query$Thread instance,
    TRes Function(Query$Thread) then,
  ) = _CopyWithImpl$Query$Thread;

  factory CopyWith$Query$Thread.stub(TRes res) = _CopyWithStubImpl$Query$Thread;

  TRes call({
    Query$Thread$Thread? Thread,
    String? $__typename,
  });
  CopyWith$Query$Thread$Thread<TRes> get Thread;
}

class _CopyWithImpl$Query$Thread<TRes> implements CopyWith$Query$Thread<TRes> {
  _CopyWithImpl$Query$Thread(
    this._instance,
    this._then,
  );

  final Query$Thread _instance;

  final TRes Function(Query$Thread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Thread = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Thread(
        Thread: Thread == _undefined
            ? _instance.Thread
            : (Thread as Query$Thread$Thread?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Thread$Thread<TRes> get Thread {
    final local$Thread = _instance.Thread;
    return local$Thread == null
        ? CopyWith$Query$Thread$Thread.stub(_then(_instance))
        : CopyWith$Query$Thread$Thread(local$Thread, (e) => call(Thread: e));
  }
}

class _CopyWithStubImpl$Query$Thread<TRes>
    implements CopyWith$Query$Thread<TRes> {
  _CopyWithStubImpl$Query$Thread(this._res);

  TRes _res;

  call({
    Query$Thread$Thread? Thread,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Thread$Thread<TRes> get Thread =>
      CopyWith$Query$Thread$Thread.stub(_res);
}

const documentNodeQueryThread = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Thread'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'Thread'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'body'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'replyCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'viewCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isLocked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isSticky'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isSubscribed'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isLiked'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'likeCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'repliedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'avatar'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'large'),
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
            name: NameNode(value: 'categories'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'mediaCategories'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'userPreferred'),
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
                name: NameNode(value: 'coverImage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'large'),
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
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'format'),
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
]);
Query$Thread _parserFn$Query$Thread(Map<String, dynamic> data) =>
    Query$Thread.fromJson(data);
typedef OnQueryComplete$Query$Thread = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Thread?,
);

class Options$Query$Thread extends graphql.QueryOptions<Query$Thread> {
  Options$Query$Thread({
    String? operationName,
    Variables$Query$Thread? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Thread? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Thread? onComplete,
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
                    data == null ? null : _parserFn$Query$Thread(data),
                  ),
          onError: onError,
          document: documentNodeQueryThread,
          parserFn: _parserFn$Query$Thread,
        );

  final OnQueryComplete$Query$Thread? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Thread
    extends graphql.WatchQueryOptions<Query$Thread> {
  WatchOptions$Query$Thread({
    String? operationName,
    Variables$Query$Thread? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Thread? typedOptimisticResult,
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
          document: documentNodeQueryThread,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Thread,
        );
}

class FetchMoreOptions$Query$Thread extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Thread({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Thread? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryThread,
        );
}

extension ClientExtension$Query$Thread on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Thread>> query$Thread(
          [Options$Query$Thread? options]) async =>
      await this.query(options ?? Options$Query$Thread());
  graphql.ObservableQuery<Query$Thread> watchQuery$Thread(
          [WatchOptions$Query$Thread? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Thread());
  void writeQuery$Thread({
    required Query$Thread data,
    Variables$Query$Thread? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryThread),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Thread? readQuery$Thread({
    Variables$Query$Thread? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryThread),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Thread.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Thread> useQuery$Thread(
        [Options$Query$Thread? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Thread());
graphql.ObservableQuery<Query$Thread> useWatchQuery$Thread(
        [WatchOptions$Query$Thread? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Thread());

class Query$Thread$Widget extends graphql_flutter.Query<Query$Thread> {
  Query$Thread$Widget({
    widgets.Key? key,
    Options$Query$Thread? options,
    required graphql_flutter.QueryBuilder<Query$Thread> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Thread(),
          builder: builder,
        );
}

class Query$Thread$Thread {
  Query$Thread$Thread({
    required this.id,
    this.title,
    this.body,
    required this.userId,
    this.replyCount,
    this.viewCount,
    this.isLocked,
    this.isSticky,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    this.repliedAt,
    required this.createdAt,
    this.user,
    this.categories,
    this.mediaCategories,
    this.$__typename = 'Thread',
  });

  factory Query$Thread$Thread.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$body = json['body'];
    final l$userId = json['userId'];
    final l$replyCount = json['replyCount'];
    final l$viewCount = json['viewCount'];
    final l$isLocked = json['isLocked'];
    final l$isSticky = json['isSticky'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$repliedAt = json['repliedAt'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$categories = json['categories'];
    final l$mediaCategories = json['mediaCategories'];
    final l$$__typename = json['__typename'];
    return Query$Thread$Thread(
      id: (l$id as int),
      title: (l$title as String?),
      body: (l$body as String?),
      userId: (l$userId as int),
      replyCount: (l$replyCount as int?),
      viewCount: (l$viewCount as int?),
      isLocked: (l$isLocked as bool?),
      isSticky: (l$isSticky as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      repliedAt: (l$repliedAt as int?),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Query$Thread$Thread$user.fromJson((l$user as Map<String, dynamic>)),
      categories: (l$categories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Thread$Thread$categories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      mediaCategories: (l$mediaCategories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Thread$Thread$mediaCategories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String? body;

  final int userId;

  final int? replyCount;

  final int? viewCount;

  final bool? isLocked;

  final bool? isSticky;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int? repliedAt;

  final int createdAt;

  final Query$Thread$Thread$user? user;

  final List<Query$Thread$Thread$categories?>? categories;

  final List<Query$Thread$Thread$mediaCategories?>? mediaCategories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$viewCount = viewCount;
    _resultData['viewCount'] = l$viewCount;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSticky = isSticky;
    _resultData['isSticky'] = l$isSticky;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$repliedAt = repliedAt;
    _resultData['repliedAt'] = l$repliedAt;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$categories = categories;
    _resultData['categories'] = l$categories?.map((e) => e?.toJson()).toList();
    final l$mediaCategories = mediaCategories;
    _resultData['mediaCategories'] =
        l$mediaCategories?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$body = body;
    final l$userId = userId;
    final l$replyCount = replyCount;
    final l$viewCount = viewCount;
    final l$isLocked = isLocked;
    final l$isSticky = isSticky;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$repliedAt = repliedAt;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$categories = categories;
    final l$mediaCategories = mediaCategories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$body,
      l$userId,
      l$replyCount,
      l$viewCount,
      l$isLocked,
      l$isSticky,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$repliedAt,
      l$createdAt,
      l$user,
      l$categories == null ? null : Object.hashAll(l$categories.map((v) => v)),
      l$mediaCategories == null
          ? null
          : Object.hashAll(l$mediaCategories.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Thread$Thread) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$viewCount = viewCount;
    final lOther$viewCount = other.viewCount;
    if (l$viewCount != lOther$viewCount) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSticky = isSticky;
    final lOther$isSticky = other.isSticky;
    if (l$isSticky != lOther$isSticky) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$repliedAt = repliedAt;
    final lOther$repliedAt = other.repliedAt;
    if (l$repliedAt != lOther$repliedAt) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories != null && lOther$categories != null) {
      if (l$categories.length != lOther$categories.length) {
        return false;
      }
      for (int i = 0; i < l$categories.length; i++) {
        final l$categories$entry = l$categories[i];
        final lOther$categories$entry = lOther$categories[i];
        if (l$categories$entry != lOther$categories$entry) {
          return false;
        }
      }
    } else if (l$categories != lOther$categories) {
      return false;
    }
    final l$mediaCategories = mediaCategories;
    final lOther$mediaCategories = other.mediaCategories;
    if (l$mediaCategories != null && lOther$mediaCategories != null) {
      if (l$mediaCategories.length != lOther$mediaCategories.length) {
        return false;
      }
      for (int i = 0; i < l$mediaCategories.length; i++) {
        final l$mediaCategories$entry = l$mediaCategories[i];
        final lOther$mediaCategories$entry = lOther$mediaCategories[i];
        if (l$mediaCategories$entry != lOther$mediaCategories$entry) {
          return false;
        }
      }
    } else if (l$mediaCategories != lOther$mediaCategories) {
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

extension UtilityExtension$Query$Thread$Thread on Query$Thread$Thread {
  CopyWith$Query$Thread$Thread<Query$Thread$Thread> get copyWith =>
      CopyWith$Query$Thread$Thread(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Thread$Thread<TRes> {
  factory CopyWith$Query$Thread$Thread(
    Query$Thread$Thread instance,
    TRes Function(Query$Thread$Thread) then,
  ) = _CopyWithImpl$Query$Thread$Thread;

  factory CopyWith$Query$Thread$Thread.stub(TRes res) =
      _CopyWithStubImpl$Query$Thread$Thread;

  TRes call({
    int? id,
    String? title,
    String? body,
    int? userId,
    int? replyCount,
    int? viewCount,
    bool? isLocked,
    bool? isSticky,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? repliedAt,
    int? createdAt,
    Query$Thread$Thread$user? user,
    List<Query$Thread$Thread$categories?>? categories,
    List<Query$Thread$Thread$mediaCategories?>? mediaCategories,
    String? $__typename,
  });
  CopyWith$Query$Thread$Thread$user<TRes> get user;
  TRes categories(
      Iterable<Query$Thread$Thread$categories?>? Function(
              Iterable<
                  CopyWith$Query$Thread$Thread$categories<
                      Query$Thread$Thread$categories>?>?)
          _fn);
  TRes mediaCategories(
      Iterable<Query$Thread$Thread$mediaCategories?>? Function(
              Iterable<
                  CopyWith$Query$Thread$Thread$mediaCategories<
                      Query$Thread$Thread$mediaCategories>?>?)
          _fn);
}

class _CopyWithImpl$Query$Thread$Thread<TRes>
    implements CopyWith$Query$Thread$Thread<TRes> {
  _CopyWithImpl$Query$Thread$Thread(
    this._instance,
    this._then,
  );

  final Query$Thread$Thread _instance;

  final TRes Function(Query$Thread$Thread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? body = _undefined,
    Object? userId = _undefined,
    Object? replyCount = _undefined,
    Object? viewCount = _undefined,
    Object? isLocked = _undefined,
    Object? isSticky = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? repliedAt = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? categories = _undefined,
    Object? mediaCategories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Thread$Thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        body: body == _undefined ? _instance.body : (body as String?),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        replyCount: replyCount == _undefined
            ? _instance.replyCount
            : (replyCount as int?),
        viewCount:
            viewCount == _undefined ? _instance.viewCount : (viewCount as int?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSticky:
            isSticky == _undefined ? _instance.isSticky : (isSticky as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        repliedAt:
            repliedAt == _undefined ? _instance.repliedAt : (repliedAt as int?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user: user == _undefined
            ? _instance.user
            : (user as Query$Thread$Thread$user?),
        categories: categories == _undefined
            ? _instance.categories
            : (categories as List<Query$Thread$Thread$categories?>?),
        mediaCategories: mediaCategories == _undefined
            ? _instance.mediaCategories
            : (mediaCategories as List<Query$Thread$Thread$mediaCategories?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Thread$Thread$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$Thread$Thread$user.stub(_then(_instance))
        : CopyWith$Query$Thread$Thread$user(local$user, (e) => call(user: e));
  }

  TRes categories(
          Iterable<Query$Thread$Thread$categories?>? Function(
                  Iterable<
                      CopyWith$Query$Thread$Thread$categories<
                          Query$Thread$Thread$categories>?>?)
              _fn) =>
      call(
          categories: _fn(_instance.categories?.map((e) => e == null
              ? null
              : CopyWith$Query$Thread$Thread$categories(
                  e,
                  (i) => i,
                )))?.toList());
  TRes mediaCategories(
          Iterable<Query$Thread$Thread$mediaCategories?>? Function(
                  Iterable<
                      CopyWith$Query$Thread$Thread$mediaCategories<
                          Query$Thread$Thread$mediaCategories>?>?)
              _fn) =>
      call(
          mediaCategories: _fn(_instance.mediaCategories?.map((e) => e == null
              ? null
              : CopyWith$Query$Thread$Thread$mediaCategories(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Thread$Thread<TRes>
    implements CopyWith$Query$Thread$Thread<TRes> {
  _CopyWithStubImpl$Query$Thread$Thread(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? body,
    int? userId,
    int? replyCount,
    int? viewCount,
    bool? isLocked,
    bool? isSticky,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? repliedAt,
    int? createdAt,
    Query$Thread$Thread$user? user,
    List<Query$Thread$Thread$categories?>? categories,
    List<Query$Thread$Thread$mediaCategories?>? mediaCategories,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Thread$Thread$user<TRes> get user =>
      CopyWith$Query$Thread$Thread$user.stub(_res);
  categories(_fn) => _res;
  mediaCategories(_fn) => _res;
}

class Query$Thread$Thread$user {
  Query$Thread$Thread$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$Thread$Thread$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$Thread$Thread$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$Thread$Thread$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$Thread$Thread$user$avatar? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Thread$Thread$user) ||
        runtimeType != other.runtimeType) {
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtension$Query$Thread$Thread$user
    on Query$Thread$Thread$user {
  CopyWith$Query$Thread$Thread$user<Query$Thread$Thread$user> get copyWith =>
      CopyWith$Query$Thread$Thread$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Thread$Thread$user<TRes> {
  factory CopyWith$Query$Thread$Thread$user(
    Query$Thread$Thread$user instance,
    TRes Function(Query$Thread$Thread$user) then,
  ) = _CopyWithImpl$Query$Thread$Thread$user;

  factory CopyWith$Query$Thread$Thread$user.stub(TRes res) =
      _CopyWithStubImpl$Query$Thread$Thread$user;

  TRes call({
    int? id,
    String? name,
    Query$Thread$Thread$user$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$Thread$Thread$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Query$Thread$Thread$user<TRes>
    implements CopyWith$Query$Thread$Thread$user<TRes> {
  _CopyWithImpl$Query$Thread$Thread$user(
    this._instance,
    this._then,
  );

  final Query$Thread$Thread$user _instance;

  final TRes Function(Query$Thread$Thread$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Thread$Thread$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$Thread$Thread$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Thread$Thread$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$Thread$Thread$user$avatar.stub(_then(_instance))
        : CopyWith$Query$Thread$Thread$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$Thread$Thread$user<TRes>
    implements CopyWith$Query$Thread$Thread$user<TRes> {
  _CopyWithStubImpl$Query$Thread$Thread$user(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$Thread$Thread$user$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Thread$Thread$user$avatar<TRes> get avatar =>
      CopyWith$Query$Thread$Thread$user$avatar.stub(_res);
}

class Query$Thread$Thread$user$avatar {
  Query$Thread$Thread$user$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$Thread$Thread$user$avatar.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Thread$Thread$user$avatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Thread$Thread$user$avatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Query$Thread$Thread$user$avatar
    on Query$Thread$Thread$user$avatar {
  CopyWith$Query$Thread$Thread$user$avatar<Query$Thread$Thread$user$avatar>
      get copyWith => CopyWith$Query$Thread$Thread$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Thread$Thread$user$avatar<TRes> {
  factory CopyWith$Query$Thread$Thread$user$avatar(
    Query$Thread$Thread$user$avatar instance,
    TRes Function(Query$Thread$Thread$user$avatar) then,
  ) = _CopyWithImpl$Query$Thread$Thread$user$avatar;

  factory CopyWith$Query$Thread$Thread$user$avatar.stub(TRes res) =
      _CopyWithStubImpl$Query$Thread$Thread$user$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Thread$Thread$user$avatar<TRes>
    implements CopyWith$Query$Thread$Thread$user$avatar<TRes> {
  _CopyWithImpl$Query$Thread$Thread$user$avatar(
    this._instance,
    this._then,
  );

  final Query$Thread$Thread$user$avatar _instance;

  final TRes Function(Query$Thread$Thread$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Thread$Thread$user$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Thread$Thread$user$avatar<TRes>
    implements CopyWith$Query$Thread$Thread$user$avatar<TRes> {
  _CopyWithStubImpl$Query$Thread$Thread$user$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Thread$Thread$categories {
  Query$Thread$Thread$categories({
    required this.id,
    required this.name,
    this.$__typename = 'ThreadCategory',
  });

  factory Query$Thread$Thread$categories.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Thread$Thread$categories(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Thread$Thread$categories) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Thread$Thread$categories
    on Query$Thread$Thread$categories {
  CopyWith$Query$Thread$Thread$categories<Query$Thread$Thread$categories>
      get copyWith => CopyWith$Query$Thread$Thread$categories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Thread$Thread$categories<TRes> {
  factory CopyWith$Query$Thread$Thread$categories(
    Query$Thread$Thread$categories instance,
    TRes Function(Query$Thread$Thread$categories) then,
  ) = _CopyWithImpl$Query$Thread$Thread$categories;

  factory CopyWith$Query$Thread$Thread$categories.stub(TRes res) =
      _CopyWithStubImpl$Query$Thread$Thread$categories;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Thread$Thread$categories<TRes>
    implements CopyWith$Query$Thread$Thread$categories<TRes> {
  _CopyWithImpl$Query$Thread$Thread$categories(
    this._instance,
    this._then,
  );

  final Query$Thread$Thread$categories _instance;

  final TRes Function(Query$Thread$Thread$categories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Thread$Thread$categories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Thread$Thread$categories<TRes>
    implements CopyWith$Query$Thread$Thread$categories<TRes> {
  _CopyWithStubImpl$Query$Thread$Thread$categories(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Thread$Thread$mediaCategories {
  Query$Thread$Thread$mediaCategories({
    this.id,
    this.title,
    this.coverImage,
    this.type,
    this.format,
    this.$__typename = 'Media',
  });

  factory Query$Thread$Thread$mediaCategories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$$__typename = json['__typename'];
    return Query$Thread$Thread$mediaCategories(
      id: (l$id as int?),
      title: l$title == null
          ? null
          : Query$Thread$Thread$mediaCategories$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$Thread$Thread$mediaCategories$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final Query$Thread$Thread$mediaCategories$title? title;

  final Query$Thread$Thread$mediaCategories$coverImage? coverImage;

  final Enum$MediaType? type;

  final Enum$MediaFormat? format;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$type = type;
    final l$format = format;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$coverImage,
      l$type,
      l$format,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Thread$Thread$mediaCategories) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
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

extension UtilityExtension$Query$Thread$Thread$mediaCategories
    on Query$Thread$Thread$mediaCategories {
  CopyWith$Query$Thread$Thread$mediaCategories<
          Query$Thread$Thread$mediaCategories>
      get copyWith => CopyWith$Query$Thread$Thread$mediaCategories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Thread$Thread$mediaCategories<TRes> {
  factory CopyWith$Query$Thread$Thread$mediaCategories(
    Query$Thread$Thread$mediaCategories instance,
    TRes Function(Query$Thread$Thread$mediaCategories) then,
  ) = _CopyWithImpl$Query$Thread$Thread$mediaCategories;

  factory CopyWith$Query$Thread$Thread$mediaCategories.stub(TRes res) =
      _CopyWithStubImpl$Query$Thread$Thread$mediaCategories;

  TRes call({
    int? id,
    Query$Thread$Thread$mediaCategories$title? title,
    Query$Thread$Thread$mediaCategories$coverImage? coverImage,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    String? $__typename,
  });
  CopyWith$Query$Thread$Thread$mediaCategories$title<TRes> get title;
  CopyWith$Query$Thread$Thread$mediaCategories$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Query$Thread$Thread$mediaCategories<TRes>
    implements CopyWith$Query$Thread$Thread$mediaCategories<TRes> {
  _CopyWithImpl$Query$Thread$Thread$mediaCategories(
    this._instance,
    this._then,
  );

  final Query$Thread$Thread$mediaCategories _instance;

  final TRes Function(Query$Thread$Thread$mediaCategories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Thread$Thread$mediaCategories(
        id: id == _undefined ? _instance.id : (id as int?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$Thread$Thread$mediaCategories$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Query$Thread$Thread$mediaCategories$coverImage?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Thread$Thread$mediaCategories$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$Thread$Thread$mediaCategories$title.stub(
            _then(_instance))
        : CopyWith$Query$Thread$Thread$mediaCategories$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$Thread$Thread$mediaCategories$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$Thread$Thread$mediaCategories$coverImage.stub(
            _then(_instance))
        : CopyWith$Query$Thread$Thread$mediaCategories$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Query$Thread$Thread$mediaCategories<TRes>
    implements CopyWith$Query$Thread$Thread$mediaCategories<TRes> {
  _CopyWithStubImpl$Query$Thread$Thread$mediaCategories(this._res);

  TRes _res;

  call({
    int? id,
    Query$Thread$Thread$mediaCategories$title? title,
    Query$Thread$Thread$mediaCategories$coverImage? coverImage,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Thread$Thread$mediaCategories$title<TRes> get title =>
      CopyWith$Query$Thread$Thread$mediaCategories$title.stub(_res);
  CopyWith$Query$Thread$Thread$mediaCategories$coverImage<TRes>
      get coverImage =>
          CopyWith$Query$Thread$Thread$mediaCategories$coverImage.stub(_res);
}

class Query$Thread$Thread$mediaCategories$title {
  Query$Thread$Thread$mediaCategories$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$Thread$Thread$mediaCategories$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Thread$Thread$mediaCategories$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Thread$Thread$mediaCategories$title) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
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

extension UtilityExtension$Query$Thread$Thread$mediaCategories$title
    on Query$Thread$Thread$mediaCategories$title {
  CopyWith$Query$Thread$Thread$mediaCategories$title<
          Query$Thread$Thread$mediaCategories$title>
      get copyWith => CopyWith$Query$Thread$Thread$mediaCategories$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Thread$Thread$mediaCategories$title<TRes> {
  factory CopyWith$Query$Thread$Thread$mediaCategories$title(
    Query$Thread$Thread$mediaCategories$title instance,
    TRes Function(Query$Thread$Thread$mediaCategories$title) then,
  ) = _CopyWithImpl$Query$Thread$Thread$mediaCategories$title;

  factory CopyWith$Query$Thread$Thread$mediaCategories$title.stub(TRes res) =
      _CopyWithStubImpl$Query$Thread$Thread$mediaCategories$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Thread$Thread$mediaCategories$title<TRes>
    implements CopyWith$Query$Thread$Thread$mediaCategories$title<TRes> {
  _CopyWithImpl$Query$Thread$Thread$mediaCategories$title(
    this._instance,
    this._then,
  );

  final Query$Thread$Thread$mediaCategories$title _instance;

  final TRes Function(Query$Thread$Thread$mediaCategories$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Thread$Thread$mediaCategories$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Thread$Thread$mediaCategories$title<TRes>
    implements CopyWith$Query$Thread$Thread$mediaCategories$title<TRes> {
  _CopyWithStubImpl$Query$Thread$Thread$mediaCategories$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Thread$Thread$mediaCategories$coverImage {
  Query$Thread$Thread$mediaCategories$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$Thread$Thread$mediaCategories$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Thread$Thread$mediaCategories$coverImage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Thread$Thread$mediaCategories$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Query$Thread$Thread$mediaCategories$coverImage
    on Query$Thread$Thread$mediaCategories$coverImage {
  CopyWith$Query$Thread$Thread$mediaCategories$coverImage<
          Query$Thread$Thread$mediaCategories$coverImage>
      get copyWith => CopyWith$Query$Thread$Thread$mediaCategories$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Thread$Thread$mediaCategories$coverImage<TRes> {
  factory CopyWith$Query$Thread$Thread$mediaCategories$coverImage(
    Query$Thread$Thread$mediaCategories$coverImage instance,
    TRes Function(Query$Thread$Thread$mediaCategories$coverImage) then,
  ) = _CopyWithImpl$Query$Thread$Thread$mediaCategories$coverImage;

  factory CopyWith$Query$Thread$Thread$mediaCategories$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Thread$Thread$mediaCategories$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Thread$Thread$mediaCategories$coverImage<TRes>
    implements CopyWith$Query$Thread$Thread$mediaCategories$coverImage<TRes> {
  _CopyWithImpl$Query$Thread$Thread$mediaCategories$coverImage(
    this._instance,
    this._then,
  );

  final Query$Thread$Thread$mediaCategories$coverImage _instance;

  final TRes Function(Query$Thread$Thread$mediaCategories$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Thread$Thread$mediaCategories$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Thread$Thread$mediaCategories$coverImage<TRes>
    implements CopyWith$Query$Thread$Thread$mediaCategories$coverImage<TRes> {
  _CopyWithStubImpl$Query$Thread$Thread$mediaCategories$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$ThreadComments {
  factory Variables$Query$ThreadComments({
    int? threadId,
    int? page,
  }) =>
      Variables$Query$ThreadComments._({
        if (threadId != null) r'threadId': threadId,
        if (page != null) r'page': page,
      });

  Variables$Query$ThreadComments._(this._$data);

  factory Variables$Query$ThreadComments.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('threadId')) {
      final l$threadId = data['threadId'];
      result$data['threadId'] = (l$threadId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$ThreadComments._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get threadId => (_$data['threadId'] as int?);
  int? get page => (_$data['page'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('threadId')) {
      final l$threadId = threadId;
      result$data['threadId'] = l$threadId;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$ThreadComments<Variables$Query$ThreadComments>
      get copyWith => CopyWith$Variables$Query$ThreadComments(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ThreadComments) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$threadId = threadId;
    final lOther$threadId = other.threadId;
    if (_$data.containsKey('threadId') !=
        other._$data.containsKey('threadId')) {
      return false;
    }
    if (l$threadId != lOther$threadId) {
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
    final l$threadId = threadId;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('threadId') ? l$threadId : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$ThreadComments<TRes> {
  factory CopyWith$Variables$Query$ThreadComments(
    Variables$Query$ThreadComments instance,
    TRes Function(Variables$Query$ThreadComments) then,
  ) = _CopyWithImpl$Variables$Query$ThreadComments;

  factory CopyWith$Variables$Query$ThreadComments.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ThreadComments;

  TRes call({
    int? threadId,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$ThreadComments<TRes>
    implements CopyWith$Variables$Query$ThreadComments<TRes> {
  _CopyWithImpl$Variables$Query$ThreadComments(
    this._instance,
    this._then,
  );

  final Variables$Query$ThreadComments _instance;

  final TRes Function(Variables$Query$ThreadComments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? threadId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$ThreadComments._({
        ..._instance._$data,
        if (threadId != _undefined) 'threadId': (threadId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ThreadComments<TRes>
    implements CopyWith$Variables$Query$ThreadComments<TRes> {
  _CopyWithStubImpl$Variables$Query$ThreadComments(this._res);

  TRes _res;

  call({
    int? threadId,
    int? page,
  }) =>
      _res;
}

class Query$ThreadComments {
  Query$ThreadComments({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$ThreadComments.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$ThreadComments(
      Page: l$Page == null
          ? null
          : Query$ThreadComments$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ThreadComments$Page? Page;

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
    if (!(other is Query$ThreadComments) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$ThreadComments on Query$ThreadComments {
  CopyWith$Query$ThreadComments<Query$ThreadComments> get copyWith =>
      CopyWith$Query$ThreadComments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ThreadComments<TRes> {
  factory CopyWith$Query$ThreadComments(
    Query$ThreadComments instance,
    TRes Function(Query$ThreadComments) then,
  ) = _CopyWithImpl$Query$ThreadComments;

  factory CopyWith$Query$ThreadComments.stub(TRes res) =
      _CopyWithStubImpl$Query$ThreadComments;

  TRes call({
    Query$ThreadComments$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$ThreadComments$Page<TRes> get Page;
}

class _CopyWithImpl$Query$ThreadComments<TRes>
    implements CopyWith$Query$ThreadComments<TRes> {
  _CopyWithImpl$Query$ThreadComments(
    this._instance,
    this._then,
  );

  final Query$ThreadComments _instance;

  final TRes Function(Query$ThreadComments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ThreadComments(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$ThreadComments$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ThreadComments$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$ThreadComments$Page.stub(_then(_instance))
        : CopyWith$Query$ThreadComments$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$ThreadComments<TRes>
    implements CopyWith$Query$ThreadComments<TRes> {
  _CopyWithStubImpl$Query$ThreadComments(this._res);

  TRes _res;

  call({
    Query$ThreadComments$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ThreadComments$Page<TRes> get Page =>
      CopyWith$Query$ThreadComments$Page.stub(_res);
}

const documentNodeQueryThreadComments = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ThreadComments'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'threadId')),
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
        name: NameNode(value: 'Page'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '15'),
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
                name: NameNode(value: 'total'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'perPage'),
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
                name: NameNode(value: 'lastPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
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
            name: NameNode(value: 'threadComments'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'threadId'),
                value: VariableNode(name: NameNode(value: 'threadId')),
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
                name: NameNode(value: 'threadId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'comment'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isLiked'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'likeCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'user'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: 'donatorTier'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'donatorBadge'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'moderatorRoles'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'avatar'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'large'),
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
                name: NameNode(value: 'childComments'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isLocked'),
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
]);
Query$ThreadComments _parserFn$Query$ThreadComments(
        Map<String, dynamic> data) =>
    Query$ThreadComments.fromJson(data);
typedef OnQueryComplete$Query$ThreadComments = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ThreadComments?,
);

class Options$Query$ThreadComments
    extends graphql.QueryOptions<Query$ThreadComments> {
  Options$Query$ThreadComments({
    String? operationName,
    Variables$Query$ThreadComments? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ThreadComments? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ThreadComments? onComplete,
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
                    data == null ? null : _parserFn$Query$ThreadComments(data),
                  ),
          onError: onError,
          document: documentNodeQueryThreadComments,
          parserFn: _parserFn$Query$ThreadComments,
        );

  final OnQueryComplete$Query$ThreadComments? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ThreadComments
    extends graphql.WatchQueryOptions<Query$ThreadComments> {
  WatchOptions$Query$ThreadComments({
    String? operationName,
    Variables$Query$ThreadComments? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ThreadComments? typedOptimisticResult,
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
          document: documentNodeQueryThreadComments,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ThreadComments,
        );
}

class FetchMoreOptions$Query$ThreadComments extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ThreadComments({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$ThreadComments? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryThreadComments,
        );
}

extension ClientExtension$Query$ThreadComments on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ThreadComments>> query$ThreadComments(
          [Options$Query$ThreadComments? options]) async =>
      await this.query(options ?? Options$Query$ThreadComments());
  graphql.ObservableQuery<Query$ThreadComments> watchQuery$ThreadComments(
          [WatchOptions$Query$ThreadComments? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ThreadComments());
  void writeQuery$ThreadComments({
    required Query$ThreadComments data,
    Variables$Query$ThreadComments? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryThreadComments),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ThreadComments? readQuery$ThreadComments({
    Variables$Query$ThreadComments? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryThreadComments),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ThreadComments.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ThreadComments> useQuery$ThreadComments(
        [Options$Query$ThreadComments? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$ThreadComments());
graphql.ObservableQuery<Query$ThreadComments> useWatchQuery$ThreadComments(
        [WatchOptions$Query$ThreadComments? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$ThreadComments());

class Query$ThreadComments$Widget
    extends graphql_flutter.Query<Query$ThreadComments> {
  Query$ThreadComments$Widget({
    widgets.Key? key,
    Options$Query$ThreadComments? options,
    required graphql_flutter.QueryBuilder<Query$ThreadComments> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$ThreadComments(),
          builder: builder,
        );
}

class Query$ThreadComments$Page {
  Query$ThreadComments$Page({
    this.pageInfo,
    this.threadComments,
    this.$__typename = 'Page',
  });

  factory Query$ThreadComments$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$threadComments = json['threadComments'];
    final l$$__typename = json['__typename'];
    return Query$ThreadComments$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$ThreadComments$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      threadComments: (l$threadComments as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$ThreadComments$Page$threadComments.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ThreadComments$Page$pageInfo? pageInfo;

  final List<Query$ThreadComments$Page$threadComments?>? threadComments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$threadComments = threadComments;
    _resultData['threadComments'] =
        l$threadComments?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$threadComments = threadComments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$threadComments == null
          ? null
          : Object.hashAll(l$threadComments.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ThreadComments$Page) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$threadComments = threadComments;
    final lOther$threadComments = other.threadComments;
    if (l$threadComments != null && lOther$threadComments != null) {
      if (l$threadComments.length != lOther$threadComments.length) {
        return false;
      }
      for (int i = 0; i < l$threadComments.length; i++) {
        final l$threadComments$entry = l$threadComments[i];
        final lOther$threadComments$entry = lOther$threadComments[i];
        if (l$threadComments$entry != lOther$threadComments$entry) {
          return false;
        }
      }
    } else if (l$threadComments != lOther$threadComments) {
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

extension UtilityExtension$Query$ThreadComments$Page
    on Query$ThreadComments$Page {
  CopyWith$Query$ThreadComments$Page<Query$ThreadComments$Page> get copyWith =>
      CopyWith$Query$ThreadComments$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ThreadComments$Page<TRes> {
  factory CopyWith$Query$ThreadComments$Page(
    Query$ThreadComments$Page instance,
    TRes Function(Query$ThreadComments$Page) then,
  ) = _CopyWithImpl$Query$ThreadComments$Page;

  factory CopyWith$Query$ThreadComments$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$ThreadComments$Page;

  TRes call({
    Query$ThreadComments$Page$pageInfo? pageInfo,
    List<Query$ThreadComments$Page$threadComments?>? threadComments,
    String? $__typename,
  });
  CopyWith$Query$ThreadComments$Page$pageInfo<TRes> get pageInfo;
  TRes threadComments(
      Iterable<Query$ThreadComments$Page$threadComments?>? Function(
              Iterable<
                  CopyWith$Query$ThreadComments$Page$threadComments<
                      Query$ThreadComments$Page$threadComments>?>?)
          _fn);
}

class _CopyWithImpl$Query$ThreadComments$Page<TRes>
    implements CopyWith$Query$ThreadComments$Page<TRes> {
  _CopyWithImpl$Query$ThreadComments$Page(
    this._instance,
    this._then,
  );

  final Query$ThreadComments$Page _instance;

  final TRes Function(Query$ThreadComments$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? threadComments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ThreadComments$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$ThreadComments$Page$pageInfo?),
        threadComments: threadComments == _undefined
            ? _instance.threadComments
            : (threadComments
                as List<Query$ThreadComments$Page$threadComments?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ThreadComments$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$ThreadComments$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$ThreadComments$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes threadComments(
          Iterable<Query$ThreadComments$Page$threadComments?>? Function(
                  Iterable<
                      CopyWith$Query$ThreadComments$Page$threadComments<
                          Query$ThreadComments$Page$threadComments>?>?)
              _fn) =>
      call(
          threadComments: _fn(_instance.threadComments?.map((e) => e == null
              ? null
              : CopyWith$Query$ThreadComments$Page$threadComments(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$ThreadComments$Page<TRes>
    implements CopyWith$Query$ThreadComments$Page<TRes> {
  _CopyWithStubImpl$Query$ThreadComments$Page(this._res);

  TRes _res;

  call({
    Query$ThreadComments$Page$pageInfo? pageInfo,
    List<Query$ThreadComments$Page$threadComments?>? threadComments,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ThreadComments$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$ThreadComments$Page$pageInfo.stub(_res);
  threadComments(_fn) => _res;
}

class Query$ThreadComments$Page$pageInfo {
  Query$ThreadComments$Page$pageInfo({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$ThreadComments$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$perPage = json['perPage'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$ThreadComments$Page$pageInfo(
      total: (l$total as int?),
      perPage: (l$perPage as int?),
      currentPage: (l$currentPage as int?),
      lastPage: (l$lastPage as int?),
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final int? perPage;

  final int? currentPage;

  final int? lastPage;

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$perPage = perPage;
    _resultData['perPage'] = l$perPage;
    final l$currentPage = currentPage;
    _resultData['currentPage'] = l$currentPage;
    final l$lastPage = lastPage;
    _resultData['lastPage'] = l$lastPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$perPage = perPage;
    final l$currentPage = currentPage;
    final l$lastPage = lastPage;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$perPage,
      l$currentPage,
      l$lastPage,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ThreadComments$Page$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (l$perPage != lOther$perPage) {
      return false;
    }
    final l$currentPage = currentPage;
    final lOther$currentPage = other.currentPage;
    if (l$currentPage != lOther$currentPage) {
      return false;
    }
    final l$lastPage = lastPage;
    final lOther$lastPage = other.lastPage;
    if (l$lastPage != lOther$lastPage) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$ThreadComments$Page$pageInfo
    on Query$ThreadComments$Page$pageInfo {
  CopyWith$Query$ThreadComments$Page$pageInfo<
          Query$ThreadComments$Page$pageInfo>
      get copyWith => CopyWith$Query$ThreadComments$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ThreadComments$Page$pageInfo<TRes> {
  factory CopyWith$Query$ThreadComments$Page$pageInfo(
    Query$ThreadComments$Page$pageInfo instance,
    TRes Function(Query$ThreadComments$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$ThreadComments$Page$pageInfo;

  factory CopyWith$Query$ThreadComments$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$ThreadComments$Page$pageInfo;

  TRes call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ThreadComments$Page$pageInfo<TRes>
    implements CopyWith$Query$ThreadComments$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$ThreadComments$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ThreadComments$Page$pageInfo _instance;

  final TRes Function(Query$ThreadComments$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? perPage = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ThreadComments$Page$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        perPage: perPage == _undefined ? _instance.perPage : (perPage as int?),
        currentPage: currentPage == _undefined
            ? _instance.currentPage
            : (currentPage as int?),
        lastPage:
            lastPage == _undefined ? _instance.lastPage : (lastPage as int?),
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ThreadComments$Page$pageInfo<TRes>
    implements CopyWith$Query$ThreadComments$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$ThreadComments$Page$pageInfo(this._res);

  TRes _res;

  call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$ThreadComments$Page$threadComments {
  Query$ThreadComments$Page$threadComments({
    required this.id,
    this.threadId,
    this.comment,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.user,
    this.childComments,
    this.isLocked,
    this.$__typename = 'ThreadComment',
  });

  factory Query$ThreadComments$Page$threadComments.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$threadId = json['threadId'];
    final l$comment = json['comment'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$childComments = json['childComments'];
    final l$isLocked = json['isLocked'];
    final l$$__typename = json['__typename'];
    return Query$ThreadComments$Page$threadComments(
      id: (l$id as int),
      threadId: (l$threadId as int?),
      comment: (l$comment as String?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Query$ThreadComments$Page$threadComments$user.fromJson(
              (l$user as Map<String, dynamic>)),
      childComments: (l$childComments as Map<String, dynamic>?),
      isLocked: (l$isLocked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? threadId;

  final String? comment;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final Query$ThreadComments$Page$threadComments$user? user;

  final Map<String, dynamic>? childComments;

  final bool? isLocked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$threadId = threadId;
    _resultData['threadId'] = l$threadId;
    final l$comment = comment;
    _resultData['comment'] = l$comment;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$childComments = childComments;
    _resultData['childComments'] = l$childComments;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$threadId = threadId;
    final l$comment = comment;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$childComments = childComments;
    final l$isLocked = isLocked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$threadId,
      l$comment,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$user,
      l$childComments,
      l$isLocked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ThreadComments$Page$threadComments) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$threadId = threadId;
    final lOther$threadId = other.threadId;
    if (l$threadId != lOther$threadId) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (l$comment != lOther$comment) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$childComments = childComments;
    final lOther$childComments = other.childComments;
    if (l$childComments != lOther$childComments) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
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

extension UtilityExtension$Query$ThreadComments$Page$threadComments
    on Query$ThreadComments$Page$threadComments {
  CopyWith$Query$ThreadComments$Page$threadComments<
          Query$ThreadComments$Page$threadComments>
      get copyWith => CopyWith$Query$ThreadComments$Page$threadComments(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ThreadComments$Page$threadComments<TRes> {
  factory CopyWith$Query$ThreadComments$Page$threadComments(
    Query$ThreadComments$Page$threadComments instance,
    TRes Function(Query$ThreadComments$Page$threadComments) then,
  ) = _CopyWithImpl$Query$ThreadComments$Page$threadComments;

  factory CopyWith$Query$ThreadComments$Page$threadComments.stub(TRes res) =
      _CopyWithStubImpl$Query$ThreadComments$Page$threadComments;

  TRes call({
    int? id,
    int? threadId,
    String? comment,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Query$ThreadComments$Page$threadComments$user? user,
    Map<String, dynamic>? childComments,
    bool? isLocked,
    String? $__typename,
  });
  CopyWith$Query$ThreadComments$Page$threadComments$user<TRes> get user;
}

class _CopyWithImpl$Query$ThreadComments$Page$threadComments<TRes>
    implements CopyWith$Query$ThreadComments$Page$threadComments<TRes> {
  _CopyWithImpl$Query$ThreadComments$Page$threadComments(
    this._instance,
    this._then,
  );

  final Query$ThreadComments$Page$threadComments _instance;

  final TRes Function(Query$ThreadComments$Page$threadComments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? threadId = _undefined,
    Object? comment = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? childComments = _undefined,
    Object? isLocked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ThreadComments$Page$threadComments(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        threadId:
            threadId == _undefined ? _instance.threadId : (threadId as int?),
        comment:
            comment == _undefined ? _instance.comment : (comment as String?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user: user == _undefined
            ? _instance.user
            : (user as Query$ThreadComments$Page$threadComments$user?),
        childComments: childComments == _undefined
            ? _instance.childComments
            : (childComments as Map<String, dynamic>?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ThreadComments$Page$threadComments$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$ThreadComments$Page$threadComments$user.stub(
            _then(_instance))
        : CopyWith$Query$ThreadComments$Page$threadComments$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$ThreadComments$Page$threadComments<TRes>
    implements CopyWith$Query$ThreadComments$Page$threadComments<TRes> {
  _CopyWithStubImpl$Query$ThreadComments$Page$threadComments(this._res);

  TRes _res;

  call({
    int? id,
    int? threadId,
    String? comment,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Query$ThreadComments$Page$threadComments$user? user,
    Map<String, dynamic>? childComments,
    bool? isLocked,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ThreadComments$Page$threadComments$user<TRes> get user =>
      CopyWith$Query$ThreadComments$Page$threadComments$user.stub(_res);
}

class Query$ThreadComments$Page$threadComments$user {
  Query$ThreadComments$Page$threadComments$user({
    required this.id,
    required this.name,
    this.donatorTier,
    this.donatorBadge,
    this.moderatorRoles,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$ThreadComments$Page$threadComments$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$donatorTier = json['donatorTier'];
    final l$donatorBadge = json['donatorBadge'];
    final l$moderatorRoles = json['moderatorRoles'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$ThreadComments$Page$threadComments$user(
      id: (l$id as int),
      name: (l$name as String),
      donatorTier: (l$donatorTier as int?),
      donatorBadge: (l$donatorBadge as String?),
      moderatorRoles: (l$moderatorRoles as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$ModRole((e as String)))
          .toList(),
      avatar: l$avatar == null
          ? null
          : Query$ThreadComments$Page$threadComments$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? donatorTier;

  final String? donatorBadge;

  final List<Enum$ModRole?>? moderatorRoles;

  final Query$ThreadComments$Page$threadComments$user$avatar? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$donatorTier = donatorTier;
    _resultData['donatorTier'] = l$donatorTier;
    final l$donatorBadge = donatorBadge;
    _resultData['donatorBadge'] = l$donatorBadge;
    final l$moderatorRoles = moderatorRoles;
    _resultData['moderatorRoles'] = l$moderatorRoles
        ?.map((e) => e == null ? null : toJson$Enum$ModRole(e))
        .toList();
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$donatorTier = donatorTier;
    final l$donatorBadge = donatorBadge;
    final l$moderatorRoles = moderatorRoles;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$donatorTier,
      l$donatorBadge,
      l$moderatorRoles == null
          ? null
          : Object.hashAll(l$moderatorRoles.map((v) => v)),
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ThreadComments$Page$threadComments$user) ||
        runtimeType != other.runtimeType) {
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
    final l$donatorTier = donatorTier;
    final lOther$donatorTier = other.donatorTier;
    if (l$donatorTier != lOther$donatorTier) {
      return false;
    }
    final l$donatorBadge = donatorBadge;
    final lOther$donatorBadge = other.donatorBadge;
    if (l$donatorBadge != lOther$donatorBadge) {
      return false;
    }
    final l$moderatorRoles = moderatorRoles;
    final lOther$moderatorRoles = other.moderatorRoles;
    if (l$moderatorRoles != null && lOther$moderatorRoles != null) {
      if (l$moderatorRoles.length != lOther$moderatorRoles.length) {
        return false;
      }
      for (int i = 0; i < l$moderatorRoles.length; i++) {
        final l$moderatorRoles$entry = l$moderatorRoles[i];
        final lOther$moderatorRoles$entry = lOther$moderatorRoles[i];
        if (l$moderatorRoles$entry != lOther$moderatorRoles$entry) {
          return false;
        }
      }
    } else if (l$moderatorRoles != lOther$moderatorRoles) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtension$Query$ThreadComments$Page$threadComments$user
    on Query$ThreadComments$Page$threadComments$user {
  CopyWith$Query$ThreadComments$Page$threadComments$user<
          Query$ThreadComments$Page$threadComments$user>
      get copyWith => CopyWith$Query$ThreadComments$Page$threadComments$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ThreadComments$Page$threadComments$user<TRes> {
  factory CopyWith$Query$ThreadComments$Page$threadComments$user(
    Query$ThreadComments$Page$threadComments$user instance,
    TRes Function(Query$ThreadComments$Page$threadComments$user) then,
  ) = _CopyWithImpl$Query$ThreadComments$Page$threadComments$user;

  factory CopyWith$Query$ThreadComments$Page$threadComments$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ThreadComments$Page$threadComments$user;

  TRes call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$ThreadComments$Page$threadComments$user$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$ThreadComments$Page$threadComments$user$avatar<TRes>
      get avatar;
}

class _CopyWithImpl$Query$ThreadComments$Page$threadComments$user<TRes>
    implements CopyWith$Query$ThreadComments$Page$threadComments$user<TRes> {
  _CopyWithImpl$Query$ThreadComments$Page$threadComments$user(
    this._instance,
    this._then,
  );

  final Query$ThreadComments$Page$threadComments$user _instance;

  final TRes Function(Query$ThreadComments$Page$threadComments$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? donatorTier = _undefined,
    Object? donatorBadge = _undefined,
    Object? moderatorRoles = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ThreadComments$Page$threadComments$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        donatorTier: donatorTier == _undefined
            ? _instance.donatorTier
            : (donatorTier as int?),
        donatorBadge: donatorBadge == _undefined
            ? _instance.donatorBadge
            : (donatorBadge as String?),
        moderatorRoles: moderatorRoles == _undefined
            ? _instance.moderatorRoles
            : (moderatorRoles as List<Enum$ModRole?>?),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$ThreadComments$Page$threadComments$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ThreadComments$Page$threadComments$user$avatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$ThreadComments$Page$threadComments$user$avatar.stub(
            _then(_instance))
        : CopyWith$Query$ThreadComments$Page$threadComments$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$ThreadComments$Page$threadComments$user<TRes>
    implements CopyWith$Query$ThreadComments$Page$threadComments$user<TRes> {
  _CopyWithStubImpl$Query$ThreadComments$Page$threadComments$user(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$ThreadComments$Page$threadComments$user$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ThreadComments$Page$threadComments$user$avatar<TRes>
      get avatar =>
          CopyWith$Query$ThreadComments$Page$threadComments$user$avatar.stub(
              _res);
}

class Query$ThreadComments$Page$threadComments$user$avatar {
  Query$ThreadComments$Page$threadComments$user$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$ThreadComments$Page$threadComments$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$ThreadComments$Page$threadComments$user$avatar(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ThreadComments$Page$threadComments$user$avatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Query$ThreadComments$Page$threadComments$user$avatar
    on Query$ThreadComments$Page$threadComments$user$avatar {
  CopyWith$Query$ThreadComments$Page$threadComments$user$avatar<
          Query$ThreadComments$Page$threadComments$user$avatar>
      get copyWith =>
          CopyWith$Query$ThreadComments$Page$threadComments$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ThreadComments$Page$threadComments$user$avatar<
    TRes> {
  factory CopyWith$Query$ThreadComments$Page$threadComments$user$avatar(
    Query$ThreadComments$Page$threadComments$user$avatar instance,
    TRes Function(Query$ThreadComments$Page$threadComments$user$avatar) then,
  ) = _CopyWithImpl$Query$ThreadComments$Page$threadComments$user$avatar;

  factory CopyWith$Query$ThreadComments$Page$threadComments$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ThreadComments$Page$threadComments$user$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ThreadComments$Page$threadComments$user$avatar<TRes>
    implements
        CopyWith$Query$ThreadComments$Page$threadComments$user$avatar<TRes> {
  _CopyWithImpl$Query$ThreadComments$Page$threadComments$user$avatar(
    this._instance,
    this._then,
  );

  final Query$ThreadComments$Page$threadComments$user$avatar _instance;

  final TRes Function(Query$ThreadComments$Page$threadComments$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ThreadComments$Page$threadComments$user$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ThreadComments$Page$threadComments$user$avatar<
        TRes>
    implements
        CopyWith$Query$ThreadComments$Page$threadComments$user$avatar<TRes> {
  _CopyWithStubImpl$Query$ThreadComments$Page$threadComments$user$avatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
