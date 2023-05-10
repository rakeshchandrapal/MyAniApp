// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../../../graphql/fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Following {
  factory Variables$Query$Following({
    required int id,
    int? page,
  }) =>
      Variables$Query$Following._({
        r'id': id,
        if (page != null) r'page': page,
      });

  Variables$Query$Following._(this._$data);

  factory Variables$Query$Following.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Following._(result$data);
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

  CopyWith$Variables$Query$Following<Variables$Query$Following> get copyWith =>
      CopyWith$Variables$Query$Following(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Following) ||
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

abstract class CopyWith$Variables$Query$Following<TRes> {
  factory CopyWith$Variables$Query$Following(
    Variables$Query$Following instance,
    TRes Function(Variables$Query$Following) then,
  ) = _CopyWithImpl$Variables$Query$Following;

  factory CopyWith$Variables$Query$Following.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Following;

  TRes call({
    int? id,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$Following<TRes>
    implements CopyWith$Variables$Query$Following<TRes> {
  _CopyWithImpl$Variables$Query$Following(
    this._instance,
    this._then,
  );

  final Variables$Query$Following _instance;

  final TRes Function(Variables$Query$Following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Following._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Following<TRes>
    implements CopyWith$Variables$Query$Following<TRes> {
  _CopyWithStubImpl$Variables$Query$Following(this._res);

  TRes _res;

  call({
    int? id,
    int? page,
  }) =>
      _res;
}

class Query$Following {
  Query$Following({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Following.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Following(
      Page: l$Page == null
          ? null
          : Query$Following$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Following$Page? Page;

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
    if (!(other is Query$Following) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Following on Query$Following {
  CopyWith$Query$Following<Query$Following> get copyWith =>
      CopyWith$Query$Following(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Following<TRes> {
  factory CopyWith$Query$Following(
    Query$Following instance,
    TRes Function(Query$Following) then,
  ) = _CopyWithImpl$Query$Following;

  factory CopyWith$Query$Following.stub(TRes res) =
      _CopyWithStubImpl$Query$Following;

  TRes call({
    Query$Following$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Following$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Following<TRes>
    implements CopyWith$Query$Following<TRes> {
  _CopyWithImpl$Query$Following(
    this._instance,
    this._then,
  );

  final Query$Following _instance;

  final TRes Function(Query$Following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Following(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$Following$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Following$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Following$Page.stub(_then(_instance))
        : CopyWith$Query$Following$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Following<TRes>
    implements CopyWith$Query$Following<TRes> {
  _CopyWithStubImpl$Query$Following(this._res);

  TRes _res;

  call({
    Query$Following$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Following$Page<TRes> get Page =>
      CopyWith$Query$Following$Page.stub(_res);
}

const documentNodeQueryFollowing = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Following'),
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
            name: NameNode(value: 'following'),
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
Query$Following _parserFn$Query$Following(Map<String, dynamic> data) =>
    Query$Following.fromJson(data);
typedef OnQueryComplete$Query$Following = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Following?,
);

class Options$Query$Following extends graphql.QueryOptions<Query$Following> {
  Options$Query$Following({
    String? operationName,
    required Variables$Query$Following variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Following? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Following? onComplete,
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
                    data == null ? null : _parserFn$Query$Following(data),
                  ),
          onError: onError,
          document: documentNodeQueryFollowing,
          parserFn: _parserFn$Query$Following,
        );

  final OnQueryComplete$Query$Following? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Following
    extends graphql.WatchQueryOptions<Query$Following> {
  WatchOptions$Query$Following({
    String? operationName,
    required Variables$Query$Following variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Following? typedOptimisticResult,
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
          document: documentNodeQueryFollowing,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Following,
        );
}

class FetchMoreOptions$Query$Following extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Following({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Following variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFollowing,
        );
}

extension ClientExtension$Query$Following on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Following>> query$Following(
          Options$Query$Following options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Following> watchQuery$Following(
          WatchOptions$Query$Following options) =>
      this.watchQuery(options);
  void writeQuery$Following({
    required Query$Following data,
    required Variables$Query$Following variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFollowing),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Following? readQuery$Following({
    required Variables$Query$Following variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFollowing),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Following.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Following> useQuery$Following(
        Options$Query$Following options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Following> useWatchQuery$Following(
        WatchOptions$Query$Following options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Following$Widget extends graphql_flutter.Query<Query$Following> {
  Query$Following$Widget({
    widgets.Key? key,
    required Options$Query$Following options,
    required graphql_flutter.QueryBuilder<Query$Following> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Following$Page {
  Query$Following$Page({
    this.pageInfo,
    this.following,
    this.$__typename = 'Page',
  });

  factory Query$Following$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$following = json['following'];
    final l$$__typename = json['__typename'];
    return Query$Following$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      following: (l$following as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Following$Page$following.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Following$Page$following?>? following;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$following = following;
    _resultData['following'] = l$following?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$following = following;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$following == null ? null : Object.hashAll(l$following.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Following$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following != null && lOther$following != null) {
      if (l$following.length != lOther$following.length) {
        return false;
      }
      for (int i = 0; i < l$following.length; i++) {
        final l$following$entry = l$following[i];
        final lOther$following$entry = lOther$following[i];
        if (l$following$entry != lOther$following$entry) {
          return false;
        }
      }
    } else if (l$following != lOther$following) {
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

extension UtilityExtension$Query$Following$Page on Query$Following$Page {
  CopyWith$Query$Following$Page<Query$Following$Page> get copyWith =>
      CopyWith$Query$Following$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Following$Page<TRes> {
  factory CopyWith$Query$Following$Page(
    Query$Following$Page instance,
    TRes Function(Query$Following$Page) then,
  ) = _CopyWithImpl$Query$Following$Page;

  factory CopyWith$Query$Following$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Following$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Following$Page$following?>? following,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes following(
      Iterable<Query$Following$Page$following?>? Function(
              Iterable<
                  CopyWith$Query$Following$Page$following<
                      Query$Following$Page$following>?>?)
          _fn);
}

class _CopyWithImpl$Query$Following$Page<TRes>
    implements CopyWith$Query$Following$Page<TRes> {
  _CopyWithImpl$Query$Following$Page(
    this._instance,
    this._then,
  );

  final Query$Following$Page _instance;

  final TRes Function(Query$Following$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? following = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Following$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        following: following == _undefined
            ? _instance.following
            : (following as List<Query$Following$Page$following?>?),
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

  TRes following(
          Iterable<Query$Following$Page$following?>? Function(
                  Iterable<
                      CopyWith$Query$Following$Page$following<
                          Query$Following$Page$following>?>?)
              _fn) =>
      call(
          following: _fn(_instance.following?.map((e) => e == null
              ? null
              : CopyWith$Query$Following$Page$following(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Following$Page<TRes>
    implements CopyWith$Query$Following$Page<TRes> {
  _CopyWithStubImpl$Query$Following$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Following$Page$following?>? following,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  following(_fn) => _res;
}

class Query$Following$Page$following {
  Query$Following$Page$following({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$Following$Page$following.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$Following$Page$following(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$Following$Page$following$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$Following$Page$following$avatar? avatar;

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
    if (!(other is Query$Following$Page$following) ||
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

extension UtilityExtension$Query$Following$Page$following
    on Query$Following$Page$following {
  CopyWith$Query$Following$Page$following<Query$Following$Page$following>
      get copyWith => CopyWith$Query$Following$Page$following(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Following$Page$following<TRes> {
  factory CopyWith$Query$Following$Page$following(
    Query$Following$Page$following instance,
    TRes Function(Query$Following$Page$following) then,
  ) = _CopyWithImpl$Query$Following$Page$following;

  factory CopyWith$Query$Following$Page$following.stub(TRes res) =
      _CopyWithStubImpl$Query$Following$Page$following;

  TRes call({
    int? id,
    String? name,
    Query$Following$Page$following$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$Following$Page$following$avatar<TRes> get avatar;
}

class _CopyWithImpl$Query$Following$Page$following<TRes>
    implements CopyWith$Query$Following$Page$following<TRes> {
  _CopyWithImpl$Query$Following$Page$following(
    this._instance,
    this._then,
  );

  final Query$Following$Page$following _instance;

  final TRes Function(Query$Following$Page$following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Following$Page$following(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$Following$Page$following$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Following$Page$following$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$Following$Page$following$avatar.stub(_then(_instance))
        : CopyWith$Query$Following$Page$following$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$Following$Page$following<TRes>
    implements CopyWith$Query$Following$Page$following<TRes> {
  _CopyWithStubImpl$Query$Following$Page$following(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$Following$Page$following$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Following$Page$following$avatar<TRes> get avatar =>
      CopyWith$Query$Following$Page$following$avatar.stub(_res);
}

class Query$Following$Page$following$avatar {
  Query$Following$Page$following$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$Following$Page$following$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Following$Page$following$avatar(
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
    if (!(other is Query$Following$Page$following$avatar) ||
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

extension UtilityExtension$Query$Following$Page$following$avatar
    on Query$Following$Page$following$avatar {
  CopyWith$Query$Following$Page$following$avatar<
          Query$Following$Page$following$avatar>
      get copyWith => CopyWith$Query$Following$Page$following$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Following$Page$following$avatar<TRes> {
  factory CopyWith$Query$Following$Page$following$avatar(
    Query$Following$Page$following$avatar instance,
    TRes Function(Query$Following$Page$following$avatar) then,
  ) = _CopyWithImpl$Query$Following$Page$following$avatar;

  factory CopyWith$Query$Following$Page$following$avatar.stub(TRes res) =
      _CopyWithStubImpl$Query$Following$Page$following$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Following$Page$following$avatar<TRes>
    implements CopyWith$Query$Following$Page$following$avatar<TRes> {
  _CopyWithImpl$Query$Following$Page$following$avatar(
    this._instance,
    this._then,
  );

  final Query$Following$Page$following$avatar _instance;

  final TRes Function(Query$Following$Page$following$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Following$Page$following$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Following$Page$following$avatar<TRes>
    implements CopyWith$Query$Following$Page$following$avatar<TRes> {
  _CopyWithStubImpl$Query$Following$Page$following$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
