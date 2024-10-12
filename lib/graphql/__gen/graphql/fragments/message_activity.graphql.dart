import '../schema.graphql.dart';
import 'package:gql/ast.dart';
import 'user.graphql.dart';

class Fragment$MessageActivity {
  Fragment$MessageActivity({
    required this.id,
    this.type,
    this.message,
    required this.replyCount,
    this.isPrivate,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.userId,
    this.messenger,
    this.recipient,
    this.$__typename = 'MessageActivity',
  });

  factory Fragment$MessageActivity.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$message = json['message'];
    final l$replyCount = json['replyCount'];
    final l$isPrivate = json['isPrivate'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$userId = json['userId'];
    final l$messenger = json['messenger'];
    final l$recipient = json['recipient'];
    final l$$__typename = json['__typename'];
    return Fragment$MessageActivity(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      message: (l$message as String?),
      replyCount: (l$replyCount as int),
      isPrivate: (l$isPrivate as bool?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      userId: (l$userId as int?),
      messenger: l$messenger == null
          ? null
          : Fragment$UserFragment.fromJson(
              (l$messenger as Map<String, dynamic>)),
      recipient: l$recipient == null
          ? null
          : Fragment$UserFragment.fromJson(
              (l$recipient as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$ActivityType? type;

  final String? message;

  final int replyCount;

  final bool? isPrivate;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final int? userId;

  final Fragment$UserFragment? messenger;

  final Fragment$UserFragment? recipient;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$type = type;
    resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$message = message;
    resultData['message'] = l$message;
    final l$replyCount = replyCount;
    resultData['replyCount'] = l$replyCount;
    final l$isPrivate = isPrivate;
    resultData['isPrivate'] = l$isPrivate;
    final l$isLocked = isLocked;
    resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    resultData['createdAt'] = l$createdAt;
    final l$userId = userId;
    resultData['userId'] = l$userId;
    final l$messenger = messenger;
    resultData['messenger'] = l$messenger?.toJson();
    final l$recipient = recipient;
    resultData['recipient'] = l$recipient?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$message = message;
    final l$replyCount = replyCount;
    final l$isPrivate = isPrivate;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$userId = userId;
    final l$messenger = messenger;
    final l$recipient = recipient;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$message,
      l$replyCount,
      l$isPrivate,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$userId,
      l$messenger,
      l$recipient,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MessageActivity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isPrivate = isPrivate;
    final lOther$isPrivate = other.isPrivate;
    if (l$isPrivate != lOther$isPrivate) {
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
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$messenger = messenger;
    final lOther$messenger = other.messenger;
    if (l$messenger != lOther$messenger) {
      return false;
    }
    final l$recipient = recipient;
    final lOther$recipient = other.recipient;
    if (l$recipient != lOther$recipient) {
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

extension UtilityExtension$Fragment$MessageActivity
    on Fragment$MessageActivity {
  CopyWith$Fragment$MessageActivity<Fragment$MessageActivity> get copyWith =>
      CopyWith$Fragment$MessageActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MessageActivity<TRes> {
  factory CopyWith$Fragment$MessageActivity(
    Fragment$MessageActivity instance,
    TRes Function(Fragment$MessageActivity) then,
  ) = _CopyWithImpl$Fragment$MessageActivity;

  factory CopyWith$Fragment$MessageActivity.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MessageActivity;

  TRes call({
    int? id,
    Enum$ActivityType? type,
    String? message,
    int? replyCount,
    bool? isPrivate,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    int? userId,
    Fragment$UserFragment? messenger,
    Fragment$UserFragment? recipient,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get messenger;
  CopyWith$Fragment$UserFragment<TRes> get recipient;
}

class _CopyWithImpl$Fragment$MessageActivity<TRes>
    implements CopyWith$Fragment$MessageActivity<TRes> {
  _CopyWithImpl$Fragment$MessageActivity(
    this._instance,
    this._then,
  );

  final Fragment$MessageActivity _instance;

  final TRes Function(Fragment$MessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? message = _undefined,
    Object? replyCount = _undefined,
    Object? isPrivate = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? userId = _undefined,
    Object? messenger = _undefined,
    Object? recipient = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MessageActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        message:
            message == _undefined ? _instance.message : (message as String?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isPrivate: isPrivate == _undefined
            ? _instance.isPrivate
            : (isPrivate as bool?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        messenger: messenger == _undefined
            ? _instance.messenger
            : (messenger as Fragment$UserFragment?),
        recipient: recipient == _undefined
            ? _instance.recipient
            : (recipient as Fragment$UserFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$UserFragment<TRes> get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(
            local$messenger, (e) => call(messenger: e));
  }

  @override
  CopyWith$Fragment$UserFragment<TRes> get recipient {
    final local$recipient = _instance.recipient;
    return local$recipient == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(
            local$recipient, (e) => call(recipient: e));
  }
}

class _CopyWithStubImpl$Fragment$MessageActivity<TRes>
    implements CopyWith$Fragment$MessageActivity<TRes> {
  _CopyWithStubImpl$Fragment$MessageActivity(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    Enum$ActivityType? type,
    String? message,
    int? replyCount,
    bool? isPrivate,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    int? userId,
    Fragment$UserFragment? messenger,
    Fragment$UserFragment? recipient,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$UserFragment<TRes> get messenger =>
      CopyWith$Fragment$UserFragment.stub(_res);

  @override
  CopyWith$Fragment$UserFragment<TRes> get recipient =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

const fragmentDefinitionMessageActivity = FragmentDefinitionNode(
  name: NameNode(value: 'MessageActivity'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MessageActivity'),
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
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'message'),
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
      name: NameNode(value: 'isPrivate'),
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
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'messengerId'),
      alias: NameNode(value: 'userId'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'messenger'),
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
      name: NameNode(value: 'recipient'),
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
const documentNodeFragmentMessageActivity = DocumentNode(definitions: [
  fragmentDefinitionMessageActivity,
  fragmentDefinitionUserFragment,
]);
