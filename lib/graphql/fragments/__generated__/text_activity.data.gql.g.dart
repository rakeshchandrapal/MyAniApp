// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_activity.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GTextActivityData> _$gTextActivityDataSerializer =
    new _$GTextActivityDataSerializer();
Serializer<GTextActivityData_user> _$gTextActivityDataUserSerializer =
    new _$GTextActivityData_userSerializer();
Serializer<GTextActivityData_user_avatar>
    _$gTextActivityDataUserAvatarSerializer =
    new _$GTextActivityData_user_avatarSerializer();

class _$GTextActivityDataSerializer
    implements StructuredSerializer<GTextActivityData> {
  @override
  final Iterable<Type> types = const [GTextActivityData, _$GTextActivityData];
  @override
  final String wireName = 'GTextActivityData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GTextActivityData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'replyCount',
      serializers.serialize(object.replyCount,
          specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GActivityType)));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isLocked;
    if (value != null) {
      result
        ..add('isLocked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isSubscribed;
    if (value != null) {
      result
        ..add('isSubscribed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
            specifiedType: const FullType(GTextActivityData_user)));
    }
    return result;
  }

  @override
  GTextActivityData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTextActivityDataBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GActivityType))
              as _i1.GActivityType?;
          break;
        case 'replyCount':
          result.replyCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isLocked':
          result.isLocked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isSubscribed':
          result.isSubscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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
                  specifiedType: const FullType(GTextActivityData_user))!
              as GTextActivityData_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GTextActivityData_userSerializer
    implements StructuredSerializer<GTextActivityData_user> {
  @override
  final Iterable<Type> types = const [
    GTextActivityData_user,
    _$GTextActivityData_user
  ];
  @override
  final String wireName = 'GTextActivityData_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTextActivityData_user object,
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
                BuiltList, const [const FullType.nullable(_i1.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GTextActivityData_user_avatar)));
    }
    return result;
  }

  @override
  GTextActivityData_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTextActivityData_userBuilder();

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
                const FullType.nullable(_i1.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GTextActivityData_user_avatar))!
              as GTextActivityData_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GTextActivityData_user_avatarSerializer
    implements StructuredSerializer<GTextActivityData_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GTextActivityData_user_avatar,
    _$GTextActivityData_user_avatar
  ];
  @override
  final String wireName = 'GTextActivityData_user_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTextActivityData_user_avatar object,
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
  GTextActivityData_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTextActivityData_user_avatarBuilder();

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

class _$GTextActivityData extends GTextActivityData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? userId;
  @override
  final _i1.GActivityType? type;
  @override
  final int replyCount;
  @override
  final String? text;
  @override
  final bool? isLocked;
  @override
  final bool? isSubscribed;
  @override
  final bool? isLiked;
  @override
  final int likeCount;
  @override
  final int createdAt;
  @override
  final GTextActivityData_user? user;

  factory _$GTextActivityData(
          [void Function(GTextActivityDataBuilder)? updates]) =>
      (new GTextActivityDataBuilder()..update(updates))._build();

  _$GTextActivityData._(
      {required this.G__typename,
      required this.id,
      this.userId,
      this.type,
      required this.replyCount,
      this.text,
      this.isLocked,
      this.isSubscribed,
      this.isLiked,
      required this.likeCount,
      required this.createdAt,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GTextActivityData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GTextActivityData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        replyCount, r'GTextActivityData', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GTextActivityData', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GTextActivityData', 'createdAt');
  }

  @override
  GTextActivityData rebuild(void Function(GTextActivityDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTextActivityDataBuilder toBuilder() =>
      new GTextActivityDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTextActivityData &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        type == other.type &&
        replyCount == other.replyCount &&
        text == other.text &&
        isLocked == other.isLocked &&
        isSubscribed == other.isSubscribed &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount &&
        createdAt == other.createdAt &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, replyCount.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jc(_$hash, isSubscribed.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GTextActivityData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('type', type)
          ..add('replyCount', replyCount)
          ..add('text', text)
          ..add('isLocked', isLocked)
          ..add('isSubscribed', isSubscribed)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount)
          ..add('createdAt', createdAt)
          ..add('user', user))
        .toString();
  }
}

class GTextActivityDataBuilder
    implements Builder<GTextActivityData, GTextActivityDataBuilder> {
  _$GTextActivityData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  _i1.GActivityType? _type;
  _i1.GActivityType? get type => _$this._type;
  set type(_i1.GActivityType? type) => _$this._type = type;

  int? _replyCount;
  int? get replyCount => _$this._replyCount;
  set replyCount(int? replyCount) => _$this._replyCount = replyCount;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  bool? _isLocked;
  bool? get isLocked => _$this._isLocked;
  set isLocked(bool? isLocked) => _$this._isLocked = isLocked;

  bool? _isSubscribed;
  bool? get isSubscribed => _$this._isSubscribed;
  set isSubscribed(bool? isSubscribed) => _$this._isSubscribed = isSubscribed;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  GTextActivityData_userBuilder? _user;
  GTextActivityData_userBuilder get user =>
      _$this._user ??= new GTextActivityData_userBuilder();
  set user(GTextActivityData_userBuilder? user) => _$this._user = user;

  GTextActivityDataBuilder() {
    GTextActivityData._initializeBuilder(this);
  }

  GTextActivityDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userId = $v.userId;
      _type = $v.type;
      _replyCount = $v.replyCount;
      _text = $v.text;
      _isLocked = $v.isLocked;
      _isSubscribed = $v.isSubscribed;
      _isLiked = $v.isLiked;
      _likeCount = $v.likeCount;
      _createdAt = $v.createdAt;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTextActivityData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTextActivityData;
  }

  @override
  void update(void Function(GTextActivityDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTextActivityData build() => _build();

  _$GTextActivityData _build() {
    _$GTextActivityData _$result;
    try {
      _$result = _$v ??
          new _$GTextActivityData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GTextActivityData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GTextActivityData', 'id'),
              userId: userId,
              type: type,
              replyCount: BuiltValueNullFieldError.checkNotNull(
                  replyCount, r'GTextActivityData', 'replyCount'),
              text: text,
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(
                  likeCount, r'GTextActivityData', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GTextActivityData', 'createdAt'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GTextActivityData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTextActivityData_user extends GTextActivityData_user {
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
  final BuiltList<_i1.GModRole?>? moderatorRoles;
  @override
  final GTextActivityData_user_avatar? avatar;

  factory _$GTextActivityData_user(
          [void Function(GTextActivityData_userBuilder)? updates]) =>
      (new GTextActivityData_userBuilder()..update(updates))._build();

  _$GTextActivityData_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GTextActivityData_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GTextActivityData_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GTextActivityData_user', 'name');
  }

  @override
  GTextActivityData_user rebuild(
          void Function(GTextActivityData_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTextActivityData_userBuilder toBuilder() =>
      new GTextActivityData_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTextActivityData_user &&
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
    return (newBuiltValueToStringHelper(r'GTextActivityData_user')
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

class GTextActivityData_userBuilder
    implements Builder<GTextActivityData_user, GTextActivityData_userBuilder> {
  _$GTextActivityData_user? _$v;

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

  ListBuilder<_i1.GModRole?>? _moderatorRoles;
  ListBuilder<_i1.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i1.GModRole?>();
  set moderatorRoles(ListBuilder<_i1.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GTextActivityData_user_avatarBuilder? _avatar;
  GTextActivityData_user_avatarBuilder get avatar =>
      _$this._avatar ??= new GTextActivityData_user_avatarBuilder();
  set avatar(GTextActivityData_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GTextActivityData_userBuilder() {
    GTextActivityData_user._initializeBuilder(this);
  }

  GTextActivityData_userBuilder get _$this {
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
  void replace(GTextActivityData_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTextActivityData_user;
  }

  @override
  void update(void Function(GTextActivityData_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTextActivityData_user build() => _build();

  _$GTextActivityData_user _build() {
    _$GTextActivityData_user _$result;
    try {
      _$result = _$v ??
          new _$GTextActivityData_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GTextActivityData_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GTextActivityData_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GTextActivityData_user', 'name'),
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
            r'GTextActivityData_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GTextActivityData_user_avatar extends GTextActivityData_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GTextActivityData_user_avatar(
          [void Function(GTextActivityData_user_avatarBuilder)? updates]) =>
      (new GTextActivityData_user_avatarBuilder()..update(updates))._build();

  _$GTextActivityData_user_avatar._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GTextActivityData_user_avatar', 'G__typename');
  }

  @override
  GTextActivityData_user_avatar rebuild(
          void Function(GTextActivityData_user_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTextActivityData_user_avatarBuilder toBuilder() =>
      new GTextActivityData_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTextActivityData_user_avatar &&
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
    return (newBuiltValueToStringHelper(r'GTextActivityData_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GTextActivityData_user_avatarBuilder
    implements
        Builder<GTextActivityData_user_avatar,
            GTextActivityData_user_avatarBuilder> {
  _$GTextActivityData_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GTextActivityData_user_avatarBuilder() {
    GTextActivityData_user_avatar._initializeBuilder(this);
  }

  GTextActivityData_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTextActivityData_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTextActivityData_user_avatar;
  }

  @override
  void update(void Function(GTextActivityData_user_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTextActivityData_user_avatar build() => _build();

  _$GTextActivityData_user_avatar _build() {
    final _$result = _$v ??
        new _$GTextActivityData_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GTextActivityData_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
