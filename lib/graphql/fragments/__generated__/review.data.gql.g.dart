// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReviewFragmentData> _$gReviewFragmentDataSerializer =
    new _$GReviewFragmentDataSerializer();
Serializer<GReviewFragmentData_media> _$gReviewFragmentDataMediaSerializer =
    new _$GReviewFragmentData_mediaSerializer();
Serializer<GReviewFragmentData_media_title>
    _$gReviewFragmentDataMediaTitleSerializer =
    new _$GReviewFragmentData_media_titleSerializer();
Serializer<GReviewFragmentData_user> _$gReviewFragmentDataUserSerializer =
    new _$GReviewFragmentData_userSerializer();
Serializer<GReviewFragmentData_user_avatar>
    _$gReviewFragmentDataUserAvatarSerializer =
    new _$GReviewFragmentData_user_avatarSerializer();

class _$GReviewFragmentDataSerializer
    implements StructuredSerializer<GReviewFragmentData> {
  @override
  final Iterable<Type> types = const [
    GReviewFragmentData,
    _$GReviewFragmentData
  ];
  @override
  final String wireName = 'GReviewFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ratingAmount;
    if (value != null) {
      result
        ..add('ratingAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.summary;
    if (value != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReviewFragmentData_media)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReviewFragmentData_user)));
    }
    return result;
  }

  @override
  GReviewFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewFragmentDataBuilder();

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
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ratingAmount':
          result.ratingAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GReviewFragmentData_media))!
              as GReviewFragmentData_media);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GReviewFragmentData_user))!
              as GReviewFragmentData_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewFragmentData_mediaSerializer
    implements StructuredSerializer<GReviewFragmentData_media> {
  @override
  final Iterable<Type> types = const [
    GReviewFragmentData_media,
    _$GReviewFragmentData_media
  ];
  @override
  final String wireName = 'GReviewFragmentData_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewFragmentData_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReviewFragmentData_media_title)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaType)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GReviewFragmentData_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewFragmentData_mediaBuilder();

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
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReviewFragmentData_media_title))!
              as GReviewFragmentData_media_title);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i1.GMediaType)) as _i1.GMediaType?;
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewFragmentData_media_titleSerializer
    implements StructuredSerializer<GReviewFragmentData_media_title> {
  @override
  final Iterable<Type> types = const [
    GReviewFragmentData_media_title,
    _$GReviewFragmentData_media_title
  ];
  @override
  final String wireName = 'GReviewFragmentData_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewFragmentData_media_title object,
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
  GReviewFragmentData_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewFragmentData_media_titleBuilder();

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

class _$GReviewFragmentData_userSerializer
    implements StructuredSerializer<GReviewFragmentData_user> {
  @override
  final Iterable<Type> types = const [
    GReviewFragmentData_user,
    _$GReviewFragmentData_user
  ];
  @override
  final String wireName = 'GReviewFragmentData_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewFragmentData_user object,
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
            specifiedType: const FullType(GReviewFragmentData_user_avatar)));
    }
    return result;
  }

  @override
  GReviewFragmentData_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewFragmentData_userBuilder();

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
                      const FullType(GReviewFragmentData_user_avatar))!
              as GReviewFragmentData_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewFragmentData_user_avatarSerializer
    implements StructuredSerializer<GReviewFragmentData_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GReviewFragmentData_user_avatar,
    _$GReviewFragmentData_user_avatar
  ];
  @override
  final String wireName = 'GReviewFragmentData_user_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewFragmentData_user_avatar object,
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
  GReviewFragmentData_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewFragmentData_user_avatarBuilder();

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

class _$GReviewFragmentData extends GReviewFragmentData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? rating;
  @override
  final int? ratingAmount;
  @override
  final String? summary;
  @override
  final GReviewFragmentData_media? media;
  @override
  final GReviewFragmentData_user? user;

  factory _$GReviewFragmentData(
          [void Function(GReviewFragmentDataBuilder)? updates]) =>
      (new GReviewFragmentDataBuilder()..update(updates))._build();

  _$GReviewFragmentData._(
      {required this.G__typename,
      required this.id,
      this.rating,
      this.ratingAmount,
      this.summary,
      this.media,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GReviewFragmentData', 'id');
  }

  @override
  GReviewFragmentData rebuild(
          void Function(GReviewFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewFragmentDataBuilder toBuilder() =>
      new GReviewFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        rating == other.rating &&
        ratingAmount == other.ratingAmount &&
        summary == other.summary &&
        media == other.media &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, ratingAmount.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('rating', rating)
          ..add('ratingAmount', ratingAmount)
          ..add('summary', summary)
          ..add('media', media)
          ..add('user', user))
        .toString();
  }
}

class GReviewFragmentDataBuilder
    implements Builder<GReviewFragmentData, GReviewFragmentDataBuilder> {
  _$GReviewFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  int? _ratingAmount;
  int? get ratingAmount => _$this._ratingAmount;
  set ratingAmount(int? ratingAmount) => _$this._ratingAmount = ratingAmount;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  GReviewFragmentData_mediaBuilder? _media;
  GReviewFragmentData_mediaBuilder get media =>
      _$this._media ??= new GReviewFragmentData_mediaBuilder();
  set media(GReviewFragmentData_mediaBuilder? media) => _$this._media = media;

  GReviewFragmentData_userBuilder? _user;
  GReviewFragmentData_userBuilder get user =>
      _$this._user ??= new GReviewFragmentData_userBuilder();
  set user(GReviewFragmentData_userBuilder? user) => _$this._user = user;

  GReviewFragmentDataBuilder() {
    GReviewFragmentData._initializeBuilder(this);
  }

  GReviewFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _rating = $v.rating;
      _ratingAmount = $v.ratingAmount;
      _summary = $v.summary;
      _media = $v.media?.toBuilder();
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewFragmentData;
  }

  @override
  void update(void Function(GReviewFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewFragmentData build() => _build();

  _$GReviewFragmentData _build() {
    _$GReviewFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GReviewFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReviewFragmentData', 'id'),
              rating: rating,
              ratingAmount: ratingAmount,
              summary: summary,
              media: _media?.build(),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewFragmentData_media extends GReviewFragmentData_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GReviewFragmentData_media_title? title;
  @override
  final _i1.GMediaType? type;
  @override
  final String? bannerImage;

  factory _$GReviewFragmentData_media(
          [void Function(GReviewFragmentData_mediaBuilder)? updates]) =>
      (new GReviewFragmentData_mediaBuilder()..update(updates))._build();

  _$GReviewFragmentData_media._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.type,
      this.bannerImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewFragmentData_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GReviewFragmentData_media', 'id');
  }

  @override
  GReviewFragmentData_media rebuild(
          void Function(GReviewFragmentData_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewFragmentData_mediaBuilder toBuilder() =>
      new GReviewFragmentData_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewFragmentData_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        type == other.type &&
        bannerImage == other.bannerImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReviewFragmentData_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('type', type)
          ..add('bannerImage', bannerImage))
        .toString();
  }
}

class GReviewFragmentData_mediaBuilder
    implements
        Builder<GReviewFragmentData_media, GReviewFragmentData_mediaBuilder> {
  _$GReviewFragmentData_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GReviewFragmentData_media_titleBuilder? _title;
  GReviewFragmentData_media_titleBuilder get title =>
      _$this._title ??= new GReviewFragmentData_media_titleBuilder();
  set title(GReviewFragmentData_media_titleBuilder? title) =>
      _$this._title = title;

  _i1.GMediaType? _type;
  _i1.GMediaType? get type => _$this._type;
  set type(_i1.GMediaType? type) => _$this._type = type;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  GReviewFragmentData_mediaBuilder() {
    GReviewFragmentData_media._initializeBuilder(this);
  }

  GReviewFragmentData_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _type = $v.type;
      _bannerImage = $v.bannerImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewFragmentData_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewFragmentData_media;
  }

  @override
  void update(void Function(GReviewFragmentData_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewFragmentData_media build() => _build();

  _$GReviewFragmentData_media _build() {
    _$GReviewFragmentData_media _$result;
    try {
      _$result = _$v ??
          new _$GReviewFragmentData_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewFragmentData_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReviewFragmentData_media', 'id'),
              title: _title?.build(),
              type: type,
              bannerImage: bannerImage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewFragmentData_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewFragmentData_media_title
    extends GReviewFragmentData_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GReviewFragmentData_media_title(
          [void Function(GReviewFragmentData_media_titleBuilder)? updates]) =>
      (new GReviewFragmentData_media_titleBuilder()..update(updates))._build();

  _$GReviewFragmentData_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewFragmentData_media_title', 'G__typename');
  }

  @override
  GReviewFragmentData_media_title rebuild(
          void Function(GReviewFragmentData_media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewFragmentData_media_titleBuilder toBuilder() =>
      new GReviewFragmentData_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewFragmentData_media_title &&
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
    return (newBuiltValueToStringHelper(r'GReviewFragmentData_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GReviewFragmentData_media_titleBuilder
    implements
        Builder<GReviewFragmentData_media_title,
            GReviewFragmentData_media_titleBuilder> {
  _$GReviewFragmentData_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GReviewFragmentData_media_titleBuilder() {
    GReviewFragmentData_media_title._initializeBuilder(this);
  }

  GReviewFragmentData_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewFragmentData_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewFragmentData_media_title;
  }

  @override
  void update(void Function(GReviewFragmentData_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewFragmentData_media_title build() => _build();

  _$GReviewFragmentData_media_title _build() {
    final _$result = _$v ??
        new _$GReviewFragmentData_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GReviewFragmentData_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GReviewFragmentData_user extends GReviewFragmentData_user {
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
  final GReviewFragmentData_user_avatar? avatar;

  factory _$GReviewFragmentData_user(
          [void Function(GReviewFragmentData_userBuilder)? updates]) =>
      (new GReviewFragmentData_userBuilder()..update(updates))._build();

  _$GReviewFragmentData_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewFragmentData_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GReviewFragmentData_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GReviewFragmentData_user', 'name');
  }

  @override
  GReviewFragmentData_user rebuild(
          void Function(GReviewFragmentData_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewFragmentData_userBuilder toBuilder() =>
      new GReviewFragmentData_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewFragmentData_user &&
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
    return (newBuiltValueToStringHelper(r'GReviewFragmentData_user')
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

class GReviewFragmentData_userBuilder
    implements
        Builder<GReviewFragmentData_user, GReviewFragmentData_userBuilder> {
  _$GReviewFragmentData_user? _$v;

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

  GReviewFragmentData_user_avatarBuilder? _avatar;
  GReviewFragmentData_user_avatarBuilder get avatar =>
      _$this._avatar ??= new GReviewFragmentData_user_avatarBuilder();
  set avatar(GReviewFragmentData_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GReviewFragmentData_userBuilder() {
    GReviewFragmentData_user._initializeBuilder(this);
  }

  GReviewFragmentData_userBuilder get _$this {
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
  void replace(GReviewFragmentData_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewFragmentData_user;
  }

  @override
  void update(void Function(GReviewFragmentData_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewFragmentData_user build() => _build();

  _$GReviewFragmentData_user _build() {
    _$GReviewFragmentData_user _$result;
    try {
      _$result = _$v ??
          new _$GReviewFragmentData_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewFragmentData_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReviewFragmentData_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GReviewFragmentData_user', 'name'),
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
            r'GReviewFragmentData_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewFragmentData_user_avatar
    extends GReviewFragmentData_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GReviewFragmentData_user_avatar(
          [void Function(GReviewFragmentData_user_avatarBuilder)? updates]) =>
      (new GReviewFragmentData_user_avatarBuilder()..update(updates))._build();

  _$GReviewFragmentData_user_avatar._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewFragmentData_user_avatar', 'G__typename');
  }

  @override
  GReviewFragmentData_user_avatar rebuild(
          void Function(GReviewFragmentData_user_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewFragmentData_user_avatarBuilder toBuilder() =>
      new GReviewFragmentData_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewFragmentData_user_avatar &&
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
    return (newBuiltValueToStringHelper(r'GReviewFragmentData_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GReviewFragmentData_user_avatarBuilder
    implements
        Builder<GReviewFragmentData_user_avatar,
            GReviewFragmentData_user_avatarBuilder> {
  _$GReviewFragmentData_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GReviewFragmentData_user_avatarBuilder() {
    GReviewFragmentData_user_avatar._initializeBuilder(this);
  }

  GReviewFragmentData_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewFragmentData_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewFragmentData_user_avatar;
  }

  @override
  void update(void Function(GReviewFragmentData_user_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewFragmentData_user_avatar build() => _build();

  _$GReviewFragmentData_user_avatar _build() {
    final _$result = _$v ??
        new _$GReviewFragmentData_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GReviewFragmentData_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
