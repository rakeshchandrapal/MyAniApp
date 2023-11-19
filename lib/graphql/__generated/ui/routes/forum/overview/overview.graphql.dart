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

class Query$ForumOverview {
  Query$ForumOverview({
    this.recent,
    this.$new,
    this.release,
    this.$__typename = 'Query',
  });

  factory Query$ForumOverview.fromJson(Map<String, dynamic> json) {
    final l$recent = json['recent'];
    final l$$new = json['new'];
    final l$release = json['release'];
    final l$$__typename = json['__typename'];
    return Query$ForumOverview(
      recent: l$recent == null
          ? null
          : Query$ForumOverview$recent.fromJson(
              (l$recent as Map<String, dynamic>)),
      $new: l$$new == null
          ? null
          : Query$ForumOverview$new.fromJson((l$$new as Map<String, dynamic>)),
      release: l$release == null
          ? null
          : Query$ForumOverview$release.fromJson(
              (l$release as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ForumOverview$recent? recent;

  final Query$ForumOverview$new? $new;

  final Query$ForumOverview$release? release;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recent = recent;
    _resultData['recent'] = l$recent?.toJson();
    final l$$new = $new;
    _resultData['new'] = l$$new?.toJson();
    final l$release = release;
    _resultData['release'] = l$release?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recent = recent;
    final l$$new = $new;
    final l$release = release;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$recent,
      l$$new,
      l$release,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ForumOverview) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$recent = recent;
    final lOther$recent = other.recent;
    if (l$recent != lOther$recent) {
      return false;
    }
    final l$$new = $new;
    final lOther$$new = other.$new;
    if (l$$new != lOther$$new) {
      return false;
    }
    final l$release = release;
    final lOther$release = other.release;
    if (l$release != lOther$release) {
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

extension UtilityExtension$Query$ForumOverview on Query$ForumOverview {
  CopyWith$Query$ForumOverview<Query$ForumOverview> get copyWith =>
      CopyWith$Query$ForumOverview(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ForumOverview<TRes> {
  factory CopyWith$Query$ForumOverview(
    Query$ForumOverview instance,
    TRes Function(Query$ForumOverview) then,
  ) = _CopyWithImpl$Query$ForumOverview;

  factory CopyWith$Query$ForumOverview.stub(TRes res) =
      _CopyWithStubImpl$Query$ForumOverview;

  TRes call({
    Query$ForumOverview$recent? recent,
    Query$ForumOverview$new? $new,
    Query$ForumOverview$release? release,
    String? $__typename,
  });
  CopyWith$Query$ForumOverview$recent<TRes> get recent;
  CopyWith$Query$ForumOverview$new<TRes> get $new;
  CopyWith$Query$ForumOverview$release<TRes> get release;
}

class _CopyWithImpl$Query$ForumOverview<TRes>
    implements CopyWith$Query$ForumOverview<TRes> {
  _CopyWithImpl$Query$ForumOverview(
    this._instance,
    this._then,
  );

  final Query$ForumOverview _instance;

  final TRes Function(Query$ForumOverview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recent = _undefined,
    Object? $new = _undefined,
    Object? release = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ForumOverview(
        recent: recent == _undefined
            ? _instance.recent
            : (recent as Query$ForumOverview$recent?),
        $new: $new == _undefined
            ? _instance.$new
            : ($new as Query$ForumOverview$new?),
        release: release == _undefined
            ? _instance.release
            : (release as Query$ForumOverview$release?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ForumOverview$recent<TRes> get recent {
    final local$recent = _instance.recent;
    return local$recent == null
        ? CopyWith$Query$ForumOverview$recent.stub(_then(_instance))
        : CopyWith$Query$ForumOverview$recent(
            local$recent, (e) => call(recent: e));
  }

  CopyWith$Query$ForumOverview$new<TRes> get $new {
    final local$$new = _instance.$new;
    return local$$new == null
        ? CopyWith$Query$ForumOverview$new.stub(_then(_instance))
        : CopyWith$Query$ForumOverview$new(local$$new, (e) => call($new: e));
  }

  CopyWith$Query$ForumOverview$release<TRes> get release {
    final local$release = _instance.release;
    return local$release == null
        ? CopyWith$Query$ForumOverview$release.stub(_then(_instance))
        : CopyWith$Query$ForumOverview$release(
            local$release, (e) => call(release: e));
  }
}

class _CopyWithStubImpl$Query$ForumOverview<TRes>
    implements CopyWith$Query$ForumOverview<TRes> {
  _CopyWithStubImpl$Query$ForumOverview(this._res);

  TRes _res;

  call({
    Query$ForumOverview$recent? recent,
    Query$ForumOverview$new? $new,
    Query$ForumOverview$release? release,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ForumOverview$recent<TRes> get recent =>
      CopyWith$Query$ForumOverview$recent.stub(_res);

  CopyWith$Query$ForumOverview$new<TRes> get $new =>
      CopyWith$Query$ForumOverview$new.stub(_res);

  CopyWith$Query$ForumOverview$release<TRes> get release =>
      CopyWith$Query$ForumOverview$release.stub(_res);
}

const documentNodeQueryForumOverview = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ForumOverview'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'recent'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '14'),
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
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'IS_STICKY')),
                  EnumValueNode(name: NameNode(value: 'REPLIED_AT_DESC')),
                ]),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'new'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '5'),
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
                value: ListValueNode(
                    values: [EnumValueNode(name: NameNode(value: 'ID_DESC'))]),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'release'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '4'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'threads'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'categoryId'),
                value: IntValueNode(value: '5'),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'REPLIED_AT_DESC'))
                ]),
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
  fragmentDefinitionThreadFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionUserFragment,
]);
Query$ForumOverview _parserFn$Query$ForumOverview(Map<String, dynamic> data) =>
    Query$ForumOverview.fromJson(data);
typedef OnQueryComplete$Query$ForumOverview = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ForumOverview?,
);

class Options$Query$ForumOverview
    extends graphql.QueryOptions<Query$ForumOverview> {
  Options$Query$ForumOverview({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ForumOverview? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ForumOverview? onComplete,
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
                    data == null ? null : _parserFn$Query$ForumOverview(data),
                  ),
          onError: onError,
          document: documentNodeQueryForumOverview,
          parserFn: _parserFn$Query$ForumOverview,
        );

  final OnQueryComplete$Query$ForumOverview? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ForumOverview
    extends graphql.WatchQueryOptions<Query$ForumOverview> {
  WatchOptions$Query$ForumOverview({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ForumOverview? typedOptimisticResult,
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
          document: documentNodeQueryForumOverview,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ForumOverview,
        );
}

class FetchMoreOptions$Query$ForumOverview extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ForumOverview(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryForumOverview,
        );
}

extension ClientExtension$Query$ForumOverview on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ForumOverview>> query$ForumOverview(
          [Options$Query$ForumOverview? options]) async =>
      await this.query(options ?? Options$Query$ForumOverview());
  graphql.ObservableQuery<Query$ForumOverview> watchQuery$ForumOverview(
          [WatchOptions$Query$ForumOverview? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ForumOverview());
  void writeQuery$ForumOverview({
    required Query$ForumOverview data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryForumOverview)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ForumOverview? readQuery$ForumOverview({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryForumOverview)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ForumOverview.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ForumOverview> useQuery$ForumOverview(
        [Options$Query$ForumOverview? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$ForumOverview());
graphql.ObservableQuery<Query$ForumOverview> useWatchQuery$ForumOverview(
        [WatchOptions$Query$ForumOverview? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$ForumOverview());

class Query$ForumOverview$Widget
    extends graphql_flutter.Query<Query$ForumOverview> {
  Query$ForumOverview$Widget({
    widgets.Key? key,
    Options$Query$ForumOverview? options,
    required graphql_flutter.QueryBuilder<Query$ForumOverview> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$ForumOverview(),
          builder: builder,
        );
}

class Query$ForumOverview$recent {
  Query$ForumOverview$recent({
    this.threads,
    this.$__typename = 'Page',
  });

  factory Query$ForumOverview$recent.fromJson(Map<String, dynamic> json) {
    final l$threads = json['threads'];
    final l$$__typename = json['__typename'];
    return Query$ForumOverview$recent(
      threads: (l$threads as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ThreadFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ThreadFragment?>? threads;

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
    if (!(other is Query$ForumOverview$recent) ||
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

extension UtilityExtension$Query$ForumOverview$recent
    on Query$ForumOverview$recent {
  CopyWith$Query$ForumOverview$recent<Query$ForumOverview$recent>
      get copyWith => CopyWith$Query$ForumOverview$recent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ForumOverview$recent<TRes> {
  factory CopyWith$Query$ForumOverview$recent(
    Query$ForumOverview$recent instance,
    TRes Function(Query$ForumOverview$recent) then,
  ) = _CopyWithImpl$Query$ForumOverview$recent;

  factory CopyWith$Query$ForumOverview$recent.stub(TRes res) =
      _CopyWithStubImpl$Query$ForumOverview$recent;

  TRes call({
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  });
  TRes threads(
      Iterable<Fragment$ThreadFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$ThreadFragment<Fragment$ThreadFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$ForumOverview$recent<TRes>
    implements CopyWith$Query$ForumOverview$recent<TRes> {
  _CopyWithImpl$Query$ForumOverview$recent(
    this._instance,
    this._then,
  );

  final Query$ForumOverview$recent _instance;

  final TRes Function(Query$ForumOverview$recent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? threads = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ForumOverview$recent(
        threads: threads == _undefined
            ? _instance.threads
            : (threads as List<Fragment$ThreadFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

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

class _CopyWithStubImpl$Query$ForumOverview$recent<TRes>
    implements CopyWith$Query$ForumOverview$recent<TRes> {
  _CopyWithStubImpl$Query$ForumOverview$recent(this._res);

  TRes _res;

  call({
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  }) =>
      _res;

  threads(_fn) => _res;
}

class Query$ForumOverview$new {
  Query$ForumOverview$new({
    this.threads,
    this.$__typename = 'Page',
  });

  factory Query$ForumOverview$new.fromJson(Map<String, dynamic> json) {
    final l$threads = json['threads'];
    final l$$__typename = json['__typename'];
    return Query$ForumOverview$new(
      threads: (l$threads as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ThreadFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ThreadFragment?>? threads;

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
    if (!(other is Query$ForumOverview$new) ||
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

extension UtilityExtension$Query$ForumOverview$new on Query$ForumOverview$new {
  CopyWith$Query$ForumOverview$new<Query$ForumOverview$new> get copyWith =>
      CopyWith$Query$ForumOverview$new(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ForumOverview$new<TRes> {
  factory CopyWith$Query$ForumOverview$new(
    Query$ForumOverview$new instance,
    TRes Function(Query$ForumOverview$new) then,
  ) = _CopyWithImpl$Query$ForumOverview$new;

  factory CopyWith$Query$ForumOverview$new.stub(TRes res) =
      _CopyWithStubImpl$Query$ForumOverview$new;

  TRes call({
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  });
  TRes threads(
      Iterable<Fragment$ThreadFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$ThreadFragment<Fragment$ThreadFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$ForumOverview$new<TRes>
    implements CopyWith$Query$ForumOverview$new<TRes> {
  _CopyWithImpl$Query$ForumOverview$new(
    this._instance,
    this._then,
  );

  final Query$ForumOverview$new _instance;

  final TRes Function(Query$ForumOverview$new) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? threads = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ForumOverview$new(
        threads: threads == _undefined
            ? _instance.threads
            : (threads as List<Fragment$ThreadFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

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

class _CopyWithStubImpl$Query$ForumOverview$new<TRes>
    implements CopyWith$Query$ForumOverview$new<TRes> {
  _CopyWithStubImpl$Query$ForumOverview$new(this._res);

  TRes _res;

  call({
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  }) =>
      _res;

  threads(_fn) => _res;
}

class Query$ForumOverview$release {
  Query$ForumOverview$release({
    this.threads,
    this.$__typename = 'Page',
  });

  factory Query$ForumOverview$release.fromJson(Map<String, dynamic> json) {
    final l$threads = json['threads'];
    final l$$__typename = json['__typename'];
    return Query$ForumOverview$release(
      threads: (l$threads as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ThreadFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ThreadFragment?>? threads;

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
    if (!(other is Query$ForumOverview$release) ||
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

extension UtilityExtension$Query$ForumOverview$release
    on Query$ForumOverview$release {
  CopyWith$Query$ForumOverview$release<Query$ForumOverview$release>
      get copyWith => CopyWith$Query$ForumOverview$release(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ForumOverview$release<TRes> {
  factory CopyWith$Query$ForumOverview$release(
    Query$ForumOverview$release instance,
    TRes Function(Query$ForumOverview$release) then,
  ) = _CopyWithImpl$Query$ForumOverview$release;

  factory CopyWith$Query$ForumOverview$release.stub(TRes res) =
      _CopyWithStubImpl$Query$ForumOverview$release;

  TRes call({
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  });
  TRes threads(
      Iterable<Fragment$ThreadFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$ThreadFragment<Fragment$ThreadFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$ForumOverview$release<TRes>
    implements CopyWith$Query$ForumOverview$release<TRes> {
  _CopyWithImpl$Query$ForumOverview$release(
    this._instance,
    this._then,
  );

  final Query$ForumOverview$release _instance;

  final TRes Function(Query$ForumOverview$release) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? threads = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ForumOverview$release(
        threads: threads == _undefined
            ? _instance.threads
            : (threads as List<Fragment$ThreadFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

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

class _CopyWithStubImpl$Query$ForumOverview$release<TRes>
    implements CopyWith$Query$ForumOverview$release<TRes> {
  _CopyWithStubImpl$Query$ForumOverview$release(this._res);

  TRes _res;

  call({
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  }) =>
      _res;

  threads(_fn) => _res;
}
