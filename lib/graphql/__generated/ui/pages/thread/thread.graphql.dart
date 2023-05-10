// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

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
    required this.id,
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
      id: (l$id as int),
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

  final int id;

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
        id: id == _undefined || id == null ? _instance.id : (id as int),
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
