// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_activity.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GListActivityData> _$gListActivityDataSerializer =
    new _$GListActivityDataSerializer();
Serializer<GListActivityData_user> _$gListActivityDataUserSerializer =
    new _$GListActivityData_userSerializer();
Serializer<GListActivityData_user_avatar>
    _$gListActivityDataUserAvatarSerializer =
    new _$GListActivityData_user_avatarSerializer();
Serializer<GListActivityData_media> _$gListActivityDataMediaSerializer =
    new _$GListActivityData_mediaSerializer();
Serializer<GListActivityData_media_title>
    _$gListActivityDataMediaTitleSerializer =
    new _$GListActivityData_media_titleSerializer();
Serializer<GListActivityData_media_coverImage>
    _$gListActivityDataMediaCoverImageSerializer =
    new _$GListActivityData_media_coverImageSerializer();

class _$GListActivityDataSerializer
    implements StructuredSerializer<GListActivityData> {
  @override
  final Iterable<Type> types = const [GListActivityData, _$GListActivityData];
  @override
  final String wireName = 'GListActivityData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GListActivityData object,
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
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.progress;
    if (value != null) {
      result
        ..add('progress')
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
            specifiedType: const FullType(GListActivityData_user)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GListActivityData_media)));
    }
    return result;
  }

  @override
  GListActivityData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListActivityDataBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'replyCount':
          result.replyCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
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
                  specifiedType: const FullType(GListActivityData_user))!
              as GListActivityData_user);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GListActivityData_media))!
              as GListActivityData_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GListActivityData_userSerializer
    implements StructuredSerializer<GListActivityData_user> {
  @override
  final Iterable<Type> types = const [
    GListActivityData_user,
    _$GListActivityData_user
  ];
  @override
  final String wireName = 'GListActivityData_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListActivityData_user object,
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
            specifiedType: const FullType(GListActivityData_user_avatar)));
    }
    return result;
  }

  @override
  GListActivityData_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListActivityData_userBuilder();

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
                  specifiedType: const FullType(GListActivityData_user_avatar))!
              as GListActivityData_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GListActivityData_user_avatarSerializer
    implements StructuredSerializer<GListActivityData_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GListActivityData_user_avatar,
    _$GListActivityData_user_avatar
  ];
  @override
  final String wireName = 'GListActivityData_user_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListActivityData_user_avatar object,
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
  GListActivityData_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListActivityData_user_avatarBuilder();

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

class _$GListActivityData_mediaSerializer
    implements StructuredSerializer<GListActivityData_media> {
  @override
  final Iterable<Type> types = const [
    GListActivityData_media,
    _$GListActivityData_media
  ];
  @override
  final String wireName = 'GListActivityData_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListActivityData_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaType)));
    }
    value = object.isAdult;
    if (value != null) {
      result
        ..add('isAdult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaFormat)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GListActivityData_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GListActivityData_media_coverImage)));
    }
    return result;
  }

  @override
  GListActivityData_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListActivityData_mediaBuilder();

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
              specifiedType: const FullType(_i1.GMediaType)) as _i1.GMediaType?;
          break;
        case 'isAdult':
          result.isAdult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'format':
          result.format = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMediaFormat))
              as _i1.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GListActivityData_media_title))!
              as GListActivityData_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GListActivityData_media_coverImage))!
              as GListActivityData_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GListActivityData_media_titleSerializer
    implements StructuredSerializer<GListActivityData_media_title> {
  @override
  final Iterable<Type> types = const [
    GListActivityData_media_title,
    _$GListActivityData_media_title
  ];
  @override
  final String wireName = 'GListActivityData_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListActivityData_media_title object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userPreferred;
    if (value != null) {
      result
        ..add('userPreferred')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GListActivityData_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListActivityData_media_titleBuilder();

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
        case 'userPreferred':
          result.userPreferred = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GListActivityData_media_coverImageSerializer
    implements StructuredSerializer<GListActivityData_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GListActivityData_media_coverImage,
    _$GListActivityData_media_coverImage
  ];
  @override
  final String wireName = 'GListActivityData_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GListActivityData_media_coverImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extraLarge;
    if (value != null) {
      result
        ..add('extraLarge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GListActivityData_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListActivityData_media_coverImageBuilder();

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
        case 'extraLarge':
          result.extraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GListActivityData extends GListActivityData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? userId;
  @override
  final _i1.GActivityType? type;
  @override
  final String? status;
  @override
  final String? progress;
  @override
  final int replyCount;
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
  final GListActivityData_user? user;
  @override
  final GListActivityData_media? media;

  factory _$GListActivityData(
          [void Function(GListActivityDataBuilder)? updates]) =>
      (new GListActivityDataBuilder()..update(updates))._build();

  _$GListActivityData._(
      {required this.G__typename,
      required this.id,
      this.userId,
      this.type,
      this.status,
      this.progress,
      required this.replyCount,
      this.isLocked,
      this.isSubscribed,
      this.isLiked,
      required this.likeCount,
      required this.createdAt,
      this.user,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListActivityData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GListActivityData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        replyCount, r'GListActivityData', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GListActivityData', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GListActivityData', 'createdAt');
  }

  @override
  GListActivityData rebuild(void Function(GListActivityDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListActivityDataBuilder toBuilder() =>
      new GListActivityDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListActivityData &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        type == other.type &&
        status == other.status &&
        progress == other.progress &&
        replyCount == other.replyCount &&
        isLocked == other.isLocked &&
        isSubscribed == other.isSubscribed &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount &&
        createdAt == other.createdAt &&
        user == other.user &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, replyCount.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jc(_$hash, isSubscribed.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GListActivityData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('type', type)
          ..add('status', status)
          ..add('progress', progress)
          ..add('replyCount', replyCount)
          ..add('isLocked', isLocked)
          ..add('isSubscribed', isSubscribed)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount)
          ..add('createdAt', createdAt)
          ..add('user', user)
          ..add('media', media))
        .toString();
  }
}

class GListActivityDataBuilder
    implements Builder<GListActivityData, GListActivityDataBuilder> {
  _$GListActivityData? _$v;

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

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _progress;
  String? get progress => _$this._progress;
  set progress(String? progress) => _$this._progress = progress;

  int? _replyCount;
  int? get replyCount => _$this._replyCount;
  set replyCount(int? replyCount) => _$this._replyCount = replyCount;

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

  GListActivityData_userBuilder? _user;
  GListActivityData_userBuilder get user =>
      _$this._user ??= new GListActivityData_userBuilder();
  set user(GListActivityData_userBuilder? user) => _$this._user = user;

  GListActivityData_mediaBuilder? _media;
  GListActivityData_mediaBuilder get media =>
      _$this._media ??= new GListActivityData_mediaBuilder();
  set media(GListActivityData_mediaBuilder? media) => _$this._media = media;

  GListActivityDataBuilder() {
    GListActivityData._initializeBuilder(this);
  }

  GListActivityDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userId = $v.userId;
      _type = $v.type;
      _status = $v.status;
      _progress = $v.progress;
      _replyCount = $v.replyCount;
      _isLocked = $v.isLocked;
      _isSubscribed = $v.isSubscribed;
      _isLiked = $v.isLiked;
      _likeCount = $v.likeCount;
      _createdAt = $v.createdAt;
      _user = $v.user?.toBuilder();
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListActivityData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListActivityData;
  }

  @override
  void update(void Function(GListActivityDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListActivityData build() => _build();

  _$GListActivityData _build() {
    _$GListActivityData _$result;
    try {
      _$result = _$v ??
          new _$GListActivityData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GListActivityData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GListActivityData', 'id'),
              userId: userId,
              type: type,
              status: status,
              progress: progress,
              replyCount: BuiltValueNullFieldError.checkNotNull(
                  replyCount, r'GListActivityData', 'replyCount'),
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(
                  likeCount, r'GListActivityData', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GListActivityData', 'createdAt'),
              user: _user?.build(),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GListActivityData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListActivityData_user extends GListActivityData_user {
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
  final GListActivityData_user_avatar? avatar;

  factory _$GListActivityData_user(
          [void Function(GListActivityData_userBuilder)? updates]) =>
      (new GListActivityData_userBuilder()..update(updates))._build();

  _$GListActivityData_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListActivityData_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GListActivityData_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GListActivityData_user', 'name');
  }

  @override
  GListActivityData_user rebuild(
          void Function(GListActivityData_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListActivityData_userBuilder toBuilder() =>
      new GListActivityData_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListActivityData_user &&
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
    return (newBuiltValueToStringHelper(r'GListActivityData_user')
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

class GListActivityData_userBuilder
    implements Builder<GListActivityData_user, GListActivityData_userBuilder> {
  _$GListActivityData_user? _$v;

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

  GListActivityData_user_avatarBuilder? _avatar;
  GListActivityData_user_avatarBuilder get avatar =>
      _$this._avatar ??= new GListActivityData_user_avatarBuilder();
  set avatar(GListActivityData_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GListActivityData_userBuilder() {
    GListActivityData_user._initializeBuilder(this);
  }

  GListActivityData_userBuilder get _$this {
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
  void replace(GListActivityData_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListActivityData_user;
  }

  @override
  void update(void Function(GListActivityData_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListActivityData_user build() => _build();

  _$GListActivityData_user _build() {
    _$GListActivityData_user _$result;
    try {
      _$result = _$v ??
          new _$GListActivityData_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GListActivityData_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GListActivityData_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GListActivityData_user', 'name'),
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
            r'GListActivityData_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListActivityData_user_avatar extends GListActivityData_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GListActivityData_user_avatar(
          [void Function(GListActivityData_user_avatarBuilder)? updates]) =>
      (new GListActivityData_user_avatarBuilder()..update(updates))._build();

  _$GListActivityData_user_avatar._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListActivityData_user_avatar', 'G__typename');
  }

  @override
  GListActivityData_user_avatar rebuild(
          void Function(GListActivityData_user_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListActivityData_user_avatarBuilder toBuilder() =>
      new GListActivityData_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListActivityData_user_avatar &&
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
    return (newBuiltValueToStringHelper(r'GListActivityData_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GListActivityData_user_avatarBuilder
    implements
        Builder<GListActivityData_user_avatar,
            GListActivityData_user_avatarBuilder> {
  _$GListActivityData_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GListActivityData_user_avatarBuilder() {
    GListActivityData_user_avatar._initializeBuilder(this);
  }

  GListActivityData_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListActivityData_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListActivityData_user_avatar;
  }

  @override
  void update(void Function(GListActivityData_user_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListActivityData_user_avatar build() => _build();

  _$GListActivityData_user_avatar _build() {
    final _$result = _$v ??
        new _$GListActivityData_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GListActivityData_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GListActivityData_media extends GListActivityData_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i1.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i1.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GListActivityData_media_title? title;
  @override
  final GListActivityData_media_coverImage? coverImage;

  factory _$GListActivityData_media(
          [void Function(GListActivityData_mediaBuilder)? updates]) =>
      (new GListActivityData_mediaBuilder()..update(updates))._build();

  _$GListActivityData_media._(
      {required this.G__typename,
      required this.id,
      this.type,
      this.isAdult,
      this.genres,
      this.format,
      this.description,
      this.title,
      this.coverImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListActivityData_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GListActivityData_media', 'id');
  }

  @override
  GListActivityData_media rebuild(
          void Function(GListActivityData_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListActivityData_mediaBuilder toBuilder() =>
      new GListActivityData_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListActivityData_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        isAdult == other.isAdult &&
        genres == other.genres &&
        format == other.format &&
        description == other.description &&
        title == other.title &&
        coverImage == other.coverImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, isAdult.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GListActivityData_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('isAdult', isAdult)
          ..add('genres', genres)
          ..add('format', format)
          ..add('description', description)
          ..add('title', title)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GListActivityData_mediaBuilder
    implements
        Builder<GListActivityData_media, GListActivityData_mediaBuilder> {
  _$GListActivityData_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i1.GMediaType? _type;
  _i1.GMediaType? get type => _$this._type;
  set type(_i1.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i1.GMediaFormat? _format;
  _i1.GMediaFormat? get format => _$this._format;
  set format(_i1.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GListActivityData_media_titleBuilder? _title;
  GListActivityData_media_titleBuilder get title =>
      _$this._title ??= new GListActivityData_media_titleBuilder();
  set title(GListActivityData_media_titleBuilder? title) =>
      _$this._title = title;

  GListActivityData_media_coverImageBuilder? _coverImage;
  GListActivityData_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??= new GListActivityData_media_coverImageBuilder();
  set coverImage(GListActivityData_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GListActivityData_mediaBuilder() {
    GListActivityData_media._initializeBuilder(this);
  }

  GListActivityData_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _isAdult = $v.isAdult;
      _genres = $v.genres?.toBuilder();
      _format = $v.format;
      _description = $v.description;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListActivityData_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListActivityData_media;
  }

  @override
  void update(void Function(GListActivityData_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListActivityData_media build() => _build();

  _$GListActivityData_media _build() {
    _$GListActivityData_media _$result;
    try {
      _$result = _$v ??
          new _$GListActivityData_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GListActivityData_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GListActivityData_media', 'id'),
              type: type,
              isAdult: isAdult,
              genres: _genres?.build(),
              format: format,
              description: description,
              title: _title?.build(),
              coverImage: _coverImage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GListActivityData_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GListActivityData_media_title extends GListActivityData_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GListActivityData_media_title(
          [void Function(GListActivityData_media_titleBuilder)? updates]) =>
      (new GListActivityData_media_titleBuilder()..update(updates))._build();

  _$GListActivityData_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListActivityData_media_title', 'G__typename');
  }

  @override
  GListActivityData_media_title rebuild(
          void Function(GListActivityData_media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListActivityData_media_titleBuilder toBuilder() =>
      new GListActivityData_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListActivityData_media_title &&
        G__typename == other.G__typename &&
        userPreferred == other.userPreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GListActivityData_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GListActivityData_media_titleBuilder
    implements
        Builder<GListActivityData_media_title,
            GListActivityData_media_titleBuilder> {
  _$GListActivityData_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GListActivityData_media_titleBuilder() {
    GListActivityData_media_title._initializeBuilder(this);
  }

  GListActivityData_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListActivityData_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListActivityData_media_title;
  }

  @override
  void update(void Function(GListActivityData_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListActivityData_media_title build() => _build();

  _$GListActivityData_media_title _build() {
    final _$result = _$v ??
        new _$GListActivityData_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GListActivityData_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GListActivityData_media_coverImage
    extends GListActivityData_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GListActivityData_media_coverImage(
          [void Function(GListActivityData_media_coverImageBuilder)?
              updates]) =>
      (new GListActivityData_media_coverImageBuilder()..update(updates))
          ._build();

  _$GListActivityData_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GListActivityData_media_coverImage', 'G__typename');
  }

  @override
  GListActivityData_media_coverImage rebuild(
          void Function(GListActivityData_media_coverImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListActivityData_media_coverImageBuilder toBuilder() =>
      new GListActivityData_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListActivityData_media_coverImage &&
        G__typename == other.G__typename &&
        extraLarge == other.extraLarge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, extraLarge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GListActivityData_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GListActivityData_media_coverImageBuilder
    implements
        Builder<GListActivityData_media_coverImage,
            GListActivityData_media_coverImageBuilder> {
  _$GListActivityData_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GListActivityData_media_coverImageBuilder() {
    GListActivityData_media_coverImage._initializeBuilder(this);
  }

  GListActivityData_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListActivityData_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListActivityData_media_coverImage;
  }

  @override
  void update(
      void Function(GListActivityData_media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListActivityData_media_coverImage build() => _build();

  _$GListActivityData_media_coverImage _build() {
    final _$result = _$v ??
        new _$GListActivityData_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GListActivityData_media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
