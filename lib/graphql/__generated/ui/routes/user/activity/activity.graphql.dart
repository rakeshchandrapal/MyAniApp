// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../../graphql/fragments.graphql.dart';
import '../../../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Activities {
  factory Variables$Query$Activities({
    int? userId,
    Enum$ActivityType? activityType,
    int? page,
  }) =>
      Variables$Query$Activities._({
        if (userId != null) r'userId': userId,
        if (activityType != null) r'activityType': activityType,
        if (page != null) r'page': page,
      });

  Variables$Query$Activities._(this._$data);

  factory Variables$Query$Activities.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('activityType')) {
      final l$activityType = data['activityType'];
      result$data['activityType'] = l$activityType == null
          ? null
          : fromJson$Enum$ActivityType((l$activityType as String));
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Activities._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);
  Enum$ActivityType? get activityType =>
      (_$data['activityType'] as Enum$ActivityType?);
  int? get page => (_$data['page'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('activityType')) {
      final l$activityType = activityType;
      result$data['activityType'] = l$activityType == null
          ? null
          : toJson$Enum$ActivityType(l$activityType);
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Activities<Variables$Query$Activities>
      get copyWith => CopyWith$Variables$Query$Activities(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Activities) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$activityType = activityType;
    final lOther$activityType = other.activityType;
    if (_$data.containsKey('activityType') !=
        other._$data.containsKey('activityType')) {
      return false;
    }
    if (l$activityType != lOther$activityType) {
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
    final l$userId = userId;
    final l$activityType = activityType;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('activityType') ? l$activityType : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Activities<TRes> {
  factory CopyWith$Variables$Query$Activities(
    Variables$Query$Activities instance,
    TRes Function(Variables$Query$Activities) then,
  ) = _CopyWithImpl$Variables$Query$Activities;

  factory CopyWith$Variables$Query$Activities.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Activities;

  TRes call({
    int? userId,
    Enum$ActivityType? activityType,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$Activities<TRes>
    implements CopyWith$Variables$Query$Activities<TRes> {
  _CopyWithImpl$Variables$Query$Activities(
    this._instance,
    this._then,
  );

  final Variables$Query$Activities _instance;

  final TRes Function(Variables$Query$Activities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? activityType = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Activities._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (activityType != _undefined)
          'activityType': (activityType as Enum$ActivityType?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Activities<TRes>
    implements CopyWith$Variables$Query$Activities<TRes> {
  _CopyWithStubImpl$Variables$Query$Activities(this._res);

  TRes _res;

  call({
    int? userId,
    Enum$ActivityType? activityType,
    int? page,
  }) =>
      _res;
}

class Query$Activities {
  Query$Activities({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Activities.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Activities(
      Page: l$Page == null
          ? null
          : Query$Activities$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Activities$Page? Page;

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
    if (!(other is Query$Activities) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Activities on Query$Activities {
  CopyWith$Query$Activities<Query$Activities> get copyWith =>
      CopyWith$Query$Activities(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Activities<TRes> {
  factory CopyWith$Query$Activities(
    Query$Activities instance,
    TRes Function(Query$Activities) then,
  ) = _CopyWithImpl$Query$Activities;

  factory CopyWith$Query$Activities.stub(TRes res) =
      _CopyWithStubImpl$Query$Activities;

  TRes call({
    Query$Activities$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Activities$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Activities<TRes>
    implements CopyWith$Query$Activities<TRes> {
  _CopyWithImpl$Query$Activities(
    this._instance,
    this._then,
  );

  final Query$Activities _instance;

  final TRes Function(Query$Activities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activities(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$Activities$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Activities$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Activities$Page.stub(_then(_instance))
        : CopyWith$Query$Activities$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Activities<TRes>
    implements CopyWith$Query$Activities<TRes> {
  _CopyWithStubImpl$Query$Activities(this._res);

  TRes _res;

  call({
    Query$Activities$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Activities$Page<TRes> get Page =>
      CopyWith$Query$Activities$Page.stub(_res);
}

const documentNodeQueryActivities = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Activities'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'activityType')),
        type: NamedTypeNode(
          name: NameNode(value: 'ActivityType'),
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
            value: IntValueNode(value: '25'),
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
            name: NameNode(value: 'activities'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'activityType')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'PINNED')),
                  EnumValueNode(name: NameNode(value: 'ID_DESC')),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'TextActivity'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'TextActivity'),
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
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'ListActivity'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ListActivity'),
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
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'MessageActivity'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'MessageActivity'),
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
  fragmentDefinitionPageInfo,
  fragmentDefinitionTextActivity,
  fragmentDefinitionUserFragment,
  fragmentDefinitionListActivity,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionMessageActivity,
]);
Query$Activities _parserFn$Query$Activities(Map<String, dynamic> data) =>
    Query$Activities.fromJson(data);
typedef OnQueryComplete$Query$Activities = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Activities?,
);

class Options$Query$Activities extends graphql.QueryOptions<Query$Activities> {
  Options$Query$Activities({
    String? operationName,
    Variables$Query$Activities? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Activities? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Activities? onComplete,
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
                    data == null ? null : _parserFn$Query$Activities(data),
                  ),
          onError: onError,
          document: documentNodeQueryActivities,
          parserFn: _parserFn$Query$Activities,
        );

  final OnQueryComplete$Query$Activities? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Activities
    extends graphql.WatchQueryOptions<Query$Activities> {
  WatchOptions$Query$Activities({
    String? operationName,
    Variables$Query$Activities? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Activities? typedOptimisticResult,
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
          document: documentNodeQueryActivities,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Activities,
        );
}

class FetchMoreOptions$Query$Activities extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Activities({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Activities? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryActivities,
        );
}

extension ClientExtension$Query$Activities on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Activities>> query$Activities(
          [Options$Query$Activities? options]) async =>
      await this.query(options ?? Options$Query$Activities());
  graphql.ObservableQuery<Query$Activities> watchQuery$Activities(
          [WatchOptions$Query$Activities? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Activities());
  void writeQuery$Activities({
    required Query$Activities data,
    Variables$Query$Activities? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryActivities),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Activities? readQuery$Activities({
    Variables$Query$Activities? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryActivities),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Activities.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Activities> useQuery$Activities(
        [Options$Query$Activities? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Activities());
graphql.ObservableQuery<Query$Activities> useWatchQuery$Activities(
        [WatchOptions$Query$Activities? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Activities());

class Query$Activities$Widget extends graphql_flutter.Query<Query$Activities> {
  Query$Activities$Widget({
    widgets.Key? key,
    Options$Query$Activities? options,
    required graphql_flutter.QueryBuilder<Query$Activities> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Activities(),
          builder: builder,
        );
}

class Query$Activities$Page {
  Query$Activities$Page({
    this.pageInfo,
    this.activities,
    this.$__typename = 'Page',
  });

  factory Query$Activities$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$activities = json['activities'];
    final l$$__typename = json['__typename'];
    return Query$Activities$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      activities: (l$activities as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Activities$Page$activities.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Activities$Page$activities?>? activities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$activities = activities;
    _resultData['activities'] = l$activities?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$activities = activities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$activities == null ? null : Object.hashAll(l$activities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activities$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$activities = activities;
    final lOther$activities = other.activities;
    if (l$activities != null && lOther$activities != null) {
      if (l$activities.length != lOther$activities.length) {
        return false;
      }
      for (int i = 0; i < l$activities.length; i++) {
        final l$activities$entry = l$activities[i];
        final lOther$activities$entry = lOther$activities[i];
        if (l$activities$entry != lOther$activities$entry) {
          return false;
        }
      }
    } else if (l$activities != lOther$activities) {
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

extension UtilityExtension$Query$Activities$Page on Query$Activities$Page {
  CopyWith$Query$Activities$Page<Query$Activities$Page> get copyWith =>
      CopyWith$Query$Activities$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Activities$Page<TRes> {
  factory CopyWith$Query$Activities$Page(
    Query$Activities$Page instance,
    TRes Function(Query$Activities$Page) then,
  ) = _CopyWithImpl$Query$Activities$Page;

  factory CopyWith$Query$Activities$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Activities$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Activities$Page$activities?>? activities,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes activities(
      Iterable<Query$Activities$Page$activities?>? Function(
              Iterable<
                  CopyWith$Query$Activities$Page$activities<
                      Query$Activities$Page$activities>?>?)
          _fn);
}

class _CopyWithImpl$Query$Activities$Page<TRes>
    implements CopyWith$Query$Activities$Page<TRes> {
  _CopyWithImpl$Query$Activities$Page(
    this._instance,
    this._then,
  );

  final Query$Activities$Page _instance;

  final TRes Function(Query$Activities$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? activities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activities$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        activities: activities == _undefined
            ? _instance.activities
            : (activities as List<Query$Activities$Page$activities?>?),
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

  TRes activities(
          Iterable<Query$Activities$Page$activities?>? Function(
                  Iterable<
                      CopyWith$Query$Activities$Page$activities<
                          Query$Activities$Page$activities>?>?)
              _fn) =>
      call(
          activities: _fn(_instance.activities?.map((e) => e == null
              ? null
              : CopyWith$Query$Activities$Page$activities(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Activities$Page<TRes>
    implements CopyWith$Query$Activities$Page<TRes> {
  _CopyWithStubImpl$Query$Activities$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Activities$Page$activities?>? activities,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  activities(_fn) => _res;
}

class Query$Activities$Page$activities {
  Query$Activities$Page$activities({required this.$__typename});

  factory Query$Activities$Page$activities.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TextActivity":
        return Query$Activities$Page$activities$$TextActivity.fromJson(json);

      case "ListActivity":
        return Query$Activities$Page$activities$$ListActivity.fromJson(json);

      case "MessageActivity":
        return Query$Activities$Page$activities$$MessageActivity.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Activities$Page$activities(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activities$Page$activities) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Activities$Page$activities
    on Query$Activities$Page$activities {
  CopyWith$Query$Activities$Page$activities<Query$Activities$Page$activities>
      get copyWith => CopyWith$Query$Activities$Page$activities(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$Activities$Page$activities$$TextActivity)
        textActivity,
    required _T Function(Query$Activities$Page$activities$$ListActivity)
        listActivity,
    required _T Function(Query$Activities$Page$activities$$MessageActivity)
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        return textActivity(
            this as Query$Activities$Page$activities$$TextActivity);

      case "ListActivity":
        return listActivity(
            this as Query$Activities$Page$activities$$ListActivity);

      case "MessageActivity":
        return messageActivity(
            this as Query$Activities$Page$activities$$MessageActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Activities$Page$activities$$TextActivity)? textActivity,
    _T Function(Query$Activities$Page$activities$$ListActivity)? listActivity,
    _T Function(Query$Activities$Page$activities$$MessageActivity)?
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as Query$Activities$Page$activities$$TextActivity);
        } else {
          return orElse();
        }

      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as Query$Activities$Page$activities$$ListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as Query$Activities$Page$activities$$MessageActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Activities$Page$activities<TRes> {
  factory CopyWith$Query$Activities$Page$activities(
    Query$Activities$Page$activities instance,
    TRes Function(Query$Activities$Page$activities) then,
  ) = _CopyWithImpl$Query$Activities$Page$activities;

  factory CopyWith$Query$Activities$Page$activities.stub(TRes res) =
      _CopyWithStubImpl$Query$Activities$Page$activities;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Activities$Page$activities<TRes>
    implements CopyWith$Query$Activities$Page$activities<TRes> {
  _CopyWithImpl$Query$Activities$Page$activities(
    this._instance,
    this._then,
  );

  final Query$Activities$Page$activities _instance;

  final TRes Function(Query$Activities$Page$activities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Activities$Page$activities(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Activities$Page$activities<TRes>
    implements CopyWith$Query$Activities$Page$activities<TRes> {
  _CopyWithStubImpl$Query$Activities$Page$activities(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Activities$Page$activities$$TextActivity
    implements Fragment$TextActivity, Query$Activities$Page$activities {
  Query$Activities$Page$activities$$TextActivity({
    required this.id,
    this.userId,
    this.type,
    required this.replyCount,
    this.text,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.user,
    this.$__typename = 'TextActivity',
  });

  factory Query$Activities$Page$activities$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$replyCount = json['replyCount'];
    final l$text = json['text'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$Activities$Page$activities$$TextActivity(
      id: (l$id as int),
      userId: (l$userId as int?),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      replyCount: (l$replyCount as int),
      text: (l$text as String?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? userId;

  final Enum$ActivityType? type;

  final int replyCount;

  final String? text;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final Fragment$UserFragment? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$type = type;
    final l$replyCount = replyCount;
    final l$text = text;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$replyCount,
      l$text,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activities$Page$activities$$TextActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Activities$Page$activities$$TextActivity
    on Query$Activities$Page$activities$$TextActivity {
  CopyWith$Query$Activities$Page$activities$$TextActivity<
          Query$Activities$Page$activities$$TextActivity>
      get copyWith => CopyWith$Query$Activities$Page$activities$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activities$Page$activities$$TextActivity<TRes> {
  factory CopyWith$Query$Activities$Page$activities$$TextActivity(
    Query$Activities$Page$activities$$TextActivity instance,
    TRes Function(Query$Activities$Page$activities$$TextActivity) then,
  ) = _CopyWithImpl$Query$Activities$Page$activities$$TextActivity;

  factory CopyWith$Query$Activities$Page$activities$$TextActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Activities$Page$activities$$TextActivity;

  TRes call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    int? replyCount,
    String? text,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Activities$Page$activities$$TextActivity<TRes>
    implements CopyWith$Query$Activities$Page$activities$$TextActivity<TRes> {
  _CopyWithImpl$Query$Activities$Page$activities$$TextActivity(
    this._instance,
    this._then,
  );

  final Query$Activities$Page$activities$$TextActivity _instance;

  final TRes Function(Query$Activities$Page$activities$$TextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? replyCount = _undefined,
    Object? text = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activities$Page$activities$$TextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        text: text == _undefined ? _instance.text : (text as String?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Activities$Page$activities$$TextActivity<TRes>
    implements CopyWith$Query$Activities$Page$activities$$TextActivity<TRes> {
  _CopyWithStubImpl$Query$Activities$Page$activities$$TextActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    int? replyCount,
    String? text,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Activities$Page$activities$$ListActivity
    implements Fragment$ListActivity, Query$Activities$Page$activities {
  Query$Activities$Page$activities$$ListActivity({
    required this.id,
    this.userId,
    this.type,
    this.status,
    this.progress,
    required this.replyCount,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.user,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory Query$Activities$Page$activities$$ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$status = json['status'];
    final l$progress = json['progress'];
    final l$replyCount = json['replyCount'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Activities$Page$activities$$ListActivity(
      id: (l$id as int),
      userId: (l$userId as int?),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      status: (l$status as String?),
      progress: (l$progress as String?),
      replyCount: (l$replyCount as int),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Fragment$MediaFragment.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? userId;

  final Enum$ActivityType? type;

  final String? status;

  final String? progress;

  final int replyCount;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final Fragment$UserFragment? user;

  final Fragment$MediaFragment? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$status = status;
    _resultData['status'] = l$status;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$type = type;
    final l$status = status;
    final l$progress = progress;
    final l$replyCount = replyCount;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$status,
      l$progress,
      l$replyCount,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$user,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activities$Page$activities$$ListActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
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

extension UtilityExtension$Query$Activities$Page$activities$$ListActivity
    on Query$Activities$Page$activities$$ListActivity {
  CopyWith$Query$Activities$Page$activities$$ListActivity<
          Query$Activities$Page$activities$$ListActivity>
      get copyWith => CopyWith$Query$Activities$Page$activities$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activities$Page$activities$$ListActivity<TRes> {
  factory CopyWith$Query$Activities$Page$activities$$ListActivity(
    Query$Activities$Page$activities$$ListActivity instance,
    TRes Function(Query$Activities$Page$activities$$ListActivity) then,
  ) = _CopyWithImpl$Query$Activities$Page$activities$$ListActivity;

  factory CopyWith$Query$Activities$Page$activities$$ListActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Activities$Page$activities$$ListActivity;

  TRes call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    String? status,
    String? progress,
    int? replyCount,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    Fragment$MediaFragment? media,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
  CopyWith$Fragment$MediaFragment<TRes> get media;
}

class _CopyWithImpl$Query$Activities$Page$activities$$ListActivity<TRes>
    implements CopyWith$Query$Activities$Page$activities$$ListActivity<TRes> {
  _CopyWithImpl$Query$Activities$Page$activities$$ListActivity(
    this._instance,
    this._then,
  );

  final Query$Activities$Page$activities$$ListActivity _instance;

  final TRes Function(Query$Activities$Page$activities$$ListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? replyCount = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activities$Page$activities$$ListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        status: status == _undefined ? _instance.status : (status as String?),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$MediaFragment<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Activities$Page$activities$$ListActivity<TRes>
    implements CopyWith$Query$Activities$Page$activities$$ListActivity<TRes> {
  _CopyWithStubImpl$Query$Activities$Page$activities$$ListActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    String? status,
    String? progress,
    int? replyCount,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    Fragment$MediaFragment? media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
  CopyWith$Fragment$MediaFragment<TRes> get media =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

class Query$Activities$Page$activities$$MessageActivity
    implements Fragment$MessageActivity, Query$Activities$Page$activities {
  Query$Activities$Page$activities$$MessageActivity({
    required this.id,
    this.type,
    this.message,
    required this.replyCount,
    this.isPrivate,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.userId,
    this.messenger,
    this.$__typename = 'MessageActivity',
  });

  factory Query$Activities$Page$activities$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$message = json['message'];
    final l$replyCount = json['replyCount'];
    final l$isPrivate = json['isPrivate'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$userId = json['userId'];
    final l$messenger = json['messenger'];
    final l$$__typename = json['__typename'];
    return Query$Activities$Page$activities$$MessageActivity(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      message: (l$message as String?),
      replyCount: (l$replyCount as int),
      isPrivate: (l$isPrivate as bool?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      userId: (l$userId as int?),
      messenger: l$messenger == null
          ? null
          : Query$Activities$Page$activities$$MessageActivity$messenger
              .fromJson((l$messenger as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$ActivityType? type;

  final String? message;

  final int replyCount;

  final bool? isPrivate;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final int? userId;

  final Query$Activities$Page$activities$$MessageActivity$messenger? messenger;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$message = message;
    _resultData['message'] = l$message;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$isPrivate = isPrivate;
    _resultData['isPrivate'] = l$isPrivate;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$messenger = messenger;
    _resultData['messenger'] = l$messenger?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$message = message;
    final l$replyCount = replyCount;
    final l$isPrivate = isPrivate;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$userId = userId;
    final l$messenger = messenger;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$message,
      l$replyCount,
      l$isPrivate,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$userId,
      l$messenger,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activities$Page$activities$$MessageActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isPrivate = isPrivate;
    final lOther$isPrivate = other.isPrivate;
    if (l$isPrivate != lOther$isPrivate) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
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
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$messenger = messenger;
    final lOther$messenger = other.messenger;
    if (l$messenger != lOther$messenger) {
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

extension UtilityExtension$Query$Activities$Page$activities$$MessageActivity
    on Query$Activities$Page$activities$$MessageActivity {
  CopyWith$Query$Activities$Page$activities$$MessageActivity<
          Query$Activities$Page$activities$$MessageActivity>
      get copyWith =>
          CopyWith$Query$Activities$Page$activities$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activities$Page$activities$$MessageActivity<
    TRes> {
  factory CopyWith$Query$Activities$Page$activities$$MessageActivity(
    Query$Activities$Page$activities$$MessageActivity instance,
    TRes Function(Query$Activities$Page$activities$$MessageActivity) then,
  ) = _CopyWithImpl$Query$Activities$Page$activities$$MessageActivity;

  factory CopyWith$Query$Activities$Page$activities$$MessageActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Activities$Page$activities$$MessageActivity;

  TRes call({
    int? id,
    Enum$ActivityType? type,
    String? message,
    int? replyCount,
    bool? isPrivate,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    int? userId,
    Query$Activities$Page$activities$$MessageActivity$messenger? messenger,
    String? $__typename,
  });
  CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger<TRes>
      get messenger;
}

class _CopyWithImpl$Query$Activities$Page$activities$$MessageActivity<TRes>
    implements
        CopyWith$Query$Activities$Page$activities$$MessageActivity<TRes> {
  _CopyWithImpl$Query$Activities$Page$activities$$MessageActivity(
    this._instance,
    this._then,
  );

  final Query$Activities$Page$activities$$MessageActivity _instance;

  final TRes Function(Query$Activities$Page$activities$$MessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? message = _undefined,
    Object? replyCount = _undefined,
    Object? isPrivate = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? userId = _undefined,
    Object? messenger = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activities$Page$activities$$MessageActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        message:
            message == _undefined ? _instance.message : (message as String?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isPrivate: isPrivate == _undefined
            ? _instance.isPrivate
            : (isPrivate as bool?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        messenger: messenger == _undefined
            ? _instance.messenger
            : (messenger
                as Query$Activities$Page$activities$$MessageActivity$messenger?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger<TRes>
      get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger
            .stub(_then(_instance))
        : CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger(
            local$messenger, (e) => call(messenger: e));
  }
}

class _CopyWithStubImpl$Query$Activities$Page$activities$$MessageActivity<TRes>
    implements
        CopyWith$Query$Activities$Page$activities$$MessageActivity<TRes> {
  _CopyWithStubImpl$Query$Activities$Page$activities$$MessageActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$ActivityType? type,
    String? message,
    int? replyCount,
    bool? isPrivate,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    int? userId,
    Query$Activities$Page$activities$$MessageActivity$messenger? messenger,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger<TRes>
      get messenger =>
          CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger
              .stub(_res);
}

class Query$Activities$Page$activities$$MessageActivity$messenger
    implements Fragment$MessageActivity$messenger {
  Query$Activities$Page$activities$$MessageActivity$messenger({
    required this.id,
    required this.name,
    this.donatorTier,
    this.donatorBadge,
    this.moderatorRoles,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$Activities$Page$activities$$MessageActivity$messenger.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$donatorTier = json['donatorTier'];
    final l$donatorBadge = json['donatorBadge'];
    final l$moderatorRoles = json['moderatorRoles'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$Activities$Page$activities$$MessageActivity$messenger(
      id: (l$id as int),
      name: (l$name as String),
      donatorTier: (l$donatorTier as int?),
      donatorBadge: (l$donatorBadge as String?),
      moderatorRoles: (l$moderatorRoles as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$ModRole((e as String)))
          .toList(),
      avatar: l$avatar == null
          ? null
          : Query$Activities$Page$activities$$MessageActivity$messenger$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? donatorTier;

  final String? donatorBadge;

  final List<Enum$ModRole?>? moderatorRoles;

  final Query$Activities$Page$activities$$MessageActivity$messenger$avatar?
      avatar;

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
    if (!(other
            is Query$Activities$Page$activities$$MessageActivity$messenger) ||
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

extension UtilityExtension$Query$Activities$Page$activities$$MessageActivity$messenger
    on Query$Activities$Page$activities$$MessageActivity$messenger {
  CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger<
          Query$Activities$Page$activities$$MessageActivity$messenger>
      get copyWith =>
          CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger<
    TRes> {
  factory CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger(
    Query$Activities$Page$activities$$MessageActivity$messenger instance,
    TRes Function(Query$Activities$Page$activities$$MessageActivity$messenger)
        then,
  ) = _CopyWithImpl$Query$Activities$Page$activities$$MessageActivity$messenger;

  factory CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Activities$Page$activities$$MessageActivity$messenger;

  TRes call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$Activities$Page$activities$$MessageActivity$messenger$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$Activities$Page$activities$$MessageActivity$messenger<
        TRes>
    implements
        CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger<
            TRes> {
  _CopyWithImpl$Query$Activities$Page$activities$$MessageActivity$messenger(
    this._instance,
    this._then,
  );

  final Query$Activities$Page$activities$$MessageActivity$messenger _instance;

  final TRes Function(
      Query$Activities$Page$activities$$MessageActivity$messenger) _then;

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
      _then(Query$Activities$Page$activities$$MessageActivity$messenger(
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
            : (avatar
                as Query$Activities$Page$activities$$MessageActivity$messenger$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger$avatar
            .stub(_then(_instance))
        : CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$Activities$Page$activities$$MessageActivity$messenger<
        TRes>
    implements
        CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger<
            TRes> {
  _CopyWithStubImpl$Query$Activities$Page$activities$$MessageActivity$messenger(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$Activities$Page$activities$$MessageActivity$messenger$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger$avatar
              .stub(_res);
}

class Query$Activities$Page$activities$$MessageActivity$messenger$avatar
    implements Fragment$MessageActivity$messenger$avatar {
  Query$Activities$Page$activities$$MessageActivity$messenger$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$Activities$Page$activities$$MessageActivity$messenger$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Activities$Page$activities$$MessageActivity$messenger$avatar(
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
    if (!(other
            is Query$Activities$Page$activities$$MessageActivity$messenger$avatar) ||
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

extension UtilityExtension$Query$Activities$Page$activities$$MessageActivity$messenger$avatar
    on Query$Activities$Page$activities$$MessageActivity$messenger$avatar {
  CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger$avatar<
          Query$Activities$Page$activities$$MessageActivity$messenger$avatar>
      get copyWith =>
          CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger$avatar<
    TRes> {
  factory CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger$avatar(
    Query$Activities$Page$activities$$MessageActivity$messenger$avatar instance,
    TRes Function(
            Query$Activities$Page$activities$$MessageActivity$messenger$avatar)
        then,
  ) = _CopyWithImpl$Query$Activities$Page$activities$$MessageActivity$messenger$avatar;

  factory CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Activities$Page$activities$$MessageActivity$messenger$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Activities$Page$activities$$MessageActivity$messenger$avatar<
        TRes>
    implements
        CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger$avatar<
            TRes> {
  _CopyWithImpl$Query$Activities$Page$activities$$MessageActivity$messenger$avatar(
    this._instance,
    this._then,
  );

  final Query$Activities$Page$activities$$MessageActivity$messenger$avatar
      _instance;

  final TRes Function(
      Query$Activities$Page$activities$$MessageActivity$messenger$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activities$Page$activities$$MessageActivity$messenger$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Activities$Page$activities$$MessageActivity$messenger$avatar<
        TRes>
    implements
        CopyWith$Query$Activities$Page$activities$$MessageActivity$messenger$avatar<
            TRes> {
  _CopyWithStubImpl$Query$Activities$Page$activities$$MessageActivity$messenger$avatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
