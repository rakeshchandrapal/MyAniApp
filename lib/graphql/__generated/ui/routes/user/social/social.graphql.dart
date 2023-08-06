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

class Variables$Query$Socials {
  factory Variables$Query$Socials({
    required int id,
    int? followersPage,
    int? followingPage,
  }) =>
      Variables$Query$Socials._({
        r'id': id,
        if (followersPage != null) r'followersPage': followersPage,
        if (followingPage != null) r'followingPage': followingPage,
      });

  Variables$Query$Socials._(this._$data);

  factory Variables$Query$Socials.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('followersPage')) {
      final l$followersPage = data['followersPage'];
      result$data['followersPage'] = (l$followersPage as int?);
    }
    if (data.containsKey('followingPage')) {
      final l$followingPage = data['followingPage'];
      result$data['followingPage'] = (l$followingPage as int?);
    }
    return Variables$Query$Socials._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  int? get followersPage => (_$data['followersPage'] as int?);
  int? get followingPage => (_$data['followingPage'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('followersPage')) {
      final l$followersPage = followersPage;
      result$data['followersPage'] = l$followersPage;
    }
    if (_$data.containsKey('followingPage')) {
      final l$followingPage = followingPage;
      result$data['followingPage'] = l$followingPage;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Socials<Variables$Query$Socials> get copyWith =>
      CopyWith$Variables$Query$Socials(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Socials) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$followersPage = followersPage;
    final lOther$followersPage = other.followersPage;
    if (_$data.containsKey('followersPage') !=
        other._$data.containsKey('followersPage')) {
      return false;
    }
    if (l$followersPage != lOther$followersPage) {
      return false;
    }
    final l$followingPage = followingPage;
    final lOther$followingPage = other.followingPage;
    if (_$data.containsKey('followingPage') !=
        other._$data.containsKey('followingPage')) {
      return false;
    }
    if (l$followingPage != lOther$followingPage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$followersPage = followersPage;
    final l$followingPage = followingPage;
    return Object.hashAll([
      l$id,
      _$data.containsKey('followersPage') ? l$followersPage : const {},
      _$data.containsKey('followingPage') ? l$followingPage : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Socials<TRes> {
  factory CopyWith$Variables$Query$Socials(
    Variables$Query$Socials instance,
    TRes Function(Variables$Query$Socials) then,
  ) = _CopyWithImpl$Variables$Query$Socials;

  factory CopyWith$Variables$Query$Socials.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Socials;

  TRes call({
    int? id,
    int? followersPage,
    int? followingPage,
  });
}

class _CopyWithImpl$Variables$Query$Socials<TRes>
    implements CopyWith$Variables$Query$Socials<TRes> {
  _CopyWithImpl$Variables$Query$Socials(
    this._instance,
    this._then,
  );

  final Variables$Query$Socials _instance;

  final TRes Function(Variables$Query$Socials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? followersPage = _undefined,
    Object? followingPage = _undefined,
  }) =>
      _then(Variables$Query$Socials._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (followersPage != _undefined)
          'followersPage': (followersPage as int?),
        if (followingPage != _undefined)
          'followingPage': (followingPage as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Socials<TRes>
    implements CopyWith$Variables$Query$Socials<TRes> {
  _CopyWithStubImpl$Variables$Query$Socials(this._res);

  TRes _res;

  call({
    int? id,
    int? followersPage,
    int? followingPage,
  }) =>
      _res;
}

class Query$Socials {
  Query$Socials({
    this.followers,
    this.following,
    this.$__typename = 'Query',
  });

  factory Query$Socials.fromJson(Map<String, dynamic> json) {
    final l$followers = json['followers'];
    final l$following = json['following'];
    final l$$__typename = json['__typename'];
    return Query$Socials(
      followers: l$followers == null
          ? null
          : Query$Socials$followers.fromJson(
              (l$followers as Map<String, dynamic>)),
      following: l$following == null
          ? null
          : Query$Socials$following.fromJson(
              (l$following as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Socials$followers? followers;

  final Query$Socials$following? following;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$followers = followers;
    _resultData['followers'] = l$followers?.toJson();
    final l$following = following;
    _resultData['following'] = l$following?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$followers = followers;
    final l$following = following;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$followers,
      l$following,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Socials) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$followers = followers;
    final lOther$followers = other.followers;
    if (l$followers != lOther$followers) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following != lOther$following) {
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

extension UtilityExtension$Query$Socials on Query$Socials {
  CopyWith$Query$Socials<Query$Socials> get copyWith => CopyWith$Query$Socials(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Socials<TRes> {
  factory CopyWith$Query$Socials(
    Query$Socials instance,
    TRes Function(Query$Socials) then,
  ) = _CopyWithImpl$Query$Socials;

  factory CopyWith$Query$Socials.stub(TRes res) =
      _CopyWithStubImpl$Query$Socials;

  TRes call({
    Query$Socials$followers? followers,
    Query$Socials$following? following,
    String? $__typename,
  });
  CopyWith$Query$Socials$followers<TRes> get followers;
  CopyWith$Query$Socials$following<TRes> get following;
}

class _CopyWithImpl$Query$Socials<TRes>
    implements CopyWith$Query$Socials<TRes> {
  _CopyWithImpl$Query$Socials(
    this._instance,
    this._then,
  );

  final Query$Socials _instance;

  final TRes Function(Query$Socials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? followers = _undefined,
    Object? following = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Socials(
        followers: followers == _undefined
            ? _instance.followers
            : (followers as Query$Socials$followers?),
        following: following == _undefined
            ? _instance.following
            : (following as Query$Socials$following?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Socials$followers<TRes> get followers {
    final local$followers = _instance.followers;
    return local$followers == null
        ? CopyWith$Query$Socials$followers.stub(_then(_instance))
        : CopyWith$Query$Socials$followers(
            local$followers, (e) => call(followers: e));
  }

  CopyWith$Query$Socials$following<TRes> get following {
    final local$following = _instance.following;
    return local$following == null
        ? CopyWith$Query$Socials$following.stub(_then(_instance))
        : CopyWith$Query$Socials$following(
            local$following, (e) => call(following: e));
  }
}

class _CopyWithStubImpl$Query$Socials<TRes>
    implements CopyWith$Query$Socials<TRes> {
  _CopyWithStubImpl$Query$Socials(this._res);

  TRes _res;

  call({
    Query$Socials$followers? followers,
    Query$Socials$following? following,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Socials$followers<TRes> get followers =>
      CopyWith$Query$Socials$followers.stub(_res);
  CopyWith$Query$Socials$following<TRes> get following =>
      CopyWith$Query$Socials$following.stub(_res);
}

const documentNodeQuerySocials = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Socials'),
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
        variable: VariableNode(name: NameNode(value: 'followersPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'followingPage')),
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
        alias: NameNode(value: 'followers'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'followersPage')),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'following'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'followingPage')),
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
Query$Socials _parserFn$Query$Socials(Map<String, dynamic> data) =>
    Query$Socials.fromJson(data);
typedef OnQueryComplete$Query$Socials = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Socials?,
);

class Options$Query$Socials extends graphql.QueryOptions<Query$Socials> {
  Options$Query$Socials({
    String? operationName,
    required Variables$Query$Socials variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Socials? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Socials? onComplete,
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
                    data == null ? null : _parserFn$Query$Socials(data),
                  ),
          onError: onError,
          document: documentNodeQuerySocials,
          parserFn: _parserFn$Query$Socials,
        );

  final OnQueryComplete$Query$Socials? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Socials
    extends graphql.WatchQueryOptions<Query$Socials> {
  WatchOptions$Query$Socials({
    String? operationName,
    required Variables$Query$Socials variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Socials? typedOptimisticResult,
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
          document: documentNodeQuerySocials,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Socials,
        );
}

class FetchMoreOptions$Query$Socials extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Socials({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Socials variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySocials,
        );
}

extension ClientExtension$Query$Socials on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Socials>> query$Socials(
          Options$Query$Socials options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Socials> watchQuery$Socials(
          WatchOptions$Query$Socials options) =>
      this.watchQuery(options);
  void writeQuery$Socials({
    required Query$Socials data,
    required Variables$Query$Socials variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySocials),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Socials? readQuery$Socials({
    required Variables$Query$Socials variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySocials),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Socials.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Socials> useQuery$Socials(
        Options$Query$Socials options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Socials> useWatchQuery$Socials(
        WatchOptions$Query$Socials options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Socials$Widget extends graphql_flutter.Query<Query$Socials> {
  Query$Socials$Widget({
    widgets.Key? key,
    required Options$Query$Socials options,
    required graphql_flutter.QueryBuilder<Query$Socials> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Socials$followers {
  Query$Socials$followers({
    this.pageInfo,
    this.followers,
    this.$__typename = 'Page',
  });

  factory Query$Socials$followers.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$followers = json['followers'];
    final l$$__typename = json['__typename'];
    return Query$Socials$followers(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      followers: (l$followers as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$UserFragment?>? followers;

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
    if (!(other is Query$Socials$followers) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Socials$followers on Query$Socials$followers {
  CopyWith$Query$Socials$followers<Query$Socials$followers> get copyWith =>
      CopyWith$Query$Socials$followers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Socials$followers<TRes> {
  factory CopyWith$Query$Socials$followers(
    Query$Socials$followers instance,
    TRes Function(Query$Socials$followers) then,
  ) = _CopyWithImpl$Query$Socials$followers;

  factory CopyWith$Query$Socials$followers.stub(TRes res) =
      _CopyWithStubImpl$Query$Socials$followers;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$UserFragment?>? followers,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes followers(
      Iterable<Fragment$UserFragment?>? Function(
              Iterable<CopyWith$Fragment$UserFragment<Fragment$UserFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Socials$followers<TRes>
    implements CopyWith$Query$Socials$followers<TRes> {
  _CopyWithImpl$Query$Socials$followers(
    this._instance,
    this._then,
  );

  final Query$Socials$followers _instance;

  final TRes Function(Query$Socials$followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? followers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Socials$followers(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        followers: followers == _undefined
            ? _instance.followers
            : (followers as List<Fragment$UserFragment?>?),
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
          Iterable<Fragment$UserFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserFragment<Fragment$UserFragment>?>?)
              _fn) =>
      call(
          followers: _fn(_instance.followers?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Socials$followers<TRes>
    implements CopyWith$Query$Socials$followers<TRes> {
  _CopyWithStubImpl$Query$Socials$followers(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$UserFragment?>? followers,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  followers(_fn) => _res;
}

class Query$Socials$following {
  Query$Socials$following({
    this.pageInfo,
    this.following,
    this.$__typename = 'Page',
  });

  factory Query$Socials$following.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$following = json['following'];
    final l$$__typename = json['__typename'];
    return Query$Socials$following(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      following: (l$following as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$UserFragment?>? following;

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
    if (!(other is Query$Socials$following) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Socials$following on Query$Socials$following {
  CopyWith$Query$Socials$following<Query$Socials$following> get copyWith =>
      CopyWith$Query$Socials$following(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Socials$following<TRes> {
  factory CopyWith$Query$Socials$following(
    Query$Socials$following instance,
    TRes Function(Query$Socials$following) then,
  ) = _CopyWithImpl$Query$Socials$following;

  factory CopyWith$Query$Socials$following.stub(TRes res) =
      _CopyWithStubImpl$Query$Socials$following;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$UserFragment?>? following,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes following(
      Iterable<Fragment$UserFragment?>? Function(
              Iterable<CopyWith$Fragment$UserFragment<Fragment$UserFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Socials$following<TRes>
    implements CopyWith$Query$Socials$following<TRes> {
  _CopyWithImpl$Query$Socials$following(
    this._instance,
    this._then,
  );

  final Query$Socials$following _instance;

  final TRes Function(Query$Socials$following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? following = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Socials$following(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        following: following == _undefined
            ? _instance.following
            : (following as List<Fragment$UserFragment?>?),
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
          Iterable<Fragment$UserFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserFragment<Fragment$UserFragment>?>?)
              _fn) =>
      call(
          following: _fn(_instance.following?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Socials$following<TRes>
    implements CopyWith$Query$Socials$following<TRes> {
  _CopyWithStubImpl$Query$Socials$following(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$UserFragment?>? following,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  following(_fn) => _res;
}
