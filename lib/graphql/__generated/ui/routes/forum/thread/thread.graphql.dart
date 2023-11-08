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

class Variables$Query$Thread {
  factory Variables$Query$Thread({
    int? id,
    int? page,
  }) =>
      Variables$Query$Thread._({
        if (id != null) r'id': id,
        if (page != null) r'page': page,
      });

  Variables$Query$Thread._(this._$data);

  factory Variables$Query$Thread.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Thread._(result$data);
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

abstract class CopyWith$Variables$Query$Thread<TRes> {
  factory CopyWith$Variables$Query$Thread(
    Variables$Query$Thread instance,
    TRes Function(Variables$Query$Thread) then,
  ) = _CopyWithImpl$Variables$Query$Thread;

  factory CopyWith$Variables$Query$Thread.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Thread;

  TRes call({
    int? id,
    int? page,
  });
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

  TRes call({
    Object? id = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Thread._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Thread<TRes>
    implements CopyWith$Variables$Query$Thread<TRes> {
  _CopyWithStubImpl$Variables$Query$Thread(this._res);

  TRes _res;

  call({
    int? id,
    int? page,
  }) =>
      _res;
}

class Query$Thread {
  Query$Thread({
    this.thread,
    this.comments,
    this.$__typename = 'Query',
  });

  factory Query$Thread.fromJson(Map<String, dynamic> json) {
    final l$thread = json['thread'];
    final l$comments = json['comments'];
    final l$$__typename = json['__typename'];
    return Query$Thread(
      thread: l$thread == null
          ? null
          : Query$Thread$thread.fromJson((l$thread as Map<String, dynamic>)),
      comments: l$comments == null
          ? null
          : Query$Thread$comments.fromJson(
              (l$comments as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Thread$thread? thread;

  final Query$Thread$comments? comments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$comments = comments;
    _resultData['comments'] = l$comments?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$thread = thread;
    final l$comments = comments;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$thread,
      l$comments,
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
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$comments = comments;
    final lOther$comments = other.comments;
    if (l$comments != lOther$comments) {
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
    Query$Thread$thread? thread,
    Query$Thread$comments? comments,
    String? $__typename,
  });
  CopyWith$Query$Thread$thread<TRes> get thread;
  CopyWith$Query$Thread$comments<TRes> get comments;
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
    Object? thread = _undefined,
    Object? comments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Thread(
        thread: thread == _undefined
            ? _instance.thread
            : (thread as Query$Thread$thread?),
        comments: comments == _undefined
            ? _instance.comments
            : (comments as Query$Thread$comments?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Thread$thread<TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWith$Query$Thread$thread.stub(_then(_instance))
        : CopyWith$Query$Thread$thread(local$thread, (e) => call(thread: e));
  }

  CopyWith$Query$Thread$comments<TRes> get comments {
    final local$comments = _instance.comments;
    return local$comments == null
        ? CopyWith$Query$Thread$comments.stub(_then(_instance))
        : CopyWith$Query$Thread$comments(
            local$comments, (e) => call(comments: e));
  }
}

class _CopyWithStubImpl$Query$Thread<TRes>
    implements CopyWith$Query$Thread<TRes> {
  _CopyWithStubImpl$Query$Thread(this._res);

  TRes _res;

  call({
    Query$Thread$thread? thread,
    Query$Thread$comments? comments,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Thread$thread<TRes> get thread =>
      CopyWith$Query$Thread$thread.stub(_res);

  CopyWith$Query$Thread$comments<TRes> get comments =>
      CopyWith$Query$Thread$comments.stub(_res);
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
        name: NameNode(value: 'Thread'),
        alias: NameNode(value: 'thread'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ThreadFragment'),
            directives: [],
          ),
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
        alias: NameNode(value: 'comments'),
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
            name: NameNode(value: 'threadComments'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'threadId'),
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
  fragmentDefinitionThreadFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionUserFragment,
  fragmentDefinitionPageInfo,
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

class Query$Thread$thread implements Fragment$ThreadFragment {
  Query$Thread$thread({
    required this.id,
    this.title,
    this.replyCount,
    this.viewCount,
    this.replyCommentId,
    this.repliedAt,
    required this.createdAt,
    this.isSticky,
    this.mediaCategories,
    this.categories,
    this.user,
    this.replyUser,
    this.$__typename = 'Thread',
    this.body,
    required this.userId,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
  });

  factory Query$Thread$thread.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$replyCount = json['replyCount'];
    final l$viewCount = json['viewCount'];
    final l$replyCommentId = json['replyCommentId'];
    final l$repliedAt = json['repliedAt'];
    final l$createdAt = json['createdAt'];
    final l$isSticky = json['isSticky'];
    final l$mediaCategories = json['mediaCategories'];
    final l$categories = json['categories'];
    final l$user = json['user'];
    final l$replyUser = json['replyUser'];
    final l$$__typename = json['__typename'];
    final l$body = json['body'];
    final l$userId = json['userId'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    return Query$Thread$thread(
      id: (l$id as int),
      title: (l$title as String?),
      replyCount: (l$replyCount as int?),
      viewCount: (l$viewCount as int?),
      replyCommentId: (l$replyCommentId as int?),
      repliedAt: (l$repliedAt as int?),
      createdAt: (l$createdAt as int),
      isSticky: (l$isSticky as bool?),
      mediaCategories: (l$mediaCategories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      categories: (l$categories as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Thread$thread$categories.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      replyUser: l$replyUser == null
          ? null
          : Fragment$UserFragment.fromJson(
              (l$replyUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      body: (l$body as String?),
      userId: (l$userId as int),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
    );
  }

  final int id;

  final String? title;

  final int? replyCount;

  final int? viewCount;

  final int? replyCommentId;

  final int? repliedAt;

  final int createdAt;

  final bool? isSticky;

  final List<Fragment$MediaFragment?>? mediaCategories;

  final List<Query$Thread$thread$categories?>? categories;

  final Fragment$UserFragment? user;

  final Fragment$UserFragment? replyUser;

  final String $__typename;

  final String? body;

  final int userId;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

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
    final l$isSticky = isSticky;
    _resultData['isSticky'] = l$isSticky;
    final l$mediaCategories = mediaCategories;
    _resultData['mediaCategories'] =
        l$mediaCategories?.map((e) => e?.toJson()).toList();
    final l$categories = categories;
    _resultData['categories'] = l$categories?.map((e) => e?.toJson()).toList();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$replyUser = replyUser;
    _resultData['replyUser'] = l$replyUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
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
    final l$isSticky = isSticky;
    final l$mediaCategories = mediaCategories;
    final l$categories = categories;
    final l$user = user;
    final l$replyUser = replyUser;
    final l$$__typename = $__typename;
    final l$body = body;
    final l$userId = userId;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    return Object.hashAll([
      l$id,
      l$title,
      l$replyCount,
      l$viewCount,
      l$replyCommentId,
      l$repliedAt,
      l$createdAt,
      l$isSticky,
      l$mediaCategories == null
          ? null
          : Object.hashAll(l$mediaCategories.map((v) => v)),
      l$categories == null ? null : Object.hashAll(l$categories.map((v) => v)),
      l$user,
      l$replyUser,
      l$$__typename,
      l$body,
      l$userId,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Thread$thread) || runtimeType != other.runtimeType) {
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
    final l$isSticky = isSticky;
    final lOther$isSticky = other.isSticky;
    if (l$isSticky != lOther$isSticky) {
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
    return true;
  }
}

extension UtilityExtension$Query$Thread$thread on Query$Thread$thread {
  CopyWith$Query$Thread$thread<Query$Thread$thread> get copyWith =>
      CopyWith$Query$Thread$thread(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Thread$thread<TRes> {
  factory CopyWith$Query$Thread$thread(
    Query$Thread$thread instance,
    TRes Function(Query$Thread$thread) then,
  ) = _CopyWithImpl$Query$Thread$thread;

  factory CopyWith$Query$Thread$thread.stub(TRes res) =
      _CopyWithStubImpl$Query$Thread$thread;

  TRes call({
    int? id,
    String? title,
    int? replyCount,
    int? viewCount,
    int? replyCommentId,
    int? repliedAt,
    int? createdAt,
    bool? isSticky,
    List<Fragment$MediaFragment?>? mediaCategories,
    List<Query$Thread$thread$categories?>? categories,
    Fragment$UserFragment? user,
    Fragment$UserFragment? replyUser,
    String? $__typename,
    String? body,
    int? userId,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
  });
  TRes mediaCategories(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
  TRes categories(
      Iterable<Query$Thread$thread$categories?>? Function(
              Iterable<
                  CopyWith$Query$Thread$thread$categories<
                      Query$Thread$thread$categories>?>?)
          _fn);
  CopyWith$Fragment$UserFragment<TRes> get user;
  CopyWith$Fragment$UserFragment<TRes> get replyUser;
}

class _CopyWithImpl$Query$Thread$thread<TRes>
    implements CopyWith$Query$Thread$thread<TRes> {
  _CopyWithImpl$Query$Thread$thread(
    this._instance,
    this._then,
  );

  final Query$Thread$thread _instance;

  final TRes Function(Query$Thread$thread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? replyCount = _undefined,
    Object? viewCount = _undefined,
    Object? replyCommentId = _undefined,
    Object? repliedAt = _undefined,
    Object? createdAt = _undefined,
    Object? isSticky = _undefined,
    Object? mediaCategories = _undefined,
    Object? categories = _undefined,
    Object? user = _undefined,
    Object? replyUser = _undefined,
    Object? $__typename = _undefined,
    Object? body = _undefined,
    Object? userId = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
  }) =>
      _then(Query$Thread$thread(
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
        isSticky:
            isSticky == _undefined ? _instance.isSticky : (isSticky as bool?),
        mediaCategories: mediaCategories == _undefined
            ? _instance.mediaCategories
            : (mediaCategories as List<Fragment$MediaFragment?>?),
        categories: categories == _undefined
            ? _instance.categories
            : (categories as List<Query$Thread$thread$categories?>?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        replyUser: replyUser == _undefined
            ? _instance.replyUser
            : (replyUser as Fragment$UserFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        body: body == _undefined ? _instance.body : (body as String?),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as int),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
      ));

  TRes mediaCategories(
          Iterable<Fragment$MediaFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<
                          Fragment$MediaFragment>?>?)
              _fn) =>
      call(
          mediaCategories: _fn(_instance.mediaCategories?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaFragment(
                  e,
                  (i) => i,
                )))?.toList());

  TRes categories(
          Iterable<Query$Thread$thread$categories?>? Function(
                  Iterable<
                      CopyWith$Query$Thread$thread$categories<
                          Query$Thread$thread$categories>?>?)
              _fn) =>
      call(
          categories: _fn(_instance.categories?.map((e) => e == null
              ? null
              : CopyWith$Query$Thread$thread$categories(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$UserFragment<TRes> get replyUser {
    final local$replyUser = _instance.replyUser;
    return local$replyUser == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(
            local$replyUser, (e) => call(replyUser: e));
  }
}

class _CopyWithStubImpl$Query$Thread$thread<TRes>
    implements CopyWith$Query$Thread$thread<TRes> {
  _CopyWithStubImpl$Query$Thread$thread(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    int? replyCount,
    int? viewCount,
    int? replyCommentId,
    int? repliedAt,
    int? createdAt,
    bool? isSticky,
    List<Fragment$MediaFragment?>? mediaCategories,
    List<Query$Thread$thread$categories?>? categories,
    Fragment$UserFragment? user,
    Fragment$UserFragment? replyUser,
    String? $__typename,
    String? body,
    int? userId,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
  }) =>
      _res;

  mediaCategories(_fn) => _res;

  categories(_fn) => _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);

  CopyWith$Fragment$UserFragment<TRes> get replyUser =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Thread$thread$categories
    implements Fragment$ThreadFragment$categories {
  Query$Thread$thread$categories({
    required this.id,
    required this.name,
    this.$__typename = 'ThreadCategory',
  });

  factory Query$Thread$thread$categories.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Thread$thread$categories(
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
    if (!(other is Query$Thread$thread$categories) ||
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

extension UtilityExtension$Query$Thread$thread$categories
    on Query$Thread$thread$categories {
  CopyWith$Query$Thread$thread$categories<Query$Thread$thread$categories>
      get copyWith => CopyWith$Query$Thread$thread$categories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Thread$thread$categories<TRes> {
  factory CopyWith$Query$Thread$thread$categories(
    Query$Thread$thread$categories instance,
    TRes Function(Query$Thread$thread$categories) then,
  ) = _CopyWithImpl$Query$Thread$thread$categories;

  factory CopyWith$Query$Thread$thread$categories.stub(TRes res) =
      _CopyWithStubImpl$Query$Thread$thread$categories;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Thread$thread$categories<TRes>
    implements CopyWith$Query$Thread$thread$categories<TRes> {
  _CopyWithImpl$Query$Thread$thread$categories(
    this._instance,
    this._then,
  );

  final Query$Thread$thread$categories _instance;

  final TRes Function(Query$Thread$thread$categories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Thread$thread$categories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Thread$thread$categories<TRes>
    implements CopyWith$Query$Thread$thread$categories<TRes> {
  _CopyWithStubImpl$Query$Thread$thread$categories(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Thread$comments {
  Query$Thread$comments({
    this.pageInfo,
    this.threadComments,
    this.$__typename = 'Page',
  });

  factory Query$Thread$comments.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$threadComments = json['threadComments'];
    final l$$__typename = json['__typename'];
    return Query$Thread$comments(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      threadComments: (l$threadComments as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Thread$comments$threadComments.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Thread$comments$threadComments?>? threadComments;

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
    if (!(other is Query$Thread$comments) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Thread$comments on Query$Thread$comments {
  CopyWith$Query$Thread$comments<Query$Thread$comments> get copyWith =>
      CopyWith$Query$Thread$comments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Thread$comments<TRes> {
  factory CopyWith$Query$Thread$comments(
    Query$Thread$comments instance,
    TRes Function(Query$Thread$comments) then,
  ) = _CopyWithImpl$Query$Thread$comments;

  factory CopyWith$Query$Thread$comments.stub(TRes res) =
      _CopyWithStubImpl$Query$Thread$comments;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Thread$comments$threadComments?>? threadComments,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes threadComments(
      Iterable<Query$Thread$comments$threadComments?>? Function(
              Iterable<
                  CopyWith$Query$Thread$comments$threadComments<
                      Query$Thread$comments$threadComments>?>?)
          _fn);
}

class _CopyWithImpl$Query$Thread$comments<TRes>
    implements CopyWith$Query$Thread$comments<TRes> {
  _CopyWithImpl$Query$Thread$comments(
    this._instance,
    this._then,
  );

  final Query$Thread$comments _instance;

  final TRes Function(Query$Thread$comments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? threadComments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Thread$comments(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        threadComments: threadComments == _undefined
            ? _instance.threadComments
            : (threadComments as List<Query$Thread$comments$threadComments?>?),
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

  TRes threadComments(
          Iterable<Query$Thread$comments$threadComments?>? Function(
                  Iterable<
                      CopyWith$Query$Thread$comments$threadComments<
                          Query$Thread$comments$threadComments>?>?)
              _fn) =>
      call(
          threadComments: _fn(_instance.threadComments?.map((e) => e == null
              ? null
              : CopyWith$Query$Thread$comments$threadComments(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Thread$comments<TRes>
    implements CopyWith$Query$Thread$comments<TRes> {
  _CopyWithStubImpl$Query$Thread$comments(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Thread$comments$threadComments?>? threadComments,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  threadComments(_fn) => _res;
}

class Query$Thread$comments$threadComments {
  Query$Thread$comments$threadComments({
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

  factory Query$Thread$comments$threadComments.fromJson(
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
    return Query$Thread$comments$threadComments(
      id: (l$id as int),
      threadId: (l$threadId as int?),
      comment: (l$comment as String?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Query$Thread$comments$threadComments$user.fromJson(
              (l$user as Map<String, dynamic>)),
      childComments: (l$childComments as dynamic?),
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

  final Query$Thread$comments$threadComments$user? user;

  final dynamic? childComments;

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
    if (!(other is Query$Thread$comments$threadComments) ||
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

extension UtilityExtension$Query$Thread$comments$threadComments
    on Query$Thread$comments$threadComments {
  CopyWith$Query$Thread$comments$threadComments<
          Query$Thread$comments$threadComments>
      get copyWith => CopyWith$Query$Thread$comments$threadComments(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Thread$comments$threadComments<TRes> {
  factory CopyWith$Query$Thread$comments$threadComments(
    Query$Thread$comments$threadComments instance,
    TRes Function(Query$Thread$comments$threadComments) then,
  ) = _CopyWithImpl$Query$Thread$comments$threadComments;

  factory CopyWith$Query$Thread$comments$threadComments.stub(TRes res) =
      _CopyWithStubImpl$Query$Thread$comments$threadComments;

  TRes call({
    int? id,
    int? threadId,
    String? comment,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Query$Thread$comments$threadComments$user? user,
    dynamic? childComments,
    bool? isLocked,
    String? $__typename,
  });
  CopyWith$Query$Thread$comments$threadComments$user<TRes> get user;
}

class _CopyWithImpl$Query$Thread$comments$threadComments<TRes>
    implements CopyWith$Query$Thread$comments$threadComments<TRes> {
  _CopyWithImpl$Query$Thread$comments$threadComments(
    this._instance,
    this._then,
  );

  final Query$Thread$comments$threadComments _instance;

  final TRes Function(Query$Thread$comments$threadComments) _then;

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
      _then(Query$Thread$comments$threadComments(
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
            : (user as Query$Thread$comments$threadComments$user?),
        childComments: childComments == _undefined
            ? _instance.childComments
            : (childComments as dynamic?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Thread$comments$threadComments$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$Thread$comments$threadComments$user.stub(
            _then(_instance))
        : CopyWith$Query$Thread$comments$threadComments$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Thread$comments$threadComments<TRes>
    implements CopyWith$Query$Thread$comments$threadComments<TRes> {
  _CopyWithStubImpl$Query$Thread$comments$threadComments(this._res);

  TRes _res;

  call({
    int? id,
    int? threadId,
    String? comment,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Query$Thread$comments$threadComments$user? user,
    dynamic? childComments,
    bool? isLocked,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Thread$comments$threadComments$user<TRes> get user =>
      CopyWith$Query$Thread$comments$threadComments$user.stub(_res);
}

class Query$Thread$comments$threadComments$user {
  Query$Thread$comments$threadComments$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$Thread$comments$threadComments$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$Thread$comments$threadComments$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$Thread$comments$threadComments$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$Thread$comments$threadComments$user$avatar? avatar;

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
    if (!(other is Query$Thread$comments$threadComments$user) ||
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

extension UtilityExtension$Query$Thread$comments$threadComments$user
    on Query$Thread$comments$threadComments$user {
  CopyWith$Query$Thread$comments$threadComments$user<
          Query$Thread$comments$threadComments$user>
      get copyWith => CopyWith$Query$Thread$comments$threadComments$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Thread$comments$threadComments$user<TRes> {
  factory CopyWith$Query$Thread$comments$threadComments$user(
    Query$Thread$comments$threadComments$user instance,
    TRes Function(Query$Thread$comments$threadComments$user) then,
  ) = _CopyWithImpl$Query$Thread$comments$threadComments$user;

  factory CopyWith$Query$Thread$comments$threadComments$user.stub(TRes res) =
      _CopyWithStubImpl$Query$Thread$comments$threadComments$user;

  TRes call({
    int? id,
    String? name,
    Query$Thread$comments$threadComments$user$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$Thread$comments$threadComments$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Query$Thread$comments$threadComments$user<TRes>
    implements CopyWith$Query$Thread$comments$threadComments$user<TRes> {
  _CopyWithImpl$Query$Thread$comments$threadComments$user(
    this._instance,
    this._then,
  );

  final Query$Thread$comments$threadComments$user _instance;

  final TRes Function(Query$Thread$comments$threadComments$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Thread$comments$threadComments$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$Thread$comments$threadComments$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Thread$comments$threadComments$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$Thread$comments$threadComments$user$avatar.stub(
            _then(_instance))
        : CopyWith$Query$Thread$comments$threadComments$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$Thread$comments$threadComments$user<TRes>
    implements CopyWith$Query$Thread$comments$threadComments$user<TRes> {
  _CopyWithStubImpl$Query$Thread$comments$threadComments$user(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$Thread$comments$threadComments$user$avatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Thread$comments$threadComments$user$avatar<TRes> get avatar =>
      CopyWith$Query$Thread$comments$threadComments$user$avatar.stub(_res);
}

class Query$Thread$comments$threadComments$user$avatar {
  Query$Thread$comments$threadComments$user$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$Thread$comments$threadComments$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Thread$comments$threadComments$user$avatar(
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
    if (!(other is Query$Thread$comments$threadComments$user$avatar) ||
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

extension UtilityExtension$Query$Thread$comments$threadComments$user$avatar
    on Query$Thread$comments$threadComments$user$avatar {
  CopyWith$Query$Thread$comments$threadComments$user$avatar<
          Query$Thread$comments$threadComments$user$avatar>
      get copyWith => CopyWith$Query$Thread$comments$threadComments$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Thread$comments$threadComments$user$avatar<TRes> {
  factory CopyWith$Query$Thread$comments$threadComments$user$avatar(
    Query$Thread$comments$threadComments$user$avatar instance,
    TRes Function(Query$Thread$comments$threadComments$user$avatar) then,
  ) = _CopyWithImpl$Query$Thread$comments$threadComments$user$avatar;

  factory CopyWith$Query$Thread$comments$threadComments$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Thread$comments$threadComments$user$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Thread$comments$threadComments$user$avatar<TRes>
    implements CopyWith$Query$Thread$comments$threadComments$user$avatar<TRes> {
  _CopyWithImpl$Query$Thread$comments$threadComments$user$avatar(
    this._instance,
    this._then,
  );

  final Query$Thread$comments$threadComments$user$avatar _instance;

  final TRes Function(Query$Thread$comments$threadComments$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Thread$comments$threadComments$user$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Thread$comments$threadComments$user$avatar<TRes>
    implements CopyWith$Query$Thread$comments$threadComments$user$avatar<TRes> {
  _CopyWithStubImpl$Query$Thread$comments$threadComments$user$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$SaveComment {
  factory Variables$Mutation$SaveComment({
    int? id,
    int? threadId,
    int? parentCommentId,
    String? comment,
  }) =>
      Variables$Mutation$SaveComment._({
        if (id != null) r'id': id,
        if (threadId != null) r'threadId': threadId,
        if (parentCommentId != null) r'parentCommentId': parentCommentId,
        if (comment != null) r'comment': comment,
      });

  Variables$Mutation$SaveComment._(this._$data);

  factory Variables$Mutation$SaveComment.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('threadId')) {
      final l$threadId = data['threadId'];
      result$data['threadId'] = (l$threadId as int?);
    }
    if (data.containsKey('parentCommentId')) {
      final l$parentCommentId = data['parentCommentId'];
      result$data['parentCommentId'] = (l$parentCommentId as int?);
    }
    if (data.containsKey('comment')) {
      final l$comment = data['comment'];
      result$data['comment'] = (l$comment as String?);
    }
    return Variables$Mutation$SaveComment._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get threadId => (_$data['threadId'] as int?);

  int? get parentCommentId => (_$data['parentCommentId'] as int?);

  String? get comment => (_$data['comment'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('threadId')) {
      final l$threadId = threadId;
      result$data['threadId'] = l$threadId;
    }
    if (_$data.containsKey('parentCommentId')) {
      final l$parentCommentId = parentCommentId;
      result$data['parentCommentId'] = l$parentCommentId;
    }
    if (_$data.containsKey('comment')) {
      final l$comment = comment;
      result$data['comment'] = l$comment;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveComment<Variables$Mutation$SaveComment>
      get copyWith => CopyWith$Variables$Mutation$SaveComment(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SaveComment) ||
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
    final l$threadId = threadId;
    final lOther$threadId = other.threadId;
    if (_$data.containsKey('threadId') !=
        other._$data.containsKey('threadId')) {
      return false;
    }
    if (l$threadId != lOther$threadId) {
      return false;
    }
    final l$parentCommentId = parentCommentId;
    final lOther$parentCommentId = other.parentCommentId;
    if (_$data.containsKey('parentCommentId') !=
        other._$data.containsKey('parentCommentId')) {
      return false;
    }
    if (l$parentCommentId != lOther$parentCommentId) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (_$data.containsKey('comment') != other._$data.containsKey('comment')) {
      return false;
    }
    if (l$comment != lOther$comment) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$threadId = threadId;
    final l$parentCommentId = parentCommentId;
    final l$comment = comment;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('threadId') ? l$threadId : const {},
      _$data.containsKey('parentCommentId') ? l$parentCommentId : const {},
      _$data.containsKey('comment') ? l$comment : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveComment<TRes> {
  factory CopyWith$Variables$Mutation$SaveComment(
    Variables$Mutation$SaveComment instance,
    TRes Function(Variables$Mutation$SaveComment) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveComment;

  factory CopyWith$Variables$Mutation$SaveComment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveComment;

  TRes call({
    int? id,
    int? threadId,
    int? parentCommentId,
    String? comment,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveComment<TRes>
    implements CopyWith$Variables$Mutation$SaveComment<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveComment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveComment _instance;

  final TRes Function(Variables$Mutation$SaveComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? threadId = _undefined,
    Object? parentCommentId = _undefined,
    Object? comment = _undefined,
  }) =>
      _then(Variables$Mutation$SaveComment._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (threadId != _undefined) 'threadId': (threadId as int?),
        if (parentCommentId != _undefined)
          'parentCommentId': (parentCommentId as int?),
        if (comment != _undefined) 'comment': (comment as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveComment<TRes>
    implements CopyWith$Variables$Mutation$SaveComment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveComment(this._res);

  TRes _res;

  call({
    int? id,
    int? threadId,
    int? parentCommentId,
    String? comment,
  }) =>
      _res;
}

class Mutation$SaveComment {
  Mutation$SaveComment({
    this.SaveThreadComment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveComment.fromJson(Map<String, dynamic> json) {
    final l$SaveThreadComment = json['SaveThreadComment'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveComment(
      SaveThreadComment: l$SaveThreadComment == null
          ? null
          : Mutation$SaveComment$SaveThreadComment.fromJson(
              (l$SaveThreadComment as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SaveComment$SaveThreadComment? SaveThreadComment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$SaveThreadComment = SaveThreadComment;
    _resultData['SaveThreadComment'] = l$SaveThreadComment?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$SaveThreadComment = SaveThreadComment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$SaveThreadComment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SaveComment) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$SaveThreadComment = SaveThreadComment;
    final lOther$SaveThreadComment = other.SaveThreadComment;
    if (l$SaveThreadComment != lOther$SaveThreadComment) {
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

extension UtilityExtension$Mutation$SaveComment on Mutation$SaveComment {
  CopyWith$Mutation$SaveComment<Mutation$SaveComment> get copyWith =>
      CopyWith$Mutation$SaveComment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SaveComment<TRes> {
  factory CopyWith$Mutation$SaveComment(
    Mutation$SaveComment instance,
    TRes Function(Mutation$SaveComment) then,
  ) = _CopyWithImpl$Mutation$SaveComment;

  factory CopyWith$Mutation$SaveComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveComment;

  TRes call({
    Mutation$SaveComment$SaveThreadComment? SaveThreadComment,
    String? $__typename,
  });
  CopyWith$Mutation$SaveComment$SaveThreadComment<TRes> get SaveThreadComment;
}

class _CopyWithImpl$Mutation$SaveComment<TRes>
    implements CopyWith$Mutation$SaveComment<TRes> {
  _CopyWithImpl$Mutation$SaveComment(
    this._instance,
    this._then,
  );

  final Mutation$SaveComment _instance;

  final TRes Function(Mutation$SaveComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? SaveThreadComment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveComment(
        SaveThreadComment: SaveThreadComment == _undefined
            ? _instance.SaveThreadComment
            : (SaveThreadComment as Mutation$SaveComment$SaveThreadComment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SaveComment$SaveThreadComment<TRes> get SaveThreadComment {
    final local$SaveThreadComment = _instance.SaveThreadComment;
    return local$SaveThreadComment == null
        ? CopyWith$Mutation$SaveComment$SaveThreadComment.stub(_then(_instance))
        : CopyWith$Mutation$SaveComment$SaveThreadComment(
            local$SaveThreadComment, (e) => call(SaveThreadComment: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveComment<TRes>
    implements CopyWith$Mutation$SaveComment<TRes> {
  _CopyWithStubImpl$Mutation$SaveComment(this._res);

  TRes _res;

  call({
    Mutation$SaveComment$SaveThreadComment? SaveThreadComment,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SaveComment$SaveThreadComment<TRes> get SaveThreadComment =>
      CopyWith$Mutation$SaveComment$SaveThreadComment.stub(_res);
}

const documentNodeMutationSaveComment = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveComment'),
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
        variable: VariableNode(name: NameNode(value: 'threadId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'parentCommentId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'comment')),
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
        name: NameNode(value: 'SaveThreadComment'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'threadId'),
            value: VariableNode(name: NameNode(value: 'threadId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'parentCommentId'),
            value: VariableNode(name: NameNode(value: 'parentCommentId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'comment'),
            value: VariableNode(name: NameNode(value: 'comment')),
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
]);
Mutation$SaveComment _parserFn$Mutation$SaveComment(
        Map<String, dynamic> data) =>
    Mutation$SaveComment.fromJson(data);
typedef OnMutationCompleted$Mutation$SaveComment = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SaveComment?,
);

class Options$Mutation$SaveComment
    extends graphql.MutationOptions<Mutation$SaveComment> {
  Options$Mutation$SaveComment({
    String? operationName,
    Variables$Mutation$SaveComment? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveComment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveComment? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveComment>? update,
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
                    data == null ? null : _parserFn$Mutation$SaveComment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveComment,
          parserFn: _parserFn$Mutation$SaveComment,
        );

  final OnMutationCompleted$Mutation$SaveComment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SaveComment
    extends graphql.WatchQueryOptions<Mutation$SaveComment> {
  WatchOptions$Mutation$SaveComment({
    String? operationName,
    Variables$Mutation$SaveComment? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveComment? typedOptimisticResult,
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
          document: documentNodeMutationSaveComment,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SaveComment,
        );
}

extension ClientExtension$Mutation$SaveComment on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SaveComment>> mutate$SaveComment(
          [Options$Mutation$SaveComment? options]) async =>
      await this.mutate(options ?? Options$Mutation$SaveComment());
  graphql.ObservableQuery<Mutation$SaveComment> watchMutation$SaveComment(
          [WatchOptions$Mutation$SaveComment? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$SaveComment());
}

class Mutation$SaveComment$HookResult {
  Mutation$SaveComment$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SaveComment runMutation;

  final graphql.QueryResult<Mutation$SaveComment> result;
}

Mutation$SaveComment$HookResult useMutation$SaveComment(
    [WidgetOptions$Mutation$SaveComment? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SaveComment());
  return Mutation$SaveComment$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SaveComment> useWatchMutation$SaveComment(
        [WatchOptions$Mutation$SaveComment? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$SaveComment());

class WidgetOptions$Mutation$SaveComment
    extends graphql.MutationOptions<Mutation$SaveComment> {
  WidgetOptions$Mutation$SaveComment({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveComment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveComment? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveComment>? update,
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
                    data == null ? null : _parserFn$Mutation$SaveComment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveComment,
          parserFn: _parserFn$Mutation$SaveComment,
        );

  final OnMutationCompleted$Mutation$SaveComment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SaveComment
    = graphql.MultiSourceResult<Mutation$SaveComment> Function({
  Variables$Mutation$SaveComment? variables,
  Object? optimisticResult,
  Mutation$SaveComment? typedOptimisticResult,
});
typedef Builder$Mutation$SaveComment = widgets.Widget Function(
  RunMutation$Mutation$SaveComment,
  graphql.QueryResult<Mutation$SaveComment>?,
);

class Mutation$SaveComment$Widget
    extends graphql_flutter.Mutation<Mutation$SaveComment> {
  Mutation$SaveComment$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SaveComment? options,
    required Builder$Mutation$SaveComment builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SaveComment(),
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

class Mutation$SaveComment$SaveThreadComment {
  Mutation$SaveComment$SaveThreadComment({
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

  factory Mutation$SaveComment$SaveThreadComment.fromJson(
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
    return Mutation$SaveComment$SaveThreadComment(
      id: (l$id as int),
      threadId: (l$threadId as int?),
      comment: (l$comment as String?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Mutation$SaveComment$SaveThreadComment$user.fromJson(
              (l$user as Map<String, dynamic>)),
      childComments: (l$childComments as dynamic?),
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

  final Mutation$SaveComment$SaveThreadComment$user? user;

  final dynamic? childComments;

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
    if (!(other is Mutation$SaveComment$SaveThreadComment) ||
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

extension UtilityExtension$Mutation$SaveComment$SaveThreadComment
    on Mutation$SaveComment$SaveThreadComment {
  CopyWith$Mutation$SaveComment$SaveThreadComment<
          Mutation$SaveComment$SaveThreadComment>
      get copyWith => CopyWith$Mutation$SaveComment$SaveThreadComment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveComment$SaveThreadComment<TRes> {
  factory CopyWith$Mutation$SaveComment$SaveThreadComment(
    Mutation$SaveComment$SaveThreadComment instance,
    TRes Function(Mutation$SaveComment$SaveThreadComment) then,
  ) = _CopyWithImpl$Mutation$SaveComment$SaveThreadComment;

  factory CopyWith$Mutation$SaveComment$SaveThreadComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveComment$SaveThreadComment;

  TRes call({
    int? id,
    int? threadId,
    String? comment,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Mutation$SaveComment$SaveThreadComment$user? user,
    dynamic? childComments,
    bool? isLocked,
    String? $__typename,
  });
  CopyWith$Mutation$SaveComment$SaveThreadComment$user<TRes> get user;
}

class _CopyWithImpl$Mutation$SaveComment$SaveThreadComment<TRes>
    implements CopyWith$Mutation$SaveComment$SaveThreadComment<TRes> {
  _CopyWithImpl$Mutation$SaveComment$SaveThreadComment(
    this._instance,
    this._then,
  );

  final Mutation$SaveComment$SaveThreadComment _instance;

  final TRes Function(Mutation$SaveComment$SaveThreadComment) _then;

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
      _then(Mutation$SaveComment$SaveThreadComment(
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
            : (user as Mutation$SaveComment$SaveThreadComment$user?),
        childComments: childComments == _undefined
            ? _instance.childComments
            : (childComments as dynamic?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SaveComment$SaveThreadComment$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Mutation$SaveComment$SaveThreadComment$user.stub(
            _then(_instance))
        : CopyWith$Mutation$SaveComment$SaveThreadComment$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveComment$SaveThreadComment<TRes>
    implements CopyWith$Mutation$SaveComment$SaveThreadComment<TRes> {
  _CopyWithStubImpl$Mutation$SaveComment$SaveThreadComment(this._res);

  TRes _res;

  call({
    int? id,
    int? threadId,
    String? comment,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Mutation$SaveComment$SaveThreadComment$user? user,
    dynamic? childComments,
    bool? isLocked,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SaveComment$SaveThreadComment$user<TRes> get user =>
      CopyWith$Mutation$SaveComment$SaveThreadComment$user.stub(_res);
}

class Mutation$SaveComment$SaveThreadComment$user {
  Mutation$SaveComment$SaveThreadComment$user({
    required this.id,
    required this.name,
    this.donatorTier,
    this.donatorBadge,
    this.moderatorRoles,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Mutation$SaveComment$SaveThreadComment$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$donatorTier = json['donatorTier'];
    final l$donatorBadge = json['donatorBadge'];
    final l$moderatorRoles = json['moderatorRoles'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveComment$SaveThreadComment$user(
      id: (l$id as int),
      name: (l$name as String),
      donatorTier: (l$donatorTier as int?),
      donatorBadge: (l$donatorBadge as String?),
      moderatorRoles: (l$moderatorRoles as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$ModRole((e as String)))
          .toList(),
      avatar: l$avatar == null
          ? null
          : Mutation$SaveComment$SaveThreadComment$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? donatorTier;

  final String? donatorBadge;

  final List<Enum$ModRole?>? moderatorRoles;

  final Mutation$SaveComment$SaveThreadComment$user$avatar? avatar;

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
    if (!(other is Mutation$SaveComment$SaveThreadComment$user) ||
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

extension UtilityExtension$Mutation$SaveComment$SaveThreadComment$user
    on Mutation$SaveComment$SaveThreadComment$user {
  CopyWith$Mutation$SaveComment$SaveThreadComment$user<
          Mutation$SaveComment$SaveThreadComment$user>
      get copyWith => CopyWith$Mutation$SaveComment$SaveThreadComment$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveComment$SaveThreadComment$user<TRes> {
  factory CopyWith$Mutation$SaveComment$SaveThreadComment$user(
    Mutation$SaveComment$SaveThreadComment$user instance,
    TRes Function(Mutation$SaveComment$SaveThreadComment$user) then,
  ) = _CopyWithImpl$Mutation$SaveComment$SaveThreadComment$user;

  factory CopyWith$Mutation$SaveComment$SaveThreadComment$user.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveComment$SaveThreadComment$user;

  TRes call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Mutation$SaveComment$SaveThreadComment$user$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Mutation$SaveComment$SaveThreadComment$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Mutation$SaveComment$SaveThreadComment$user<TRes>
    implements CopyWith$Mutation$SaveComment$SaveThreadComment$user<TRes> {
  _CopyWithImpl$Mutation$SaveComment$SaveThreadComment$user(
    this._instance,
    this._then,
  );

  final Mutation$SaveComment$SaveThreadComment$user _instance;

  final TRes Function(Mutation$SaveComment$SaveThreadComment$user) _then;

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
      _then(Mutation$SaveComment$SaveThreadComment$user(
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
            : (avatar as Mutation$SaveComment$SaveThreadComment$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SaveComment$SaveThreadComment$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Mutation$SaveComment$SaveThreadComment$user$avatar.stub(
            _then(_instance))
        : CopyWith$Mutation$SaveComment$SaveThreadComment$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveComment$SaveThreadComment$user<TRes>
    implements CopyWith$Mutation$SaveComment$SaveThreadComment$user<TRes> {
  _CopyWithStubImpl$Mutation$SaveComment$SaveThreadComment$user(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Mutation$SaveComment$SaveThreadComment$user$avatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SaveComment$SaveThreadComment$user$avatar<TRes>
      get avatar =>
          CopyWith$Mutation$SaveComment$SaveThreadComment$user$avatar.stub(
              _res);
}

class Mutation$SaveComment$SaveThreadComment$user$avatar {
  Mutation$SaveComment$SaveThreadComment$user$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Mutation$SaveComment$SaveThreadComment$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveComment$SaveThreadComment$user$avatar(
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
    if (!(other is Mutation$SaveComment$SaveThreadComment$user$avatar) ||
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

extension UtilityExtension$Mutation$SaveComment$SaveThreadComment$user$avatar
    on Mutation$SaveComment$SaveThreadComment$user$avatar {
  CopyWith$Mutation$SaveComment$SaveThreadComment$user$avatar<
          Mutation$SaveComment$SaveThreadComment$user$avatar>
      get copyWith =>
          CopyWith$Mutation$SaveComment$SaveThreadComment$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveComment$SaveThreadComment$user$avatar<
    TRes> {
  factory CopyWith$Mutation$SaveComment$SaveThreadComment$user$avatar(
    Mutation$SaveComment$SaveThreadComment$user$avatar instance,
    TRes Function(Mutation$SaveComment$SaveThreadComment$user$avatar) then,
  ) = _CopyWithImpl$Mutation$SaveComment$SaveThreadComment$user$avatar;

  factory CopyWith$Mutation$SaveComment$SaveThreadComment$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SaveComment$SaveThreadComment$user$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SaveComment$SaveThreadComment$user$avatar<TRes>
    implements
        CopyWith$Mutation$SaveComment$SaveThreadComment$user$avatar<TRes> {
  _CopyWithImpl$Mutation$SaveComment$SaveThreadComment$user$avatar(
    this._instance,
    this._then,
  );

  final Mutation$SaveComment$SaveThreadComment$user$avatar _instance;

  final TRes Function(Mutation$SaveComment$SaveThreadComment$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveComment$SaveThreadComment$user$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SaveComment$SaveThreadComment$user$avatar<TRes>
    implements
        CopyWith$Mutation$SaveComment$SaveThreadComment$user$avatar<TRes> {
  _CopyWithStubImpl$Mutation$SaveComment$SaveThreadComment$user$avatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteComment {
  factory Variables$Mutation$DeleteComment({int? id}) =>
      Variables$Mutation$DeleteComment._({
        if (id != null) r'id': id,
      });

  Variables$Mutation$DeleteComment._(this._$data);

  factory Variables$Mutation$DeleteComment.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Mutation$DeleteComment._(result$data);
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

  CopyWith$Variables$Mutation$DeleteComment<Variables$Mutation$DeleteComment>
      get copyWith => CopyWith$Variables$Mutation$DeleteComment(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteComment) ||
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

abstract class CopyWith$Variables$Mutation$DeleteComment<TRes> {
  factory CopyWith$Variables$Mutation$DeleteComment(
    Variables$Mutation$DeleteComment instance,
    TRes Function(Variables$Mutation$DeleteComment) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteComment;

  factory CopyWith$Variables$Mutation$DeleteComment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteComment;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteComment<TRes>
    implements CopyWith$Variables$Mutation$DeleteComment<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteComment(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteComment _instance;

  final TRes Function(Variables$Mutation$DeleteComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteComment._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteComment<TRes>
    implements CopyWith$Variables$Mutation$DeleteComment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteComment(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$DeleteComment {
  Mutation$DeleteComment({
    this.DeleteThreadComment,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteComment.fromJson(Map<String, dynamic> json) {
    final l$DeleteThreadComment = json['DeleteThreadComment'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteComment(
      DeleteThreadComment: l$DeleteThreadComment == null
          ? null
          : Mutation$DeleteComment$DeleteThreadComment.fromJson(
              (l$DeleteThreadComment as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteComment$DeleteThreadComment? DeleteThreadComment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$DeleteThreadComment = DeleteThreadComment;
    _resultData['DeleteThreadComment'] = l$DeleteThreadComment?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$DeleteThreadComment = DeleteThreadComment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$DeleteThreadComment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteComment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$DeleteThreadComment = DeleteThreadComment;
    final lOther$DeleteThreadComment = other.DeleteThreadComment;
    if (l$DeleteThreadComment != lOther$DeleteThreadComment) {
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

extension UtilityExtension$Mutation$DeleteComment on Mutation$DeleteComment {
  CopyWith$Mutation$DeleteComment<Mutation$DeleteComment> get copyWith =>
      CopyWith$Mutation$DeleteComment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteComment<TRes> {
  factory CopyWith$Mutation$DeleteComment(
    Mutation$DeleteComment instance,
    TRes Function(Mutation$DeleteComment) then,
  ) = _CopyWithImpl$Mutation$DeleteComment;

  factory CopyWith$Mutation$DeleteComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteComment;

  TRes call({
    Mutation$DeleteComment$DeleteThreadComment? DeleteThreadComment,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteComment$DeleteThreadComment<TRes>
      get DeleteThreadComment;
}

class _CopyWithImpl$Mutation$DeleteComment<TRes>
    implements CopyWith$Mutation$DeleteComment<TRes> {
  _CopyWithImpl$Mutation$DeleteComment(
    this._instance,
    this._then,
  );

  final Mutation$DeleteComment _instance;

  final TRes Function(Mutation$DeleteComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? DeleteThreadComment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteComment(
        DeleteThreadComment: DeleteThreadComment == _undefined
            ? _instance.DeleteThreadComment
            : (DeleteThreadComment
                as Mutation$DeleteComment$DeleteThreadComment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteComment$DeleteThreadComment<TRes>
      get DeleteThreadComment {
    final local$DeleteThreadComment = _instance.DeleteThreadComment;
    return local$DeleteThreadComment == null
        ? CopyWith$Mutation$DeleteComment$DeleteThreadComment.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteComment$DeleteThreadComment(
            local$DeleteThreadComment, (e) => call(DeleteThreadComment: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteComment<TRes>
    implements CopyWith$Mutation$DeleteComment<TRes> {
  _CopyWithStubImpl$Mutation$DeleteComment(this._res);

  TRes _res;

  call({
    Mutation$DeleteComment$DeleteThreadComment? DeleteThreadComment,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteComment$DeleteThreadComment<TRes>
      get DeleteThreadComment =>
          CopyWith$Mutation$DeleteComment$DeleteThreadComment.stub(_res);
}

const documentNodeMutationDeleteComment = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteComment'),
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
        name: NameNode(value: 'DeleteThreadComment'),
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
Mutation$DeleteComment _parserFn$Mutation$DeleteComment(
        Map<String, dynamic> data) =>
    Mutation$DeleteComment.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteComment = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteComment?,
);

class Options$Mutation$DeleteComment
    extends graphql.MutationOptions<Mutation$DeleteComment> {
  Options$Mutation$DeleteComment({
    String? operationName,
    Variables$Mutation$DeleteComment? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteComment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteComment? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteComment>? update,
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
                        : _parserFn$Mutation$DeleteComment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteComment,
          parserFn: _parserFn$Mutation$DeleteComment,
        );

  final OnMutationCompleted$Mutation$DeleteComment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteComment
    extends graphql.WatchQueryOptions<Mutation$DeleteComment> {
  WatchOptions$Mutation$DeleteComment({
    String? operationName,
    Variables$Mutation$DeleteComment? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteComment? typedOptimisticResult,
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
          document: documentNodeMutationDeleteComment,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteComment,
        );
}

extension ClientExtension$Mutation$DeleteComment on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteComment>> mutate$DeleteComment(
          [Options$Mutation$DeleteComment? options]) async =>
      await this.mutate(options ?? Options$Mutation$DeleteComment());
  graphql.ObservableQuery<Mutation$DeleteComment> watchMutation$DeleteComment(
          [WatchOptions$Mutation$DeleteComment? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$DeleteComment());
}

class Mutation$DeleteComment$HookResult {
  Mutation$DeleteComment$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteComment runMutation;

  final graphql.QueryResult<Mutation$DeleteComment> result;
}

Mutation$DeleteComment$HookResult useMutation$DeleteComment(
    [WidgetOptions$Mutation$DeleteComment? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteComment());
  return Mutation$DeleteComment$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteComment> useWatchMutation$DeleteComment(
        [WatchOptions$Mutation$DeleteComment? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$DeleteComment());

class WidgetOptions$Mutation$DeleteComment
    extends graphql.MutationOptions<Mutation$DeleteComment> {
  WidgetOptions$Mutation$DeleteComment({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteComment? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteComment? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteComment>? update,
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
                        : _parserFn$Mutation$DeleteComment(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteComment,
          parserFn: _parserFn$Mutation$DeleteComment,
        );

  final OnMutationCompleted$Mutation$DeleteComment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteComment
    = graphql.MultiSourceResult<Mutation$DeleteComment> Function({
  Variables$Mutation$DeleteComment? variables,
  Object? optimisticResult,
  Mutation$DeleteComment? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteComment = widgets.Widget Function(
  RunMutation$Mutation$DeleteComment,
  graphql.QueryResult<Mutation$DeleteComment>?,
);

class Mutation$DeleteComment$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteComment> {
  Mutation$DeleteComment$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteComment? options,
    required Builder$Mutation$DeleteComment builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteComment(),
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

class Mutation$DeleteComment$DeleteThreadComment {
  Mutation$DeleteComment$DeleteThreadComment({
    this.deleted,
    this.$__typename = 'Deleted',
  });

  factory Mutation$DeleteComment$DeleteThreadComment.fromJson(
      Map<String, dynamic> json) {
    final l$deleted = json['deleted'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteComment$DeleteThreadComment(
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
    if (!(other is Mutation$DeleteComment$DeleteThreadComment) ||
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

extension UtilityExtension$Mutation$DeleteComment$DeleteThreadComment
    on Mutation$DeleteComment$DeleteThreadComment {
  CopyWith$Mutation$DeleteComment$DeleteThreadComment<
          Mutation$DeleteComment$DeleteThreadComment>
      get copyWith => CopyWith$Mutation$DeleteComment$DeleteThreadComment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteComment$DeleteThreadComment<TRes> {
  factory CopyWith$Mutation$DeleteComment$DeleteThreadComment(
    Mutation$DeleteComment$DeleteThreadComment instance,
    TRes Function(Mutation$DeleteComment$DeleteThreadComment) then,
  ) = _CopyWithImpl$Mutation$DeleteComment$DeleteThreadComment;

  factory CopyWith$Mutation$DeleteComment$DeleteThreadComment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteComment$DeleteThreadComment;

  TRes call({
    bool? deleted,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteComment$DeleteThreadComment<TRes>
    implements CopyWith$Mutation$DeleteComment$DeleteThreadComment<TRes> {
  _CopyWithImpl$Mutation$DeleteComment$DeleteThreadComment(
    this._instance,
    this._then,
  );

  final Mutation$DeleteComment$DeleteThreadComment _instance;

  final TRes Function(Mutation$DeleteComment$DeleteThreadComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleted = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteComment$DeleteThreadComment(
        deleted: deleted == _undefined ? _instance.deleted : (deleted as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteComment$DeleteThreadComment<TRes>
    implements CopyWith$Mutation$DeleteComment$DeleteThreadComment<TRes> {
  _CopyWithStubImpl$Mutation$DeleteComment$DeleteThreadComment(this._res);

  TRes _res;

  call({
    bool? deleted,
    String? $__typename,
  }) =>
      _res;
}
