// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../../graphql/fragments.graphql.dart';
import '../../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Comments {
  factory Variables$Query$Comments({
    int? threadId,
    int? page,
  }) =>
      Variables$Query$Comments._({
        if (threadId != null) r'threadId': threadId,
        if (page != null) r'page': page,
      });

  Variables$Query$Comments._(this._$data);

  factory Variables$Query$Comments.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('threadId')) {
      final l$threadId = data['threadId'];
      result$data['threadId'] = (l$threadId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Comments._(result$data);
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

  CopyWith$Variables$Query$Comments<Variables$Query$Comments> get copyWith =>
      CopyWith$Variables$Query$Comments(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Comments) ||
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

abstract class CopyWith$Variables$Query$Comments<TRes> {
  factory CopyWith$Variables$Query$Comments(
    Variables$Query$Comments instance,
    TRes Function(Variables$Query$Comments) then,
  ) = _CopyWithImpl$Variables$Query$Comments;

  factory CopyWith$Variables$Query$Comments.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Comments;

  TRes call({
    int? threadId,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$Comments<TRes>
    implements CopyWith$Variables$Query$Comments<TRes> {
  _CopyWithImpl$Variables$Query$Comments(
    this._instance,
    this._then,
  );

  final Variables$Query$Comments _instance;

  final TRes Function(Variables$Query$Comments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? threadId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Comments._({
        ..._instance._$data,
        if (threadId != _undefined) 'threadId': (threadId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Comments<TRes>
    implements CopyWith$Variables$Query$Comments<TRes> {
  _CopyWithStubImpl$Variables$Query$Comments(this._res);

  TRes _res;

  call({
    int? threadId,
    int? page,
  }) =>
      _res;
}

class Query$Comments {
  Query$Comments({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Comments.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Comments(
      Page: l$Page == null
          ? null
          : Query$Comments$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Comments$Page? Page;

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
    if (!(other is Query$Comments) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Comments on Query$Comments {
  CopyWith$Query$Comments<Query$Comments> get copyWith =>
      CopyWith$Query$Comments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Comments<TRes> {
  factory CopyWith$Query$Comments(
    Query$Comments instance,
    TRes Function(Query$Comments) then,
  ) = _CopyWithImpl$Query$Comments;

  factory CopyWith$Query$Comments.stub(TRes res) =
      _CopyWithStubImpl$Query$Comments;

  TRes call({
    Query$Comments$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Comments$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Comments<TRes>
    implements CopyWith$Query$Comments<TRes> {
  _CopyWithImpl$Query$Comments(
    this._instance,
    this._then,
  );

  final Query$Comments _instance;

  final TRes Function(Query$Comments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Comments(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$Comments$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Comments$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Comments$Page.stub(_then(_instance))
        : CopyWith$Query$Comments$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Comments<TRes>
    implements CopyWith$Query$Comments<TRes> {
  _CopyWithStubImpl$Query$Comments(this._res);

  TRes _res;

  call({
    Query$Comments$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Comments$Page<TRes> get Page =>
      CopyWith$Query$Comments$Page.stub(_res);
}

const documentNodeQueryComments = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Comments'),
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
  fragmentDefinitionPageInfo,
]);
Query$Comments _parserFn$Query$Comments(Map<String, dynamic> data) =>
    Query$Comments.fromJson(data);
typedef OnQueryComplete$Query$Comments = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Comments?,
);

class Options$Query$Comments extends graphql.QueryOptions<Query$Comments> {
  Options$Query$Comments({
    String? operationName,
    Variables$Query$Comments? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Comments? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Comments? onComplete,
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
                    data == null ? null : _parserFn$Query$Comments(data),
                  ),
          onError: onError,
          document: documentNodeQueryComments,
          parserFn: _parserFn$Query$Comments,
        );

  final OnQueryComplete$Query$Comments? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Comments
    extends graphql.WatchQueryOptions<Query$Comments> {
  WatchOptions$Query$Comments({
    String? operationName,
    Variables$Query$Comments? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Comments? typedOptimisticResult,
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
          document: documentNodeQueryComments,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Comments,
        );
}

class FetchMoreOptions$Query$Comments extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Comments({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Comments? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryComments,
        );
}

extension ClientExtension$Query$Comments on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Comments>> query$Comments(
          [Options$Query$Comments? options]) async =>
      await this.query(options ?? Options$Query$Comments());
  graphql.ObservableQuery<Query$Comments> watchQuery$Comments(
          [WatchOptions$Query$Comments? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Comments());
  void writeQuery$Comments({
    required Query$Comments data,
    Variables$Query$Comments? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryComments),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Comments? readQuery$Comments({
    Variables$Query$Comments? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryComments),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Comments.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Comments> useQuery$Comments(
        [Options$Query$Comments? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Comments());
graphql.ObservableQuery<Query$Comments> useWatchQuery$Comments(
        [WatchOptions$Query$Comments? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Comments());

class Query$Comments$Widget extends graphql_flutter.Query<Query$Comments> {
  Query$Comments$Widget({
    widgets.Key? key,
    Options$Query$Comments? options,
    required graphql_flutter.QueryBuilder<Query$Comments> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Comments(),
          builder: builder,
        );
}

class Query$Comments$Page {
  Query$Comments$Page({
    this.pageInfo,
    this.threadComments,
    this.$__typename = 'Page',
  });

  factory Query$Comments$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$threadComments = json['threadComments'];
    final l$$__typename = json['__typename'];
    return Query$Comments$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      threadComments: (l$threadComments as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Comments$Page$threadComments.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Comments$Page$threadComments?>? threadComments;

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
    if (!(other is Query$Comments$Page) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Comments$Page on Query$Comments$Page {
  CopyWith$Query$Comments$Page<Query$Comments$Page> get copyWith =>
      CopyWith$Query$Comments$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Comments$Page<TRes> {
  factory CopyWith$Query$Comments$Page(
    Query$Comments$Page instance,
    TRes Function(Query$Comments$Page) then,
  ) = _CopyWithImpl$Query$Comments$Page;

  factory CopyWith$Query$Comments$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Comments$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Comments$Page$threadComments?>? threadComments,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes threadComments(
      Iterable<Query$Comments$Page$threadComments?>? Function(
              Iterable<
                  CopyWith$Query$Comments$Page$threadComments<
                      Query$Comments$Page$threadComments>?>?)
          _fn);
}

class _CopyWithImpl$Query$Comments$Page<TRes>
    implements CopyWith$Query$Comments$Page<TRes> {
  _CopyWithImpl$Query$Comments$Page(
    this._instance,
    this._then,
  );

  final Query$Comments$Page _instance;

  final TRes Function(Query$Comments$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? threadComments = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Comments$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        threadComments: threadComments == _undefined
            ? _instance.threadComments
            : (threadComments as List<Query$Comments$Page$threadComments?>?),
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
          Iterable<Query$Comments$Page$threadComments?>? Function(
                  Iterable<
                      CopyWith$Query$Comments$Page$threadComments<
                          Query$Comments$Page$threadComments>?>?)
              _fn) =>
      call(
          threadComments: _fn(_instance.threadComments?.map((e) => e == null
              ? null
              : CopyWith$Query$Comments$Page$threadComments(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Comments$Page<TRes>
    implements CopyWith$Query$Comments$Page<TRes> {
  _CopyWithStubImpl$Query$Comments$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Comments$Page$threadComments?>? threadComments,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  threadComments(_fn) => _res;
}

class Query$Comments$Page$threadComments {
  Query$Comments$Page$threadComments({
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

  factory Query$Comments$Page$threadComments.fromJson(
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
    return Query$Comments$Page$threadComments(
      id: (l$id as int),
      threadId: (l$threadId as int?),
      comment: (l$comment as String?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Query$Comments$Page$threadComments$user.fromJson(
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

  final Query$Comments$Page$threadComments$user? user;

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
    if (!(other is Query$Comments$Page$threadComments) ||
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

extension UtilityExtension$Query$Comments$Page$threadComments
    on Query$Comments$Page$threadComments {
  CopyWith$Query$Comments$Page$threadComments<
          Query$Comments$Page$threadComments>
      get copyWith => CopyWith$Query$Comments$Page$threadComments(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Comments$Page$threadComments<TRes> {
  factory CopyWith$Query$Comments$Page$threadComments(
    Query$Comments$Page$threadComments instance,
    TRes Function(Query$Comments$Page$threadComments) then,
  ) = _CopyWithImpl$Query$Comments$Page$threadComments;

  factory CopyWith$Query$Comments$Page$threadComments.stub(TRes res) =
      _CopyWithStubImpl$Query$Comments$Page$threadComments;

  TRes call({
    int? id,
    int? threadId,
    String? comment,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Query$Comments$Page$threadComments$user? user,
    dynamic? childComments,
    bool? isLocked,
    String? $__typename,
  });
  CopyWith$Query$Comments$Page$threadComments$user<TRes> get user;
}

class _CopyWithImpl$Query$Comments$Page$threadComments<TRes>
    implements CopyWith$Query$Comments$Page$threadComments<TRes> {
  _CopyWithImpl$Query$Comments$Page$threadComments(
    this._instance,
    this._then,
  );

  final Query$Comments$Page$threadComments _instance;

  final TRes Function(Query$Comments$Page$threadComments) _then;

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
      _then(Query$Comments$Page$threadComments(
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
            : (user as Query$Comments$Page$threadComments$user?),
        childComments: childComments == _undefined
            ? _instance.childComments
            : (childComments as dynamic?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Comments$Page$threadComments$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$Comments$Page$threadComments$user.stub(
            _then(_instance))
        : CopyWith$Query$Comments$Page$threadComments$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Comments$Page$threadComments<TRes>
    implements CopyWith$Query$Comments$Page$threadComments<TRes> {
  _CopyWithStubImpl$Query$Comments$Page$threadComments(this._res);

  TRes _res;

  call({
    int? id,
    int? threadId,
    String? comment,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Query$Comments$Page$threadComments$user? user,
    dynamic? childComments,
    bool? isLocked,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Comments$Page$threadComments$user<TRes> get user =>
      CopyWith$Query$Comments$Page$threadComments$user.stub(_res);
}

class Query$Comments$Page$threadComments$user {
  Query$Comments$Page$threadComments$user({
    required this.id,
    required this.name,
    this.donatorTier,
    this.donatorBadge,
    this.moderatorRoles,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$Comments$Page$threadComments$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$donatorTier = json['donatorTier'];
    final l$donatorBadge = json['donatorBadge'];
    final l$moderatorRoles = json['moderatorRoles'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$Comments$Page$threadComments$user(
      id: (l$id as int),
      name: (l$name as String),
      donatorTier: (l$donatorTier as int?),
      donatorBadge: (l$donatorBadge as String?),
      moderatorRoles: (l$moderatorRoles as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$ModRole((e as String)))
          .toList(),
      avatar: l$avatar == null
          ? null
          : Query$Comments$Page$threadComments$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? donatorTier;

  final String? donatorBadge;

  final List<Enum$ModRole?>? moderatorRoles;

  final Query$Comments$Page$threadComments$user$avatar? avatar;

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
    if (!(other is Query$Comments$Page$threadComments$user) ||
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

extension UtilityExtension$Query$Comments$Page$threadComments$user
    on Query$Comments$Page$threadComments$user {
  CopyWith$Query$Comments$Page$threadComments$user<
          Query$Comments$Page$threadComments$user>
      get copyWith => CopyWith$Query$Comments$Page$threadComments$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Comments$Page$threadComments$user<TRes> {
  factory CopyWith$Query$Comments$Page$threadComments$user(
    Query$Comments$Page$threadComments$user instance,
    TRes Function(Query$Comments$Page$threadComments$user) then,
  ) = _CopyWithImpl$Query$Comments$Page$threadComments$user;

  factory CopyWith$Query$Comments$Page$threadComments$user.stub(TRes res) =
      _CopyWithStubImpl$Query$Comments$Page$threadComments$user;

  TRes call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$Comments$Page$threadComments$user$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$Comments$Page$threadComments$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Query$Comments$Page$threadComments$user<TRes>
    implements CopyWith$Query$Comments$Page$threadComments$user<TRes> {
  _CopyWithImpl$Query$Comments$Page$threadComments$user(
    this._instance,
    this._then,
  );

  final Query$Comments$Page$threadComments$user _instance;

  final TRes Function(Query$Comments$Page$threadComments$user) _then;

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
      _then(Query$Comments$Page$threadComments$user(
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
            : (avatar as Query$Comments$Page$threadComments$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Comments$Page$threadComments$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$Comments$Page$threadComments$user$avatar.stub(
            _then(_instance))
        : CopyWith$Query$Comments$Page$threadComments$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$Comments$Page$threadComments$user<TRes>
    implements CopyWith$Query$Comments$Page$threadComments$user<TRes> {
  _CopyWithStubImpl$Query$Comments$Page$threadComments$user(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$Comments$Page$threadComments$user$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Comments$Page$threadComments$user$avatar<TRes> get avatar =>
      CopyWith$Query$Comments$Page$threadComments$user$avatar.stub(_res);
}

class Query$Comments$Page$threadComments$user$avatar {
  Query$Comments$Page$threadComments$user$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$Comments$Page$threadComments$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Comments$Page$threadComments$user$avatar(
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
    if (!(other is Query$Comments$Page$threadComments$user$avatar) ||
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

extension UtilityExtension$Query$Comments$Page$threadComments$user$avatar
    on Query$Comments$Page$threadComments$user$avatar {
  CopyWith$Query$Comments$Page$threadComments$user$avatar<
          Query$Comments$Page$threadComments$user$avatar>
      get copyWith => CopyWith$Query$Comments$Page$threadComments$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Comments$Page$threadComments$user$avatar<TRes> {
  factory CopyWith$Query$Comments$Page$threadComments$user$avatar(
    Query$Comments$Page$threadComments$user$avatar instance,
    TRes Function(Query$Comments$Page$threadComments$user$avatar) then,
  ) = _CopyWithImpl$Query$Comments$Page$threadComments$user$avatar;

  factory CopyWith$Query$Comments$Page$threadComments$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Comments$Page$threadComments$user$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Comments$Page$threadComments$user$avatar<TRes>
    implements CopyWith$Query$Comments$Page$threadComments$user$avatar<TRes> {
  _CopyWithImpl$Query$Comments$Page$threadComments$user$avatar(
    this._instance,
    this._then,
  );

  final Query$Comments$Page$threadComments$user$avatar _instance;

  final TRes Function(Query$Comments$Page$threadComments$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Comments$Page$threadComments$user$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Comments$Page$threadComments$user$avatar<TRes>
    implements CopyWith$Query$Comments$Page$threadComments$user$avatar<TRes> {
  _CopyWithStubImpl$Query$Comments$Page$threadComments$user$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
