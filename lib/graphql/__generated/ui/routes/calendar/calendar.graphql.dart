// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../graphql/fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$CalendarSchedule {
  factory Variables$Query$CalendarSchedule({
    int? start,
    int? end,
  }) =>
      Variables$Query$CalendarSchedule._({
        if (start != null) r'start': start,
        if (end != null) r'end': end,
      });

  Variables$Query$CalendarSchedule._(this._$data);

  factory Variables$Query$CalendarSchedule.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('start')) {
      final l$start = data['start'];
      result$data['start'] = (l$start as int?);
    }
    if (data.containsKey('end')) {
      final l$end = data['end'];
      result$data['end'] = (l$end as int?);
    }
    return Variables$Query$CalendarSchedule._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get start => (_$data['start'] as int?);

  int? get end => (_$data['end'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('start')) {
      final l$start = start;
      result$data['start'] = l$start;
    }
    if (_$data.containsKey('end')) {
      final l$end = end;
      result$data['end'] = l$end;
    }
    return result$data;
  }

  CopyWith$Variables$Query$CalendarSchedule<Variables$Query$CalendarSchedule>
      get copyWith => CopyWith$Variables$Query$CalendarSchedule(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$CalendarSchedule) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$start = start;
    final lOther$start = other.start;
    if (_$data.containsKey('start') != other._$data.containsKey('start')) {
      return false;
    }
    if (l$start != lOther$start) {
      return false;
    }
    final l$end = end;
    final lOther$end = other.end;
    if (_$data.containsKey('end') != other._$data.containsKey('end')) {
      return false;
    }
    if (l$end != lOther$end) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$start = start;
    final l$end = end;
    return Object.hashAll([
      _$data.containsKey('start') ? l$start : const {},
      _$data.containsKey('end') ? l$end : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$CalendarSchedule<TRes> {
  factory CopyWith$Variables$Query$CalendarSchedule(
    Variables$Query$CalendarSchedule instance,
    TRes Function(Variables$Query$CalendarSchedule) then,
  ) = _CopyWithImpl$Variables$Query$CalendarSchedule;

  factory CopyWith$Variables$Query$CalendarSchedule.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CalendarSchedule;

  TRes call({
    int? start,
    int? end,
  });
}

class _CopyWithImpl$Variables$Query$CalendarSchedule<TRes>
    implements CopyWith$Variables$Query$CalendarSchedule<TRes> {
  _CopyWithImpl$Variables$Query$CalendarSchedule(
    this._instance,
    this._then,
  );

  final Variables$Query$CalendarSchedule _instance;

  final TRes Function(Variables$Query$CalendarSchedule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? start = _undefined,
    Object? end = _undefined,
  }) =>
      _then(Variables$Query$CalendarSchedule._({
        ..._instance._$data,
        if (start != _undefined) 'start': (start as int?),
        if (end != _undefined) 'end': (end as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$CalendarSchedule<TRes>
    implements CopyWith$Variables$Query$CalendarSchedule<TRes> {
  _CopyWithStubImpl$Variables$Query$CalendarSchedule(this._res);

  TRes _res;

  call({
    int? start,
    int? end,
  }) =>
      _res;
}

class Query$CalendarSchedule {
  Query$CalendarSchedule({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$CalendarSchedule.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$CalendarSchedule(
      Page: l$Page == null
          ? null
          : Query$CalendarSchedule$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CalendarSchedule$Page? Page;

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
    if (!(other is Query$CalendarSchedule) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$CalendarSchedule on Query$CalendarSchedule {
  CopyWith$Query$CalendarSchedule<Query$CalendarSchedule> get copyWith =>
      CopyWith$Query$CalendarSchedule(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CalendarSchedule<TRes> {
  factory CopyWith$Query$CalendarSchedule(
    Query$CalendarSchedule instance,
    TRes Function(Query$CalendarSchedule) then,
  ) = _CopyWithImpl$Query$CalendarSchedule;

  factory CopyWith$Query$CalendarSchedule.stub(TRes res) =
      _CopyWithStubImpl$Query$CalendarSchedule;

  TRes call({
    Query$CalendarSchedule$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$CalendarSchedule$Page<TRes> get Page;
}

class _CopyWithImpl$Query$CalendarSchedule<TRes>
    implements CopyWith$Query$CalendarSchedule<TRes> {
  _CopyWithImpl$Query$CalendarSchedule(
    this._instance,
    this._then,
  );

  final Query$CalendarSchedule _instance;

  final TRes Function(Query$CalendarSchedule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CalendarSchedule(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$CalendarSchedule$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CalendarSchedule$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$CalendarSchedule$Page.stub(_then(_instance))
        : CopyWith$Query$CalendarSchedule$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$CalendarSchedule<TRes>
    implements CopyWith$Query$CalendarSchedule<TRes> {
  _CopyWithStubImpl$Query$CalendarSchedule(this._res);

  TRes _res;

  call({
    Query$CalendarSchedule$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CalendarSchedule$Page<TRes> get Page =>
      CopyWith$Query$CalendarSchedule$Page.stub(_res);
}

const documentNodeQueryCalendarSchedule = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CalendarSchedule'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'start')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'end')),
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
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '50'),
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
            name: NameNode(value: 'airingSchedules'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'airingAt_greater'),
                value: VariableNode(name: NameNode(value: 'start')),
              ),
              ArgumentNode(
                name: NameNode(value: 'airingAt_lesser'),
                value: VariableNode(name: NameNode(value: 'end')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'TIME')),
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
                name: NameNode(value: 'episode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'airingAt'),
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
  fragmentDefinitionMediaFragment,
]);
Query$CalendarSchedule _parserFn$Query$CalendarSchedule(
        Map<String, dynamic> data) =>
    Query$CalendarSchedule.fromJson(data);
typedef OnQueryComplete$Query$CalendarSchedule = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$CalendarSchedule?,
);

class Options$Query$CalendarSchedule
    extends graphql.QueryOptions<Query$CalendarSchedule> {
  Options$Query$CalendarSchedule({
    String? operationName,
    Variables$Query$CalendarSchedule? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CalendarSchedule? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CalendarSchedule? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$CalendarSchedule(data),
                  ),
          onError: onError,
          document: documentNodeQueryCalendarSchedule,
          parserFn: _parserFn$Query$CalendarSchedule,
        );

  final OnQueryComplete$Query$CalendarSchedule? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$CalendarSchedule
    extends graphql.WatchQueryOptions<Query$CalendarSchedule> {
  WatchOptions$Query$CalendarSchedule({
    String? operationName,
    Variables$Query$CalendarSchedule? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CalendarSchedule? typedOptimisticResult,
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
          document: documentNodeQueryCalendarSchedule,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$CalendarSchedule,
        );
}

class FetchMoreOptions$Query$CalendarSchedule extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CalendarSchedule({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$CalendarSchedule? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryCalendarSchedule,
        );
}

extension ClientExtension$Query$CalendarSchedule on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CalendarSchedule>> query$CalendarSchedule(
          [Options$Query$CalendarSchedule? options]) async =>
      await this.query(options ?? Options$Query$CalendarSchedule());
  graphql.ObservableQuery<Query$CalendarSchedule> watchQuery$CalendarSchedule(
          [WatchOptions$Query$CalendarSchedule? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$CalendarSchedule());
  void writeQuery$CalendarSchedule({
    required Query$CalendarSchedule data,
    Variables$Query$CalendarSchedule? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryCalendarSchedule),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$CalendarSchedule? readQuery$CalendarSchedule({
    Variables$Query$CalendarSchedule? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryCalendarSchedule),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CalendarSchedule.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CalendarSchedule>
    useQuery$CalendarSchedule([Options$Query$CalendarSchedule? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$CalendarSchedule());
graphql.ObservableQuery<Query$CalendarSchedule> useWatchQuery$CalendarSchedule(
        [WatchOptions$Query$CalendarSchedule? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$CalendarSchedule());

class Query$CalendarSchedule$Widget
    extends graphql_flutter.Query<Query$CalendarSchedule> {
  Query$CalendarSchedule$Widget({
    widgets.Key? key,
    Options$Query$CalendarSchedule? options,
    required graphql_flutter.QueryBuilder<Query$CalendarSchedule> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$CalendarSchedule(),
          builder: builder,
        );
}

class Query$CalendarSchedule$Page {
  Query$CalendarSchedule$Page({
    this.pageInfo,
    this.airingSchedules,
    this.$__typename = 'Page',
  });

  factory Query$CalendarSchedule$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$airingSchedules = json['airingSchedules'];
    final l$$__typename = json['__typename'];
    return Query$CalendarSchedule$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$CalendarSchedule$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      airingSchedules: (l$airingSchedules as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$CalendarSchedule$Page$airingSchedules.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CalendarSchedule$Page$pageInfo? pageInfo;

  final List<Query$CalendarSchedule$Page$airingSchedules?>? airingSchedules;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$airingSchedules = airingSchedules;
    _resultData['airingSchedules'] =
        l$airingSchedules?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$airingSchedules = airingSchedules;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$airingSchedules == null
          ? null
          : Object.hashAll(l$airingSchedules.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CalendarSchedule$Page) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$airingSchedules = airingSchedules;
    final lOther$airingSchedules = other.airingSchedules;
    if (l$airingSchedules != null && lOther$airingSchedules != null) {
      if (l$airingSchedules.length != lOther$airingSchedules.length) {
        return false;
      }
      for (int i = 0; i < l$airingSchedules.length; i++) {
        final l$airingSchedules$entry = l$airingSchedules[i];
        final lOther$airingSchedules$entry = lOther$airingSchedules[i];
        if (l$airingSchedules$entry != lOther$airingSchedules$entry) {
          return false;
        }
      }
    } else if (l$airingSchedules != lOther$airingSchedules) {
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

extension UtilityExtension$Query$CalendarSchedule$Page
    on Query$CalendarSchedule$Page {
  CopyWith$Query$CalendarSchedule$Page<Query$CalendarSchedule$Page>
      get copyWith => CopyWith$Query$CalendarSchedule$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CalendarSchedule$Page<TRes> {
  factory CopyWith$Query$CalendarSchedule$Page(
    Query$CalendarSchedule$Page instance,
    TRes Function(Query$CalendarSchedule$Page) then,
  ) = _CopyWithImpl$Query$CalendarSchedule$Page;

  factory CopyWith$Query$CalendarSchedule$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$CalendarSchedule$Page;

  TRes call({
    Query$CalendarSchedule$Page$pageInfo? pageInfo,
    List<Query$CalendarSchedule$Page$airingSchedules?>? airingSchedules,
    String? $__typename,
  });
  CopyWith$Query$CalendarSchedule$Page$pageInfo<TRes> get pageInfo;
  TRes airingSchedules(
      Iterable<Query$CalendarSchedule$Page$airingSchedules?>? Function(
              Iterable<
                  CopyWith$Query$CalendarSchedule$Page$airingSchedules<
                      Query$CalendarSchedule$Page$airingSchedules>?>?)
          _fn);
}

class _CopyWithImpl$Query$CalendarSchedule$Page<TRes>
    implements CopyWith$Query$CalendarSchedule$Page<TRes> {
  _CopyWithImpl$Query$CalendarSchedule$Page(
    this._instance,
    this._then,
  );

  final Query$CalendarSchedule$Page _instance;

  final TRes Function(Query$CalendarSchedule$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? airingSchedules = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CalendarSchedule$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$CalendarSchedule$Page$pageInfo?),
        airingSchedules: airingSchedules == _undefined
            ? _instance.airingSchedules
            : (airingSchedules
                as List<Query$CalendarSchedule$Page$airingSchedules?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CalendarSchedule$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$CalendarSchedule$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$CalendarSchedule$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes airingSchedules(
          Iterable<Query$CalendarSchedule$Page$airingSchedules?>? Function(
                  Iterable<
                      CopyWith$Query$CalendarSchedule$Page$airingSchedules<
                          Query$CalendarSchedule$Page$airingSchedules>?>?)
              _fn) =>
      call(
          airingSchedules: _fn(_instance.airingSchedules?.map((e) => e == null
              ? null
              : CopyWith$Query$CalendarSchedule$Page$airingSchedules(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$CalendarSchedule$Page<TRes>
    implements CopyWith$Query$CalendarSchedule$Page<TRes> {
  _CopyWithStubImpl$Query$CalendarSchedule$Page(this._res);

  TRes _res;

  call({
    Query$CalendarSchedule$Page$pageInfo? pageInfo,
    List<Query$CalendarSchedule$Page$airingSchedules?>? airingSchedules,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CalendarSchedule$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$CalendarSchedule$Page$pageInfo.stub(_res);

  airingSchedules(_fn) => _res;
}

class Query$CalendarSchedule$Page$pageInfo {
  Query$CalendarSchedule$Page$pageInfo({
    this.total,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$CalendarSchedule$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$CalendarSchedule$Page$pageInfo(
      total: (l$total as int?),
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CalendarSchedule$Page$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Query$CalendarSchedule$Page$pageInfo
    on Query$CalendarSchedule$Page$pageInfo {
  CopyWith$Query$CalendarSchedule$Page$pageInfo<
          Query$CalendarSchedule$Page$pageInfo>
      get copyWith => CopyWith$Query$CalendarSchedule$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CalendarSchedule$Page$pageInfo<TRes> {
  factory CopyWith$Query$CalendarSchedule$Page$pageInfo(
    Query$CalendarSchedule$Page$pageInfo instance,
    TRes Function(Query$CalendarSchedule$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$CalendarSchedule$Page$pageInfo;

  factory CopyWith$Query$CalendarSchedule$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$CalendarSchedule$Page$pageInfo;

  TRes call({
    int? total,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CalendarSchedule$Page$pageInfo<TRes>
    implements CopyWith$Query$CalendarSchedule$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$CalendarSchedule$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$CalendarSchedule$Page$pageInfo _instance;

  final TRes Function(Query$CalendarSchedule$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CalendarSchedule$Page$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CalendarSchedule$Page$pageInfo<TRes>
    implements CopyWith$Query$CalendarSchedule$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$CalendarSchedule$Page$pageInfo(this._res);

  TRes _res;

  call({
    int? total,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$CalendarSchedule$Page$airingSchedules {
  Query$CalendarSchedule$Page$airingSchedules({
    required this.id,
    required this.episode,
    required this.airingAt,
    this.media,
    this.$__typename = 'AiringSchedule',
  });

  factory Query$CalendarSchedule$Page$airingSchedules.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$episode = json['episode'];
    final l$airingAt = json['airingAt'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$CalendarSchedule$Page$airingSchedules(
      id: (l$id as int),
      episode: (l$episode as int),
      airingAt: (l$airingAt as int),
      media: l$media == null
          ? null
          : Fragment$MediaFragment.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int episode;

  final int airingAt;

  final Fragment$MediaFragment? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$airingAt = airingAt;
    _resultData['airingAt'] = l$airingAt;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$episode = episode;
    final l$airingAt = airingAt;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$episode,
      l$airingAt,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CalendarSchedule$Page$airingSchedules) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$airingAt = airingAt;
    final lOther$airingAt = other.airingAt;
    if (l$airingAt != lOther$airingAt) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Query$CalendarSchedule$Page$airingSchedules
    on Query$CalendarSchedule$Page$airingSchedules {
  CopyWith$Query$CalendarSchedule$Page$airingSchedules<
          Query$CalendarSchedule$Page$airingSchedules>
      get copyWith => CopyWith$Query$CalendarSchedule$Page$airingSchedules(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CalendarSchedule$Page$airingSchedules<TRes> {
  factory CopyWith$Query$CalendarSchedule$Page$airingSchedules(
    Query$CalendarSchedule$Page$airingSchedules instance,
    TRes Function(Query$CalendarSchedule$Page$airingSchedules) then,
  ) = _CopyWithImpl$Query$CalendarSchedule$Page$airingSchedules;

  factory CopyWith$Query$CalendarSchedule$Page$airingSchedules.stub(TRes res) =
      _CopyWithStubImpl$Query$CalendarSchedule$Page$airingSchedules;

  TRes call({
    int? id,
    int? episode,
    int? airingAt,
    Fragment$MediaFragment? media,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get media;
}

class _CopyWithImpl$Query$CalendarSchedule$Page$airingSchedules<TRes>
    implements CopyWith$Query$CalendarSchedule$Page$airingSchedules<TRes> {
  _CopyWithImpl$Query$CalendarSchedule$Page$airingSchedules(
    this._instance,
    this._then,
  );

  final Query$CalendarSchedule$Page$airingSchedules _instance;

  final TRes Function(Query$CalendarSchedule$Page$airingSchedules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? episode = _undefined,
    Object? airingAt = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CalendarSchedule$Page$airingSchedules(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        airingAt: airingAt == _undefined || airingAt == null
            ? _instance.airingAt
            : (airingAt as int),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaFragment<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$CalendarSchedule$Page$airingSchedules<TRes>
    implements CopyWith$Query$CalendarSchedule$Page$airingSchedules<TRes> {
  _CopyWithStubImpl$Query$CalendarSchedule$Page$airingSchedules(this._res);

  TRes _res;

  call({
    int? id,
    int? episode,
    int? airingAt,
    Fragment$MediaFragment? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFragment<TRes> get media =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}
