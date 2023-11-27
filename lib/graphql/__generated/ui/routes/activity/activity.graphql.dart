// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../graphql/fragments.graphql.dart';
import '../../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Activity {
  factory Variables$Query$Activity({
    int? id,
    int? page,
  }) =>
      Variables$Query$Activity._({
        if (id != null) r'id': id,
        if (page != null) r'page': page,
      });

  Variables$Query$Activity._(this._$data);

  factory Variables$Query$Activity.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Activity._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Activity<Variables$Query$Activity> get copyWith =>
      CopyWith$Variables$Query$Activity(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Activity) ||
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
    final l$id = id;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Activity<TRes> {
  factory CopyWith$Variables$Query$Activity(
    Variables$Query$Activity instance,
    TRes Function(Variables$Query$Activity) then,
  ) = _CopyWithImpl$Variables$Query$Activity;

  factory CopyWith$Variables$Query$Activity.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Activity;

  TRes call({
    int? id,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$Activity<TRes>
    implements CopyWith$Variables$Query$Activity<TRes> {
  _CopyWithImpl$Variables$Query$Activity(
    this._instance,
    this._then,
  );

  final Variables$Query$Activity _instance;

  final TRes Function(Variables$Query$Activity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Activity._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Activity<TRes>
    implements CopyWith$Variables$Query$Activity<TRes> {
  _CopyWithStubImpl$Variables$Query$Activity(this._res);

  TRes _res;

  call({
    int? id,
    int? page,
  }) =>
      _res;
}

class Query$Activity {
  Query$Activity({
    this.activity,
    this.replies,
    this.$__typename = 'Query',
  });

  factory Query$Activity.fromJson(Map<String, dynamic> json) {
    final l$activity = json['activity'];
    final l$replies = json['replies'];
    final l$$__typename = json['__typename'];
    return Query$Activity(
      activity: l$activity == null
          ? null
          : Query$Activity$activity.fromJson(
              (l$activity as Map<String, dynamic>)),
      replies: l$replies == null
          ? null
          : Query$Activity$replies.fromJson(
              (l$replies as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Activity$activity? activity;

  final Query$Activity$replies? replies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$activity = activity;
    _resultData['activity'] = l$activity?.toJson();
    final l$replies = replies;
    _resultData['replies'] = l$replies?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$activity = activity;
    final l$replies = replies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$activity,
      l$replies,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activity) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$activity = activity;
    final lOther$activity = other.activity;
    if (l$activity != lOther$activity) {
      return false;
    }
    final l$replies = replies;
    final lOther$replies = other.replies;
    if (l$replies != lOther$replies) {
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

extension UtilityExtension$Query$Activity on Query$Activity {
  CopyWith$Query$Activity<Query$Activity> get copyWith =>
      CopyWith$Query$Activity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Activity<TRes> {
  factory CopyWith$Query$Activity(
    Query$Activity instance,
    TRes Function(Query$Activity) then,
  ) = _CopyWithImpl$Query$Activity;

  factory CopyWith$Query$Activity.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity;

  TRes call({
    Query$Activity$activity? activity,
    Query$Activity$replies? replies,
    String? $__typename,
  });
  CopyWith$Query$Activity$activity<TRes> get activity;
  CopyWith$Query$Activity$replies<TRes> get replies;
}

class _CopyWithImpl$Query$Activity<TRes>
    implements CopyWith$Query$Activity<TRes> {
  _CopyWithImpl$Query$Activity(
    this._instance,
    this._then,
  );

  final Query$Activity _instance;

  final TRes Function(Query$Activity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? activity = _undefined,
    Object? replies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activity(
        activity: activity == _undefined
            ? _instance.activity
            : (activity as Query$Activity$activity?),
        replies: replies == _undefined
            ? _instance.replies
            : (replies as Query$Activity$replies?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Activity$activity<TRes> get activity {
    final local$activity = _instance.activity;
    return local$activity == null
        ? CopyWith$Query$Activity$activity.stub(_then(_instance))
        : CopyWith$Query$Activity$activity(
            local$activity, (e) => call(activity: e));
  }

  CopyWith$Query$Activity$replies<TRes> get replies {
    final local$replies = _instance.replies;
    return local$replies == null
        ? CopyWith$Query$Activity$replies.stub(_then(_instance))
        : CopyWith$Query$Activity$replies(
            local$replies, (e) => call(replies: e));
  }
}

class _CopyWithStubImpl$Query$Activity<TRes>
    implements CopyWith$Query$Activity<TRes> {
  _CopyWithStubImpl$Query$Activity(this._res);

  TRes _res;

  call({
    Query$Activity$activity? activity,
    Query$Activity$replies? replies,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Activity$activity<TRes> get activity =>
      CopyWith$Query$Activity$activity.stub(_res);

  CopyWith$Query$Activity$replies<TRes> get replies =>
      CopyWith$Query$Activity$replies.stub(_res);
}

const documentNodeQueryActivity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Activity'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'Activity'),
        alias: NameNode(value: 'activity'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'replies'),
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
            name: NameNode(value: 'activityReplies'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'activityId'),
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
                name: NameNode(value: 'userId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'text'),
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
                name: NameNode(value: 'activityId'),
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
                name: NameNode(value: 'user'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserFragment'),
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
  fragmentDefinitionTextActivity,
  fragmentDefinitionUserFragment,
  fragmentDefinitionListActivity,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionMessageActivity,
  fragmentDefinitionPageInfo,
]);
Query$Activity _parserFn$Query$Activity(Map<String, dynamic> data) =>
    Query$Activity.fromJson(data);
typedef OnQueryComplete$Query$Activity = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Activity?,
);

class Options$Query$Activity extends graphql.QueryOptions<Query$Activity> {
  Options$Query$Activity({
    String? operationName,
    Variables$Query$Activity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Activity? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Activity? onComplete,
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
                    data == null ? null : _parserFn$Query$Activity(data),
                  ),
          onError: onError,
          document: documentNodeQueryActivity,
          parserFn: _parserFn$Query$Activity,
        );

  final OnQueryComplete$Query$Activity? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Activity
    extends graphql.WatchQueryOptions<Query$Activity> {
  WatchOptions$Query$Activity({
    String? operationName,
    Variables$Query$Activity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Activity? typedOptimisticResult,
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
          document: documentNodeQueryActivity,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Activity,
        );
}

class FetchMoreOptions$Query$Activity extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Activity({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Activity? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryActivity,
        );
}

extension ClientExtension$Query$Activity on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Activity>> query$Activity(
          [Options$Query$Activity? options]) async =>
      await this.query(options ?? Options$Query$Activity());
  graphql.ObservableQuery<Query$Activity> watchQuery$Activity(
          [WatchOptions$Query$Activity? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Activity());
  void writeQuery$Activity({
    required Query$Activity data,
    Variables$Query$Activity? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryActivity),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Activity? readQuery$Activity({
    Variables$Query$Activity? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryActivity),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Activity.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Activity> useQuery$Activity(
        [Options$Query$Activity? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Activity());
graphql.ObservableQuery<Query$Activity> useWatchQuery$Activity(
        [WatchOptions$Query$Activity? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Activity());

class Query$Activity$Widget extends graphql_flutter.Query<Query$Activity> {
  Query$Activity$Widget({
    widgets.Key? key,
    Options$Query$Activity? options,
    required graphql_flutter.QueryBuilder<Query$Activity> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Activity(),
          builder: builder,
        );
}

class Query$Activity$activity {
  Query$Activity$activity({required this.$__typename});

  factory Query$Activity$activity.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TextActivity":
        return Query$Activity$activity$$TextActivity.fromJson(json);

      case "ListActivity":
        return Query$Activity$activity$$ListActivity.fromJson(json);

      case "MessageActivity":
        return Query$Activity$activity$$MessageActivity.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Activity$activity($__typename: (l$$__typename as String));
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
    if (!(other is Query$Activity$activity) ||
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

extension UtilityExtension$Query$Activity$activity on Query$Activity$activity {
  CopyWith$Query$Activity$activity<Query$Activity$activity> get copyWith =>
      CopyWith$Query$Activity$activity(
        this,
        (i) => i,
      );
  _T when<_T>({
    required _T Function(Query$Activity$activity$$TextActivity) textActivity,
    required _T Function(Query$Activity$activity$$ListActivity) listActivity,
    required _T Function(Query$Activity$activity$$MessageActivity)
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        return textActivity(this as Query$Activity$activity$$TextActivity);

      case "ListActivity":
        return listActivity(this as Query$Activity$activity$$ListActivity);

      case "MessageActivity":
        return messageActivity(
            this as Query$Activity$activity$$MessageActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Activity$activity$$TextActivity)? textActivity,
    _T Function(Query$Activity$activity$$ListActivity)? listActivity,
    _T Function(Query$Activity$activity$$MessageActivity)? messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        if (textActivity != null) {
          return textActivity(this as Query$Activity$activity$$TextActivity);
        } else {
          return orElse();
        }

      case "ListActivity":
        if (listActivity != null) {
          return listActivity(this as Query$Activity$activity$$ListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as Query$Activity$activity$$MessageActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Activity$activity<TRes> {
  factory CopyWith$Query$Activity$activity(
    Query$Activity$activity instance,
    TRes Function(Query$Activity$activity) then,
  ) = _CopyWithImpl$Query$Activity$activity;

  factory CopyWith$Query$Activity$activity.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity$activity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Activity$activity<TRes>
    implements CopyWith$Query$Activity$activity<TRes> {
  _CopyWithImpl$Query$Activity$activity(
    this._instance,
    this._then,
  );

  final Query$Activity$activity _instance;

  final TRes Function(Query$Activity$activity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Activity$activity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Activity$activity<TRes>
    implements CopyWith$Query$Activity$activity<TRes> {
  _CopyWithStubImpl$Query$Activity$activity(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Activity$activity$$TextActivity
    implements Fragment$TextActivity, Query$Activity$activity {
  Query$Activity$activity$$TextActivity({
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

  factory Query$Activity$activity$$TextActivity.fromJson(
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
    return Query$Activity$activity$$TextActivity(
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
    if (!(other is Query$Activity$activity$$TextActivity) ||
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

extension UtilityExtension$Query$Activity$activity$$TextActivity
    on Query$Activity$activity$$TextActivity {
  CopyWith$Query$Activity$activity$$TextActivity<
          Query$Activity$activity$$TextActivity>
      get copyWith => CopyWith$Query$Activity$activity$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activity$activity$$TextActivity<TRes> {
  factory CopyWith$Query$Activity$activity$$TextActivity(
    Query$Activity$activity$$TextActivity instance,
    TRes Function(Query$Activity$activity$$TextActivity) then,
  ) = _CopyWithImpl$Query$Activity$activity$$TextActivity;

  factory CopyWith$Query$Activity$activity$$TextActivity.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity$activity$$TextActivity;

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

class _CopyWithImpl$Query$Activity$activity$$TextActivity<TRes>
    implements CopyWith$Query$Activity$activity$$TextActivity<TRes> {
  _CopyWithImpl$Query$Activity$activity$$TextActivity(
    this._instance,
    this._then,
  );

  final Query$Activity$activity$$TextActivity _instance;

  final TRes Function(Query$Activity$activity$$TextActivity) _then;

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
      _then(Query$Activity$activity$$TextActivity(
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

class _CopyWithStubImpl$Query$Activity$activity$$TextActivity<TRes>
    implements CopyWith$Query$Activity$activity$$TextActivity<TRes> {
  _CopyWithStubImpl$Query$Activity$activity$$TextActivity(this._res);

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

class Query$Activity$activity$$ListActivity
    implements Fragment$ListActivity, Query$Activity$activity {
  Query$Activity$activity$$ListActivity({
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

  factory Query$Activity$activity$$ListActivity.fromJson(
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
    return Query$Activity$activity$$ListActivity(
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
    if (!(other is Query$Activity$activity$$ListActivity) ||
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

extension UtilityExtension$Query$Activity$activity$$ListActivity
    on Query$Activity$activity$$ListActivity {
  CopyWith$Query$Activity$activity$$ListActivity<
          Query$Activity$activity$$ListActivity>
      get copyWith => CopyWith$Query$Activity$activity$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activity$activity$$ListActivity<TRes> {
  factory CopyWith$Query$Activity$activity$$ListActivity(
    Query$Activity$activity$$ListActivity instance,
    TRes Function(Query$Activity$activity$$ListActivity) then,
  ) = _CopyWithImpl$Query$Activity$activity$$ListActivity;

  factory CopyWith$Query$Activity$activity$$ListActivity.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity$activity$$ListActivity;

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

class _CopyWithImpl$Query$Activity$activity$$ListActivity<TRes>
    implements CopyWith$Query$Activity$activity$$ListActivity<TRes> {
  _CopyWithImpl$Query$Activity$activity$$ListActivity(
    this._instance,
    this._then,
  );

  final Query$Activity$activity$$ListActivity _instance;

  final TRes Function(Query$Activity$activity$$ListActivity) _then;

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
      _then(Query$Activity$activity$$ListActivity(
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

class _CopyWithStubImpl$Query$Activity$activity$$ListActivity<TRes>
    implements CopyWith$Query$Activity$activity$$ListActivity<TRes> {
  _CopyWithStubImpl$Query$Activity$activity$$ListActivity(this._res);

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

class Query$Activity$activity$$MessageActivity
    implements Fragment$MessageActivity, Query$Activity$activity {
  Query$Activity$activity$$MessageActivity({
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

  factory Query$Activity$activity$$MessageActivity.fromJson(
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
    return Query$Activity$activity$$MessageActivity(
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
          : Query$Activity$activity$$MessageActivity$messenger.fromJson(
              (l$messenger as Map<String, dynamic>)),
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

  final Query$Activity$activity$$MessageActivity$messenger? messenger;

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
    if (!(other is Query$Activity$activity$$MessageActivity) ||
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

extension UtilityExtension$Query$Activity$activity$$MessageActivity
    on Query$Activity$activity$$MessageActivity {
  CopyWith$Query$Activity$activity$$MessageActivity<
          Query$Activity$activity$$MessageActivity>
      get copyWith => CopyWith$Query$Activity$activity$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activity$activity$$MessageActivity<TRes> {
  factory CopyWith$Query$Activity$activity$$MessageActivity(
    Query$Activity$activity$$MessageActivity instance,
    TRes Function(Query$Activity$activity$$MessageActivity) then,
  ) = _CopyWithImpl$Query$Activity$activity$$MessageActivity;

  factory CopyWith$Query$Activity$activity$$MessageActivity.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity$activity$$MessageActivity;

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
    Query$Activity$activity$$MessageActivity$messenger? messenger,
    String? $__typename,
  });
  CopyWith$Query$Activity$activity$$MessageActivity$messenger<TRes>
      get messenger;
}

class _CopyWithImpl$Query$Activity$activity$$MessageActivity<TRes>
    implements CopyWith$Query$Activity$activity$$MessageActivity<TRes> {
  _CopyWithImpl$Query$Activity$activity$$MessageActivity(
    this._instance,
    this._then,
  );

  final Query$Activity$activity$$MessageActivity _instance;

  final TRes Function(Query$Activity$activity$$MessageActivity) _then;

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
      _then(Query$Activity$activity$$MessageActivity(
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
                as Query$Activity$activity$$MessageActivity$messenger?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Activity$activity$$MessageActivity$messenger<TRes>
      get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWith$Query$Activity$activity$$MessageActivity$messenger.stub(
            _then(_instance))
        : CopyWith$Query$Activity$activity$$MessageActivity$messenger(
            local$messenger, (e) => call(messenger: e));
  }
}

class _CopyWithStubImpl$Query$Activity$activity$$MessageActivity<TRes>
    implements CopyWith$Query$Activity$activity$$MessageActivity<TRes> {
  _CopyWithStubImpl$Query$Activity$activity$$MessageActivity(this._res);

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
    Query$Activity$activity$$MessageActivity$messenger? messenger,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Activity$activity$$MessageActivity$messenger<TRes>
      get messenger =>
          CopyWith$Query$Activity$activity$$MessageActivity$messenger.stub(
              _res);
}

class Query$Activity$activity$$MessageActivity$messenger
    implements Fragment$MessageActivity$messenger {
  Query$Activity$activity$$MessageActivity$messenger({
    required this.id,
    required this.name,
    this.donatorTier,
    this.donatorBadge,
    this.moderatorRoles,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$Activity$activity$$MessageActivity$messenger.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$donatorTier = json['donatorTier'];
    final l$donatorBadge = json['donatorBadge'];
    final l$moderatorRoles = json['moderatorRoles'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$Activity$activity$$MessageActivity$messenger(
      id: (l$id as int),
      name: (l$name as String),
      donatorTier: (l$donatorTier as int?),
      donatorBadge: (l$donatorBadge as String?),
      moderatorRoles: (l$moderatorRoles as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$ModRole((e as String)))
          .toList(),
      avatar: l$avatar == null
          ? null
          : Query$Activity$activity$$MessageActivity$messenger$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? donatorTier;

  final String? donatorBadge;

  final List<Enum$ModRole?>? moderatorRoles;

  final Query$Activity$activity$$MessageActivity$messenger$avatar? avatar;

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
    if (!(other is Query$Activity$activity$$MessageActivity$messenger) ||
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

extension UtilityExtension$Query$Activity$activity$$MessageActivity$messenger
    on Query$Activity$activity$$MessageActivity$messenger {
  CopyWith$Query$Activity$activity$$MessageActivity$messenger<
          Query$Activity$activity$$MessageActivity$messenger>
      get copyWith =>
          CopyWith$Query$Activity$activity$$MessageActivity$messenger(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activity$activity$$MessageActivity$messenger<
    TRes> {
  factory CopyWith$Query$Activity$activity$$MessageActivity$messenger(
    Query$Activity$activity$$MessageActivity$messenger instance,
    TRes Function(Query$Activity$activity$$MessageActivity$messenger) then,
  ) = _CopyWithImpl$Query$Activity$activity$$MessageActivity$messenger;

  factory CopyWith$Query$Activity$activity$$MessageActivity$messenger.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Activity$activity$$MessageActivity$messenger;

  TRes call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$Activity$activity$$MessageActivity$messenger$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$Activity$activity$$MessageActivity$messenger$avatar<TRes>
      get avatar;
}

class _CopyWithImpl$Query$Activity$activity$$MessageActivity$messenger<TRes>
    implements
        CopyWith$Query$Activity$activity$$MessageActivity$messenger<TRes> {
  _CopyWithImpl$Query$Activity$activity$$MessageActivity$messenger(
    this._instance,
    this._then,
  );

  final Query$Activity$activity$$MessageActivity$messenger _instance;

  final TRes Function(Query$Activity$activity$$MessageActivity$messenger) _then;

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
      _then(Query$Activity$activity$$MessageActivity$messenger(
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
                as Query$Activity$activity$$MessageActivity$messenger$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Activity$activity$$MessageActivity$messenger$avatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$Activity$activity$$MessageActivity$messenger$avatar
            .stub(_then(_instance))
        : CopyWith$Query$Activity$activity$$MessageActivity$messenger$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$Activity$activity$$MessageActivity$messenger<TRes>
    implements
        CopyWith$Query$Activity$activity$$MessageActivity$messenger<TRes> {
  _CopyWithStubImpl$Query$Activity$activity$$MessageActivity$messenger(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$Activity$activity$$MessageActivity$messenger$avatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Activity$activity$$MessageActivity$messenger$avatar<TRes>
      get avatar =>
          CopyWith$Query$Activity$activity$$MessageActivity$messenger$avatar
              .stub(_res);
}

class Query$Activity$activity$$MessageActivity$messenger$avatar
    implements Fragment$MessageActivity$messenger$avatar {
  Query$Activity$activity$$MessageActivity$messenger$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$Activity$activity$$MessageActivity$messenger$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Activity$activity$$MessageActivity$messenger$avatar(
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
    if (!(other is Query$Activity$activity$$MessageActivity$messenger$avatar) ||
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

extension UtilityExtension$Query$Activity$activity$$MessageActivity$messenger$avatar
    on Query$Activity$activity$$MessageActivity$messenger$avatar {
  CopyWith$Query$Activity$activity$$MessageActivity$messenger$avatar<
          Query$Activity$activity$$MessageActivity$messenger$avatar>
      get copyWith =>
          CopyWith$Query$Activity$activity$$MessageActivity$messenger$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activity$activity$$MessageActivity$messenger$avatar<
    TRes> {
  factory CopyWith$Query$Activity$activity$$MessageActivity$messenger$avatar(
    Query$Activity$activity$$MessageActivity$messenger$avatar instance,
    TRes Function(Query$Activity$activity$$MessageActivity$messenger$avatar)
        then,
  ) = _CopyWithImpl$Query$Activity$activity$$MessageActivity$messenger$avatar;

  factory CopyWith$Query$Activity$activity$$MessageActivity$messenger$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Activity$activity$$MessageActivity$messenger$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Activity$activity$$MessageActivity$messenger$avatar<
        TRes>
    implements
        CopyWith$Query$Activity$activity$$MessageActivity$messenger$avatar<
            TRes> {
  _CopyWithImpl$Query$Activity$activity$$MessageActivity$messenger$avatar(
    this._instance,
    this._then,
  );

  final Query$Activity$activity$$MessageActivity$messenger$avatar _instance;

  final TRes Function(Query$Activity$activity$$MessageActivity$messenger$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activity$activity$$MessageActivity$messenger$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Activity$activity$$MessageActivity$messenger$avatar<
        TRes>
    implements
        CopyWith$Query$Activity$activity$$MessageActivity$messenger$avatar<
            TRes> {
  _CopyWithStubImpl$Query$Activity$activity$$MessageActivity$messenger$avatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Activity$replies {
  Query$Activity$replies({
    this.pageInfo,
    this.activityReplies,
    this.$__typename = 'Page',
  });

  factory Query$Activity$replies.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$activityReplies = json['activityReplies'];
    final l$$__typename = json['__typename'];
    return Query$Activity$replies(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      activityReplies: (l$activityReplies as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Activity$replies$activityReplies.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Activity$replies$activityReplies?>? activityReplies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$activityReplies = activityReplies;
    _resultData['activityReplies'] =
        l$activityReplies?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$activityReplies = activityReplies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$activityReplies == null
          ? null
          : Object.hashAll(l$activityReplies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activity$replies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$activityReplies = activityReplies;
    final lOther$activityReplies = other.activityReplies;
    if (l$activityReplies != null && lOther$activityReplies != null) {
      if (l$activityReplies.length != lOther$activityReplies.length) {
        return false;
      }
      for (int i = 0; i < l$activityReplies.length; i++) {
        final l$activityReplies$entry = l$activityReplies[i];
        final lOther$activityReplies$entry = lOther$activityReplies[i];
        if (l$activityReplies$entry != lOther$activityReplies$entry) {
          return false;
        }
      }
    } else if (l$activityReplies != lOther$activityReplies) {
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

extension UtilityExtension$Query$Activity$replies on Query$Activity$replies {
  CopyWith$Query$Activity$replies<Query$Activity$replies> get copyWith =>
      CopyWith$Query$Activity$replies(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Activity$replies<TRes> {
  factory CopyWith$Query$Activity$replies(
    Query$Activity$replies instance,
    TRes Function(Query$Activity$replies) then,
  ) = _CopyWithImpl$Query$Activity$replies;

  factory CopyWith$Query$Activity$replies.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity$replies;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Activity$replies$activityReplies?>? activityReplies,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes activityReplies(
      Iterable<Query$Activity$replies$activityReplies?>? Function(
              Iterable<
                  CopyWith$Query$Activity$replies$activityReplies<
                      Query$Activity$replies$activityReplies>?>?)
          _fn);
}

class _CopyWithImpl$Query$Activity$replies<TRes>
    implements CopyWith$Query$Activity$replies<TRes> {
  _CopyWithImpl$Query$Activity$replies(
    this._instance,
    this._then,
  );

  final Query$Activity$replies _instance;

  final TRes Function(Query$Activity$replies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? activityReplies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activity$replies(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        activityReplies: activityReplies == _undefined
            ? _instance.activityReplies
            : (activityReplies
                as List<Query$Activity$replies$activityReplies?>?),
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

  TRes activityReplies(
          Iterable<Query$Activity$replies$activityReplies?>? Function(
                  Iterable<
                      CopyWith$Query$Activity$replies$activityReplies<
                          Query$Activity$replies$activityReplies>?>?)
              _fn) =>
      call(
          activityReplies: _fn(_instance.activityReplies?.map((e) => e == null
              ? null
              : CopyWith$Query$Activity$replies$activityReplies(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Activity$replies<TRes>
    implements CopyWith$Query$Activity$replies<TRes> {
  _CopyWithStubImpl$Query$Activity$replies(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Activity$replies$activityReplies?>? activityReplies,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  activityReplies(_fn) => _res;
}

class Query$Activity$replies$activityReplies {
  Query$Activity$replies$activityReplies({
    required this.id,
    this.userId,
    this.text,
    required this.createdAt,
    this.activityId,
    this.isLiked,
    required this.likeCount,
    this.user,
    this.$__typename = 'ActivityReply',
  });

  factory Query$Activity$replies$activityReplies.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$text = json['text'];
    final l$createdAt = json['createdAt'];
    final l$activityId = json['activityId'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$Activity$replies$activityReplies(
      id: (l$id as int),
      userId: (l$userId as int?),
      text: (l$text as String?),
      createdAt: (l$createdAt as int),
      activityId: (l$activityId as int?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? userId;

  final String? text;

  final int createdAt;

  final int? activityId;

  final bool? isLiked;

  final int likeCount;

  final Fragment$UserFragment? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
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
    final l$text = text;
    final l$createdAt = createdAt;
    final l$activityId = activityId;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$text,
      l$createdAt,
      l$activityId,
      l$isLiked,
      l$likeCount,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activity$replies$activityReplies) ||
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
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
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

extension UtilityExtension$Query$Activity$replies$activityReplies
    on Query$Activity$replies$activityReplies {
  CopyWith$Query$Activity$replies$activityReplies<
          Query$Activity$replies$activityReplies>
      get copyWith => CopyWith$Query$Activity$replies$activityReplies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activity$replies$activityReplies<TRes> {
  factory CopyWith$Query$Activity$replies$activityReplies(
    Query$Activity$replies$activityReplies instance,
    TRes Function(Query$Activity$replies$activityReplies) then,
  ) = _CopyWithImpl$Query$Activity$replies$activityReplies;

  factory CopyWith$Query$Activity$replies$activityReplies.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity$replies$activityReplies;

  TRes call({
    int? id,
    int? userId,
    String? text,
    int? createdAt,
    int? activityId,
    bool? isLiked,
    int? likeCount,
    Fragment$UserFragment? user,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Activity$replies$activityReplies<TRes>
    implements CopyWith$Query$Activity$replies$activityReplies<TRes> {
  _CopyWithImpl$Query$Activity$replies$activityReplies(
    this._instance,
    this._then,
  );

  final Query$Activity$replies$activityReplies _instance;

  final TRes Function(Query$Activity$replies$activityReplies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? text = _undefined,
    Object? createdAt = _undefined,
    Object? activityId = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activity$replies$activityReplies(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        text: text == _undefined ? _instance.text : (text as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        activityId: activityId == _undefined
            ? _instance.activityId
            : (activityId as int?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
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

class _CopyWithStubImpl$Query$Activity$replies$activityReplies<TRes>
    implements CopyWith$Query$Activity$replies$activityReplies<TRes> {
  _CopyWithStubImpl$Query$Activity$replies$activityReplies(this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    String? text,
    int? createdAt,
    int? activityId,
    bool? isLiked,
    int? likeCount,
    Fragment$UserFragment? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Variables$Mutation$SaveActivityReply {
  factory Variables$Mutation$SaveActivityReply({
    int? id,
    int? activityId,
    String? text,
  }) =>
      Variables$Mutation$SaveActivityReply._({
        if (id != null) r'id': id,
        if (activityId != null) r'activityId': activityId,
        if (text != null) r'text': text,
      });

  Variables$Mutation$SaveActivityReply._(this._$data);

  factory Variables$Mutation$SaveActivityReply.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('activityId')) {
      final l$activityId = data['activityId'];
      result$data['activityId'] = (l$activityId as int?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    return Variables$Mutation$SaveActivityReply._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get activityId => (_$data['activityId'] as int?);

  String? get text => (_$data['text'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('activityId')) {
      final l$activityId = activityId;
      result$data['activityId'] = l$activityId;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveActivityReply<
          Variables$Mutation$SaveActivityReply>
      get copyWith => CopyWith$Variables$Mutation$SaveActivityReply(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SaveActivityReply) ||
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
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (_$data.containsKey('activityId') !=
        other._$data.containsKey('activityId')) {
      return false;
    }
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$activityId = activityId;
    final l$text = text;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('activityId') ? l$activityId : const {},
      _$data.containsKey('text') ? l$text : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveActivityReply<TRes> {
  factory CopyWith$Variables$Mutation$SaveActivityReply(
    Variables$Mutation$SaveActivityReply instance,
    TRes Function(Variables$Mutation$SaveActivityReply) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveActivityReply;

  factory CopyWith$Variables$Mutation$SaveActivityReply.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveActivityReply;

  TRes call({
    int? id,
    int? activityId,
    String? text,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveActivityReply<TRes>
    implements CopyWith$Variables$Mutation$SaveActivityReply<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveActivityReply(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveActivityReply _instance;

  final TRes Function(Variables$Mutation$SaveActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? activityId = _undefined,
    Object? text = _undefined,
  }) =>
      _then(Variables$Mutation$SaveActivityReply._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (activityId != _undefined) 'activityId': (activityId as int?),
        if (text != _undefined) 'text': (text as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveActivityReply<TRes>
    implements CopyWith$Variables$Mutation$SaveActivityReply<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveActivityReply(this._res);

  TRes _res;

  call({
    int? id,
    int? activityId,
    String? text,
  }) =>
      _res;
}

class Mutation$SaveActivityReply {
  Mutation$SaveActivityReply({
    this.SaveActivityReply,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveActivityReply.fromJson(Map<String, dynamic> json) {
    final l$SaveActivityReply = json['SaveActivityReply'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveActivityReply(
      SaveActivityReply: l$SaveActivityReply == null
          ? null
          : Mutation$SaveActivityReply$SaveActivityReply.fromJson(
              (l$SaveActivityReply as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveActivityReply$SaveActivityReply? SaveActivityReply;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$SaveActivityReply = SaveActivityReply;
    _resultData['SaveActivityReply'] = l$SaveActivityReply?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$SaveActivityReply = SaveActivityReply;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$SaveActivityReply,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SaveActivityReply) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$SaveActivityReply = SaveActivityReply;
    final lOther$SaveActivityReply = other.SaveActivityReply;
    if (l$SaveActivityReply != lOther$SaveActivityReply) {
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

extension UtilityExtension$Mutation$SaveActivityReply
    on Mutation$SaveActivityReply {
  CopyWith$Mutation$SaveActivityReply<Mutation$SaveActivityReply>
      get copyWith => CopyWith$Mutation$SaveActivityReply(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveActivityReply<TRes> {
  factory CopyWith$Mutation$SaveActivityReply(
    Mutation$SaveActivityReply instance,
    TRes Function(Mutation$SaveActivityReply) then,
  ) = _CopyWithImpl$Mutation$SaveActivityReply;

  factory CopyWith$Mutation$SaveActivityReply.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveActivityReply;

  TRes call({
    Mutation$SaveActivityReply$SaveActivityReply? SaveActivityReply,
    String? $__typename,
  });
  CopyWith$Mutation$SaveActivityReply$SaveActivityReply<TRes>
      get SaveActivityReply;
}

class _CopyWithImpl$Mutation$SaveActivityReply<TRes>
    implements CopyWith$Mutation$SaveActivityReply<TRes> {
  _CopyWithImpl$Mutation$SaveActivityReply(
    this._instance,
    this._then,
  );

  final Mutation$SaveActivityReply _instance;

  final TRes Function(Mutation$SaveActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? SaveActivityReply = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveActivityReply(
        SaveActivityReply: SaveActivityReply == _undefined
            ? _instance.SaveActivityReply
            : (SaveActivityReply
                as Mutation$SaveActivityReply$SaveActivityReply?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SaveActivityReply$SaveActivityReply<TRes>
      get SaveActivityReply {
    final local$SaveActivityReply = _instance.SaveActivityReply;
    return local$SaveActivityReply == null
        ? CopyWith$Mutation$SaveActivityReply$SaveActivityReply.stub(
            _then(_instance))
        : CopyWith$Mutation$SaveActivityReply$SaveActivityReply(
            local$SaveActivityReply, (e) => call(SaveActivityReply: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveActivityReply<TRes>
    implements CopyWith$Mutation$SaveActivityReply<TRes> {
  _CopyWithStubImpl$Mutation$SaveActivityReply(this._res);

  TRes _res;

  call({
    Mutation$SaveActivityReply$SaveActivityReply? SaveActivityReply,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SaveActivityReply$SaveActivityReply<TRes>
      get SaveActivityReply =>
          CopyWith$Mutation$SaveActivityReply$SaveActivityReply.stub(_res);
}

const documentNodeMutationSaveActivityReply = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveActivityReply'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'activityId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'text')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'SaveActivityReply'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'activityId'),
            value: VariableNode(name: NameNode(value: 'activityId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'text'),
            value: VariableNode(name: NameNode(value: 'text')),
          ),
        ],
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionTextActivity,
]);
Mutation$SaveActivityReply _parserFn$Mutation$SaveActivityReply(
        Map<String, dynamic> data) =>
    Mutation$SaveActivityReply.fromJson(data);
typedef OnMutationCompleted$Mutation$SaveActivityReply = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$SaveActivityReply?,
);

class Options$Mutation$SaveActivityReply
    extends graphql.MutationOptions<Mutation$SaveActivityReply> {
  Options$Mutation$SaveActivityReply({
    String? operationName,
    Variables$Mutation$SaveActivityReply? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveActivityReply? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveActivityReply? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveActivityReply>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveActivityReply(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveActivityReply,
          parserFn: _parserFn$Mutation$SaveActivityReply,
        );

  final OnMutationCompleted$Mutation$SaveActivityReply? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SaveActivityReply
    extends graphql.WatchQueryOptions<Mutation$SaveActivityReply> {
  WatchOptions$Mutation$SaveActivityReply({
    String? operationName,
    Variables$Mutation$SaveActivityReply? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveActivityReply? typedOptimisticResult,
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
          document: documentNodeMutationSaveActivityReply,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SaveActivityReply,
        );
}

extension ClientExtension$Mutation$SaveActivityReply on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SaveActivityReply>>
      mutate$SaveActivityReply(
              [Options$Mutation$SaveActivityReply? options]) async =>
          await this.mutate(options ?? Options$Mutation$SaveActivityReply());
  graphql.ObservableQuery<
      Mutation$SaveActivityReply> watchMutation$SaveActivityReply(
          [WatchOptions$Mutation$SaveActivityReply? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$SaveActivityReply());
}

class Mutation$SaveActivityReply$HookResult {
  Mutation$SaveActivityReply$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SaveActivityReply runMutation;

  final graphql.QueryResult<Mutation$SaveActivityReply> result;
}

Mutation$SaveActivityReply$HookResult useMutation$SaveActivityReply(
    [WidgetOptions$Mutation$SaveActivityReply? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SaveActivityReply());
  return Mutation$SaveActivityReply$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SaveActivityReply>
    useWatchMutation$SaveActivityReply(
            [WatchOptions$Mutation$SaveActivityReply? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$SaveActivityReply());

class WidgetOptions$Mutation$SaveActivityReply
    extends graphql.MutationOptions<Mutation$SaveActivityReply> {
  WidgetOptions$Mutation$SaveActivityReply({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveActivityReply? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveActivityReply? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveActivityReply>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveActivityReply(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveActivityReply,
          parserFn: _parserFn$Mutation$SaveActivityReply,
        );

  final OnMutationCompleted$Mutation$SaveActivityReply? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SaveActivityReply
    = graphql.MultiSourceResult<Mutation$SaveActivityReply> Function({
  Variables$Mutation$SaveActivityReply? variables,
  Object? optimisticResult,
  Mutation$SaveActivityReply? typedOptimisticResult,
});
typedef Builder$Mutation$SaveActivityReply = widgets.Widget Function(
  RunMutation$Mutation$SaveActivityReply,
  graphql.QueryResult<Mutation$SaveActivityReply>?,
);

class Mutation$SaveActivityReply$Widget
    extends graphql_flutter.Mutation<Mutation$SaveActivityReply> {
  Mutation$SaveActivityReply$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SaveActivityReply? options,
    required Builder$Mutation$SaveActivityReply builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SaveActivityReply(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$SaveActivityReply$SaveActivityReply {
  Mutation$SaveActivityReply$SaveActivityReply(
      {this.$__typename = 'ActivityReply'});

  factory Mutation$SaveActivityReply$SaveActivityReply.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$SaveActivityReply$SaveActivityReply(
        $__typename: (l$$__typename as String));
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
    if (!(other is Mutation$SaveActivityReply$SaveActivityReply) ||
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

extension UtilityExtension$Mutation$SaveActivityReply$SaveActivityReply
    on Mutation$SaveActivityReply$SaveActivityReply {
  CopyWith$Mutation$SaveActivityReply$SaveActivityReply<
          Mutation$SaveActivityReply$SaveActivityReply>
      get copyWith => CopyWith$Mutation$SaveActivityReply$SaveActivityReply(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveActivityReply$SaveActivityReply<TRes> {
  factory CopyWith$Mutation$SaveActivityReply$SaveActivityReply(
    Mutation$SaveActivityReply$SaveActivityReply instance,
    TRes Function(Mutation$SaveActivityReply$SaveActivityReply) then,
  ) = _CopyWithImpl$Mutation$SaveActivityReply$SaveActivityReply;

  factory CopyWith$Mutation$SaveActivityReply$SaveActivityReply.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveActivityReply$SaveActivityReply;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$SaveActivityReply$SaveActivityReply<TRes>
    implements CopyWith$Mutation$SaveActivityReply$SaveActivityReply<TRes> {
  _CopyWithImpl$Mutation$SaveActivityReply$SaveActivityReply(
    this._instance,
    this._then,
  );

  final Mutation$SaveActivityReply$SaveActivityReply _instance;

  final TRes Function(Mutation$SaveActivityReply$SaveActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$SaveActivityReply$SaveActivityReply(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$SaveActivityReply$SaveActivityReply<TRes>
    implements CopyWith$Mutation$SaveActivityReply$SaveActivityReply<TRes> {
  _CopyWithStubImpl$Mutation$SaveActivityReply$SaveActivityReply(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Variables$Mutation$SaveMessageActivity {
  factory Variables$Mutation$SaveMessageActivity({
    int? id,
    int? recipientId,
    String? message,
    bool? private,
  }) =>
      Variables$Mutation$SaveMessageActivity._({
        if (id != null) r'id': id,
        if (recipientId != null) r'recipientId': recipientId,
        if (message != null) r'message': message,
        if (private != null) r'private': private,
      });

  Variables$Mutation$SaveMessageActivity._(this._$data);

  factory Variables$Mutation$SaveMessageActivity.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('recipientId')) {
      final l$recipientId = data['recipientId'];
      result$data['recipientId'] = (l$recipientId as int?);
    }
    if (data.containsKey('message')) {
      final l$message = data['message'];
      result$data['message'] = (l$message as String?);
    }
    if (data.containsKey('private')) {
      final l$private = data['private'];
      result$data['private'] = (l$private as bool?);
    }
    return Variables$Mutation$SaveMessageActivity._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get recipientId => (_$data['recipientId'] as int?);

  String? get message => (_$data['message'] as String?);

  bool? get private => (_$data['private'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('recipientId')) {
      final l$recipientId = recipientId;
      result$data['recipientId'] = l$recipientId;
    }
    if (_$data.containsKey('message')) {
      final l$message = message;
      result$data['message'] = l$message;
    }
    if (_$data.containsKey('private')) {
      final l$private = private;
      result$data['private'] = l$private;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveMessageActivity<
          Variables$Mutation$SaveMessageActivity>
      get copyWith => CopyWith$Variables$Mutation$SaveMessageActivity(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SaveMessageActivity) ||
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
    final l$recipientId = recipientId;
    final lOther$recipientId = other.recipientId;
    if (_$data.containsKey('recipientId') !=
        other._$data.containsKey('recipientId')) {
      return false;
    }
    if (l$recipientId != lOther$recipientId) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (_$data.containsKey('message') != other._$data.containsKey('message')) {
      return false;
    }
    if (l$message != lOther$message) {
      return false;
    }
    final l$private = private;
    final lOther$private = other.private;
    if (_$data.containsKey('private') != other._$data.containsKey('private')) {
      return false;
    }
    if (l$private != lOther$private) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$recipientId = recipientId;
    final l$message = message;
    final l$private = private;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('recipientId') ? l$recipientId : const {},
      _$data.containsKey('message') ? l$message : const {},
      _$data.containsKey('private') ? l$private : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveMessageActivity<TRes> {
  factory CopyWith$Variables$Mutation$SaveMessageActivity(
    Variables$Mutation$SaveMessageActivity instance,
    TRes Function(Variables$Mutation$SaveMessageActivity) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveMessageActivity;

  factory CopyWith$Variables$Mutation$SaveMessageActivity.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveMessageActivity;

  TRes call({
    int? id,
    int? recipientId,
    String? message,
    bool? private,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveMessageActivity<TRes>
    implements CopyWith$Variables$Mutation$SaveMessageActivity<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveMessageActivity(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveMessageActivity _instance;

  final TRes Function(Variables$Mutation$SaveMessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? recipientId = _undefined,
    Object? message = _undefined,
    Object? private = _undefined,
  }) =>
      _then(Variables$Mutation$SaveMessageActivity._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (recipientId != _undefined) 'recipientId': (recipientId as int?),
        if (message != _undefined) 'message': (message as String?),
        if (private != _undefined) 'private': (private as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveMessageActivity<TRes>
    implements CopyWith$Variables$Mutation$SaveMessageActivity<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveMessageActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? recipientId,
    String? message,
    bool? private,
  }) =>
      _res;
}

class Mutation$SaveMessageActivity {
  Mutation$SaveMessageActivity({
    this.SaveMessageActivity,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveMessageActivity.fromJson(Map<String, dynamic> json) {
    final l$SaveMessageActivity = json['SaveMessageActivity'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveMessageActivity(
      SaveMessageActivity: l$SaveMessageActivity == null
          ? null
          : Fragment$MessageActivity.fromJson(
              (l$SaveMessageActivity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MessageActivity? SaveMessageActivity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$SaveMessageActivity = SaveMessageActivity;
    _resultData['SaveMessageActivity'] = l$SaveMessageActivity?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$SaveMessageActivity = SaveMessageActivity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$SaveMessageActivity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SaveMessageActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$SaveMessageActivity = SaveMessageActivity;
    final lOther$SaveMessageActivity = other.SaveMessageActivity;
    if (l$SaveMessageActivity != lOther$SaveMessageActivity) {
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

extension UtilityExtension$Mutation$SaveMessageActivity
    on Mutation$SaveMessageActivity {
  CopyWith$Mutation$SaveMessageActivity<Mutation$SaveMessageActivity>
      get copyWith => CopyWith$Mutation$SaveMessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveMessageActivity<TRes> {
  factory CopyWith$Mutation$SaveMessageActivity(
    Mutation$SaveMessageActivity instance,
    TRes Function(Mutation$SaveMessageActivity) then,
  ) = _CopyWithImpl$Mutation$SaveMessageActivity;

  factory CopyWith$Mutation$SaveMessageActivity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveMessageActivity;

  TRes call({
    Fragment$MessageActivity? SaveMessageActivity,
    String? $__typename,
  });
  CopyWith$Fragment$MessageActivity<TRes> get SaveMessageActivity;
}

class _CopyWithImpl$Mutation$SaveMessageActivity<TRes>
    implements CopyWith$Mutation$SaveMessageActivity<TRes> {
  _CopyWithImpl$Mutation$SaveMessageActivity(
    this._instance,
    this._then,
  );

  final Mutation$SaveMessageActivity _instance;

  final TRes Function(Mutation$SaveMessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? SaveMessageActivity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveMessageActivity(
        SaveMessageActivity: SaveMessageActivity == _undefined
            ? _instance.SaveMessageActivity
            : (SaveMessageActivity as Fragment$MessageActivity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MessageActivity<TRes> get SaveMessageActivity {
    final local$SaveMessageActivity = _instance.SaveMessageActivity;
    return local$SaveMessageActivity == null
        ? CopyWith$Fragment$MessageActivity.stub(_then(_instance))
        : CopyWith$Fragment$MessageActivity(
            local$SaveMessageActivity, (e) => call(SaveMessageActivity: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveMessageActivity<TRes>
    implements CopyWith$Mutation$SaveMessageActivity<TRes> {
  _CopyWithStubImpl$Mutation$SaveMessageActivity(this._res);

  TRes _res;

  call({
    Fragment$MessageActivity? SaveMessageActivity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MessageActivity<TRes> get SaveMessageActivity =>
      CopyWith$Fragment$MessageActivity.stub(_res);
}

const documentNodeMutationSaveMessageActivity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveMessageActivity'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'recipientId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'message')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'private')),
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
        name: NameNode(value: 'SaveMessageActivity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'recipientId'),
            value: VariableNode(name: NameNode(value: 'recipientId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'message'),
            value: VariableNode(name: NameNode(value: 'message')),
          ),
          ArgumentNode(
            name: NameNode(value: 'private'),
            value: VariableNode(name: NameNode(value: 'private')),
          ),
        ],
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
  fragmentDefinitionMessageActivity,
]);
Mutation$SaveMessageActivity _parserFn$Mutation$SaveMessageActivity(
        Map<String, dynamic> data) =>
    Mutation$SaveMessageActivity.fromJson(data);
typedef OnMutationCompleted$Mutation$SaveMessageActivity = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$SaveMessageActivity?,
);

class Options$Mutation$SaveMessageActivity
    extends graphql.MutationOptions<Mutation$SaveMessageActivity> {
  Options$Mutation$SaveMessageActivity({
    String? operationName,
    Variables$Mutation$SaveMessageActivity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveMessageActivity? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveMessageActivity? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveMessageActivity>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveMessageActivity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveMessageActivity,
          parserFn: _parserFn$Mutation$SaveMessageActivity,
        );

  final OnMutationCompleted$Mutation$SaveMessageActivity? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SaveMessageActivity
    extends graphql.WatchQueryOptions<Mutation$SaveMessageActivity> {
  WatchOptions$Mutation$SaveMessageActivity({
    String? operationName,
    Variables$Mutation$SaveMessageActivity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveMessageActivity? typedOptimisticResult,
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
          document: documentNodeMutationSaveMessageActivity,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SaveMessageActivity,
        );
}

extension ClientExtension$Mutation$SaveMessageActivity
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SaveMessageActivity>>
      mutate$SaveMessageActivity(
              [Options$Mutation$SaveMessageActivity? options]) async =>
          await this.mutate(options ?? Options$Mutation$SaveMessageActivity());
  graphql.ObservableQuery<Mutation$SaveMessageActivity>
      watchMutation$SaveMessageActivity(
              [WatchOptions$Mutation$SaveMessageActivity? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$SaveMessageActivity());
}

class Mutation$SaveMessageActivity$HookResult {
  Mutation$SaveMessageActivity$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SaveMessageActivity runMutation;

  final graphql.QueryResult<Mutation$SaveMessageActivity> result;
}

Mutation$SaveMessageActivity$HookResult useMutation$SaveMessageActivity(
    [WidgetOptions$Mutation$SaveMessageActivity? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SaveMessageActivity());
  return Mutation$SaveMessageActivity$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SaveMessageActivity>
    useWatchMutation$SaveMessageActivity(
            [WatchOptions$Mutation$SaveMessageActivity? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$SaveMessageActivity());

class WidgetOptions$Mutation$SaveMessageActivity
    extends graphql.MutationOptions<Mutation$SaveMessageActivity> {
  WidgetOptions$Mutation$SaveMessageActivity({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveMessageActivity? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveMessageActivity? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveMessageActivity>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveMessageActivity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveMessageActivity,
          parserFn: _parserFn$Mutation$SaveMessageActivity,
        );

  final OnMutationCompleted$Mutation$SaveMessageActivity? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SaveMessageActivity
    = graphql.MultiSourceResult<Mutation$SaveMessageActivity> Function({
  Variables$Mutation$SaveMessageActivity? variables,
  Object? optimisticResult,
  Mutation$SaveMessageActivity? typedOptimisticResult,
});
typedef Builder$Mutation$SaveMessageActivity = widgets.Widget Function(
  RunMutation$Mutation$SaveMessageActivity,
  graphql.QueryResult<Mutation$SaveMessageActivity>?,
);

class Mutation$SaveMessageActivity$Widget
    extends graphql_flutter.Mutation<Mutation$SaveMessageActivity> {
  Mutation$SaveMessageActivity$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SaveMessageActivity? options,
    required Builder$Mutation$SaveMessageActivity builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SaveMessageActivity(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$ToggleActivitySubscription {
  factory Variables$Mutation$ToggleActivitySubscription({
    int? id,
    bool? subscribe,
  }) =>
      Variables$Mutation$ToggleActivitySubscription._({
        if (id != null) r'id': id,
        if (subscribe != null) r'subscribe': subscribe,
      });

  Variables$Mutation$ToggleActivitySubscription._(this._$data);

  factory Variables$Mutation$ToggleActivitySubscription.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('subscribe')) {
      final l$subscribe = data['subscribe'];
      result$data['subscribe'] = (l$subscribe as bool?);
    }
    return Variables$Mutation$ToggleActivitySubscription._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  bool? get subscribe => (_$data['subscribe'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('subscribe')) {
      final l$subscribe = subscribe;
      result$data['subscribe'] = l$subscribe;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ToggleActivitySubscription<
          Variables$Mutation$ToggleActivitySubscription>
      get copyWith => CopyWith$Variables$Mutation$ToggleActivitySubscription(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ToggleActivitySubscription) ||
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
    final l$subscribe = subscribe;
    final lOther$subscribe = other.subscribe;
    if (_$data.containsKey('subscribe') !=
        other._$data.containsKey('subscribe')) {
      return false;
    }
    if (l$subscribe != lOther$subscribe) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$subscribe = subscribe;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('subscribe') ? l$subscribe : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ToggleActivitySubscription<TRes> {
  factory CopyWith$Variables$Mutation$ToggleActivitySubscription(
    Variables$Mutation$ToggleActivitySubscription instance,
    TRes Function(Variables$Mutation$ToggleActivitySubscription) then,
  ) = _CopyWithImpl$Variables$Mutation$ToggleActivitySubscription;

  factory CopyWith$Variables$Mutation$ToggleActivitySubscription.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ToggleActivitySubscription;

  TRes call({
    int? id,
    bool? subscribe,
  });
}

class _CopyWithImpl$Variables$Mutation$ToggleActivitySubscription<TRes>
    implements CopyWith$Variables$Mutation$ToggleActivitySubscription<TRes> {
  _CopyWithImpl$Variables$Mutation$ToggleActivitySubscription(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ToggleActivitySubscription _instance;

  final TRes Function(Variables$Mutation$ToggleActivitySubscription) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? subscribe = _undefined,
  }) =>
      _then(Variables$Mutation$ToggleActivitySubscription._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (subscribe != _undefined) 'subscribe': (subscribe as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ToggleActivitySubscription<TRes>
    implements CopyWith$Variables$Mutation$ToggleActivitySubscription<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ToggleActivitySubscription(this._res);

  TRes _res;

  call({
    int? id,
    bool? subscribe,
  }) =>
      _res;
}

class Mutation$ToggleActivitySubscription {
  Mutation$ToggleActivitySubscription({
    this.ToggleActivitySubscription,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ToggleActivitySubscription.fromJson(
      Map<String, dynamic> json) {
    final l$ToggleActivitySubscription = json['ToggleActivitySubscription'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivitySubscription(
      ToggleActivitySubscription: l$ToggleActivitySubscription == null
          ? null
          : Mutation$ToggleActivitySubscription$ToggleActivitySubscription
              .fromJson((l$ToggleActivitySubscription as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleActivitySubscription$ToggleActivitySubscription?
      ToggleActivitySubscription;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ToggleActivitySubscription = ToggleActivitySubscription;
    _resultData['ToggleActivitySubscription'] =
        l$ToggleActivitySubscription?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ToggleActivitySubscription = ToggleActivitySubscription;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ToggleActivitySubscription,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleActivitySubscription) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ToggleActivitySubscription = ToggleActivitySubscription;
    final lOther$ToggleActivitySubscription = other.ToggleActivitySubscription;
    if (l$ToggleActivitySubscription != lOther$ToggleActivitySubscription) {
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

extension UtilityExtension$Mutation$ToggleActivitySubscription
    on Mutation$ToggleActivitySubscription {
  CopyWith$Mutation$ToggleActivitySubscription<
          Mutation$ToggleActivitySubscription>
      get copyWith => CopyWith$Mutation$ToggleActivitySubscription(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleActivitySubscription<TRes> {
  factory CopyWith$Mutation$ToggleActivitySubscription(
    Mutation$ToggleActivitySubscription instance,
    TRes Function(Mutation$ToggleActivitySubscription) then,
  ) = _CopyWithImpl$Mutation$ToggleActivitySubscription;

  factory CopyWith$Mutation$ToggleActivitySubscription.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleActivitySubscription;

  TRes call({
    Mutation$ToggleActivitySubscription$ToggleActivitySubscription?
        ToggleActivitySubscription,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription<TRes>
      get ToggleActivitySubscription;
}

class _CopyWithImpl$Mutation$ToggleActivitySubscription<TRes>
    implements CopyWith$Mutation$ToggleActivitySubscription<TRes> {
  _CopyWithImpl$Mutation$ToggleActivitySubscription(
    this._instance,
    this._then,
  );

  final Mutation$ToggleActivitySubscription _instance;

  final TRes Function(Mutation$ToggleActivitySubscription) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleActivitySubscription = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleActivitySubscription(
        ToggleActivitySubscription: ToggleActivitySubscription == _undefined
            ? _instance.ToggleActivitySubscription
            : (ToggleActivitySubscription
                as Mutation$ToggleActivitySubscription$ToggleActivitySubscription?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription<TRes>
      get ToggleActivitySubscription {
    final local$ToggleActivitySubscription =
        _instance.ToggleActivitySubscription;
    return local$ToggleActivitySubscription == null
        ? CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription
            .stub(_then(_instance))
        : CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription(
            local$ToggleActivitySubscription,
            (e) => call(ToggleActivitySubscription: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleActivitySubscription<TRes>
    implements CopyWith$Mutation$ToggleActivitySubscription<TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivitySubscription(this._res);

  TRes _res;

  call({
    Mutation$ToggleActivitySubscription$ToggleActivitySubscription?
        ToggleActivitySubscription,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription<TRes>
      get ToggleActivitySubscription =>
          CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription
              .stub(_res);
}

const documentNodeMutationToggleActivitySubscription =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleActivitySubscription'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subscribe')),
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
        name: NameNode(value: 'ToggleActivitySubscription'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'activityId'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'subscribe'),
            value: VariableNode(name: NameNode(value: 'subscribe')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ListActivity'),
              isNonNull: false,
            )),
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
                name: NameNode(value: 'isSubscribed'),
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
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'TextActivity'),
              isNonNull: false,
            )),
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
                name: NameNode(value: 'isSubscribed'),
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
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MessageActivity'),
              isNonNull: false,
            )),
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
                name: NameNode(value: 'isSubscribed'),
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
Mutation$ToggleActivitySubscription
    _parserFn$Mutation$ToggleActivitySubscription(Map<String, dynamic> data) =>
        Mutation$ToggleActivitySubscription.fromJson(data);
typedef OnMutationCompleted$Mutation$ToggleActivitySubscription = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$ToggleActivitySubscription?,
);

class Options$Mutation$ToggleActivitySubscription
    extends graphql.MutationOptions<Mutation$ToggleActivitySubscription> {
  Options$Mutation$ToggleActivitySubscription({
    String? operationName,
    Variables$Mutation$ToggleActivitySubscription? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleActivitySubscription? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleActivitySubscription? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleActivitySubscription>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ToggleActivitySubscription(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleActivitySubscription,
          parserFn: _parserFn$Mutation$ToggleActivitySubscription,
        );

  final OnMutationCompleted$Mutation$ToggleActivitySubscription?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ToggleActivitySubscription
    extends graphql.WatchQueryOptions<Mutation$ToggleActivitySubscription> {
  WatchOptions$Mutation$ToggleActivitySubscription({
    String? operationName,
    Variables$Mutation$ToggleActivitySubscription? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleActivitySubscription? typedOptimisticResult,
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
          document: documentNodeMutationToggleActivitySubscription,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ToggleActivitySubscription,
        );
}

extension ClientExtension$Mutation$ToggleActivitySubscription
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ToggleActivitySubscription>>
      mutate$ToggleActivitySubscription(
              [Options$Mutation$ToggleActivitySubscription? options]) async =>
          await this
              .mutate(options ?? Options$Mutation$ToggleActivitySubscription());
  graphql.ObservableQuery<Mutation$ToggleActivitySubscription>
      watchMutation$ToggleActivitySubscription(
              [WatchOptions$Mutation$ToggleActivitySubscription? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$ToggleActivitySubscription());
}

class Mutation$ToggleActivitySubscription$HookResult {
  Mutation$ToggleActivitySubscription$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ToggleActivitySubscription runMutation;

  final graphql.QueryResult<Mutation$ToggleActivitySubscription> result;
}

Mutation$ToggleActivitySubscription$HookResult
    useMutation$ToggleActivitySubscription(
        [WidgetOptions$Mutation$ToggleActivitySubscription? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$ToggleActivitySubscription());
  return Mutation$ToggleActivitySubscription$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ToggleActivitySubscription>
    useWatchMutation$ToggleActivitySubscription(
            [WatchOptions$Mutation$ToggleActivitySubscription? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$ToggleActivitySubscription());

class WidgetOptions$Mutation$ToggleActivitySubscription
    extends graphql.MutationOptions<Mutation$ToggleActivitySubscription> {
  WidgetOptions$Mutation$ToggleActivitySubscription({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleActivitySubscription? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleActivitySubscription? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleActivitySubscription>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ToggleActivitySubscription(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleActivitySubscription,
          parserFn: _parserFn$Mutation$ToggleActivitySubscription,
        );

  final OnMutationCompleted$Mutation$ToggleActivitySubscription?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ToggleActivitySubscription
    = graphql.MultiSourceResult<Mutation$ToggleActivitySubscription> Function({
  Variables$Mutation$ToggleActivitySubscription? variables,
  Object? optimisticResult,
  Mutation$ToggleActivitySubscription? typedOptimisticResult,
});
typedef Builder$Mutation$ToggleActivitySubscription = widgets.Widget Function(
  RunMutation$Mutation$ToggleActivitySubscription,
  graphql.QueryResult<Mutation$ToggleActivitySubscription>?,
);

class Mutation$ToggleActivitySubscription$Widget
    extends graphql_flutter.Mutation<Mutation$ToggleActivitySubscription> {
  Mutation$ToggleActivitySubscription$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ToggleActivitySubscription? options,
    required Builder$Mutation$ToggleActivitySubscription builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$ToggleActivitySubscription(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$ToggleActivitySubscription$ToggleActivitySubscription {
  Mutation$ToggleActivitySubscription$ToggleActivitySubscription(
      {required this.$__typename});

  factory Mutation$ToggleActivitySubscription$ToggleActivitySubscription.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity
            .fromJson(json);

      case "TextActivity":
        return Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity
            .fromJson(json);

      case "MessageActivity":
        return Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$ToggleActivitySubscription$ToggleActivitySubscription(
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
    if (!(other
            is Mutation$ToggleActivitySubscription$ToggleActivitySubscription) ||
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

extension UtilityExtension$Mutation$ToggleActivitySubscription$ToggleActivitySubscription
    on Mutation$ToggleActivitySubscription$ToggleActivitySubscription {
  CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription<
          Mutation$ToggleActivitySubscription$ToggleActivitySubscription>
      get copyWith =>
          CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity)
        listActivity,
    required _T Function(
            Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity)
        textActivity,
    required _T Function(
            Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity)
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(this
            as Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity);

      case "TextActivity":
        return textActivity(this
            as Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity);

      case "MessageActivity":
        return messageActivity(this
            as Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity)?
        listActivity,
    _T Function(
            Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity)?
        textActivity,
    _T Function(
            Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity)?
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(this
              as Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(this
              as Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(this
              as Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription<
    TRes> {
  factory CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription(
    Mutation$ToggleActivitySubscription$ToggleActivitySubscription instance,
    TRes Function(
            Mutation$ToggleActivitySubscription$ToggleActivitySubscription)
        then,
  ) = _CopyWithImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription;

  factory CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription<
            TRes> {
  _CopyWithImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription(
    this._instance,
    this._then,
  );

  final Mutation$ToggleActivitySubscription$ToggleActivitySubscription
      _instance;

  final TRes Function(
      Mutation$ToggleActivitySubscription$ToggleActivitySubscription) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleActivitySubscription$ToggleActivitySubscription(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription<
            TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity
    implements Mutation$ToggleActivitySubscription$ToggleActivitySubscription {
  Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity({
    required this.id,
    this.isSubscribed,
    this.$__typename = 'ListActivity',
  });

  factory Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$isSubscribed = json['isSubscribed'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity(
      id: (l$id as int),
      isSubscribed: (l$isSubscribed as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final bool? isSubscribed;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isSubscribed = isSubscribed;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$isSubscribed,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
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

extension UtilityExtension$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity
    on Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity {
  CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity<
          Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity>
      get copyWith =>
          CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity<
    TRes> {
  factory CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity(
    Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity
        instance,
    TRes Function(
            Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity)
        then,
  ) = _CopyWithImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity;

  factory CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity;

  TRes call({
    int? id,
    bool? isSubscribed,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity<
            TRes> {
  _CopyWithImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity(
    this._instance,
    this._then,
  );

  final Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity
      _instance;

  final TRes Function(
          Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isSubscribed = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity<
            TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$ListActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    bool? isSubscribed,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity
    implements Mutation$ToggleActivitySubscription$ToggleActivitySubscription {
  Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity({
    required this.id,
    this.isSubscribed,
    this.$__typename = 'TextActivity',
  });

  factory Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$isSubscribed = json['isSubscribed'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity(
      id: (l$id as int),
      isSubscribed: (l$isSubscribed as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final bool? isSubscribed;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isSubscribed = isSubscribed;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$isSubscribed,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
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

extension UtilityExtension$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity
    on Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity {
  CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity<
          Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity>
      get copyWith =>
          CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity<
    TRes> {
  factory CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity(
    Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity
        instance,
    TRes Function(
            Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity)
        then,
  ) = _CopyWithImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity;

  factory CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity;

  TRes call({
    int? id,
    bool? isSubscribed,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity<
            TRes> {
  _CopyWithImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity(
    this._instance,
    this._then,
  );

  final Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity
      _instance;

  final TRes Function(
          Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isSubscribed = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity<
            TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$TextActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    bool? isSubscribed,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity
    implements Mutation$ToggleActivitySubscription$ToggleActivitySubscription {
  Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity({
    required this.id,
    this.isSubscribed,
    this.$__typename = 'MessageActivity',
  });

  factory Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$isSubscribed = json['isSubscribed'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity(
      id: (l$id as int),
      isSubscribed: (l$isSubscribed as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final bool? isSubscribed;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isSubscribed = isSubscribed;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$isSubscribed,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
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

extension UtilityExtension$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity
    on Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity {
  CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity<
          Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity>
      get copyWith =>
          CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity<
    TRes> {
  factory CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity(
    Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity
        instance,
    TRes Function(
            Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity)
        then,
  ) = _CopyWithImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity;

  factory CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity;

  TRes call({
    int? id,
    bool? isSubscribed,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity<
            TRes> {
  _CopyWithImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity(
    this._instance,
    this._then,
  );

  final Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity
      _instance;

  final TRes Function(
          Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isSubscribed = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity<
            TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivitySubscription$ToggleActivitySubscription$$MessageActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    bool? isSubscribed,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteActivityReply {
  factory Variables$Mutation$DeleteActivityReply({int? id}) =>
      Variables$Mutation$DeleteActivityReply._({
        if (id != null) r'id': id,
      });

  Variables$Mutation$DeleteActivityReply._(this._$data);

  factory Variables$Mutation$DeleteActivityReply.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Mutation$DeleteActivityReply._(result$data);
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

  CopyWith$Variables$Mutation$DeleteActivityReply<
          Variables$Mutation$DeleteActivityReply>
      get copyWith => CopyWith$Variables$Mutation$DeleteActivityReply(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteActivityReply) ||
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

abstract class CopyWith$Variables$Mutation$DeleteActivityReply<TRes> {
  factory CopyWith$Variables$Mutation$DeleteActivityReply(
    Variables$Mutation$DeleteActivityReply instance,
    TRes Function(Variables$Mutation$DeleteActivityReply) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteActivityReply;

  factory CopyWith$Variables$Mutation$DeleteActivityReply.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteActivityReply;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteActivityReply<TRes>
    implements CopyWith$Variables$Mutation$DeleteActivityReply<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteActivityReply(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteActivityReply _instance;

  final TRes Function(Variables$Mutation$DeleteActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteActivityReply._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteActivityReply<TRes>
    implements CopyWith$Variables$Mutation$DeleteActivityReply<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteActivityReply(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$DeleteActivityReply {
  Mutation$DeleteActivityReply({
    this.DeleteActivityReply,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteActivityReply.fromJson(Map<String, dynamic> json) {
    final l$DeleteActivityReply = json['DeleteActivityReply'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteActivityReply(
      DeleteActivityReply: l$DeleteActivityReply == null
          ? null
          : Mutation$DeleteActivityReply$DeleteActivityReply.fromJson(
              (l$DeleteActivityReply as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteActivityReply$DeleteActivityReply? DeleteActivityReply;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$DeleteActivityReply = DeleteActivityReply;
    _resultData['DeleteActivityReply'] = l$DeleteActivityReply?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$DeleteActivityReply = DeleteActivityReply;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$DeleteActivityReply,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteActivityReply) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$DeleteActivityReply = DeleteActivityReply;
    final lOther$DeleteActivityReply = other.DeleteActivityReply;
    if (l$DeleteActivityReply != lOther$DeleteActivityReply) {
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

extension UtilityExtension$Mutation$DeleteActivityReply
    on Mutation$DeleteActivityReply {
  CopyWith$Mutation$DeleteActivityReply<Mutation$DeleteActivityReply>
      get copyWith => CopyWith$Mutation$DeleteActivityReply(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteActivityReply<TRes> {
  factory CopyWith$Mutation$DeleteActivityReply(
    Mutation$DeleteActivityReply instance,
    TRes Function(Mutation$DeleteActivityReply) then,
  ) = _CopyWithImpl$Mutation$DeleteActivityReply;

  factory CopyWith$Mutation$DeleteActivityReply.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteActivityReply;

  TRes call({
    Mutation$DeleteActivityReply$DeleteActivityReply? DeleteActivityReply,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<TRes>
      get DeleteActivityReply;
}

class _CopyWithImpl$Mutation$DeleteActivityReply<TRes>
    implements CopyWith$Mutation$DeleteActivityReply<TRes> {
  _CopyWithImpl$Mutation$DeleteActivityReply(
    this._instance,
    this._then,
  );

  final Mutation$DeleteActivityReply _instance;

  final TRes Function(Mutation$DeleteActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? DeleteActivityReply = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteActivityReply(
        DeleteActivityReply: DeleteActivityReply == _undefined
            ? _instance.DeleteActivityReply
            : (DeleteActivityReply
                as Mutation$DeleteActivityReply$DeleteActivityReply?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<TRes>
      get DeleteActivityReply {
    final local$DeleteActivityReply = _instance.DeleteActivityReply;
    return local$DeleteActivityReply == null
        ? CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply(
            local$DeleteActivityReply, (e) => call(DeleteActivityReply: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteActivityReply<TRes>
    implements CopyWith$Mutation$DeleteActivityReply<TRes> {
  _CopyWithStubImpl$Mutation$DeleteActivityReply(this._res);

  TRes _res;

  call({
    Mutation$DeleteActivityReply$DeleteActivityReply? DeleteActivityReply,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<TRes>
      get DeleteActivityReply =>
          CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply.stub(_res);
}

const documentNodeMutationDeleteActivityReply = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteActivityReply'),
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
        name: NameNode(value: 'DeleteActivityReply'),
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
            name: NameNode(value: 'deleted'),
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
Mutation$DeleteActivityReply _parserFn$Mutation$DeleteActivityReply(
        Map<String, dynamic> data) =>
    Mutation$DeleteActivityReply.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteActivityReply = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteActivityReply?,
);

class Options$Mutation$DeleteActivityReply
    extends graphql.MutationOptions<Mutation$DeleteActivityReply> {
  Options$Mutation$DeleteActivityReply({
    String? operationName,
    Variables$Mutation$DeleteActivityReply? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteActivityReply? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteActivityReply? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteActivityReply>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteActivityReply(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteActivityReply,
          parserFn: _parserFn$Mutation$DeleteActivityReply,
        );

  final OnMutationCompleted$Mutation$DeleteActivityReply? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteActivityReply
    extends graphql.WatchQueryOptions<Mutation$DeleteActivityReply> {
  WatchOptions$Mutation$DeleteActivityReply({
    String? operationName,
    Variables$Mutation$DeleteActivityReply? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteActivityReply? typedOptimisticResult,
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
          document: documentNodeMutationDeleteActivityReply,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteActivityReply,
        );
}

extension ClientExtension$Mutation$DeleteActivityReply
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteActivityReply>>
      mutate$DeleteActivityReply(
              [Options$Mutation$DeleteActivityReply? options]) async =>
          await this.mutate(options ?? Options$Mutation$DeleteActivityReply());
  graphql.ObservableQuery<Mutation$DeleteActivityReply>
      watchMutation$DeleteActivityReply(
              [WatchOptions$Mutation$DeleteActivityReply? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$DeleteActivityReply());
}

class Mutation$DeleteActivityReply$HookResult {
  Mutation$DeleteActivityReply$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteActivityReply runMutation;

  final graphql.QueryResult<Mutation$DeleteActivityReply> result;
}

Mutation$DeleteActivityReply$HookResult useMutation$DeleteActivityReply(
    [WidgetOptions$Mutation$DeleteActivityReply? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteActivityReply());
  return Mutation$DeleteActivityReply$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteActivityReply>
    useWatchMutation$DeleteActivityReply(
            [WatchOptions$Mutation$DeleteActivityReply? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$DeleteActivityReply());

class WidgetOptions$Mutation$DeleteActivityReply
    extends graphql.MutationOptions<Mutation$DeleteActivityReply> {
  WidgetOptions$Mutation$DeleteActivityReply({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteActivityReply? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteActivityReply? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteActivityReply>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteActivityReply(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteActivityReply,
          parserFn: _parserFn$Mutation$DeleteActivityReply,
        );

  final OnMutationCompleted$Mutation$DeleteActivityReply? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteActivityReply
    = graphql.MultiSourceResult<Mutation$DeleteActivityReply> Function({
  Variables$Mutation$DeleteActivityReply? variables,
  Object? optimisticResult,
  Mutation$DeleteActivityReply? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteActivityReply = widgets.Widget Function(
  RunMutation$Mutation$DeleteActivityReply,
  graphql.QueryResult<Mutation$DeleteActivityReply>?,
);

class Mutation$DeleteActivityReply$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteActivityReply> {
  Mutation$DeleteActivityReply$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteActivityReply? options,
    required Builder$Mutation$DeleteActivityReply builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteActivityReply(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$DeleteActivityReply$DeleteActivityReply {
  Mutation$DeleteActivityReply$DeleteActivityReply({
    this.deleted,
    this.$__typename = 'Deleted',
  });

  factory Mutation$DeleteActivityReply$DeleteActivityReply.fromJson(
      Map<String, dynamic> json) {
    final l$deleted = json['deleted'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteActivityReply$DeleteActivityReply(
      deleted: (l$deleted as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? deleted;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleted = deleted;
    _resultData['deleted'] = l$deleted;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleted = deleted;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleted,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteActivityReply$DeleteActivityReply) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleted = deleted;
    final lOther$deleted = other.deleted;
    if (l$deleted != lOther$deleted) {
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

extension UtilityExtension$Mutation$DeleteActivityReply$DeleteActivityReply
    on Mutation$DeleteActivityReply$DeleteActivityReply {
  CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<
          Mutation$DeleteActivityReply$DeleteActivityReply>
      get copyWith => CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<TRes> {
  factory CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply(
    Mutation$DeleteActivityReply$DeleteActivityReply instance,
    TRes Function(Mutation$DeleteActivityReply$DeleteActivityReply) then,
  ) = _CopyWithImpl$Mutation$DeleteActivityReply$DeleteActivityReply;

  factory CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteActivityReply$DeleteActivityReply;

  TRes call({
    bool? deleted,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteActivityReply$DeleteActivityReply<TRes>
    implements CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<TRes> {
  _CopyWithImpl$Mutation$DeleteActivityReply$DeleteActivityReply(
    this._instance,
    this._then,
  );

  final Mutation$DeleteActivityReply$DeleteActivityReply _instance;

  final TRes Function(Mutation$DeleteActivityReply$DeleteActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleted = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteActivityReply$DeleteActivityReply(
        deleted: deleted == _undefined ? _instance.deleted : (deleted as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteActivityReply$DeleteActivityReply<TRes>
    implements CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<TRes> {
  _CopyWithStubImpl$Mutation$DeleteActivityReply$DeleteActivityReply(this._res);

  TRes _res;

  call({
    bool? deleted,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteActivity {
  factory Variables$Mutation$DeleteActivity({int? id}) =>
      Variables$Mutation$DeleteActivity._({
        if (id != null) r'id': id,
      });

  Variables$Mutation$DeleteActivity._(this._$data);

  factory Variables$Mutation$DeleteActivity.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Mutation$DeleteActivity._(result$data);
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

  CopyWith$Variables$Mutation$DeleteActivity<Variables$Mutation$DeleteActivity>
      get copyWith => CopyWith$Variables$Mutation$DeleteActivity(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteActivity) ||
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

abstract class CopyWith$Variables$Mutation$DeleteActivity<TRes> {
  factory CopyWith$Variables$Mutation$DeleteActivity(
    Variables$Mutation$DeleteActivity instance,
    TRes Function(Variables$Mutation$DeleteActivity) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteActivity;

  factory CopyWith$Variables$Mutation$DeleteActivity.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteActivity;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteActivity<TRes>
    implements CopyWith$Variables$Mutation$DeleteActivity<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteActivity(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteActivity _instance;

  final TRes Function(Variables$Mutation$DeleteActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteActivity._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteActivity<TRes>
    implements CopyWith$Variables$Mutation$DeleteActivity<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteActivity(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$DeleteActivity {
  Mutation$DeleteActivity({
    this.DeleteActivity,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteActivity.fromJson(Map<String, dynamic> json) {
    final l$DeleteActivity = json['DeleteActivity'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteActivity(
      DeleteActivity: l$DeleteActivity == null
          ? null
          : Mutation$DeleteActivity$DeleteActivity.fromJson(
              (l$DeleteActivity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteActivity$DeleteActivity? DeleteActivity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$DeleteActivity = DeleteActivity;
    _resultData['DeleteActivity'] = l$DeleteActivity?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$DeleteActivity = DeleteActivity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$DeleteActivity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$DeleteActivity = DeleteActivity;
    final lOther$DeleteActivity = other.DeleteActivity;
    if (l$DeleteActivity != lOther$DeleteActivity) {
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

extension UtilityExtension$Mutation$DeleteActivity on Mutation$DeleteActivity {
  CopyWith$Mutation$DeleteActivity<Mutation$DeleteActivity> get copyWith =>
      CopyWith$Mutation$DeleteActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteActivity<TRes> {
  factory CopyWith$Mutation$DeleteActivity(
    Mutation$DeleteActivity instance,
    TRes Function(Mutation$DeleteActivity) then,
  ) = _CopyWithImpl$Mutation$DeleteActivity;

  factory CopyWith$Mutation$DeleteActivity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteActivity;

  TRes call({
    Mutation$DeleteActivity$DeleteActivity? DeleteActivity,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteActivity$DeleteActivity<TRes> get DeleteActivity;
}

class _CopyWithImpl$Mutation$DeleteActivity<TRes>
    implements CopyWith$Mutation$DeleteActivity<TRes> {
  _CopyWithImpl$Mutation$DeleteActivity(
    this._instance,
    this._then,
  );

  final Mutation$DeleteActivity _instance;

  final TRes Function(Mutation$DeleteActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? DeleteActivity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteActivity(
        DeleteActivity: DeleteActivity == _undefined
            ? _instance.DeleteActivity
            : (DeleteActivity as Mutation$DeleteActivity$DeleteActivity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteActivity$DeleteActivity<TRes> get DeleteActivity {
    final local$DeleteActivity = _instance.DeleteActivity;
    return local$DeleteActivity == null
        ? CopyWith$Mutation$DeleteActivity$DeleteActivity.stub(_then(_instance))
        : CopyWith$Mutation$DeleteActivity$DeleteActivity(
            local$DeleteActivity, (e) => call(DeleteActivity: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteActivity<TRes>
    implements CopyWith$Mutation$DeleteActivity<TRes> {
  _CopyWithStubImpl$Mutation$DeleteActivity(this._res);

  TRes _res;

  call({
    Mutation$DeleteActivity$DeleteActivity? DeleteActivity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteActivity$DeleteActivity<TRes> get DeleteActivity =>
      CopyWith$Mutation$DeleteActivity$DeleteActivity.stub(_res);
}

const documentNodeMutationDeleteActivity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteActivity'),
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
        name: NameNode(value: 'DeleteActivity'),
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
            name: NameNode(value: 'deleted'),
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
Mutation$DeleteActivity _parserFn$Mutation$DeleteActivity(
        Map<String, dynamic> data) =>
    Mutation$DeleteActivity.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteActivity = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteActivity?,
);

class Options$Mutation$DeleteActivity
    extends graphql.MutationOptions<Mutation$DeleteActivity> {
  Options$Mutation$DeleteActivity({
    String? operationName,
    Variables$Mutation$DeleteActivity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteActivity? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteActivity? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteActivity>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteActivity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteActivity,
          parserFn: _parserFn$Mutation$DeleteActivity,
        );

  final OnMutationCompleted$Mutation$DeleteActivity? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteActivity
    extends graphql.WatchQueryOptions<Mutation$DeleteActivity> {
  WatchOptions$Mutation$DeleteActivity({
    String? operationName,
    Variables$Mutation$DeleteActivity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteActivity? typedOptimisticResult,
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
          document: documentNodeMutationDeleteActivity,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteActivity,
        );
}

extension ClientExtension$Mutation$DeleteActivity on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteActivity>> mutate$DeleteActivity(
          [Options$Mutation$DeleteActivity? options]) async =>
      await this.mutate(options ?? Options$Mutation$DeleteActivity());
  graphql.ObservableQuery<Mutation$DeleteActivity> watchMutation$DeleteActivity(
          [WatchOptions$Mutation$DeleteActivity? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$DeleteActivity());
}

class Mutation$DeleteActivity$HookResult {
  Mutation$DeleteActivity$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteActivity runMutation;

  final graphql.QueryResult<Mutation$DeleteActivity> result;
}

Mutation$DeleteActivity$HookResult useMutation$DeleteActivity(
    [WidgetOptions$Mutation$DeleteActivity? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteActivity());
  return Mutation$DeleteActivity$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteActivity>
    useWatchMutation$DeleteActivity(
            [WatchOptions$Mutation$DeleteActivity? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$DeleteActivity());

class WidgetOptions$Mutation$DeleteActivity
    extends graphql.MutationOptions<Mutation$DeleteActivity> {
  WidgetOptions$Mutation$DeleteActivity({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteActivity? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteActivity? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteActivity>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteActivity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteActivity,
          parserFn: _parserFn$Mutation$DeleteActivity,
        );

  final OnMutationCompleted$Mutation$DeleteActivity? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteActivity
    = graphql.MultiSourceResult<Mutation$DeleteActivity> Function({
  Variables$Mutation$DeleteActivity? variables,
  Object? optimisticResult,
  Mutation$DeleteActivity? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteActivity = widgets.Widget Function(
  RunMutation$Mutation$DeleteActivity,
  graphql.QueryResult<Mutation$DeleteActivity>?,
);

class Mutation$DeleteActivity$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteActivity> {
  Mutation$DeleteActivity$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteActivity? options,
    required Builder$Mutation$DeleteActivity builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteActivity(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$DeleteActivity$DeleteActivity {
  Mutation$DeleteActivity$DeleteActivity({
    this.deleted,
    this.$__typename = 'Deleted',
  });

  factory Mutation$DeleteActivity$DeleteActivity.fromJson(
      Map<String, dynamic> json) {
    final l$deleted = json['deleted'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteActivity$DeleteActivity(
      deleted: (l$deleted as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? deleted;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleted = deleted;
    _resultData['deleted'] = l$deleted;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleted = deleted;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleted,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteActivity$DeleteActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleted = deleted;
    final lOther$deleted = other.deleted;
    if (l$deleted != lOther$deleted) {
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

extension UtilityExtension$Mutation$DeleteActivity$DeleteActivity
    on Mutation$DeleteActivity$DeleteActivity {
  CopyWith$Mutation$DeleteActivity$DeleteActivity<
          Mutation$DeleteActivity$DeleteActivity>
      get copyWith => CopyWith$Mutation$DeleteActivity$DeleteActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteActivity$DeleteActivity<TRes> {
  factory CopyWith$Mutation$DeleteActivity$DeleteActivity(
    Mutation$DeleteActivity$DeleteActivity instance,
    TRes Function(Mutation$DeleteActivity$DeleteActivity) then,
  ) = _CopyWithImpl$Mutation$DeleteActivity$DeleteActivity;

  factory CopyWith$Mutation$DeleteActivity$DeleteActivity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteActivity$DeleteActivity;

  TRes call({
    bool? deleted,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteActivity$DeleteActivity<TRes>
    implements CopyWith$Mutation$DeleteActivity$DeleteActivity<TRes> {
  _CopyWithImpl$Mutation$DeleteActivity$DeleteActivity(
    this._instance,
    this._then,
  );

  final Mutation$DeleteActivity$DeleteActivity _instance;

  final TRes Function(Mutation$DeleteActivity$DeleteActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleted = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteActivity$DeleteActivity(
        deleted: deleted == _undefined ? _instance.deleted : (deleted as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteActivity$DeleteActivity<TRes>
    implements CopyWith$Mutation$DeleteActivity$DeleteActivity<TRes> {
  _CopyWithStubImpl$Mutation$DeleteActivity$DeleteActivity(this._res);

  TRes _res;

  call({
    bool? deleted,
    String? $__typename,
  }) =>
      _res;
}
