// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReviewsData> _$gReviewsDataSerializer =
    new _$GReviewsDataSerializer();
Serializer<GReviewsData_Page> _$gReviewsDataPageSerializer =
    new _$GReviewsData_PageSerializer();
Serializer<GReviewsData_Page_pageInfo> _$gReviewsDataPagePageInfoSerializer =
    new _$GReviewsData_Page_pageInfoSerializer();
Serializer<GReviewsData_Page_reviews> _$gReviewsDataPageReviewsSerializer =
    new _$GReviewsData_Page_reviewsSerializer();
Serializer<GReviewsData_Page_reviews_media>
    _$gReviewsDataPageReviewsMediaSerializer =
    new _$GReviewsData_Page_reviews_mediaSerializer();
Serializer<GReviewsData_Page_reviews_media_title>
    _$gReviewsDataPageReviewsMediaTitleSerializer =
    new _$GReviewsData_Page_reviews_media_titleSerializer();
Serializer<GReviewsData_Page_reviews_user>
    _$gReviewsDataPageReviewsUserSerializer =
    new _$GReviewsData_Page_reviews_userSerializer();
Serializer<GReviewsData_Page_reviews_user_avatar>
    _$gReviewsDataPageReviewsUserAvatarSerializer =
    new _$GReviewsData_Page_reviews_user_avatarSerializer();

class _$GReviewsDataSerializer implements StructuredSerializer<GReviewsData> {
  @override
  final Iterable<Type> types = const [GReviewsData, _$GReviewsData];
  @override
  final String wireName = 'GReviewsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReviewsData object,
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
            specifiedType: const FullType(GReviewsData_Page)));
    }
    return result;
  }

  @override
  GReviewsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsDataBuilder();

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
                  specifiedType: const FullType(GReviewsData_Page))!
              as GReviewsData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewsData_PageSerializer
    implements StructuredSerializer<GReviewsData_Page> {
  @override
  final Iterable<Type> types = const [GReviewsData_Page, _$GReviewsData_Page];
  @override
  final String wireName = 'GReviewsData_Page';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReviewsData_Page object,
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
            specifiedType: const FullType(GReviewsData_Page_pageInfo)));
    }
    value = object.reviews;
    if (value != null) {
      result
        ..add('reviews')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GReviewsData_Page_reviews)])));
    }
    return result;
  }

  @override
  GReviewsData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsData_PageBuilder();

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
                  specifiedType: const FullType(GReviewsData_Page_pageInfo))!
              as GReviewsData_Page_pageInfo);
          break;
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GReviewsData_Page_reviews)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewsData_Page_pageInfoSerializer
    implements StructuredSerializer<GReviewsData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GReviewsData_Page_pageInfo,
    _$GReviewsData_Page_pageInfo
  ];
  @override
  final String wireName = 'GReviewsData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewsData_Page_pageInfo object,
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
  GReviewsData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsData_Page_pageInfoBuilder();

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

class _$GReviewsData_Page_reviewsSerializer
    implements StructuredSerializer<GReviewsData_Page_reviews> {
  @override
  final Iterable<Type> types = const [
    GReviewsData_Page_reviews,
    _$GReviewsData_Page_reviews
  ];
  @override
  final String wireName = 'GReviewsData_Page_reviews';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewsData_Page_reviews object,
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
            specifiedType: const FullType(GReviewsData_Page_reviews_media)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReviewsData_Page_reviews_user)));
    }
    return result;
  }

  @override
  GReviewsData_Page_reviews deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsData_Page_reviewsBuilder();

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
                      const FullType(GReviewsData_Page_reviews_media))!
              as GReviewsData_Page_reviews_media);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReviewsData_Page_reviews_user))!
              as GReviewsData_Page_reviews_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewsData_Page_reviews_mediaSerializer
    implements StructuredSerializer<GReviewsData_Page_reviews_media> {
  @override
  final Iterable<Type> types = const [
    GReviewsData_Page_reviews_media,
    _$GReviewsData_Page_reviews_media
  ];
  @override
  final String wireName = 'GReviewsData_Page_reviews_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewsData_Page_reviews_media object,
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
                const FullType(GReviewsData_Page_reviews_media_title)));
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
  GReviewsData_Page_reviews_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsData_Page_reviews_mediaBuilder();

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
                      const FullType(GReviewsData_Page_reviews_media_title))!
              as GReviewsData_Page_reviews_media_title);
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

class _$GReviewsData_Page_reviews_media_titleSerializer
    implements StructuredSerializer<GReviewsData_Page_reviews_media_title> {
  @override
  final Iterable<Type> types = const [
    GReviewsData_Page_reviews_media_title,
    _$GReviewsData_Page_reviews_media_title
  ];
  @override
  final String wireName = 'GReviewsData_Page_reviews_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewsData_Page_reviews_media_title object,
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
  GReviewsData_Page_reviews_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsData_Page_reviews_media_titleBuilder();

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

class _$GReviewsData_Page_reviews_userSerializer
    implements StructuredSerializer<GReviewsData_Page_reviews_user> {
  @override
  final Iterable<Type> types = const [
    GReviewsData_Page_reviews_user,
    _$GReviewsData_Page_reviews_user
  ];
  @override
  final String wireName = 'GReviewsData_Page_reviews_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewsData_Page_reviews_user object,
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
                const FullType(GReviewsData_Page_reviews_user_avatar)));
    }
    return result;
  }

  @override
  GReviewsData_Page_reviews_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsData_Page_reviews_userBuilder();

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
                      const FullType(GReviewsData_Page_reviews_user_avatar))!
              as GReviewsData_Page_reviews_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewsData_Page_reviews_user_avatarSerializer
    implements StructuredSerializer<GReviewsData_Page_reviews_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GReviewsData_Page_reviews_user_avatar,
    _$GReviewsData_Page_reviews_user_avatar
  ];
  @override
  final String wireName = 'GReviewsData_Page_reviews_user_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReviewsData_Page_reviews_user_avatar object,
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
  GReviewsData_Page_reviews_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewsData_Page_reviews_user_avatarBuilder();

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

class _$GReviewsData extends GReviewsData {
  @override
  final String G__typename;
  @override
  final GReviewsData_Page? Page;

  factory _$GReviewsData([void Function(GReviewsDataBuilder)? updates]) =>
      (new GReviewsDataBuilder()..update(updates))._build();

  _$GReviewsData._({required this.G__typename, this.Page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData', 'G__typename');
  }

  @override
  GReviewsData rebuild(void Function(GReviewsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsDataBuilder toBuilder() => new GReviewsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData &&
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
    return (newBuiltValueToStringHelper(r'GReviewsData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GReviewsDataBuilder
    implements Builder<GReviewsData, GReviewsDataBuilder> {
  _$GReviewsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReviewsData_PageBuilder? _Page;
  GReviewsData_PageBuilder get Page =>
      _$this._Page ??= new GReviewsData_PageBuilder();
  set Page(GReviewsData_PageBuilder? Page) => _$this._Page = Page;

  GReviewsDataBuilder() {
    GReviewsData._initializeBuilder(this);
  }

  GReviewsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData;
  }

  @override
  void update(void Function(GReviewsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData build() => _build();

  _$GReviewsData _build() {
    _$GReviewsData _$result;
    try {
      _$result = _$v ??
          new _$GReviewsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewsData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReviewsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewsData_Page extends GReviewsData_Page {
  @override
  final String G__typename;
  @override
  final GReviewsData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GReviewsData_Page_reviews?>? reviews;

  factory _$GReviewsData_Page(
          [void Function(GReviewsData_PageBuilder)? updates]) =>
      (new GReviewsData_PageBuilder()..update(updates))._build();

  _$GReviewsData_Page._(
      {required this.G__typename, this.pageInfo, this.reviews})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData_Page', 'G__typename');
  }

  @override
  GReviewsData_Page rebuild(void Function(GReviewsData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsData_PageBuilder toBuilder() =>
      new GReviewsData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData_Page &&
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
    return (newBuiltValueToStringHelper(r'GReviewsData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('reviews', reviews))
        .toString();
  }
}

class GReviewsData_PageBuilder
    implements Builder<GReviewsData_Page, GReviewsData_PageBuilder> {
  _$GReviewsData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReviewsData_Page_pageInfoBuilder? _pageInfo;
  GReviewsData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GReviewsData_Page_pageInfoBuilder();
  set pageInfo(GReviewsData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GReviewsData_Page_reviews?>? _reviews;
  ListBuilder<GReviewsData_Page_reviews?> get reviews =>
      _$this._reviews ??= new ListBuilder<GReviewsData_Page_reviews?>();
  set reviews(ListBuilder<GReviewsData_Page_reviews?>? reviews) =>
      _$this._reviews = reviews;

  GReviewsData_PageBuilder() {
    GReviewsData_Page._initializeBuilder(this);
  }

  GReviewsData_PageBuilder get _$this {
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
  void replace(GReviewsData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData_Page;
  }

  @override
  void update(void Function(GReviewsData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData_Page build() => _build();

  _$GReviewsData_Page _build() {
    _$GReviewsData_Page _$result;
    try {
      _$result = _$v ??
          new _$GReviewsData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewsData_Page', 'G__typename'),
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
            r'GReviewsData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewsData_Page_pageInfo extends GReviewsData_Page_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GReviewsData_Page_pageInfo(
          [void Function(GReviewsData_Page_pageInfoBuilder)? updates]) =>
      (new GReviewsData_Page_pageInfoBuilder()..update(updates))._build();

  _$GReviewsData_Page_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData_Page_pageInfo', 'G__typename');
  }

  @override
  GReviewsData_Page_pageInfo rebuild(
          void Function(GReviewsData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsData_Page_pageInfoBuilder toBuilder() =>
      new GReviewsData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData_Page_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GReviewsData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GReviewsData_Page_pageInfoBuilder
    implements
        Builder<GReviewsData_Page_pageInfo, GReviewsData_Page_pageInfoBuilder> {
  _$GReviewsData_Page_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GReviewsData_Page_pageInfoBuilder() {
    GReviewsData_Page_pageInfo._initializeBuilder(this);
  }

  GReviewsData_Page_pageInfoBuilder get _$this {
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
  void replace(GReviewsData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData_Page_pageInfo;
  }

  @override
  void update(void Function(GReviewsData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData_Page_pageInfo build() => _build();

  _$GReviewsData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GReviewsData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GReviewsData_Page_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GReviewsData_Page_reviews extends GReviewsData_Page_reviews {
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
  final GReviewsData_Page_reviews_media? media;
  @override
  final GReviewsData_Page_reviews_user? user;

  factory _$GReviewsData_Page_reviews(
          [void Function(GReviewsData_Page_reviewsBuilder)? updates]) =>
      (new GReviewsData_Page_reviewsBuilder()..update(updates))._build();

  _$GReviewsData_Page_reviews._(
      {required this.G__typename,
      required this.id,
      this.rating,
      this.ratingAmount,
      this.summary,
      this.media,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData_Page_reviews', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GReviewsData_Page_reviews', 'id');
  }

  @override
  GReviewsData_Page_reviews rebuild(
          void Function(GReviewsData_Page_reviewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsData_Page_reviewsBuilder toBuilder() =>
      new GReviewsData_Page_reviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData_Page_reviews &&
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
    return (newBuiltValueToStringHelper(r'GReviewsData_Page_reviews')
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

class GReviewsData_Page_reviewsBuilder
    implements
        Builder<GReviewsData_Page_reviews, GReviewsData_Page_reviewsBuilder> {
  _$GReviewsData_Page_reviews? _$v;

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

  GReviewsData_Page_reviews_mediaBuilder? _media;
  GReviewsData_Page_reviews_mediaBuilder get media =>
      _$this._media ??= new GReviewsData_Page_reviews_mediaBuilder();
  set media(GReviewsData_Page_reviews_mediaBuilder? media) =>
      _$this._media = media;

  GReviewsData_Page_reviews_userBuilder? _user;
  GReviewsData_Page_reviews_userBuilder get user =>
      _$this._user ??= new GReviewsData_Page_reviews_userBuilder();
  set user(GReviewsData_Page_reviews_userBuilder? user) => _$this._user = user;

  GReviewsData_Page_reviewsBuilder() {
    GReviewsData_Page_reviews._initializeBuilder(this);
  }

  GReviewsData_Page_reviewsBuilder get _$this {
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
  void replace(GReviewsData_Page_reviews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData_Page_reviews;
  }

  @override
  void update(void Function(GReviewsData_Page_reviewsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData_Page_reviews build() => _build();

  _$GReviewsData_Page_reviews _build() {
    _$GReviewsData_Page_reviews _$result;
    try {
      _$result = _$v ??
          new _$GReviewsData_Page_reviews._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReviewsData_Page_reviews', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReviewsData_Page_reviews', 'id'),
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
            r'GReviewsData_Page_reviews', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewsData_Page_reviews_media
    extends GReviewsData_Page_reviews_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GReviewsData_Page_reviews_media_title? title;
  @override
  final _i4.GMediaType? type;
  @override
  final String? bannerImage;

  factory _$GReviewsData_Page_reviews_media(
          [void Function(GReviewsData_Page_reviews_mediaBuilder)? updates]) =>
      (new GReviewsData_Page_reviews_mediaBuilder()..update(updates))._build();

  _$GReviewsData_Page_reviews_media._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.type,
      this.bannerImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData_Page_reviews_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GReviewsData_Page_reviews_media', 'id');
  }

  @override
  GReviewsData_Page_reviews_media rebuild(
          void Function(GReviewsData_Page_reviews_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsData_Page_reviews_mediaBuilder toBuilder() =>
      new GReviewsData_Page_reviews_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData_Page_reviews_media &&
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
    return (newBuiltValueToStringHelper(r'GReviewsData_Page_reviews_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('type', type)
          ..add('bannerImage', bannerImage))
        .toString();
  }
}

class GReviewsData_Page_reviews_mediaBuilder
    implements
        Builder<GReviewsData_Page_reviews_media,
            GReviewsData_Page_reviews_mediaBuilder> {
  _$GReviewsData_Page_reviews_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GReviewsData_Page_reviews_media_titleBuilder? _title;
  GReviewsData_Page_reviews_media_titleBuilder get title =>
      _$this._title ??= new GReviewsData_Page_reviews_media_titleBuilder();
  set title(GReviewsData_Page_reviews_media_titleBuilder? title) =>
      _$this._title = title;

  _i4.GMediaType? _type;
  _i4.GMediaType? get type => _$this._type;
  set type(_i4.GMediaType? type) => _$this._type = type;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  GReviewsData_Page_reviews_mediaBuilder() {
    GReviewsData_Page_reviews_media._initializeBuilder(this);
  }

  GReviewsData_Page_reviews_mediaBuilder get _$this {
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
  void replace(GReviewsData_Page_reviews_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData_Page_reviews_media;
  }

  @override
  void update(void Function(GReviewsData_Page_reviews_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData_Page_reviews_media build() => _build();

  _$GReviewsData_Page_reviews_media _build() {
    _$GReviewsData_Page_reviews_media _$result;
    try {
      _$result = _$v ??
          new _$GReviewsData_Page_reviews_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GReviewsData_Page_reviews_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReviewsData_Page_reviews_media', 'id'),
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
            r'GReviewsData_Page_reviews_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewsData_Page_reviews_media_title
    extends GReviewsData_Page_reviews_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GReviewsData_Page_reviews_media_title(
          [void Function(GReviewsData_Page_reviews_media_titleBuilder)?
              updates]) =>
      (new GReviewsData_Page_reviews_media_titleBuilder()..update(updates))
          ._build();

  _$GReviewsData_Page_reviews_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData_Page_reviews_media_title', 'G__typename');
  }

  @override
  GReviewsData_Page_reviews_media_title rebuild(
          void Function(GReviewsData_Page_reviews_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsData_Page_reviews_media_titleBuilder toBuilder() =>
      new GReviewsData_Page_reviews_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData_Page_reviews_media_title &&
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
            r'GReviewsData_Page_reviews_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GReviewsData_Page_reviews_media_titleBuilder
    implements
        Builder<GReviewsData_Page_reviews_media_title,
            GReviewsData_Page_reviews_media_titleBuilder> {
  _$GReviewsData_Page_reviews_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GReviewsData_Page_reviews_media_titleBuilder() {
    GReviewsData_Page_reviews_media_title._initializeBuilder(this);
  }

  GReviewsData_Page_reviews_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewsData_Page_reviews_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData_Page_reviews_media_title;
  }

  @override
  void update(
      void Function(GReviewsData_Page_reviews_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData_Page_reviews_media_title build() => _build();

  _$GReviewsData_Page_reviews_media_title _build() {
    final _$result = _$v ??
        new _$GReviewsData_Page_reviews_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GReviewsData_Page_reviews_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GReviewsData_Page_reviews_user extends GReviewsData_Page_reviews_user {
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
  final GReviewsData_Page_reviews_user_avatar? avatar;

  factory _$GReviewsData_Page_reviews_user(
          [void Function(GReviewsData_Page_reviews_userBuilder)? updates]) =>
      (new GReviewsData_Page_reviews_userBuilder()..update(updates))._build();

  _$GReviewsData_Page_reviews_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData_Page_reviews_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GReviewsData_Page_reviews_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GReviewsData_Page_reviews_user', 'name');
  }

  @override
  GReviewsData_Page_reviews_user rebuild(
          void Function(GReviewsData_Page_reviews_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsData_Page_reviews_userBuilder toBuilder() =>
      new GReviewsData_Page_reviews_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData_Page_reviews_user &&
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
    return (newBuiltValueToStringHelper(r'GReviewsData_Page_reviews_user')
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

class GReviewsData_Page_reviews_userBuilder
    implements
        Builder<GReviewsData_Page_reviews_user,
            GReviewsData_Page_reviews_userBuilder> {
  _$GReviewsData_Page_reviews_user? _$v;

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

  GReviewsData_Page_reviews_user_avatarBuilder? _avatar;
  GReviewsData_Page_reviews_user_avatarBuilder get avatar =>
      _$this._avatar ??= new GReviewsData_Page_reviews_user_avatarBuilder();
  set avatar(GReviewsData_Page_reviews_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GReviewsData_Page_reviews_userBuilder() {
    GReviewsData_Page_reviews_user._initializeBuilder(this);
  }

  GReviewsData_Page_reviews_userBuilder get _$this {
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
  void replace(GReviewsData_Page_reviews_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData_Page_reviews_user;
  }

  @override
  void update(void Function(GReviewsData_Page_reviews_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData_Page_reviews_user build() => _build();

  _$GReviewsData_Page_reviews_user _build() {
    _$GReviewsData_Page_reviews_user _$result;
    try {
      _$result = _$v ??
          new _$GReviewsData_Page_reviews_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GReviewsData_Page_reviews_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReviewsData_Page_reviews_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GReviewsData_Page_reviews_user', 'name'),
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
            r'GReviewsData_Page_reviews_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReviewsData_Page_reviews_user_avatar
    extends GReviewsData_Page_reviews_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GReviewsData_Page_reviews_user_avatar(
          [void Function(GReviewsData_Page_reviews_user_avatarBuilder)?
              updates]) =>
      (new GReviewsData_Page_reviews_user_avatarBuilder()..update(updates))
          ._build();

  _$GReviewsData_Page_reviews_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReviewsData_Page_reviews_user_avatar', 'G__typename');
  }

  @override
  GReviewsData_Page_reviews_user_avatar rebuild(
          void Function(GReviewsData_Page_reviews_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewsData_Page_reviews_user_avatarBuilder toBuilder() =>
      new GReviewsData_Page_reviews_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewsData_Page_reviews_user_avatar &&
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
            r'GReviewsData_Page_reviews_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GReviewsData_Page_reviews_user_avatarBuilder
    implements
        Builder<GReviewsData_Page_reviews_user_avatar,
            GReviewsData_Page_reviews_user_avatarBuilder> {
  _$GReviewsData_Page_reviews_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GReviewsData_Page_reviews_user_avatarBuilder() {
    GReviewsData_Page_reviews_user_avatar._initializeBuilder(this);
  }

  GReviewsData_Page_reviews_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReviewsData_Page_reviews_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewsData_Page_reviews_user_avatar;
  }

  @override
  void update(
      void Function(GReviewsData_Page_reviews_user_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewsData_Page_reviews_user_avatar build() => _build();

  _$GReviewsData_Page_reviews_user_avatar _build() {
    final _$result = _$v ??
        new _$GReviewsData_Page_reviews_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GReviewsData_Page_reviews_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
