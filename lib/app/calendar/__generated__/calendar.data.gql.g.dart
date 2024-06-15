// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCalendarScheduleData> _$gCalendarScheduleDataSerializer =
    new _$GCalendarScheduleDataSerializer();
Serializer<GCalendarScheduleData_Page> _$gCalendarScheduleDataPageSerializer =
    new _$GCalendarScheduleData_PageSerializer();
Serializer<GCalendarScheduleData_Page_pageInfo>
    _$gCalendarScheduleDataPagePageInfoSerializer =
    new _$GCalendarScheduleData_Page_pageInfoSerializer();
Serializer<GCalendarScheduleData_Page_airingSchedules>
    _$gCalendarScheduleDataPageAiringSchedulesSerializer =
    new _$GCalendarScheduleData_Page_airingSchedulesSerializer();
Serializer<GCalendarScheduleData_Page_airingSchedules_media>
    _$gCalendarScheduleDataPageAiringSchedulesMediaSerializer =
    new _$GCalendarScheduleData_Page_airingSchedules_mediaSerializer();
Serializer<GCalendarScheduleData_Page_airingSchedules_media_title>
    _$gCalendarScheduleDataPageAiringSchedulesMediaTitleSerializer =
    new _$GCalendarScheduleData_Page_airingSchedules_media_titleSerializer();
Serializer<GCalendarScheduleData_Page_airingSchedules_media_coverImage>
    _$gCalendarScheduleDataPageAiringSchedulesMediaCoverImageSerializer =
    new _$GCalendarScheduleData_Page_airingSchedules_media_coverImageSerializer();

class _$GCalendarScheduleDataSerializer
    implements StructuredSerializer<GCalendarScheduleData> {
  @override
  final Iterable<Type> types = const [
    GCalendarScheduleData,
    _$GCalendarScheduleData
  ];
  @override
  final String wireName = 'GCalendarScheduleData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCalendarScheduleData object,
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
            specifiedType: const FullType(GCalendarScheduleData_Page)));
    }
    return result;
  }

  @override
  GCalendarScheduleData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCalendarScheduleDataBuilder();

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
                  specifiedType: const FullType(GCalendarScheduleData_Page))!
              as GCalendarScheduleData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GCalendarScheduleData_PageSerializer
    implements StructuredSerializer<GCalendarScheduleData_Page> {
  @override
  final Iterable<Type> types = const [
    GCalendarScheduleData_Page,
    _$GCalendarScheduleData_Page
  ];
  @override
  final String wireName = 'GCalendarScheduleData_Page';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCalendarScheduleData_Page object,
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
            specifiedType:
                const FullType(GCalendarScheduleData_Page_pageInfo)));
    }
    value = object.airingSchedules;
    if (value != null) {
      result
        ..add('airingSchedules')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GCalendarScheduleData_Page_airingSchedules)
            ])));
    }
    return result;
  }

  @override
  GCalendarScheduleData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCalendarScheduleData_PageBuilder();

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
                      const FullType(GCalendarScheduleData_Page_pageInfo))!
              as GCalendarScheduleData_Page_pageInfo);
          break;
        case 'airingSchedules':
          result.airingSchedules.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GCalendarScheduleData_Page_airingSchedules)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCalendarScheduleData_Page_pageInfoSerializer
    implements StructuredSerializer<GCalendarScheduleData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GCalendarScheduleData_Page_pageInfo,
    _$GCalendarScheduleData_Page_pageInfo
  ];
  @override
  final String wireName = 'GCalendarScheduleData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCalendarScheduleData_Page_pageInfo object,
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
  GCalendarScheduleData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCalendarScheduleData_Page_pageInfoBuilder();

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

class _$GCalendarScheduleData_Page_airingSchedulesSerializer
    implements
        StructuredSerializer<GCalendarScheduleData_Page_airingSchedules> {
  @override
  final Iterable<Type> types = const [
    GCalendarScheduleData_Page_airingSchedules,
    _$GCalendarScheduleData_Page_airingSchedules
  ];
  @override
  final String wireName = 'GCalendarScheduleData_Page_airingSchedules';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCalendarScheduleData_Page_airingSchedules object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'episode',
      serializers.serialize(object.episode, specifiedType: const FullType(int)),
      'airingAt',
      serializers.serialize(object.airingAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCalendarScheduleData_Page_airingSchedules_media)));
    }
    return result;
  }

  @override
  GCalendarScheduleData_Page_airingSchedules deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCalendarScheduleData_Page_airingSchedulesBuilder();

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
        case 'episode':
          result.episode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'airingAt':
          result.airingAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCalendarScheduleData_Page_airingSchedules_media))!
              as GCalendarScheduleData_Page_airingSchedules_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GCalendarScheduleData_Page_airingSchedules_mediaSerializer
    implements
        StructuredSerializer<GCalendarScheduleData_Page_airingSchedules_media> {
  @override
  final Iterable<Type> types = const [
    GCalendarScheduleData_Page_airingSchedules_media,
    _$GCalendarScheduleData_Page_airingSchedules_media
  ];
  @override
  final String wireName = 'GCalendarScheduleData_Page_airingSchedules_media';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCalendarScheduleData_Page_airingSchedules_media object,
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
            specifiedType: const FullType(_i4.GMediaType)));
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
            specifiedType: const FullType(_i4.GMediaFormat)));
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
            specifiedType: const FullType(
                GCalendarScheduleData_Page_airingSchedules_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCalendarScheduleData_Page_airingSchedules_media_coverImage)));
    }
    return result;
  }

  @override
  GCalendarScheduleData_Page_airingSchedules_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCalendarScheduleData_Page_airingSchedules_mediaBuilder();

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
              specifiedType: const FullType(_i4.GMediaType)) as _i4.GMediaType?;
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
                  specifiedType: const FullType(_i4.GMediaFormat))
              as _i4.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCalendarScheduleData_Page_airingSchedules_media_title))!
              as GCalendarScheduleData_Page_airingSchedules_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCalendarScheduleData_Page_airingSchedules_media_coverImage))!
              as GCalendarScheduleData_Page_airingSchedules_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GCalendarScheduleData_Page_airingSchedules_media_titleSerializer
    implements
        StructuredSerializer<
            GCalendarScheduleData_Page_airingSchedules_media_title> {
  @override
  final Iterable<Type> types = const [
    GCalendarScheduleData_Page_airingSchedules_media_title,
    _$GCalendarScheduleData_Page_airingSchedules_media_title
  ];
  @override
  final String wireName =
      'GCalendarScheduleData_Page_airingSchedules_media_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCalendarScheduleData_Page_airingSchedules_media_title object,
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
  GCalendarScheduleData_Page_airingSchedules_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCalendarScheduleData_Page_airingSchedules_media_titleBuilder();

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

class _$GCalendarScheduleData_Page_airingSchedules_media_coverImageSerializer
    implements
        StructuredSerializer<
            GCalendarScheduleData_Page_airingSchedules_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GCalendarScheduleData_Page_airingSchedules_media_coverImage,
    _$GCalendarScheduleData_Page_airingSchedules_media_coverImage
  ];
  @override
  final String wireName =
      'GCalendarScheduleData_Page_airingSchedules_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCalendarScheduleData_Page_airingSchedules_media_coverImage object,
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
  GCalendarScheduleData_Page_airingSchedules_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder();

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

class _$GCalendarScheduleData extends GCalendarScheduleData {
  @override
  final String G__typename;
  @override
  final GCalendarScheduleData_Page? Page;

  factory _$GCalendarScheduleData(
          [void Function(GCalendarScheduleDataBuilder)? updates]) =>
      (new GCalendarScheduleDataBuilder()..update(updates))._build();

  _$GCalendarScheduleData._({required this.G__typename, this.Page})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCalendarScheduleData', 'G__typename');
  }

  @override
  GCalendarScheduleData rebuild(
          void Function(GCalendarScheduleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCalendarScheduleDataBuilder toBuilder() =>
      new GCalendarScheduleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCalendarScheduleData &&
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
    return (newBuiltValueToStringHelper(r'GCalendarScheduleData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GCalendarScheduleDataBuilder
    implements Builder<GCalendarScheduleData, GCalendarScheduleDataBuilder> {
  _$GCalendarScheduleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCalendarScheduleData_PageBuilder? _Page;
  GCalendarScheduleData_PageBuilder get Page =>
      _$this._Page ??= new GCalendarScheduleData_PageBuilder();
  set Page(GCalendarScheduleData_PageBuilder? Page) => _$this._Page = Page;

  GCalendarScheduleDataBuilder() {
    GCalendarScheduleData._initializeBuilder(this);
  }

  GCalendarScheduleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCalendarScheduleData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCalendarScheduleData;
  }

  @override
  void update(void Function(GCalendarScheduleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCalendarScheduleData build() => _build();

  _$GCalendarScheduleData _build() {
    _$GCalendarScheduleData _$result;
    try {
      _$result = _$v ??
          new _$GCalendarScheduleData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCalendarScheduleData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCalendarScheduleData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCalendarScheduleData_Page extends GCalendarScheduleData_Page {
  @override
  final String G__typename;
  @override
  final GCalendarScheduleData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GCalendarScheduleData_Page_airingSchedules?>? airingSchedules;

  factory _$GCalendarScheduleData_Page(
          [void Function(GCalendarScheduleData_PageBuilder)? updates]) =>
      (new GCalendarScheduleData_PageBuilder()..update(updates))._build();

  _$GCalendarScheduleData_Page._(
      {required this.G__typename, this.pageInfo, this.airingSchedules})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCalendarScheduleData_Page', 'G__typename');
  }

  @override
  GCalendarScheduleData_Page rebuild(
          void Function(GCalendarScheduleData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCalendarScheduleData_PageBuilder toBuilder() =>
      new GCalendarScheduleData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCalendarScheduleData_Page &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        airingSchedules == other.airingSchedules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, airingSchedules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCalendarScheduleData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('airingSchedules', airingSchedules))
        .toString();
  }
}

class GCalendarScheduleData_PageBuilder
    implements
        Builder<GCalendarScheduleData_Page, GCalendarScheduleData_PageBuilder> {
  _$GCalendarScheduleData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCalendarScheduleData_Page_pageInfoBuilder? _pageInfo;
  GCalendarScheduleData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GCalendarScheduleData_Page_pageInfoBuilder();
  set pageInfo(GCalendarScheduleData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GCalendarScheduleData_Page_airingSchedules?>? _airingSchedules;
  ListBuilder<GCalendarScheduleData_Page_airingSchedules?>
      get airingSchedules => _$this._airingSchedules ??=
          new ListBuilder<GCalendarScheduleData_Page_airingSchedules?>();
  set airingSchedules(
          ListBuilder<GCalendarScheduleData_Page_airingSchedules?>?
              airingSchedules) =>
      _$this._airingSchedules = airingSchedules;

  GCalendarScheduleData_PageBuilder() {
    GCalendarScheduleData_Page._initializeBuilder(this);
  }

  GCalendarScheduleData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _airingSchedules = $v.airingSchedules?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCalendarScheduleData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCalendarScheduleData_Page;
  }

  @override
  void update(void Function(GCalendarScheduleData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCalendarScheduleData_Page build() => _build();

  _$GCalendarScheduleData_Page _build() {
    _$GCalendarScheduleData_Page _$result;
    try {
      _$result = _$v ??
          new _$GCalendarScheduleData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCalendarScheduleData_Page', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              airingSchedules: _airingSchedules?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'airingSchedules';
        _airingSchedules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCalendarScheduleData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCalendarScheduleData_Page_pageInfo
    extends GCalendarScheduleData_Page_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GCalendarScheduleData_Page_pageInfo(
          [void Function(GCalendarScheduleData_Page_pageInfoBuilder)?
              updates]) =>
      (new GCalendarScheduleData_Page_pageInfoBuilder()..update(updates))
          ._build();

  _$GCalendarScheduleData_Page_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCalendarScheduleData_Page_pageInfo', 'G__typename');
  }

  @override
  GCalendarScheduleData_Page_pageInfo rebuild(
          void Function(GCalendarScheduleData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCalendarScheduleData_Page_pageInfoBuilder toBuilder() =>
      new GCalendarScheduleData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCalendarScheduleData_Page_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GCalendarScheduleData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GCalendarScheduleData_Page_pageInfoBuilder
    implements
        Builder<GCalendarScheduleData_Page_pageInfo,
            GCalendarScheduleData_Page_pageInfoBuilder> {
  _$GCalendarScheduleData_Page_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GCalendarScheduleData_Page_pageInfoBuilder() {
    GCalendarScheduleData_Page_pageInfo._initializeBuilder(this);
  }

  GCalendarScheduleData_Page_pageInfoBuilder get _$this {
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
  void replace(GCalendarScheduleData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCalendarScheduleData_Page_pageInfo;
  }

  @override
  void update(
      void Function(GCalendarScheduleData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCalendarScheduleData_Page_pageInfo build() => _build();

  _$GCalendarScheduleData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GCalendarScheduleData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCalendarScheduleData_Page_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GCalendarScheduleData_Page_airingSchedules
    extends GCalendarScheduleData_Page_airingSchedules {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int episode;
  @override
  final int airingAt;
  @override
  final GCalendarScheduleData_Page_airingSchedules_media? media;

  factory _$GCalendarScheduleData_Page_airingSchedules(
          [void Function(GCalendarScheduleData_Page_airingSchedulesBuilder)?
              updates]) =>
      (new GCalendarScheduleData_Page_airingSchedulesBuilder()..update(updates))
          ._build();

  _$GCalendarScheduleData_Page_airingSchedules._(
      {required this.G__typename,
      required this.id,
      required this.episode,
      required this.airingAt,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCalendarScheduleData_Page_airingSchedules', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCalendarScheduleData_Page_airingSchedules', 'id');
    BuiltValueNullFieldError.checkNotNull(
        episode, r'GCalendarScheduleData_Page_airingSchedules', 'episode');
    BuiltValueNullFieldError.checkNotNull(
        airingAt, r'GCalendarScheduleData_Page_airingSchedules', 'airingAt');
  }

  @override
  GCalendarScheduleData_Page_airingSchedules rebuild(
          void Function(GCalendarScheduleData_Page_airingSchedulesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCalendarScheduleData_Page_airingSchedulesBuilder toBuilder() =>
      new GCalendarScheduleData_Page_airingSchedulesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCalendarScheduleData_Page_airingSchedules &&
        G__typename == other.G__typename &&
        id == other.id &&
        episode == other.episode &&
        airingAt == other.airingAt &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jc(_$hash, airingAt.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCalendarScheduleData_Page_airingSchedules')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('episode', episode)
          ..add('airingAt', airingAt)
          ..add('media', media))
        .toString();
  }
}

class GCalendarScheduleData_Page_airingSchedulesBuilder
    implements
        Builder<GCalendarScheduleData_Page_airingSchedules,
            GCalendarScheduleData_Page_airingSchedulesBuilder> {
  _$GCalendarScheduleData_Page_airingSchedules? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _episode;
  int? get episode => _$this._episode;
  set episode(int? episode) => _$this._episode = episode;

  int? _airingAt;
  int? get airingAt => _$this._airingAt;
  set airingAt(int? airingAt) => _$this._airingAt = airingAt;

  GCalendarScheduleData_Page_airingSchedules_mediaBuilder? _media;
  GCalendarScheduleData_Page_airingSchedules_mediaBuilder get media =>
      _$this._media ??=
          new GCalendarScheduleData_Page_airingSchedules_mediaBuilder();
  set media(GCalendarScheduleData_Page_airingSchedules_mediaBuilder? media) =>
      _$this._media = media;

  GCalendarScheduleData_Page_airingSchedulesBuilder() {
    GCalendarScheduleData_Page_airingSchedules._initializeBuilder(this);
  }

  GCalendarScheduleData_Page_airingSchedulesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _episode = $v.episode;
      _airingAt = $v.airingAt;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCalendarScheduleData_Page_airingSchedules other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCalendarScheduleData_Page_airingSchedules;
  }

  @override
  void update(
      void Function(GCalendarScheduleData_Page_airingSchedulesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCalendarScheduleData_Page_airingSchedules build() => _build();

  _$GCalendarScheduleData_Page_airingSchedules _build() {
    _$GCalendarScheduleData_Page_airingSchedules _$result;
    try {
      _$result = _$v ??
          new _$GCalendarScheduleData_Page_airingSchedules._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GCalendarScheduleData_Page_airingSchedules', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GCalendarScheduleData_Page_airingSchedules', 'id'),
              episode: BuiltValueNullFieldError.checkNotNull(episode,
                  r'GCalendarScheduleData_Page_airingSchedules', 'episode'),
              airingAt: BuiltValueNullFieldError.checkNotNull(airingAt,
                  r'GCalendarScheduleData_Page_airingSchedules', 'airingAt'),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCalendarScheduleData_Page_airingSchedules',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCalendarScheduleData_Page_airingSchedules_media
    extends GCalendarScheduleData_Page_airingSchedules_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i4.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i4.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GCalendarScheduleData_Page_airingSchedules_media_title? title;
  @override
  final GCalendarScheduleData_Page_airingSchedules_media_coverImage? coverImage;

  factory _$GCalendarScheduleData_Page_airingSchedules_media(
          [void Function(
                  GCalendarScheduleData_Page_airingSchedules_mediaBuilder)?
              updates]) =>
      (new GCalendarScheduleData_Page_airingSchedules_mediaBuilder()
            ..update(updates))
          ._build();

  _$GCalendarScheduleData_Page_airingSchedules_media._(
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
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCalendarScheduleData_Page_airingSchedules_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCalendarScheduleData_Page_airingSchedules_media', 'id');
  }

  @override
  GCalendarScheduleData_Page_airingSchedules_media rebuild(
          void Function(GCalendarScheduleData_Page_airingSchedules_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCalendarScheduleData_Page_airingSchedules_mediaBuilder toBuilder() =>
      new GCalendarScheduleData_Page_airingSchedules_mediaBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCalendarScheduleData_Page_airingSchedules_media &&
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
    return (newBuiltValueToStringHelper(
            r'GCalendarScheduleData_Page_airingSchedules_media')
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

class GCalendarScheduleData_Page_airingSchedules_mediaBuilder
    implements
        Builder<GCalendarScheduleData_Page_airingSchedules_media,
            GCalendarScheduleData_Page_airingSchedules_mediaBuilder> {
  _$GCalendarScheduleData_Page_airingSchedules_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i4.GMediaType? _type;
  _i4.GMediaType? get type => _$this._type;
  set type(_i4.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i4.GMediaFormat? _format;
  _i4.GMediaFormat? get format => _$this._format;
  set format(_i4.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GCalendarScheduleData_Page_airingSchedules_media_titleBuilder? _title;
  GCalendarScheduleData_Page_airingSchedules_media_titleBuilder get title =>
      _$this._title ??=
          new GCalendarScheduleData_Page_airingSchedules_media_titleBuilder();
  set title(
          GCalendarScheduleData_Page_airingSchedules_media_titleBuilder?
              title) =>
      _$this._title = title;

  GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder?
      _coverImage;
  GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder();
  set coverImage(
          GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GCalendarScheduleData_Page_airingSchedules_mediaBuilder() {
    GCalendarScheduleData_Page_airingSchedules_media._initializeBuilder(this);
  }

  GCalendarScheduleData_Page_airingSchedules_mediaBuilder get _$this {
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
  void replace(GCalendarScheduleData_Page_airingSchedules_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCalendarScheduleData_Page_airingSchedules_media;
  }

  @override
  void update(
      void Function(GCalendarScheduleData_Page_airingSchedules_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCalendarScheduleData_Page_airingSchedules_media build() => _build();

  _$GCalendarScheduleData_Page_airingSchedules_media _build() {
    _$GCalendarScheduleData_Page_airingSchedules_media _$result;
    try {
      _$result = _$v ??
          new _$GCalendarScheduleData_Page_airingSchedules_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GCalendarScheduleData_Page_airingSchedules_media',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GCalendarScheduleData_Page_airingSchedules_media', 'id'),
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
            r'GCalendarScheduleData_Page_airingSchedules_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCalendarScheduleData_Page_airingSchedules_media_title
    extends GCalendarScheduleData_Page_airingSchedules_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GCalendarScheduleData_Page_airingSchedules_media_title(
          [void Function(
                  GCalendarScheduleData_Page_airingSchedules_media_titleBuilder)?
              updates]) =>
      (new GCalendarScheduleData_Page_airingSchedules_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GCalendarScheduleData_Page_airingSchedules_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCalendarScheduleData_Page_airingSchedules_media_title',
        'G__typename');
  }

  @override
  GCalendarScheduleData_Page_airingSchedules_media_title rebuild(
          void Function(
                  GCalendarScheduleData_Page_airingSchedules_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCalendarScheduleData_Page_airingSchedules_media_titleBuilder toBuilder() =>
      new GCalendarScheduleData_Page_airingSchedules_media_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCalendarScheduleData_Page_airingSchedules_media_title &&
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
            r'GCalendarScheduleData_Page_airingSchedules_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GCalendarScheduleData_Page_airingSchedules_media_titleBuilder
    implements
        Builder<GCalendarScheduleData_Page_airingSchedules_media_title,
            GCalendarScheduleData_Page_airingSchedules_media_titleBuilder> {
  _$GCalendarScheduleData_Page_airingSchedules_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GCalendarScheduleData_Page_airingSchedules_media_titleBuilder() {
    GCalendarScheduleData_Page_airingSchedules_media_title._initializeBuilder(
        this);
  }

  GCalendarScheduleData_Page_airingSchedules_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCalendarScheduleData_Page_airingSchedules_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCalendarScheduleData_Page_airingSchedules_media_title;
  }

  @override
  void update(
      void Function(
              GCalendarScheduleData_Page_airingSchedules_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCalendarScheduleData_Page_airingSchedules_media_title build() => _build();

  _$GCalendarScheduleData_Page_airingSchedules_media_title _build() {
    final _$result = _$v ??
        new _$GCalendarScheduleData_Page_airingSchedules_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCalendarScheduleData_Page_airingSchedules_media_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GCalendarScheduleData_Page_airingSchedules_media_coverImage
    extends GCalendarScheduleData_Page_airingSchedules_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GCalendarScheduleData_Page_airingSchedules_media_coverImage(
          [void Function(
                  GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder)?
              updates]) =>
      (new GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GCalendarScheduleData_Page_airingSchedules_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCalendarScheduleData_Page_airingSchedules_media_coverImage',
        'G__typename');
  }

  @override
  GCalendarScheduleData_Page_airingSchedules_media_coverImage rebuild(
          void Function(
                  GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder
      toBuilder() =>
          new GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCalendarScheduleData_Page_airingSchedules_media_coverImage &&
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
    return (newBuiltValueToStringHelper(
            r'GCalendarScheduleData_Page_airingSchedules_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder
    implements
        Builder<GCalendarScheduleData_Page_airingSchedules_media_coverImage,
            GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder> {
  _$GCalendarScheduleData_Page_airingSchedules_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder() {
    GCalendarScheduleData_Page_airingSchedules_media_coverImage
        ._initializeBuilder(this);
  }

  GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCalendarScheduleData_Page_airingSchedules_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GCalendarScheduleData_Page_airingSchedules_media_coverImage;
  }

  @override
  void update(
      void Function(
              GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCalendarScheduleData_Page_airingSchedules_media_coverImage build() =>
      _build();

  _$GCalendarScheduleData_Page_airingSchedules_media_coverImage _build() {
    final _$result = _$v ??
        new _$GCalendarScheduleData_Page_airingSchedules_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCalendarScheduleData_Page_airingSchedules_media_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
