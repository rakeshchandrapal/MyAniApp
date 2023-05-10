// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../../../../graphql/fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Followers {
  factory Variables$Query$Followers({
    required int id,
    int? page,
  }) =>
      Variables$Query$Followers._({
        r'id': id,
        if (page != null) r'page': page,
      });

  Variables$Query$Followers._(this._$data);

  factory Variables$Query$Followers.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Followers._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  int? get page => (_$data['page'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Followers<Variables$Query$Followers> get copyWith =>
      CopyWith$Variables$Query$Followers(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Followers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
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
      l$id,
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Followers<TRes> {
  factory CopyWith$Variables$Query$Followers(
    Variables$Query$Followers instance,
    TRes Function(Variables$Query$Followers) then,
  ) = _CopyWithImpl$Variables$Query$Followers;

  factory CopyWith$Variables$Query$Followers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Followers;

  TRes call({
    int? id,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$Followers<TRes>
    implements CopyWith$Variables$Query$Followers<TRes> {
  _CopyWithImpl$Variables$Query$Followers(
    this._instance,
    this._then,
  );

  final Variables$Query$Followers _instance;

  final TRes Function(Variables$Query$Followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Followers._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Followers<TRes>
    implements CopyWith$Variables$Query$Followers<TRes> {
  _CopyWithStubImpl$Variables$Query$Followers(this._res);

  TRes _res;

  call({
    int? id,
    int? page,
  }) =>
      _res;
}

class Query$Followers {
  Query$Followers({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Followers.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Followers(
      Page: l$Page == null
          ? null
          : Query$Followers$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Followers$Page? Page;

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
    if (!(other is Query$Followers) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Followers on Query$Followers {
  CopyWith$Query$Followers<Query$Followers> get copyWith =>
      CopyWith$Query$Followers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Followers<TRes> {
  factory CopyWith$Query$Followers(
    Query$Followers instance,
    TRes Function(Query$Followers) then,
  ) = _CopyWithImpl$Query$Followers;

  factory CopyWith$Query$Followers.stub(TRes res) =
      _CopyWithStubImpl$Query$Followers;

  TRes call({
    Query$Followers$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Followers$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Followers<TRes>
    implements CopyWith$Query$Followers<TRes> {
  _CopyWithImpl$Query$Followers(
    this._instance,
    this._then,
  );

  final Query$Followers _instance;

  final TRes Function(Query$Followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Followers(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$Followers$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Followers$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Followers$Page.stub(_then(_instance))
        : CopyWith$Query$Followers$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Followers<TRes>
    implements CopyWith$Query$Followers<TRes> {
  _CopyWithStubImpl$Query$Followers(this._res);

  TRes _res;

  call({
    Query$Followers$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Followers$Page<TRes> get Page =>
      CopyWith$Query$Followers$Page.stub(_res);
}

const documentNodeQueryFollowers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Followers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
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
            name: NameNode(value: 'followers'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'USERNAME')),
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
  fragmentDefinitionPageInfo,
]);
Query$Followers _parserFn$Query$Followers(Map<String, dynamic> data) =>
    Query$Followers.fromJson(data);
typedef OnQueryComplete$Query$Followers = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Followers?,
);

class Options$Query$Followers extends graphql.QueryOptions<Query$Followers> {
  Options$Query$Followers({
    String? operationName,
    required Variables$Query$Followers variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Followers? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Followers? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$Followers(data),
                  ),
          onError: onError,
          document: documentNodeQueryFollowers,
          parserFn: _parserFn$Query$Followers,
        );

  final OnQueryComplete$Query$Followers? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Followers
    extends graphql.WatchQueryOptions<Query$Followers> {
  WatchOptions$Query$Followers({
    String? operationName,
    required Variables$Query$Followers variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Followers? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFollowers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Followers,
        );
}

class FetchMoreOptions$Query$Followers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Followers({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Followers variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFollowers,
        );
}

extension ClientExtension$Query$Followers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Followers>> query$Followers(
          Options$Query$Followers options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Followers> watchQuery$Followers(
          WatchOptions$Query$Followers options) =>
      this.watchQuery(options);
  void writeQuery$Followers({
    required Query$Followers data,
    required Variables$Query$Followers variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFollowers),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Followers? readQuery$Followers({
    required Variables$Query$Followers variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFollowers),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Followers.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Followers> useQuery$Followers(
        Options$Query$Followers options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Followers> useWatchQuery$Followers(
        WatchOptions$Query$Followers options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Followers$Widget extends graphql_flutter.Query<Query$Followers> {
  Query$Followers$Widget({
    widgets.Key? key,
    required Options$Query$Followers options,
    required graphql_flutter.QueryBuilder<Query$Followers> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Followers$Page {
  Query$Followers$Page({
    this.pageInfo,
    this.followers,
    this.$__typename = 'Page',
  });

  factory Query$Followers$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$followers = json['followers'];
    final l$$__typename = json['__typename'];
    return Query$Followers$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      followers: (l$followers as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Followers$Page$followers.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Followers$Page$followers?>? followers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$followers = followers;
    _resultData['followers'] = l$followers?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$followers = followers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$followers == null ? null : Object.hashAll(l$followers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Followers$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$followers = followers;
    final lOther$followers = other.followers;
    if (l$followers != null && lOther$followers != null) {
      if (l$followers.length != lOther$followers.length) {
        return false;
      }
      for (int i = 0; i < l$followers.length; i++) {
        final l$followers$entry = l$followers[i];
        final lOther$followers$entry = lOther$followers[i];
        if (l$followers$entry != lOther$followers$entry) {
          return false;
        }
      }
    } else if (l$followers != lOther$followers) {
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

extension UtilityExtension$Query$Followers$Page on Query$Followers$Page {
  CopyWith$Query$Followers$Page<Query$Followers$Page> get copyWith =>
      CopyWith$Query$Followers$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Followers$Page<TRes> {
  factory CopyWith$Query$Followers$Page(
    Query$Followers$Page instance,
    TRes Function(Query$Followers$Page) then,
  ) = _CopyWithImpl$Query$Followers$Page;

  factory CopyWith$Query$Followers$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Followers$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Followers$Page$followers?>? followers,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes followers(
      Iterable<Query$Followers$Page$followers?>? Function(
              Iterable<
                  CopyWith$Query$Followers$Page$followers<
                      Query$Followers$Page$followers>?>?)
          _fn);
}

class _CopyWithImpl$Query$Followers$Page<TRes>
    implements CopyWith$Query$Followers$Page<TRes> {
  _CopyWithImpl$Query$Followers$Page(
    this._instance,
    this._then,
  );

  final Query$Followers$Page _instance;

  final TRes Function(Query$Followers$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? followers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Followers$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        followers: followers == _undefined
            ? _instance.followers
            : (followers as List<Query$Followers$Page$followers?>?),
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

  TRes followers(
          Iterable<Query$Followers$Page$followers?>? Function(
                  Iterable<
                      CopyWith$Query$Followers$Page$followers<
                          Query$Followers$Page$followers>?>?)
              _fn) =>
      call(
          followers: _fn(_instance.followers?.map((e) => e == null
              ? null
              : CopyWith$Query$Followers$Page$followers(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Followers$Page<TRes>
    implements CopyWith$Query$Followers$Page<TRes> {
  _CopyWithStubImpl$Query$Followers$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Followers$Page$followers?>? followers,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  followers(_fn) => _res;
}

class Query$Followers$Page$followers {
  Query$Followers$Page$followers({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$Followers$Page$followers.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$Followers$Page$followers(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$Followers$Page$followers$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$Followers$Page$followers$avatar? avatar;

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
    if (!(other is Query$Followers$Page$followers) ||
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

extension UtilityExtension$Query$Followers$Page$followers
    on Query$Followers$Page$followers {
  CopyWith$Query$Followers$Page$followers<Query$Followers$Page$followers>
      get copyWith => CopyWith$Query$Followers$Page$followers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Followers$Page$followers<TRes> {
  factory CopyWith$Query$Followers$Page$followers(
    Query$Followers$Page$followers instance,
    TRes Function(Query$Followers$Page$followers) then,
  ) = _CopyWithImpl$Query$Followers$Page$followers;

  factory CopyWith$Query$Followers$Page$followers.stub(TRes res) =
      _CopyWithStubImpl$Query$Followers$Page$followers;

  TRes call({
    int? id,
    String? name,
    Query$Followers$Page$followers$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$Followers$Page$followers$avatar<TRes> get avatar;
}

class _CopyWithImpl$Query$Followers$Page$followers<TRes>
    implements CopyWith$Query$Followers$Page$followers<TRes> {
  _CopyWithImpl$Query$Followers$Page$followers(
    this._instance,
    this._then,
  );

  final Query$Followers$Page$followers _instance;

  final TRes Function(Query$Followers$Page$followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Followers$Page$followers(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$Followers$Page$followers$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Followers$Page$followers$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$Followers$Page$followers$avatar.stub(_then(_instance))
        : CopyWith$Query$Followers$Page$followers$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$Followers$Page$followers<TRes>
    implements CopyWith$Query$Followers$Page$followers<TRes> {
  _CopyWithStubImpl$Query$Followers$Page$followers(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$Followers$Page$followers$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Followers$Page$followers$avatar<TRes> get avatar =>
      CopyWith$Query$Followers$Page$followers$avatar.stub(_res);
}

class Query$Followers$Page$followers$avatar {
  Query$Followers$Page$followers$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$Followers$Page$followers$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Followers$Page$followers$avatar(
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
    if (!(other is Query$Followers$Page$followers$avatar) ||
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

extension UtilityExtension$Query$Followers$Page$followers$avatar
    on Query$Followers$Page$followers$avatar {
  CopyWith$Query$Followers$Page$followers$avatar<
          Query$Followers$Page$followers$avatar>
      get copyWith => CopyWith$Query$Followers$Page$followers$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Followers$Page$followers$avatar<TRes> {
  factory CopyWith$Query$Followers$Page$followers$avatar(
    Query$Followers$Page$followers$avatar instance,
    TRes Function(Query$Followers$Page$followers$avatar) then,
  ) = _CopyWithImpl$Query$Followers$Page$followers$avatar;

  factory CopyWith$Query$Followers$Page$followers$avatar.stub(TRes res) =
      _CopyWithStubImpl$Query$Followers$Page$followers$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Followers$Page$followers$avatar<TRes>
    implements CopyWith$Query$Followers$Page$followers$avatar<TRes> {
  _CopyWithImpl$Query$Followers$Page$followers$avatar(
    this._instance,
    this._then,
  );

  final Query$Followers$Page$followers$avatar _instance;

  final TRes Function(Query$Followers$Page$followers$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Followers$Page$followers$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Followers$Page$followers$avatar<TRes>
    implements CopyWith$Query$Followers$Page$followers$avatar<TRes> {
  _CopyWithStubImpl$Query$Followers$Page$followers$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
