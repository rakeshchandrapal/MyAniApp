// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserReviewsData> _$gUserReviewsDataSerializer =
    new _$GUserReviewsDataSerializer();
Serializer<GUserReviewsData_Page> _$gUserReviewsDataPageSerializer =
    new _$GUserReviewsData_PageSerializer();
Serializer<GUserReviewsData_Page_pageInfo>
    _$gUserReviewsDataPagePageInfoSerializer =
    new _$GUserReviewsData_Page_pageInfoSerializer();
Serializer<GUserReviewsData_Page_reviews>
    _$gUserReviewsDataPageReviewsSerializer =
    new _$GUserReviewsData_Page_reviewsSerializer();
Serializer<GUserReviewsData_Page_reviews_media>
    _$gUserReviewsDataPageReviewsMediaSerializer =
    new _$GUserReviewsData_Page_reviews_mediaSerializer();
Serializer<GUserReviewsData_Page_reviews_media_title>
    _$gUserReviewsDataPageReviewsMediaTitleSerializer =
    new _$GUserReviewsData_Page_reviews_media_titleSerializer();
Serializer<GUserReviewsData_Page_reviews_user>
    _$gUserReviewsDataPageReviewsUserSerializer =
    new _$GUserReviewsData_Page_reviews_userSerializer();
Serializer<GUserReviewsData_Page_reviews_user_avatar>
    _$gUserReviewsDataPageReviewsUserAvatarSerializer =
    new _$GUserReviewsData_Page_reviews_user_avatarSerializer();

class _$GUserReviewsDataSerializer
    implements StructuredSerializer<GUserReviewsData> {
  @override
  final Iterable<Type> types = const [GUserReviewsData, _$GUserReviewsData];
  @override
  final String wireName = 'GUserReviewsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserReviewsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Page;
    if (value != null) {
      result
        ..add('Page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserReviewsData_Page)));
    }
    return result;
  }

  @override
  GUserReviewsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserReviewsDataBuilder();

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
        case 'Page':
          result.Page.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserReviewsData_Page))!
              as GUserReviewsData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserReviewsData_PageSerializer
    implements StructuredSerializer<GUserReviewsData_Page> {
  @override
  final Iterable<Type> types = const [
    GUserReviewsData_Page,
    _$GUserReviewsData_Page
  ];
  @override
  final String wireName = 'GUserReviewsData_Page';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserReviewsData_Page object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pageInfo;
    if (value != null) {
      result
        ..add('pageInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserReviewsData_Page_pageInfo)));
    }
    value = object.reviews;
    if (value != null) {
      result
        ..add('reviews')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GUserReviewsData_Page_reviews)
            ])));
    }
    return result;
  }

  @override
  GUserReviewsData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserReviewsData_PageBuilder();

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
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserReviewsData_Page_pageInfo))!
              as GUserReviewsData_Page_pageInfo);
          break;
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GUserReviewsData_Page_reviews)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserReviewsData_Page_pageInfoSerializer
    implements StructuredSerializer<GUserReviewsData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GUserReviewsData_Page_pageInfo,
    _$GUserReviewsData_Page_pageInfo
  ];
  @override
  final String wireName = 'GUserReviewsData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserReviewsData_Page_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasNextPage;
    if (value != null) {
      result
        ..add('hasNextPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUserReviewsData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserReviewsData_Page_pageInfoBuilder();

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
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserReviewsData_Page_reviewsSerializer
    implements StructuredSerializer<GUserReviewsData_Page_reviews> {
  @override
  final Iterable<Type> types = const [
    GUserReviewsData_Page_reviews,
    _$GUserReviewsData_Page_reviews
  ];
  @override
  final String wireName = 'GUserReviewsData_Page_reviews';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserReviewsData_Page_reviews object,
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
            specifiedType:
                const FullType(GUserReviewsData_Page_reviews_media)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserReviewsData_Page_reviews_user)));
    }
    return result;
  }

  @override
  GUserReviewsData_Page_reviews deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserReviewsData_Page_reviewsBuilder();

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
                  specifiedType:
                      const FullType(GUserReviewsData_Page_reviews_media))!
              as GUserReviewsData_Page_reviews_media);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserReviewsData_Page_reviews_user))!
              as GUserReviewsData_Page_reviews_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserReviewsData_Page_reviews_mediaSerializer
    implements StructuredSerializer<GUserReviewsData_Page_reviews_media> {
  @override
  final Iterable<Type> types = const [
    GUserReviewsData_Page_reviews_media,
    _$GUserReviewsData_Page_reviews_media
  ];
  @override
  final String wireName = 'GUserReviewsData_Page_reviews_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserReviewsData_Page_reviews_media object,
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
            specifiedType:
                const FullType(GUserReviewsData_Page_reviews_media_title)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i4.GMediaType)));
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
  GUserReviewsData_Page_reviews_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserReviewsData_Page_reviews_mediaBuilder();

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
                  specifiedType: const FullType(
                      GUserReviewsData_Page_reviews_media_title))!
              as GUserReviewsData_Page_reviews_media_title);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i4.GMediaType)) as _i4.GMediaType?;
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

class _$GUserReviewsData_Page_reviews_media_titleSerializer
    implements StructuredSerializer<GUserReviewsData_Page_reviews_media_title> {
  @override
  final Iterable<Type> types = const [
    GUserReviewsData_Page_reviews_media_title,
    _$GUserReviewsData_Page_reviews_media_title
  ];
  @override
  final String wireName = 'GUserReviewsData_Page_reviews_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserReviewsData_Page_reviews_media_title object,
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
  GUserReviewsData_Page_reviews_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserReviewsData_Page_reviews_media_titleBuilder();

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

class _$GUserReviewsData_Page_reviews_userSerializer
    implements StructuredSerializer<GUserReviewsData_Page_reviews_user> {
  @override
  final Iterable<Type> types = const [
    GUserReviewsData_Page_reviews_user,
    _$GUserReviewsData_Page_reviews_user
  ];
  @override
  final String wireName = 'GUserReviewsData_Page_reviews_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserReviewsData_Page_reviews_user object,
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
                const FullType(GUserReviewsData_Page_reviews_user_avatar)));
    }
    return result;
  }

  @override
  GUserReviewsData_Page_reviews_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserReviewsData_Page_reviews_userBuilder();

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
                  specifiedType: const FullType(
                      GUserReviewsData_Page_reviews_user_avatar))!
              as GUserReviewsData_Page_reviews_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserReviewsData_Page_reviews_user_avatarSerializer
    implements StructuredSerializer<GUserReviewsData_Page_reviews_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GUserReviewsData_Page_reviews_user_avatar,
    _$GUserReviewsData_Page_reviews_user_avatar
  ];
  @override
  final String wireName = 'GUserReviewsData_Page_reviews_user_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserReviewsData_Page_reviews_user_avatar object,
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
  GUserReviewsData_Page_reviews_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserReviewsData_Page_reviews_user_avatarBuilder();

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

class _$GUserReviewsData extends GUserReviewsData {
  @override
  final String G__typename;
  @override
  final GUserReviewsData_Page? Page;

  factory _$GUserReviewsData(
          [void Function(GUserReviewsDataBuilder)? updates]) =>
      (new GUserReviewsDataBuilder()..update(updates))._build();

  _$GUserReviewsData._({required this.G__typename, this.Page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserReviewsData', 'G__typename');
  }

  @override
  GUserReviewsData rebuild(void Function(GUserReviewsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserReviewsDataBuilder toBuilder() =>
      new GUserReviewsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserReviewsData &&
        G__typename == other.G__typename &&
        Page == other.Page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserReviewsData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GUserReviewsDataBuilder
    implements Builder<GUserReviewsData, GUserReviewsDataBuilder> {
  _$GUserReviewsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserReviewsData_PageBuilder? _Page;
  GUserReviewsData_PageBuilder get Page =>
      _$this._Page ??= new GUserReviewsData_PageBuilder();
  set Page(GUserReviewsData_PageBuilder? Page) => _$this._Page = Page;

  GUserReviewsDataBuilder() {
    GUserReviewsData._initializeBuilder(this);
  }

  GUserReviewsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserReviewsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserReviewsData;
  }

  @override
  void update(void Function(GUserReviewsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserReviewsData build() => _build();

  _$GUserReviewsData _build() {
    _$GUserReviewsData _$result;
    try {
      _$result = _$v ??
          new _$GUserReviewsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserReviewsData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserReviewsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserReviewsData_Page extends GUserReviewsData_Page {
  @override
  final String G__typename;
  @override
  final GUserReviewsData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GUserReviewsData_Page_reviews?>? reviews;

  factory _$GUserReviewsData_Page(
          [void Function(GUserReviewsData_PageBuilder)? updates]) =>
      (new GUserReviewsData_PageBuilder()..update(updates))._build();

  _$GUserReviewsData_Page._(
      {required this.G__typename, this.pageInfo, this.reviews})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserReviewsData_Page', 'G__typename');
  }

  @override
  GUserReviewsData_Page rebuild(
          void Function(GUserReviewsData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserReviewsData_PageBuilder toBuilder() =>
      new GUserReviewsData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserReviewsData_Page &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        reviews == other.reviews;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, reviews.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserReviewsData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('reviews', reviews))
        .toString();
  }
}

class GUserReviewsData_PageBuilder
    implements Builder<GUserReviewsData_Page, GUserReviewsData_PageBuilder> {
  _$GUserReviewsData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserReviewsData_Page_pageInfoBuilder? _pageInfo;
  GUserReviewsData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GUserReviewsData_Page_pageInfoBuilder();
  set pageInfo(GUserReviewsData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GUserReviewsData_Page_reviews?>? _reviews;
  ListBuilder<GUserReviewsData_Page_reviews?> get reviews =>
      _$this._reviews ??= new ListBuilder<GUserReviewsData_Page_reviews?>();
  set reviews(ListBuilder<GUserReviewsData_Page_reviews?>? reviews) =>
      _$this._reviews = reviews;

  GUserReviewsData_PageBuilder() {
    GUserReviewsData_Page._initializeBuilder(this);
  }

  GUserReviewsData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _reviews = $v.reviews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserReviewsData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserReviewsData_Page;
  }

  @override
  void update(void Function(GUserReviewsData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserReviewsData_Page build() => _build();

  _$GUserReviewsData_Page _build() {
    _$GUserReviewsData_Page _$result;
    try {
      _$result = _$v ??
          new _$GUserReviewsData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserReviewsData_Page', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              reviews: _reviews?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'reviews';
        _reviews?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserReviewsData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserReviewsData_Page_pageInfo extends GUserReviewsData_Page_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GUserReviewsData_Page_pageInfo(
          [void Function(GUserReviewsData_Page_pageInfoBuilder)? updates]) =>
      (new GUserReviewsData_Page_pageInfoBuilder()..update(updates))._build();

  _$GUserReviewsData_Page_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserReviewsData_Page_pageInfo', 'G__typename');
  }

  @override
  GUserReviewsData_Page_pageInfo rebuild(
          void Function(GUserReviewsData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserReviewsData_Page_pageInfoBuilder toBuilder() =>
      new GUserReviewsData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserReviewsData_Page_pageInfo &&
        G__typename == other.G__typename &&
        currentPage == other.currentPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserReviewsData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GUserReviewsData_Page_pageInfoBuilder
    implements
        Builder<GUserReviewsData_Page_pageInfo,
            GUserReviewsData_Page_pageInfoBuilder> {
  _$GUserReviewsData_Page_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GUserReviewsData_Page_pageInfoBuilder() {
    GUserReviewsData_Page_pageInfo._initializeBuilder(this);
  }

  GUserReviewsData_Page_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _currentPage = $v.currentPage;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserReviewsData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserReviewsData_Page_pageInfo;
  }

  @override
  void update(void Function(GUserReviewsData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserReviewsData_Page_pageInfo build() => _build();

  _$GUserReviewsData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GUserReviewsData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserReviewsData_Page_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GUserReviewsData_Page_reviews extends GUserReviewsData_Page_reviews {
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
  final GUserReviewsData_Page_reviews_media? media;
  @override
  final GUserReviewsData_Page_reviews_user? user;

  factory _$GUserReviewsData_Page_reviews(
          [void Function(GUserReviewsData_Page_reviewsBuilder)? updates]) =>
      (new GUserReviewsData_Page_reviewsBuilder()..update(updates))._build();

  _$GUserReviewsData_Page_reviews._(
      {required this.G__typename,
      required this.id,
      this.rating,
      this.ratingAmount,
      this.summary,
      this.media,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserReviewsData_Page_reviews', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserReviewsData_Page_reviews', 'id');
  }

  @override
  GUserReviewsData_Page_reviews rebuild(
          void Function(GUserReviewsData_Page_reviewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserReviewsData_Page_reviewsBuilder toBuilder() =>
      new GUserReviewsData_Page_reviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserReviewsData_Page_reviews &&
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
    return (newBuiltValueToStringHelper(r'GUserReviewsData_Page_reviews')
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

class GUserReviewsData_Page_reviewsBuilder
    implements
        Builder<GUserReviewsData_Page_reviews,
            GUserReviewsData_Page_reviewsBuilder> {
  _$GUserReviewsData_Page_reviews? _$v;

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

  GUserReviewsData_Page_reviews_mediaBuilder? _media;
  GUserReviewsData_Page_reviews_mediaBuilder get media =>
      _$this._media ??= new GUserReviewsData_Page_reviews_mediaBuilder();
  set media(GUserReviewsData_Page_reviews_mediaBuilder? media) =>
      _$this._media = media;

  GUserReviewsData_Page_reviews_userBuilder? _user;
  GUserReviewsData_Page_reviews_userBuilder get user =>
      _$this._user ??= new GUserReviewsData_Page_reviews_userBuilder();
  set user(GUserReviewsData_Page_reviews_userBuilder? user) =>
      _$this._user = user;

  GUserReviewsData_Page_reviewsBuilder() {
    GUserReviewsData_Page_reviews._initializeBuilder(this);
  }

  GUserReviewsData_Page_reviewsBuilder get _$this {
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
  void replace(GUserReviewsData_Page_reviews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserReviewsData_Page_reviews;
  }

  @override
  void update(void Function(GUserReviewsData_Page_reviewsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserReviewsData_Page_reviews build() => _build();

  _$GUserReviewsData_Page_reviews _build() {
    _$GUserReviewsData_Page_reviews _$result;
    try {
      _$result = _$v ??
          new _$GUserReviewsData_Page_reviews._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserReviewsData_Page_reviews', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserReviewsData_Page_reviews', 'id'),
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
            r'GUserReviewsData_Page_reviews', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserReviewsData_Page_reviews_media
    extends GUserReviewsData_Page_reviews_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GUserReviewsData_Page_reviews_media_title? title;
  @override
  final _i4.GMediaType? type;
  @override
  final String? bannerImage;

  factory _$GUserReviewsData_Page_reviews_media(
          [void Function(GUserReviewsData_Page_reviews_mediaBuilder)?
              updates]) =>
      (new GUserReviewsData_Page_reviews_mediaBuilder()..update(updates))
          ._build();

  _$GUserReviewsData_Page_reviews_media._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.type,
      this.bannerImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserReviewsData_Page_reviews_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserReviewsData_Page_reviews_media', 'id');
  }

  @override
  GUserReviewsData_Page_reviews_media rebuild(
          void Function(GUserReviewsData_Page_reviews_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserReviewsData_Page_reviews_mediaBuilder toBuilder() =>
      new GUserReviewsData_Page_reviews_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserReviewsData_Page_reviews_media &&
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
    return (newBuiltValueToStringHelper(r'GUserReviewsData_Page_reviews_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('type', type)
          ..add('bannerImage', bannerImage))
        .toString();
  }
}

class GUserReviewsData_Page_reviews_mediaBuilder
    implements
        Builder<GUserReviewsData_Page_reviews_media,
            GUserReviewsData_Page_reviews_mediaBuilder> {
  _$GUserReviewsData_Page_reviews_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GUserReviewsData_Page_reviews_media_titleBuilder? _title;
  GUserReviewsData_Page_reviews_media_titleBuilder get title =>
      _$this._title ??= new GUserReviewsData_Page_reviews_media_titleBuilder();
  set title(GUserReviewsData_Page_reviews_media_titleBuilder? title) =>
      _$this._title = title;

  _i4.GMediaType? _type;
  _i4.GMediaType? get type => _$this._type;
  set type(_i4.GMediaType? type) => _$this._type = type;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  GUserReviewsData_Page_reviews_mediaBuilder() {
    GUserReviewsData_Page_reviews_media._initializeBuilder(this);
  }

  GUserReviewsData_Page_reviews_mediaBuilder get _$this {
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
  void replace(GUserReviewsData_Page_reviews_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserReviewsData_Page_reviews_media;
  }

  @override
  void update(
      void Function(GUserReviewsData_Page_reviews_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserReviewsData_Page_reviews_media build() => _build();

  _$GUserReviewsData_Page_reviews_media _build() {
    _$GUserReviewsData_Page_reviews_media _$result;
    try {
      _$result = _$v ??
          new _$GUserReviewsData_Page_reviews_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserReviewsData_Page_reviews_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserReviewsData_Page_reviews_media', 'id'),
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
            r'GUserReviewsData_Page_reviews_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserReviewsData_Page_reviews_media_title
    extends GUserReviewsData_Page_reviews_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GUserReviewsData_Page_reviews_media_title(
          [void Function(GUserReviewsData_Page_reviews_media_titleBuilder)?
              updates]) =>
      (new GUserReviewsData_Page_reviews_media_titleBuilder()..update(updates))
          ._build();

  _$GUserReviewsData_Page_reviews_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserReviewsData_Page_reviews_media_title', 'G__typename');
  }

  @override
  GUserReviewsData_Page_reviews_media_title rebuild(
          void Function(GUserReviewsData_Page_reviews_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserReviewsData_Page_reviews_media_titleBuilder toBuilder() =>
      new GUserReviewsData_Page_reviews_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserReviewsData_Page_reviews_media_title &&
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
    return (newBuiltValueToStringHelper(
            r'GUserReviewsData_Page_reviews_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GUserReviewsData_Page_reviews_media_titleBuilder
    implements
        Builder<GUserReviewsData_Page_reviews_media_title,
            GUserReviewsData_Page_reviews_media_titleBuilder> {
  _$GUserReviewsData_Page_reviews_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GUserReviewsData_Page_reviews_media_titleBuilder() {
    GUserReviewsData_Page_reviews_media_title._initializeBuilder(this);
  }

  GUserReviewsData_Page_reviews_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserReviewsData_Page_reviews_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserReviewsData_Page_reviews_media_title;
  }

  @override
  void update(
      void Function(GUserReviewsData_Page_reviews_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserReviewsData_Page_reviews_media_title build() => _build();

  _$GUserReviewsData_Page_reviews_media_title _build() {
    final _$result = _$v ??
        new _$GUserReviewsData_Page_reviews_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUserReviewsData_Page_reviews_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GUserReviewsData_Page_reviews_user
    extends GUserReviewsData_Page_reviews_user {
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
  final GUserReviewsData_Page_reviews_user_avatar? avatar;

  factory _$GUserReviewsData_Page_reviews_user(
          [void Function(GUserReviewsData_Page_reviews_userBuilder)?
              updates]) =>
      (new GUserReviewsData_Page_reviews_userBuilder()..update(updates))
          ._build();

  _$GUserReviewsData_Page_reviews_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserReviewsData_Page_reviews_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserReviewsData_Page_reviews_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GUserReviewsData_Page_reviews_user', 'name');
  }

  @override
  GUserReviewsData_Page_reviews_user rebuild(
          void Function(GUserReviewsData_Page_reviews_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserReviewsData_Page_reviews_userBuilder toBuilder() =>
      new GUserReviewsData_Page_reviews_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserReviewsData_Page_reviews_user &&
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
    return (newBuiltValueToStringHelper(r'GUserReviewsData_Page_reviews_user')
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

class GUserReviewsData_Page_reviews_userBuilder
    implements
        Builder<GUserReviewsData_Page_reviews_user,
            GUserReviewsData_Page_reviews_userBuilder> {
  _$GUserReviewsData_Page_reviews_user? _$v;

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

  GUserReviewsData_Page_reviews_user_avatarBuilder? _avatar;
  GUserReviewsData_Page_reviews_user_avatarBuilder get avatar =>
      _$this._avatar ??= new GUserReviewsData_Page_reviews_user_avatarBuilder();
  set avatar(GUserReviewsData_Page_reviews_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GUserReviewsData_Page_reviews_userBuilder() {
    GUserReviewsData_Page_reviews_user._initializeBuilder(this);
  }

  GUserReviewsData_Page_reviews_userBuilder get _$this {
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
  void replace(GUserReviewsData_Page_reviews_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserReviewsData_Page_reviews_user;
  }

  @override
  void update(
      void Function(GUserReviewsData_Page_reviews_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserReviewsData_Page_reviews_user build() => _build();

  _$GUserReviewsData_Page_reviews_user _build() {
    _$GUserReviewsData_Page_reviews_user _$result;
    try {
      _$result = _$v ??
          new _$GUserReviewsData_Page_reviews_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserReviewsData_Page_reviews_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserReviewsData_Page_reviews_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GUserReviewsData_Page_reviews_user', 'name'),
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
            r'GUserReviewsData_Page_reviews_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserReviewsData_Page_reviews_user_avatar
    extends GUserReviewsData_Page_reviews_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GUserReviewsData_Page_reviews_user_avatar(
          [void Function(GUserReviewsData_Page_reviews_user_avatarBuilder)?
              updates]) =>
      (new GUserReviewsData_Page_reviews_user_avatarBuilder()..update(updates))
          ._build();

  _$GUserReviewsData_Page_reviews_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserReviewsData_Page_reviews_user_avatar', 'G__typename');
  }

  @override
  GUserReviewsData_Page_reviews_user_avatar rebuild(
          void Function(GUserReviewsData_Page_reviews_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserReviewsData_Page_reviews_user_avatarBuilder toBuilder() =>
      new GUserReviewsData_Page_reviews_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserReviewsData_Page_reviews_user_avatar &&
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
            r'GUserReviewsData_Page_reviews_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GUserReviewsData_Page_reviews_user_avatarBuilder
    implements
        Builder<GUserReviewsData_Page_reviews_user_avatar,
            GUserReviewsData_Page_reviews_user_avatarBuilder> {
  _$GUserReviewsData_Page_reviews_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GUserReviewsData_Page_reviews_user_avatarBuilder() {
    GUserReviewsData_Page_reviews_user_avatar._initializeBuilder(this);
  }

  GUserReviewsData_Page_reviews_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserReviewsData_Page_reviews_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserReviewsData_Page_reviews_user_avatar;
  }

  @override
  void update(
      void Function(GUserReviewsData_Page_reviews_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserReviewsData_Page_reviews_user_avatar build() => _build();

  _$GUserReviewsData_Page_reviews_user_avatar _build() {
    final _$result = _$v ??
        new _$GUserReviewsData_Page_reviews_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUserReviewsData_Page_reviews_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
