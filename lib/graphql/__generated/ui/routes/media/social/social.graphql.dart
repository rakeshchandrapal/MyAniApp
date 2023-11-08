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

class _CopyWithStubImpl$Query$Threads$Page<TRes>
    implements CopyWith$Query$Threads$Page<TRes> {
  _CopyWithStubImpl$Query$Threads$Page(this._res);

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
