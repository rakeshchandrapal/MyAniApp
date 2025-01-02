import 'fragments/user.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$Comment {
  factory Variables$Query$Comment({int? id}) => Variables$Query$Comment._({
        if (id != null) r'id': id,
      });

  Variables$Query$Comment._(this._$data);

  factory Variables$Query$Comment.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Query$Comment._(result$data);
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

  CopyWith$Variables$Query$Comment<Variables$Query$Comment> get copyWith =>
      CopyWith$Variables$Query$Comment(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Comment || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$Comment<TRes> {
  factory CopyWith$Variables$Query$Comment(
    Variables$Query$Comment instance,
    TRes Function(Variables$Query$Comment) then,
  ) = _CopyWithImpl$Variables$Query$Comment;

  factory CopyWith$Variables$Query$Comment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Comment;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$Comment<TRes>
    implements CopyWith$Variables$Query$Comment<TRes> {
  _CopyWithImpl$Variables$Query$Comment(
    this._instance,
    this._then,
  );

  final Variables$Query$Comment _instance;

  final TRes Function(Variables$Query$Comment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Comment._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Comment<TRes>
    implements CopyWith$Variables$Query$Comment<TRes> {
  _CopyWithStubImpl$Variables$Query$Comment(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$Comment {
  Query$Comment({
    this.ThreadComment,
    this.$__typename = 'Query',
  });

  factory Query$Comment.fromJson(Map<String, dynamic> json) {
    final l$ThreadComment = json['ThreadComment'];
    final l$$__typename = json['__typename'];
    return Query$Comment(
      ThreadComment: (l$ThreadComment as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Comment$ThreadComment.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Comment$ThreadComment?>? ThreadComment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ThreadComment = ThreadComment;
    _resultData['ThreadComment'] =
        l$ThreadComment?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ThreadComment = ThreadComment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ThreadComment == null
          ? null
          : Object.hashAll(l$ThreadComment.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Comment || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ThreadComment = ThreadComment;
    final lOther$ThreadComment = other.ThreadComment;
    if (l$ThreadComment != null && lOther$ThreadComment != null) {
      if (l$ThreadComment.length != lOther$ThreadComment.length) {
        return false;
      }
      for (int i = 0; i < l$ThreadComment.length; i++) {
        final l$ThreadComment$entry = l$ThreadComment[i];
        final lOther$ThreadComment$entry = lOther$ThreadComment[i];
        if (l$ThreadComment$entry != lOther$ThreadComment$entry) {
          return false;
        }
      }
    } else if (l$ThreadComment != lOther$ThreadComment) {
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

extension UtilityExtension$Query$Comment on Query$Comment {
  CopyWith$Query$Comment<Query$Comment> get copyWith => CopyWith$Query$Comment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Comment<TRes> {
  factory CopyWith$Query$Comment(
    Query$Comment instance,
    TRes Function(Query$Comment) then,
  ) = _CopyWithImpl$Query$Comment;

  factory CopyWith$Query$Comment.stub(TRes res) =
      _CopyWithStubImpl$Query$Comment;

  TRes call({
    List<Query$Comment$ThreadComment?>? ThreadComment,
    String? $__typename,
  });
  TRes ThreadComment(
      Iterable<Query$Comment$ThreadComment?>? Function(
              Iterable<
                  CopyWith$Query$Comment$ThreadComment<
                      Query$Comment$ThreadComment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Comment<TRes>
    implements CopyWith$Query$Comment<TRes> {
  _CopyWithImpl$Query$Comment(
    this._instance,
    this._then,
  );

  final Query$Comment _instance;

  final TRes Function(Query$Comment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ThreadComment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Comment(
        ThreadComment: ThreadComment == _undefined
            ? _instance.ThreadComment
            : (ThreadComment as List<Query$Comment$ThreadComment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes ThreadComment(
          Iterable<Query$Comment$ThreadComment?>? Function(
                  Iterable<
                      CopyWith$Query$Comment$ThreadComment<
                          Query$Comment$ThreadComment>?>?)
              _fn) =>
      call(
          ThreadComment: _fn(_instance.ThreadComment?.map((e) => e == null
              ? null
              : CopyWith$Query$Comment$ThreadComment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Comment<TRes>
    implements CopyWith$Query$Comment<TRes> {
  _CopyWithStubImpl$Query$Comment(this._res);

  TRes _res;

  call({
    List<Query$Comment$ThreadComment?>? ThreadComment,
    String? $__typename,
  }) =>
      _res;

  ThreadComment(_fn) => _res;
}

const documentNodeQueryComment = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Comment'),
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
        name: NameNode(value: 'ThreadComment'),
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
  fragmentDefinitionUserFragment,
]);

class Query$Comment$ThreadComment {
  Query$Comment$ThreadComment({
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

  factory Query$Comment$ThreadComment.fromJson(Map<String, dynamic> json) {
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
    return Query$Comment$ThreadComment(
      id: (l$id as int),
      threadId: (l$threadId as int?),
      comment: (l$comment as String?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
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

  final Fragment$UserFragment? user;

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
    if (other is! Query$Comment$ThreadComment ||
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

extension UtilityExtension$Query$Comment$ThreadComment
    on Query$Comment$ThreadComment {
  CopyWith$Query$Comment$ThreadComment<Query$Comment$ThreadComment>
      get copyWith => CopyWith$Query$Comment$ThreadComment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Comment$ThreadComment<TRes> {
  factory CopyWith$Query$Comment$ThreadComment(
    Query$Comment$ThreadComment instance,
    TRes Function(Query$Comment$ThreadComment) then,
  ) = _CopyWithImpl$Query$Comment$ThreadComment;

  factory CopyWith$Query$Comment$ThreadComment.stub(TRes res) =
      _CopyWithStubImpl$Query$Comment$ThreadComment;

  TRes call({
    int? id,
    int? threadId,
    String? comment,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    dynamic? childComments,
    bool? isLocked,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Comment$ThreadComment<TRes>
    implements CopyWith$Query$Comment$ThreadComment<TRes> {
  _CopyWithImpl$Query$Comment$ThreadComment(
    this._instance,
    this._then,
  );

  final Query$Comment$ThreadComment _instance;

  final TRes Function(Query$Comment$ThreadComment) _then;

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
      _then(Query$Comment$ThreadComment(
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
            : (user as Fragment$UserFragment?),
        childComments: childComments == _undefined
            ? _instance.childComments
            : (childComments as dynamic?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
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

class _CopyWithStubImpl$Query$Comment$ThreadComment<TRes>
    implements CopyWith$Query$Comment$ThreadComment<TRes> {
  _CopyWithStubImpl$Query$Comment$ThreadComment(this._res);

  TRes _res;

  call({
    int? id,
    int? threadId,
    String? comment,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    dynamic? childComments,
    bool? isLocked,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}
