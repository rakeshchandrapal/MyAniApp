// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_activity.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMessageActivityData> _$gMessageActivityDataSerializer =
    new _$GMessageActivityDataSerializer();
Serializer<GMessageActivityData_messenger>
    _$gMessageActivityDataMessengerSerializer =
    new _$GMessageActivityData_messengerSerializer();
Serializer<GMessageActivityData_messenger_avatar>
    _$gMessageActivityDataMessengerAvatarSerializer =
    new _$GMessageActivityData_messenger_avatarSerializer();

class _$GMessageActivityDataSerializer
    implements StructuredSerializer<GMessageActivityData> {
  @override
  final Iterable<Type> types = const [
    GMessageActivityData,
    _$GMessageActivityData
  ];
  @override
  final String wireName = 'GMessageActivityData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMessageActivityData object,
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
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GActivityType)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isPrivate;
    if (value != null) {
      result
        ..add('isPrivate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.messenger;
    if (value != null) {
      result
        ..add('messenger')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMessageActivityData_messenger)));
    }
    return result;
  }

  @override
  GMessageActivityData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMessageActivityDataBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GActivityType))
              as _i1.GActivityType?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'replyCount':
          result.replyCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'isPrivate':
          result.isPrivate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'messenger':
          result.messenger.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMessageActivityData_messenger))!
              as GMessageActivityData_messenger);
          break;
      }
    }

    return result.build();
  }
}

class _$GMessageActivityData_messengerSerializer
    implements StructuredSerializer<GMessageActivityData_messenger> {
  @override
  final Iterable<Type> types = const [
    GMessageActivityData_messenger,
    _$GMessageActivityData_messenger
  ];
  @override
  final String wireName = 'GMessageActivityData_messenger';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMessageActivityData_messenger object,
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
            specifiedType:
                const FullType(GMessageActivityData_messenger_avatar)));
    }
    return result;
  }

  @override
  GMessageActivityData_messenger deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMessageActivityData_messengerBuilder();

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
                  specifiedType:
                      const FullType(GMessageActivityData_messenger_avatar))!
              as GMessageActivityData_messenger_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GMessageActivityData_messenger_avatarSerializer
    implements StructuredSerializer<GMessageActivityData_messenger_avatar> {
  @override
  final Iterable<Type> types = const [
    GMessageActivityData_messenger_avatar,
    _$GMessageActivityData_messenger_avatar
  ];
  @override
  final String wireName = 'GMessageActivityData_messenger_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMessageActivityData_messenger_avatar object,
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
  GMessageActivityData_messenger_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMessageActivityData_messenger_avatarBuilder();

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

class _$GMessageActivityData extends GMessageActivityData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i1.GActivityType? type;
  @override
  final String? message;
  @override
  final int replyCount;
  @override
  final bool? isPrivate;
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
  final int? userId;
  @override
  final GMessageActivityData_messenger? messenger;

  factory _$GMessageActivityData(
          [void Function(GMessageActivityDataBuilder)? updates]) =>
      (new GMessageActivityDataBuilder()..update(updates))._build();

  _$GMessageActivityData._(
      {required this.G__typename,
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
      this.messenger})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMessageActivityData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GMessageActivityData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        replyCount, r'GMessageActivityData', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GMessageActivityData', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GMessageActivityData', 'createdAt');
  }

  @override
  GMessageActivityData rebuild(
          void Function(GMessageActivityDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessageActivityDataBuilder toBuilder() =>
      new GMessageActivityDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessageActivityData &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        message == other.message &&
        replyCount == other.replyCount &&
        isPrivate == other.isPrivate &&
        isLocked == other.isLocked &&
        isSubscribed == other.isSubscribed &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount &&
        createdAt == other.createdAt &&
        userId == other.userId &&
        messenger == other.messenger;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, replyCount.hashCode);
    _$hash = $jc(_$hash, isPrivate.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jc(_$hash, isSubscribed.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, messenger.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMessageActivityData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('message', message)
          ..add('replyCount', replyCount)
          ..add('isPrivate', isPrivate)
          ..add('isLocked', isLocked)
          ..add('isSubscribed', isSubscribed)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount)
          ..add('createdAt', createdAt)
          ..add('userId', userId)
          ..add('messenger', messenger))
        .toString();
  }
}

class GMessageActivityDataBuilder
    implements Builder<GMessageActivityData, GMessageActivityDataBuilder> {
  _$GMessageActivityData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i1.GActivityType? _type;
  _i1.GActivityType? get type => _$this._type;
  set type(_i1.GActivityType? type) => _$this._type = type;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _replyCount;
  int? get replyCount => _$this._replyCount;
  set replyCount(int? replyCount) => _$this._replyCount = replyCount;

  bool? _isPrivate;
  bool? get isPrivate => _$this._isPrivate;
  set isPrivate(bool? isPrivate) => _$this._isPrivate = isPrivate;

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

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  GMessageActivityData_messengerBuilder? _messenger;
  GMessageActivityData_messengerBuilder get messenger =>
      _$this._messenger ??= new GMessageActivityData_messengerBuilder();
  set messenger(GMessageActivityData_messengerBuilder? messenger) =>
      _$this._messenger = messenger;

  GMessageActivityDataBuilder() {
    GMessageActivityData._initializeBuilder(this);
  }

  GMessageActivityDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _message = $v.message;
      _replyCount = $v.replyCount;
      _isPrivate = $v.isPrivate;
      _isLocked = $v.isLocked;
      _isSubscribed = $v.isSubscribed;
      _isLiked = $v.isLiked;
      _likeCount = $v.likeCount;
      _createdAt = $v.createdAt;
      _userId = $v.userId;
      _messenger = $v.messenger?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMessageActivityData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessageActivityData;
  }

  @override
  void update(void Function(GMessageActivityDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMessageActivityData build() => _build();

  _$GMessageActivityData _build() {
    _$GMessageActivityData _$result;
    try {
      _$result = _$v ??
          new _$GMessageActivityData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMessageActivityData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMessageActivityData', 'id'),
              type: type,
              message: message,
              replyCount: BuiltValueNullFieldError.checkNotNull(
                  replyCount, r'GMessageActivityData', 'replyCount'),
              isPrivate: isPrivate,
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(
                  likeCount, r'GMessageActivityData', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GMessageActivityData', 'createdAt'),
              userId: userId,
              messenger: _messenger?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messenger';
        _messenger?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMessageActivityData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMessageActivityData_messenger extends GMessageActivityData_messenger {
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
  final GMessageActivityData_messenger_avatar? avatar;

  factory _$GMessageActivityData_messenger(
          [void Function(GMessageActivityData_messengerBuilder)? updates]) =>
      (new GMessageActivityData_messengerBuilder()..update(updates))._build();

  _$GMessageActivityData_messenger._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMessageActivityData_messenger', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMessageActivityData_messenger', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GMessageActivityData_messenger', 'name');
  }

  @override
  GMessageActivityData_messenger rebuild(
          void Function(GMessageActivityData_messengerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessageActivityData_messengerBuilder toBuilder() =>
      new GMessageActivityData_messengerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessageActivityData_messenger &&
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
    return (newBuiltValueToStringHelper(r'GMessageActivityData_messenger')
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

class GMessageActivityData_messengerBuilder
    implements
        Builder<GMessageActivityData_messenger,
            GMessageActivityData_messengerBuilder> {
  _$GMessageActivityData_messenger? _$v;

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

  GMessageActivityData_messenger_avatarBuilder? _avatar;
  GMessageActivityData_messenger_avatarBuilder get avatar =>
      _$this._avatar ??= new GMessageActivityData_messenger_avatarBuilder();
  set avatar(GMessageActivityData_messenger_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GMessageActivityData_messengerBuilder() {
    GMessageActivityData_messenger._initializeBuilder(this);
  }

  GMessageActivityData_messengerBuilder get _$this {
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
  void replace(GMessageActivityData_messenger other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessageActivityData_messenger;
  }

  @override
  void update(void Function(GMessageActivityData_messengerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMessageActivityData_messenger build() => _build();

  _$GMessageActivityData_messenger _build() {
    _$GMessageActivityData_messenger _$result;
    try {
      _$result = _$v ??
          new _$GMessageActivityData_messenger._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMessageActivityData_messenger', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMessageActivityData_messenger', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GMessageActivityData_messenger', 'name'),
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
            r'GMessageActivityData_messenger', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMessageActivityData_messenger_avatar
    extends GMessageActivityData_messenger_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GMessageActivityData_messenger_avatar(
          [void Function(GMessageActivityData_messenger_avatarBuilder)?
              updates]) =>
      (new GMessageActivityData_messenger_avatarBuilder()..update(updates))
          ._build();

  _$GMessageActivityData_messenger_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMessageActivityData_messenger_avatar', 'G__typename');
  }

  @override
  GMessageActivityData_messenger_avatar rebuild(
          void Function(GMessageActivityData_messenger_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessageActivityData_messenger_avatarBuilder toBuilder() =>
      new GMessageActivityData_messenger_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessageActivityData_messenger_avatar &&
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
            r'GMessageActivityData_messenger_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GMessageActivityData_messenger_avatarBuilder
    implements
        Builder<GMessageActivityData_messenger_avatar,
            GMessageActivityData_messenger_avatarBuilder> {
  _$GMessageActivityData_messenger_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GMessageActivityData_messenger_avatarBuilder() {
    GMessageActivityData_messenger_avatar._initializeBuilder(this);
  }

  GMessageActivityData_messenger_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMessageActivityData_messenger_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessageActivityData_messenger_avatar;
  }

  @override
  void update(
      void Function(GMessageActivityData_messenger_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMessageActivityData_messenger_avatar build() => _build();

  _$GMessageActivityData_messenger_avatar _build() {
    final _$result = _$v ??
        new _$GMessageActivityData_messenger_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMessageActivityData_messenger_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
