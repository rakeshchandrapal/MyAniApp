// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_comment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GThreadCommentData> _$gThreadCommentDataSerializer =
    new _$GThreadCommentDataSerializer();
Serializer<GThreadCommentData_user> _$gThreadCommentDataUserSerializer =
    new _$GThreadCommentData_userSerializer();
Serializer<GThreadCommentData_user_avatar>
    _$gThreadCommentDataUserAvatarSerializer =
    new _$GThreadCommentData_user_avatarSerializer();

class _$GThreadCommentDataSerializer
    implements StructuredSerializer<GThreadCommentData> {
  @override
  final Iterable<Type> types = const [GThreadCommentData, _$GThreadCommentData];
  @override
  final String wireName = 'GThreadCommentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadCommentData object,
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
            specifiedType: const FullType(GThreadCommentData_user)));
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
  GThreadCommentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadCommentDataBuilder();

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
                  specifiedType: const FullType(GThreadCommentData_user))!
              as GThreadCommentData_user);
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

class _$GThreadCommentData_userSerializer
    implements StructuredSerializer<GThreadCommentData_user> {
  @override
  final Iterable<Type> types = const [
    GThreadCommentData_user,
    _$GThreadCommentData_user
  ];
  @override
  final String wireName = 'GThreadCommentData_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadCommentData_user object,
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
                BuiltList, const [const FullType.nullable(_i2.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GThreadCommentData_user_avatar)));
    }
    return result;
  }

  @override
  GThreadCommentData_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadCommentData_userBuilder();

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
                const FullType.nullable(_i2.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GThreadCommentData_user_avatar))!
              as GThreadCommentData_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadCommentData_user_avatarSerializer
    implements StructuredSerializer<GThreadCommentData_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GThreadCommentData_user_avatar,
    _$GThreadCommentData_user_avatar
  ];
  @override
  final String wireName = 'GThreadCommentData_user_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadCommentData_user_avatar object,
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
  GThreadCommentData_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadCommentData_user_avatarBuilder();

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

class _$GThreadCommentData extends GThreadCommentData {
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
  final GThreadCommentData_user? user;
  @override
  final bool? isLocked;

  factory _$GThreadCommentData(
          [void Function(GThreadCommentDataBuilder)? updates]) =>
      (new GThreadCommentDataBuilder()..update(updates))._build();

  _$GThreadCommentData._(
      {required this.G__typename,
      required this.id,
      this.threadId,
      this.comment,
      this.isLiked,
      required this.likeCount,
      required this.createdAt,
      this.user,
      this.isLocked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadCommentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GThreadCommentData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GThreadCommentData', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GThreadCommentData', 'createdAt');
  }

  @override
  GThreadCommentData rebuild(
          void Function(GThreadCommentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadCommentDataBuilder toBuilder() =>
      new GThreadCommentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadCommentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        threadId == other.threadId &&
        comment == other.comment &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount &&
        createdAt == other.createdAt &&
        user == other.user &&
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
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GThreadCommentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('threadId', threadId)
          ..add('comment', comment)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount)
          ..add('createdAt', createdAt)
          ..add('user', user)
          ..add('isLocked', isLocked))
        .toString();
  }
}

class GThreadCommentDataBuilder
    implements Builder<GThreadCommentData, GThreadCommentDataBuilder> {
  _$GThreadCommentData? _$v;

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

  GThreadCommentData_userBuilder? _user;
  GThreadCommentData_userBuilder get user =>
      _$this._user ??= new GThreadCommentData_userBuilder();
  set user(GThreadCommentData_userBuilder? user) => _$this._user = user;

  bool? _isLocked;
  bool? get isLocked => _$this._isLocked;
  set isLocked(bool? isLocked) => _$this._isLocked = isLocked;

  GThreadCommentDataBuilder() {
    GThreadCommentData._initializeBuilder(this);
  }

  GThreadCommentDataBuilder get _$this {
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
      _isLocked = $v.isLocked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadCommentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadCommentData;
  }

  @override
  void update(void Function(GThreadCommentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadCommentData build() => _build();

  _$GThreadCommentData _build() {
    _$GThreadCommentData _$result;
    try {
      _$result = _$v ??
          new _$GThreadCommentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GThreadCommentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GThreadCommentData', 'id'),
              threadId: threadId,
              comment: comment,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(
                  likeCount, r'GThreadCommentData', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GThreadCommentData', 'createdAt'),
              user: _user?.build(),
              isLocked: isLocked);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GThreadCommentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadCommentData_user extends GThreadCommentData_user {
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
  final BuiltList<_i2.GModRole?>? moderatorRoles;
  @override
  final GThreadCommentData_user_avatar? avatar;

  factory _$GThreadCommentData_user(
          [void Function(GThreadCommentData_userBuilder)? updates]) =>
      (new GThreadCommentData_userBuilder()..update(updates))._build();

  _$GThreadCommentData_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadCommentData_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GThreadCommentData_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GThreadCommentData_user', 'name');
  }

  @override
  GThreadCommentData_user rebuild(
          void Function(GThreadCommentData_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadCommentData_userBuilder toBuilder() =>
      new GThreadCommentData_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadCommentData_user &&
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
    return (newBuiltValueToStringHelper(r'GThreadCommentData_user')
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

class GThreadCommentData_userBuilder
    implements
        Builder<GThreadCommentData_user, GThreadCommentData_userBuilder> {
  _$GThreadCommentData_user? _$v;

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

  ListBuilder<_i2.GModRole?>? _moderatorRoles;
  ListBuilder<_i2.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i2.GModRole?>();
  set moderatorRoles(ListBuilder<_i2.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GThreadCommentData_user_avatarBuilder? _avatar;
  GThreadCommentData_user_avatarBuilder get avatar =>
      _$this._avatar ??= new GThreadCommentData_user_avatarBuilder();
  set avatar(GThreadCommentData_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GThreadCommentData_userBuilder() {
    GThreadCommentData_user._initializeBuilder(this);
  }

  GThreadCommentData_userBuilder get _$this {
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
  void replace(GThreadCommentData_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadCommentData_user;
  }

  @override
  void update(void Function(GThreadCommentData_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadCommentData_user build() => _build();

  _$GThreadCommentData_user _build() {
    _$GThreadCommentData_user _$result;
    try {
      _$result = _$v ??
          new _$GThreadCommentData_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GThreadCommentData_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GThreadCommentData_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GThreadCommentData_user', 'name'),
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
            r'GThreadCommentData_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadCommentData_user_avatar extends GThreadCommentData_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GThreadCommentData_user_avatar(
          [void Function(GThreadCommentData_user_avatarBuilder)? updates]) =>
      (new GThreadCommentData_user_avatarBuilder()..update(updates))._build();

  _$GThreadCommentData_user_avatar._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadCommentData_user_avatar', 'G__typename');
  }

  @override
  GThreadCommentData_user_avatar rebuild(
          void Function(GThreadCommentData_user_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadCommentData_user_avatarBuilder toBuilder() =>
      new GThreadCommentData_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadCommentData_user_avatar &&
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
    return (newBuiltValueToStringHelper(r'GThreadCommentData_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GThreadCommentData_user_avatarBuilder
    implements
        Builder<GThreadCommentData_user_avatar,
            GThreadCommentData_user_avatarBuilder> {
  _$GThreadCommentData_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GThreadCommentData_user_avatarBuilder() {
    GThreadCommentData_user_avatar._initializeBuilder(this);
  }

  GThreadCommentData_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadCommentData_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadCommentData_user_avatar;
  }

  @override
  void update(void Function(GThreadCommentData_user_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadCommentData_user_avatar build() => _build();

  _$GThreadCommentData_user_avatar _build() {
    final _$result = _$v ??
        new _$GThreadCommentData_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GThreadCommentData_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
