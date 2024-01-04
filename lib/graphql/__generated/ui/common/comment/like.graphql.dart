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

class Variables$Query$Likes {
  factory Variables$Query$Likes({
    int? id,
    Enum$LikeableType? type,
    int? page,
  }) =>
      Variables$Query$Likes._({
        if (id != null) r'id': id,
        if (type != null) r'type': type,
        if (page != null) r'page': page,
      });

  Variables$Query$Likes._(this._$data);

  factory Variables$Query$Likes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$LikeableType((l$type as String));
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Likes._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Enum$LikeableType? get type => (_$data['type'] as Enum$LikeableType?);

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$LikeableType(l$type);
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Likes<Variables$Query$Likes> get copyWith =>
      CopyWith$Variables$Query$Likes(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Likes) || runtimeType != other.runtimeType) {
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
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
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
    final l$type = type;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Likes<TRes> {
  factory CopyWith$Variables$Query$Likes(
    Variables$Query$Likes instance,
    TRes Function(Variables$Query$Likes) then,
  ) = _CopyWithImpl$Variables$Query$Likes;

  factory CopyWith$Variables$Query$Likes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Likes;

  TRes call({
    int? id,
    Enum$LikeableType? type,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$Likes<TRes>
    implements CopyWith$Variables$Query$Likes<TRes> {
  _CopyWithImpl$Variables$Query$Likes(
    this._instance,
    this._then,
  );

  final Variables$Query$Likes _instance;

  final TRes Function(Variables$Query$Likes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Likes._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (type != _undefined) 'type': (type as Enum$LikeableType?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Likes<TRes>
    implements CopyWith$Variables$Query$Likes<TRes> {
  _CopyWithStubImpl$Variables$Query$Likes(this._res);

  TRes _res;

  call({
    int? id,
    Enum$LikeableType? type,
    int? page,
  }) =>
      _res;
}

class Query$Likes {
  Query$Likes({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Likes.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Likes(
      Page: l$Page == null
          ? null
          : Query$Likes$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Likes$Page? Page;

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
    if (!(other is Query$Likes) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Likes on Query$Likes {
  CopyWith$Query$Likes<Query$Likes> get copyWith => CopyWith$Query$Likes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Likes<TRes> {
  factory CopyWith$Query$Likes(
    Query$Likes instance,
    TRes Function(Query$Likes) then,
  ) = _CopyWithImpl$Query$Likes;

  factory CopyWith$Query$Likes.stub(TRes res) = _CopyWithStubImpl$Query$Likes;

  TRes call({
    Query$Likes$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Likes$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Likes<TRes> implements CopyWith$Query$Likes<TRes> {
  _CopyWithImpl$Query$Likes(
    this._instance,
    this._then,
  );

  final Query$Likes _instance;

  final TRes Function(Query$Likes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Likes(
        Page: Page == _undefined ? _instance.Page : (Page as Query$Likes$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Likes$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Likes$Page.stub(_then(_instance))
        : CopyWith$Query$Likes$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Likes<TRes>
    implements CopyWith$Query$Likes<TRes> {
  _CopyWithStubImpl$Query$Likes(this._res);

  TRes _res;

  call({
    Query$Likes$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Likes$Page<TRes> get Page =>
      CopyWith$Query$Likes$Page.stub(_res);
}

const documentNodeQueryLikes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Likes'),
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
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'LikeableType'),
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
            name: NameNode(value: 'likes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'likeableId'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
            ],
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
  fragmentDefinitionPageInfo,
  fragmentDefinitionUserFragment,
]);
Query$Likes _parserFn$Query$Likes(Map<String, dynamic> data) =>
    Query$Likes.fromJson(data);
typedef OnQueryComplete$Query$Likes = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Likes?,
);

class Options$Query$Likes extends graphql.QueryOptions<Query$Likes> {
  Options$Query$Likes({
    String? operationName,
    Variables$Query$Likes? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Likes? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Likes? onComplete,
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
                    data == null ? null : _parserFn$Query$Likes(data),
                  ),
          onError: onError,
          document: documentNodeQueryLikes,
          parserFn: _parserFn$Query$Likes,
        );

  final OnQueryComplete$Query$Likes? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Likes extends graphql.WatchQueryOptions<Query$Likes> {
  WatchOptions$Query$Likes({
    String? operationName,
    Variables$Query$Likes? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Likes? typedOptimisticResult,
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
          document: documentNodeQueryLikes,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Likes,
        );
}

class FetchMoreOptions$Query$Likes extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Likes({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Likes? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryLikes,
        );
}

extension ClientExtension$Query$Likes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Likes>> query$Likes(
          [Options$Query$Likes? options]) async =>
      await this.query(options ?? Options$Query$Likes());
  graphql.ObservableQuery<Query$Likes> watchQuery$Likes(
          [WatchOptions$Query$Likes? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Likes());
  void writeQuery$Likes({
    required Query$Likes data,
    Variables$Query$Likes? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryLikes),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Likes? readQuery$Likes({
    Variables$Query$Likes? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryLikes),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Likes.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Likes> useQuery$Likes(
        [Options$Query$Likes? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Likes());
graphql.ObservableQuery<Query$Likes> useWatchQuery$Likes(
        [WatchOptions$Query$Likes? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Likes());

class Query$Likes$Widget extends graphql_flutter.Query<Query$Likes> {
  Query$Likes$Widget({
    widgets.Key? key,
    Options$Query$Likes? options,
    required graphql_flutter.QueryBuilder<Query$Likes> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Likes(),
          builder: builder,
        );
}

class Query$Likes$Page {
  Query$Likes$Page({
    this.pageInfo,
    this.likes,
    this.$__typename = 'Page',
  });

  factory Query$Likes$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$likes = json['likes'];
    final l$$__typename = json['__typename'];
    return Query$Likes$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      likes: (l$likes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$UserFragment?>? likes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$likes = likes;
    _resultData['likes'] = l$likes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$likes = likes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$likes == null ? null : Object.hashAll(l$likes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Likes$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$likes = likes;
    final lOther$likes = other.likes;
    if (l$likes != null && lOther$likes != null) {
      if (l$likes.length != lOther$likes.length) {
        return false;
      }
      for (int i = 0; i < l$likes.length; i++) {
        final l$likes$entry = l$likes[i];
        final lOther$likes$entry = lOther$likes[i];
        if (l$likes$entry != lOther$likes$entry) {
          return false;
        }
      }
    } else if (l$likes != lOther$likes) {
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

extension UtilityExtension$Query$Likes$Page on Query$Likes$Page {
  CopyWith$Query$Likes$Page<Query$Likes$Page> get copyWith =>
      CopyWith$Query$Likes$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Likes$Page<TRes> {
  factory CopyWith$Query$Likes$Page(
    Query$Likes$Page instance,
    TRes Function(Query$Likes$Page) then,
  ) = _CopyWithImpl$Query$Likes$Page;

  factory CopyWith$Query$Likes$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Likes$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$UserFragment?>? likes,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes likes(
      Iterable<Fragment$UserFragment?>? Function(
              Iterable<CopyWith$Fragment$UserFragment<Fragment$UserFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Likes$Page<TRes>
    implements CopyWith$Query$Likes$Page<TRes> {
  _CopyWithImpl$Query$Likes$Page(
    this._instance,
    this._then,
  );

  final Query$Likes$Page _instance;

  final TRes Function(Query$Likes$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? likes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Likes$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        likes: likes == _undefined
            ? _instance.likes
            : (likes as List<Fragment$UserFragment?>?),
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

  TRes likes(
          Iterable<Fragment$UserFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserFragment<Fragment$UserFragment>?>?)
              _fn) =>
      call(
          likes: _fn(_instance.likes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Likes$Page<TRes>
    implements CopyWith$Query$Likes$Page<TRes> {
  _CopyWithStubImpl$Query$Likes$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$UserFragment?>? likes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  likes(_fn) => _res;
}
