import '../../graphql/fragments/page_info.graphql.dart';
import '../../graphql/fragments/user.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$UserSocials {
  factory Variables$Query$UserSocials({
    required int id,
    int? followersPage,
    int? followingPage,
  }) =>
      Variables$Query$UserSocials._({
        r'id': id,
        if (followersPage != null) r'followersPage': followersPage,
        if (followingPage != null) r'followingPage': followingPage,
      });

  Variables$Query$UserSocials._(this._$data);

  factory Variables$Query$UserSocials.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$UserSocials._(result$data);
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

  CopyWith$Variables$Query$UserSocials<Variables$Query$UserSocials>
      get copyWith => CopyWith$Variables$Query$UserSocials(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$UserSocials) ||
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

abstract class CopyWith$Variables$Query$UserSocials<TRes> {
  factory CopyWith$Variables$Query$UserSocials(
    Variables$Query$UserSocials instance,
    TRes Function(Variables$Query$UserSocials) then,
  ) = _CopyWithImpl$Variables$Query$UserSocials;

  factory CopyWith$Variables$Query$UserSocials.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserSocials;

  TRes call({
    int? id,
    int? followersPage,
    int? followingPage,
  });
}

class _CopyWithImpl$Variables$Query$UserSocials<TRes>
    implements CopyWith$Variables$Query$UserSocials<TRes> {
  _CopyWithImpl$Variables$Query$UserSocials(
    this._instance,
    this._then,
  );

  final Variables$Query$UserSocials _instance;

  final TRes Function(Variables$Query$UserSocials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? followersPage = _undefined,
    Object? followingPage = _undefined,
  }) =>
      _then(Variables$Query$UserSocials._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (followersPage != _undefined)
          'followersPage': (followersPage as int?),
        if (followingPage != _undefined)
          'followingPage': (followingPage as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserSocials<TRes>
    implements CopyWith$Variables$Query$UserSocials<TRes> {
  _CopyWithStubImpl$Variables$Query$UserSocials(this._res);

  TRes _res;

  call({
    int? id,
    int? followersPage,
    int? followingPage,
  }) =>
      _res;
}

class Query$UserSocials {
  Query$UserSocials({
    this.followers,
    this.following,
    this.$__typename = 'Query',
  });

  factory Query$UserSocials.fromJson(Map<String, dynamic> json) {
    final l$followers = json['followers'];
    final l$following = json['following'];
    final l$$__typename = json['__typename'];
    return Query$UserSocials(
      followers: l$followers == null
          ? null
          : Query$UserSocials$followers.fromJson(
              (l$followers as Map<String, dynamic>)),
      following: l$following == null
          ? null
          : Query$UserSocials$following.fromJson(
              (l$following as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserSocials$followers? followers;

  final Query$UserSocials$following? following;

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
    if (!(other is Query$UserSocials) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$UserSocials on Query$UserSocials {
  CopyWith$Query$UserSocials<Query$UserSocials> get copyWith =>
      CopyWith$Query$UserSocials(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserSocials<TRes> {
  factory CopyWith$Query$UserSocials(
    Query$UserSocials instance,
    TRes Function(Query$UserSocials) then,
  ) = _CopyWithImpl$Query$UserSocials;

  factory CopyWith$Query$UserSocials.stub(TRes res) =
      _CopyWithStubImpl$Query$UserSocials;

  TRes call({
    Query$UserSocials$followers? followers,
    Query$UserSocials$following? following,
    String? $__typename,
  });
  CopyWith$Query$UserSocials$followers<TRes> get followers;
  CopyWith$Query$UserSocials$following<TRes> get following;
}

class _CopyWithImpl$Query$UserSocials<TRes>
    implements CopyWith$Query$UserSocials<TRes> {
  _CopyWithImpl$Query$UserSocials(
    this._instance,
    this._then,
  );

  final Query$UserSocials _instance;

  final TRes Function(Query$UserSocials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? followers = _undefined,
    Object? following = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserSocials(
        followers: followers == _undefined
            ? _instance.followers
            : (followers as Query$UserSocials$followers?),
        following: following == _undefined
            ? _instance.following
            : (following as Query$UserSocials$following?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserSocials$followers<TRes> get followers {
    final local$followers = _instance.followers;
    return local$followers == null
        ? CopyWith$Query$UserSocials$followers.stub(_then(_instance))
        : CopyWith$Query$UserSocials$followers(
            local$followers, (e) => call(followers: e));
  }

  CopyWith$Query$UserSocials$following<TRes> get following {
    final local$following = _instance.following;
    return local$following == null
        ? CopyWith$Query$UserSocials$following.stub(_then(_instance))
        : CopyWith$Query$UserSocials$following(
            local$following, (e) => call(following: e));
  }
}

class _CopyWithStubImpl$Query$UserSocials<TRes>
    implements CopyWith$Query$UserSocials<TRes> {
  _CopyWithStubImpl$Query$UserSocials(this._res);

  TRes _res;

  call({
    Query$UserSocials$followers? followers,
    Query$UserSocials$following? following,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserSocials$followers<TRes> get followers =>
      CopyWith$Query$UserSocials$followers.stub(_res);

  CopyWith$Query$UserSocials$following<TRes> get following =>
      CopyWith$Query$UserSocials$following.stub(_res);
}

const documentNodeQueryUserSocials = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserSocials'),
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

class Query$UserSocials$followers {
  Query$UserSocials$followers({
    this.pageInfo,
    this.followers,
    this.$__typename = 'Page',
  });

  factory Query$UserSocials$followers.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$followers = json['followers'];
    final l$$__typename = json['__typename'];
    return Query$UserSocials$followers(
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
    if (!(other is Query$UserSocials$followers) ||
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

extension UtilityExtension$Query$UserSocials$followers
    on Query$UserSocials$followers {
  CopyWith$Query$UserSocials$followers<Query$UserSocials$followers>
      get copyWith => CopyWith$Query$UserSocials$followers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserSocials$followers<TRes> {
  factory CopyWith$Query$UserSocials$followers(
    Query$UserSocials$followers instance,
    TRes Function(Query$UserSocials$followers) then,
  ) = _CopyWithImpl$Query$UserSocials$followers;

  factory CopyWith$Query$UserSocials$followers.stub(TRes res) =
      _CopyWithStubImpl$Query$UserSocials$followers;

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

class _CopyWithImpl$Query$UserSocials$followers<TRes>
    implements CopyWith$Query$UserSocials$followers<TRes> {
  _CopyWithImpl$Query$UserSocials$followers(
    this._instance,
    this._then,
  );

  final Query$UserSocials$followers _instance;

  final TRes Function(Query$UserSocials$followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? followers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserSocials$followers(
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

class _CopyWithStubImpl$Query$UserSocials$followers<TRes>
    implements CopyWith$Query$UserSocials$followers<TRes> {
  _CopyWithStubImpl$Query$UserSocials$followers(this._res);

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

class Query$UserSocials$following {
  Query$UserSocials$following({
    this.pageInfo,
    this.following,
    this.$__typename = 'Page',
  });

  factory Query$UserSocials$following.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$following = json['following'];
    final l$$__typename = json['__typename'];
    return Query$UserSocials$following(
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
    if (!(other is Query$UserSocials$following) ||
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

extension UtilityExtension$Query$UserSocials$following
    on Query$UserSocials$following {
  CopyWith$Query$UserSocials$following<Query$UserSocials$following>
      get copyWith => CopyWith$Query$UserSocials$following(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserSocials$following<TRes> {
  factory CopyWith$Query$UserSocials$following(
    Query$UserSocials$following instance,
    TRes Function(Query$UserSocials$following) then,
  ) = _CopyWithImpl$Query$UserSocials$following;

  factory CopyWith$Query$UserSocials$following.stub(TRes res) =
      _CopyWithStubImpl$Query$UserSocials$following;

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

class _CopyWithImpl$Query$UserSocials$following<TRes>
    implements CopyWith$Query$UserSocials$following<TRes> {
  _CopyWithImpl$Query$UserSocials$following(
    this._instance,
    this._then,
  );

  final Query$UserSocials$following _instance;

  final TRes Function(Query$UserSocials$following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? following = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserSocials$following(
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

class _CopyWithStubImpl$Query$UserSocials$following<TRes>
    implements CopyWith$Query$UserSocials$following<TRes> {
  _CopyWithStubImpl$Query$UserSocials$following(this._res);

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
