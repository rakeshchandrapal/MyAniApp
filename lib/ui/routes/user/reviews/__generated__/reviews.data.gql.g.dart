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
    value = object.summary;
    if (value != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GUserReviewsData_Page_reviews_media)));
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
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserReviewsData_Page_reviews_media))!
              as GUserReviewsData_Page_reviews_media);
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
  final String? summary;
  @override
  final int? rating;
  @override
  final int? score;
  @override
  final GUserReviewsData_Page_reviews_media? media;

  factory _$GUserReviewsData_Page_reviews(
          [void Function(GUserReviewsData_Page_reviewsBuilder)? updates]) =>
      (new GUserReviewsData_Page_reviewsBuilder()..update(updates))._build();

  _$GUserReviewsData_Page_reviews._(
      {required this.G__typename,
      required this.id,
      this.summary,
      this.rating,
      this.score,
      this.media})
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
        summary == other.summary &&
        rating == other.rating &&
        score == other.score &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserReviewsData_Page_reviews')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('summary', summary)
          ..add('rating', rating)
          ..add('score', score)
          ..add('media', media))
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

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  GUserReviewsData_Page_reviews_mediaBuilder? _media;
  GUserReviewsData_Page_reviews_mediaBuilder get media =>
      _$this._media ??= new GUserReviewsData_Page_reviews_mediaBuilder();
  set media(GUserReviewsData_Page_reviews_mediaBuilder? media) =>
      _$this._media = media;

  GUserReviewsData_Page_reviewsBuilder() {
    GUserReviewsData_Page_reviews._initializeBuilder(this);
  }

  GUserReviewsData_Page_reviewsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _summary = $v.summary;
      _rating = $v.rating;
      _score = $v.score;
      _media = $v.media?.toBuilder();
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
              summary: summary,
              rating: rating,
              score: score,
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
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

  factory _$GUserReviewsData_Page_reviews_media(
          [void Function(GUserReviewsData_Page_reviews_mediaBuilder)?
              updates]) =>
      (new GUserReviewsData_Page_reviews_mediaBuilder()..update(updates))
          ._build();

  _$GUserReviewsData_Page_reviews_media._(
      {required this.G__typename, required this.id, this.title})
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
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserReviewsData_Page_reviews_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
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

  GUserReviewsData_Page_reviews_mediaBuilder() {
    GUserReviewsData_Page_reviews_media._initializeBuilder(this);
  }

  GUserReviewsData_Page_reviews_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
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
              title: _title?.build());
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
