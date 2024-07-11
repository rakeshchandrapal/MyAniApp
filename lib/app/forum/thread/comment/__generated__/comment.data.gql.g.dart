// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCommentData> _$gCommentDataSerializer =
    new _$GCommentDataSerializer();
Serializer<GCommentData_ThreadComment> _$gCommentDataThreadCommentSerializer =
    new _$GCommentData_ThreadCommentSerializer();
Serializer<GCommentData_ThreadComment_user>
    _$gCommentDataThreadCommentUserSerializer =
    new _$GCommentData_ThreadComment_userSerializer();
Serializer<GCommentData_ThreadComment_user_avatar>
    _$gCommentDataThreadCommentUserAvatarSerializer =
    new _$GCommentData_ThreadComment_user_avatarSerializer();

class _$GCommentDataSerializer implements StructuredSerializer<GCommentData> {
  @override
  final Iterable<Type> types = const [GCommentData, _$GCommentData];
  @override
  final String wireName = 'GCommentData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCommentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ThreadComment;
    if (value != null) {
      result
        ..add('ThreadComment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GCommentData_ThreadComment)])));
    }
    return result;
  }

  @override
  GCommentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCommentDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'ThreadComment':
          result.ThreadComment.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GCommentData_ThreadComment)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCommentData_ThreadCommentSerializer
    implements StructuredSerializer<GCommentData_ThreadComment> {
  @override
  final Iterable<Type> types = const [
    GCommentData_ThreadComment,
    _$GCommentData_ThreadComment
  ];
  @override
  final String wireName = 'GCommentData_ThreadComment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCommentData_ThreadComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.threadId;
    if (value != null) {
      result
        ..add('threadId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isLiked;
    if (value != null) {
      result
        ..add('isLiked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCommentData_ThreadComment_user)));
    }
    value = object.childComments;
    if (value != null) {
      result
        ..add('childComments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.JsonObject)));
    }
    value = object.isLocked;
    if (value != null) {
      result
        ..add('isLocked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GCommentData_ThreadComment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCommentData_ThreadCommentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'threadId':
          result.threadId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isLiked':
          result.isLiked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCommentData_ThreadComment_user))!
              as GCommentData_ThreadComment_user);
          break;
        case 'childComments':
          result.childComments = serializers.deserialize(value,
              specifiedType: const FullType(_i2.JsonObject)) as _i2.JsonObject?;
          break;
        case 'isLocked':
          result.isLocked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCommentData_ThreadComment_userSerializer
    implements StructuredSerializer<GCommentData_ThreadComment_user> {
  @override
  final Iterable<Type> types = const [
    GCommentData_ThreadComment_user,
    _$GCommentData_ThreadComment_user
  ];
  @override
  final String wireName = 'GCommentData_ThreadComment_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCommentData_ThreadComment_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.donatorTier;
    if (value != null) {
      result
        ..add('donatorTier')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.donatorBadge;
    if (value != null) {
      result
        ..add('donatorBadge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moderatorRoles;
    if (value != null) {
      result
        ..add('moderatorRoles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(_i4.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCommentData_ThreadComment_user_avatar)));
    }
    return result;
  }

  @override
  GCommentData_ThreadComment_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCommentData_ThreadComment_userBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'donatorTier':
          result.donatorTier = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'donatorBadge':
          result.donatorBadge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'moderatorRoles':
          result.moderatorRoles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i4.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCommentData_ThreadComment_user_avatar))!
              as GCommentData_ThreadComment_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GCommentData_ThreadComment_user_avatarSerializer
    implements StructuredSerializer<GCommentData_ThreadComment_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GCommentData_ThreadComment_user_avatar,
    _$GCommentData_ThreadComment_user_avatar
  ];
  @override
  final String wireName = 'GCommentData_ThreadComment_user_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCommentData_ThreadComment_user_avatar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCommentData_ThreadComment_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCommentData_ThreadComment_user_avatarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCommentData extends GCommentData {
  @override
  final String G__typename;
  @override
  final BuiltList<GCommentData_ThreadComment?>? ThreadComment;

  factory _$GCommentData([void Function(GCommentDataBuilder)? updates]) =>
      (new GCommentDataBuilder()..update(updates))._build();

  _$GCommentData._({required this.G__typename, this.ThreadComment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCommentData', 'G__typename');
  }

  @override
  GCommentData rebuild(void Function(GCommentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCommentDataBuilder toBuilder() => new GCommentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCommentData &&
        G__typename == other.G__typename &&
        ThreadComment == other.ThreadComment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ThreadComment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCommentData')
          ..add('G__typename', G__typename)
          ..add('ThreadComment', ThreadComment))
        .toString();
  }
}

class GCommentDataBuilder
    implements Builder<GCommentData, GCommentDataBuilder> {
  _$GCommentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GCommentData_ThreadComment?>? _ThreadComment;
  ListBuilder<GCommentData_ThreadComment?> get ThreadComment =>
      _$this._ThreadComment ??= new ListBuilder<GCommentData_ThreadComment?>();
  set ThreadComment(ListBuilder<GCommentData_ThreadComment?>? ThreadComment) =>
      _$this._ThreadComment = ThreadComment;

  GCommentDataBuilder() {
    GCommentData._initializeBuilder(this);
  }

  GCommentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ThreadComment = $v.ThreadComment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCommentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCommentData;
  }

  @override
  void update(void Function(GCommentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCommentData build() => _build();

  _$GCommentData _build() {
    _$GCommentData _$result;
    try {
      _$result = _$v ??
          new _$GCommentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCommentData', 'G__typename'),
              ThreadComment: _ThreadComment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ThreadComment';
        _ThreadComment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCommentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCommentData_ThreadComment extends GCommentData_ThreadComment {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? threadId;
  @override
  final String? comment;
  @override
  final bool? isLiked;
  @override
  final int likeCount;
  @override
  final int createdAt;
  @override
  final GCommentData_ThreadComment_user? user;
  @override
  final _i2.JsonObject? childComments;
  @override
  final bool? isLocked;

  factory _$GCommentData_ThreadComment(
          [void Function(GCommentData_ThreadCommentBuilder)? updates]) =>
      (new GCommentData_ThreadCommentBuilder()..update(updates))._build();

  _$GCommentData_ThreadComment._(
      {required this.G__typename,
      required this.id,
      this.threadId,
      this.comment,
      this.isLiked,
      required this.likeCount,
      required this.createdAt,
      this.user,
      this.childComments,
      this.isLocked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCommentData_ThreadComment', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCommentData_ThreadComment', 'id');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GCommentData_ThreadComment', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GCommentData_ThreadComment', 'createdAt');
  }

  @override
  GCommentData_ThreadComment rebuild(
          void Function(GCommentData_ThreadCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCommentData_ThreadCommentBuilder toBuilder() =>
      new GCommentData_ThreadCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCommentData_ThreadComment &&
        G__typename == other.G__typename &&
        id == other.id &&
        threadId == other.threadId &&
        comment == other.comment &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount &&
        createdAt == other.createdAt &&
        user == other.user &&
        childComments == other.childComments &&
        isLocked == other.isLocked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, childComments.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCommentData_ThreadComment')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('threadId', threadId)
          ..add('comment', comment)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount)
          ..add('createdAt', createdAt)
          ..add('user', user)
          ..add('childComments', childComments)
          ..add('isLocked', isLocked))
        .toString();
  }
}

class GCommentData_ThreadCommentBuilder
    implements
        Builder<GCommentData_ThreadComment, GCommentData_ThreadCommentBuilder> {
  _$GCommentData_ThreadComment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _threadId;
  int? get threadId => _$this._threadId;
  set threadId(int? threadId) => _$this._threadId = threadId;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  GCommentData_ThreadComment_userBuilder? _user;
  GCommentData_ThreadComment_userBuilder get user =>
      _$this._user ??= new GCommentData_ThreadComment_userBuilder();
  set user(GCommentData_ThreadComment_userBuilder? user) => _$this._user = user;

  _i2.JsonObject? _childComments;
  _i2.JsonObject? get childComments => _$this._childComments;
  set childComments(_i2.JsonObject? childComments) =>
      _$this._childComments = childComments;

  bool? _isLocked;
  bool? get isLocked => _$this._isLocked;
  set isLocked(bool? isLocked) => _$this._isLocked = isLocked;

  GCommentData_ThreadCommentBuilder() {
    GCommentData_ThreadComment._initializeBuilder(this);
  }

  GCommentData_ThreadCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _threadId = $v.threadId;
      _comment = $v.comment;
      _isLiked = $v.isLiked;
      _likeCount = $v.likeCount;
      _createdAt = $v.createdAt;
      _user = $v.user?.toBuilder();
      _childComments = $v.childComments;
      _isLocked = $v.isLocked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCommentData_ThreadComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCommentData_ThreadComment;
  }

  @override
  void update(void Function(GCommentData_ThreadCommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCommentData_ThreadComment build() => _build();

  _$GCommentData_ThreadComment _build() {
    _$GCommentData_ThreadComment _$result;
    try {
      _$result = _$v ??
          new _$GCommentData_ThreadComment._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCommentData_ThreadComment', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GCommentData_ThreadComment', 'id'),
              threadId: threadId,
              comment: comment,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(
                  likeCount, r'GCommentData_ThreadComment', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GCommentData_ThreadComment', 'createdAt'),
              user: _user?.build(),
              childComments: childComments,
              isLocked: isLocked);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCommentData_ThreadComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCommentData_ThreadComment_user
    extends GCommentData_ThreadComment_user {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final int? donatorTier;
  @override
  final String? donatorBadge;
  @override
  final BuiltList<_i4.GModRole?>? moderatorRoles;
  @override
  final GCommentData_ThreadComment_user_avatar? avatar;

  factory _$GCommentData_ThreadComment_user(
          [void Function(GCommentData_ThreadComment_userBuilder)? updates]) =>
      (new GCommentData_ThreadComment_userBuilder()..update(updates))._build();

  _$GCommentData_ThreadComment_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCommentData_ThreadComment_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCommentData_ThreadComment_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GCommentData_ThreadComment_user', 'name');
  }

  @override
  GCommentData_ThreadComment_user rebuild(
          void Function(GCommentData_ThreadComment_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCommentData_ThreadComment_userBuilder toBuilder() =>
      new GCommentData_ThreadComment_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCommentData_ThreadComment_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        donatorTier == other.donatorTier &&
        donatorBadge == other.donatorBadge &&
        moderatorRoles == other.moderatorRoles &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, donatorTier.hashCode);
    _$hash = $jc(_$hash, donatorBadge.hashCode);
    _$hash = $jc(_$hash, moderatorRoles.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCommentData_ThreadComment_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('donatorTier', donatorTier)
          ..add('donatorBadge', donatorBadge)
          ..add('moderatorRoles', moderatorRoles)
          ..add('avatar', avatar))
        .toString();
  }
}

class GCommentData_ThreadComment_userBuilder
    implements
        Builder<GCommentData_ThreadComment_user,
            GCommentData_ThreadComment_userBuilder> {
  _$GCommentData_ThreadComment_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _donatorTier;
  int? get donatorTier => _$this._donatorTier;
  set donatorTier(int? donatorTier) => _$this._donatorTier = donatorTier;

  String? _donatorBadge;
  String? get donatorBadge => _$this._donatorBadge;
  set donatorBadge(String? donatorBadge) => _$this._donatorBadge = donatorBadge;

  ListBuilder<_i4.GModRole?>? _moderatorRoles;
  ListBuilder<_i4.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i4.GModRole?>();
  set moderatorRoles(ListBuilder<_i4.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GCommentData_ThreadComment_user_avatarBuilder? _avatar;
  GCommentData_ThreadComment_user_avatarBuilder get avatar =>
      _$this._avatar ??= new GCommentData_ThreadComment_user_avatarBuilder();
  set avatar(GCommentData_ThreadComment_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GCommentData_ThreadComment_userBuilder() {
    GCommentData_ThreadComment_user._initializeBuilder(this);
  }

  GCommentData_ThreadComment_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _donatorTier = $v.donatorTier;
      _donatorBadge = $v.donatorBadge;
      _moderatorRoles = $v.moderatorRoles?.toBuilder();
      _avatar = $v.avatar?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCommentData_ThreadComment_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCommentData_ThreadComment_user;
  }

  @override
  void update(void Function(GCommentData_ThreadComment_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCommentData_ThreadComment_user build() => _build();

  _$GCommentData_ThreadComment_user _build() {
    _$GCommentData_ThreadComment_user _$result;
    try {
      _$result = _$v ??
          new _$GCommentData_ThreadComment_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GCommentData_ThreadComment_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GCommentData_ThreadComment_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GCommentData_ThreadComment_user', 'name'),
              donatorTier: donatorTier,
              donatorBadge: donatorBadge,
              moderatorRoles: _moderatorRoles?.build(),
              avatar: _avatar?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'moderatorRoles';
        _moderatorRoles?.build();
        _$failedField = 'avatar';
        _avatar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCommentData_ThreadComment_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCommentData_ThreadComment_user_avatar
    extends GCommentData_ThreadComment_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GCommentData_ThreadComment_user_avatar(
          [void Function(GCommentData_ThreadComment_user_avatarBuilder)?
              updates]) =>
      (new GCommentData_ThreadComment_user_avatarBuilder()..update(updates))
          ._build();

  _$GCommentData_ThreadComment_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCommentData_ThreadComment_user_avatar', 'G__typename');
  }

  @override
  GCommentData_ThreadComment_user_avatar rebuild(
          void Function(GCommentData_ThreadComment_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCommentData_ThreadComment_user_avatarBuilder toBuilder() =>
      new GCommentData_ThreadComment_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCommentData_ThreadComment_user_avatar &&
        G__typename == other.G__typename &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCommentData_ThreadComment_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GCommentData_ThreadComment_user_avatarBuilder
    implements
        Builder<GCommentData_ThreadComment_user_avatar,
            GCommentData_ThreadComment_user_avatarBuilder> {
  _$GCommentData_ThreadComment_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GCommentData_ThreadComment_user_avatarBuilder() {
    GCommentData_ThreadComment_user_avatar._initializeBuilder(this);
  }

  GCommentData_ThreadComment_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCommentData_ThreadComment_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCommentData_ThreadComment_user_avatar;
  }

  @override
  void update(
      void Function(GCommentData_ThreadComment_user_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCommentData_ThreadComment_user_avatar build() => _build();

  _$GCommentData_ThreadComment_user_avatar _build() {
    final _$result = _$v ??
        new _$GCommentData_ThreadComment_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCommentData_ThreadComment_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
