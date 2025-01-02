import 'media.graphql.dart';
import 'package:gql/ast.dart';
import 'user.graphql.dart';

class Fragment$ThreadFragment {
  Fragment$ThreadFragment({
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
  });

  factory Fragment$ThreadFragment.fromJson(Map<String, dynamic> json) {
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
    return Fragment$ThreadFragment(
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
              : Fragment$ThreadFragment$categories.fromJson(
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

  final List<Fragment$ThreadFragment$categories?>? categories;

  final Fragment$UserFragment? user;

  final Fragment$UserFragment? replyUser;

  final String $__typename;

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
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ThreadFragment || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$ThreadFragment on Fragment$ThreadFragment {
  CopyWith$Fragment$ThreadFragment<Fragment$ThreadFragment> get copyWith =>
      CopyWith$Fragment$ThreadFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ThreadFragment<TRes> {
  factory CopyWith$Fragment$ThreadFragment(
    Fragment$ThreadFragment instance,
    TRes Function(Fragment$ThreadFragment) then,
  ) = _CopyWithImpl$Fragment$ThreadFragment;

  factory CopyWith$Fragment$ThreadFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ThreadFragment;

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
    List<Fragment$ThreadFragment$categories?>? categories,
    Fragment$UserFragment? user,
    Fragment$UserFragment? replyUser,
    String? $__typename,
  });
  TRes mediaCategories(
      Iterable<Fragment$MediaFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>?>?)
          _fn);
  TRes categories(
      Iterable<Fragment$ThreadFragment$categories?>? Function(
              Iterable<
                  CopyWith$Fragment$ThreadFragment$categories<
                      Fragment$ThreadFragment$categories>?>?)
          _fn);
  CopyWith$Fragment$UserFragment<TRes> get user;
  CopyWith$Fragment$UserFragment<TRes> get replyUser;
}

class _CopyWithImpl$Fragment$ThreadFragment<TRes>
    implements CopyWith$Fragment$ThreadFragment<TRes> {
  _CopyWithImpl$Fragment$ThreadFragment(
    this._instance,
    this._then,
  );

  final Fragment$ThreadFragment _instance;

  final TRes Function(Fragment$ThreadFragment) _then;

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
  }) =>
      _then(Fragment$ThreadFragment(
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
            : (categories as List<Fragment$ThreadFragment$categories?>?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        replyUser: replyUser == _undefined
            ? _instance.replyUser
            : (replyUser as Fragment$UserFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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
          Iterable<Fragment$ThreadFragment$categories?>? Function(
                  Iterable<
                      CopyWith$Fragment$ThreadFragment$categories<
                          Fragment$ThreadFragment$categories>?>?)
              _fn) =>
      call(
          categories: _fn(_instance.categories?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ThreadFragment$categories(
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

class _CopyWithStubImpl$Fragment$ThreadFragment<TRes>
    implements CopyWith$Fragment$ThreadFragment<TRes> {
  _CopyWithStubImpl$Fragment$ThreadFragment(this._res);

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
    List<Fragment$ThreadFragment$categories?>? categories,
    Fragment$UserFragment? user,
    Fragment$UserFragment? replyUser,
    String? $__typename,
  }) =>
      _res;

  mediaCategories(_fn) => _res;

  categories(_fn) => _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);

  CopyWith$Fragment$UserFragment<TRes> get replyUser =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

const fragmentDefinitionThreadFragment = FragmentDefinitionNode(
  name: NameNode(value: 'ThreadFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Thread'),
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
      name: NameNode(value: 'title'),
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
      name: NameNode(value: 'replyCommentId'),
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
      name: NameNode(value: 'isSticky'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'mediaCategories'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'MediaFragment'),
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
      name: NameNode(value: 'replyUser'),
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
);
const documentNodeFragmentThreadFragment = DocumentNode(definitions: [
  fragmentDefinitionThreadFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionUserFragment,
]);

class Fragment$ThreadFragment$categories {
  Fragment$ThreadFragment$categories({
    required this.id,
    required this.name,
    this.$__typename = 'ThreadCategory',
  });

  factory Fragment$ThreadFragment$categories.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$ThreadFragment$categories(
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
    if (other is! Fragment$ThreadFragment$categories ||
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

extension UtilityExtension$Fragment$ThreadFragment$categories
    on Fragment$ThreadFragment$categories {
  CopyWith$Fragment$ThreadFragment$categories<
          Fragment$ThreadFragment$categories>
      get copyWith => CopyWith$Fragment$ThreadFragment$categories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ThreadFragment$categories<TRes> {
  factory CopyWith$Fragment$ThreadFragment$categories(
    Fragment$ThreadFragment$categories instance,
    TRes Function(Fragment$ThreadFragment$categories) then,
  ) = _CopyWithImpl$Fragment$ThreadFragment$categories;

  factory CopyWith$Fragment$ThreadFragment$categories.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ThreadFragment$categories;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ThreadFragment$categories<TRes>
    implements CopyWith$Fragment$ThreadFragment$categories<TRes> {
  _CopyWithImpl$Fragment$ThreadFragment$categories(
    this._instance,
    this._then,
  );

  final Fragment$ThreadFragment$categories _instance;

  final TRes Function(Fragment$ThreadFragment$categories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ThreadFragment$categories(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ThreadFragment$categories<TRes>
    implements CopyWith$Fragment$ThreadFragment$categories<TRes> {
  _CopyWithStubImpl$Fragment$ThreadFragment$categories(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
