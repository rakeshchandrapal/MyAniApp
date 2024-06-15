// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mediaSearch.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGenreCollectionData> _$gGenreCollectionDataSerializer =
    new _$GGenreCollectionDataSerializer();
Serializer<GGenreCollectionData_tags> _$gGenreCollectionDataTagsSerializer =
    new _$GGenreCollectionData_tagsSerializer();
Serializer<GSearchData> _$gSearchDataSerializer = new _$GSearchDataSerializer();
Serializer<GSearchData_Page> _$gSearchDataPageSerializer =
    new _$GSearchData_PageSerializer();
Serializer<GSearchData_Page_pageInfo> _$gSearchDataPagePageInfoSerializer =
    new _$GSearchData_Page_pageInfoSerializer();
Serializer<GSearchData_Page_media> _$gSearchDataPageMediaSerializer =
    new _$GSearchData_Page_mediaSerializer();
Serializer<GSearchData_Page_media_title> _$gSearchDataPageMediaTitleSerializer =
    new _$GSearchData_Page_media_titleSerializer();
Serializer<GSearchData_Page_media_coverImage>
    _$gSearchDataPageMediaCoverImageSerializer =
    new _$GSearchData_Page_media_coverImageSerializer();

class _$GGenreCollectionDataSerializer
    implements StructuredSerializer<GGenreCollectionData> {
  @override
  final Iterable<Type> types = const [
    GGenreCollectionData,
    _$GGenreCollectionData
  ];
  @override
  final String wireName = 'GGenreCollectionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGenreCollectionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GGenreCollectionData_tags)])));
    }
    return result;
  }

  @override
  GGenreCollectionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGenreCollectionDataBuilder();

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
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GGenreCollectionData_tags)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGenreCollectionData_tagsSerializer
    implements StructuredSerializer<GGenreCollectionData_tags> {
  @override
  final Iterable<Type> types = const [
    GGenreCollectionData_tags,
    _$GGenreCollectionData_tags
  ];
  @override
  final String wireName = 'GGenreCollectionData_tags';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGenreCollectionData_tags object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAdult;
    if (value != null) {
      result
        ..add('isAdult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGenreCollectionData_tags deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGenreCollectionData_tagsBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAdult':
          result.isAdult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchDataSerializer implements StructuredSerializer<GSearchData> {
  @override
  final Iterable<Type> types = const [GSearchData, _$GSearchData];
  @override
  final String wireName = 'GSearchData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSearchData object,
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
            specifiedType: const FullType(GSearchData_Page)));
    }
    return result;
  }

  @override
  GSearchData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchDataBuilder();

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
                  specifiedType: const FullType(GSearchData_Page))!
              as GSearchData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchData_PageSerializer
    implements StructuredSerializer<GSearchData_Page> {
  @override
  final Iterable<Type> types = const [GSearchData_Page, _$GSearchData_Page];
  @override
  final String wireName = 'GSearchData_Page';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSearchData_Page object,
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
            specifiedType: const FullType(GSearchData_Page_pageInfo)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GSearchData_Page_media)])));
    }
    return result;
  }

  @override
  GSearchData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchData_PageBuilder();

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
                  specifiedType: const FullType(GSearchData_Page_pageInfo))!
              as GSearchData_Page_pageInfo);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GSearchData_Page_media)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchData_Page_pageInfoSerializer
    implements StructuredSerializer<GSearchData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GSearchData_Page_pageInfo,
    _$GSearchData_Page_pageInfo
  ];
  @override
  final String wireName = 'GSearchData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchData_Page_pageInfo object,
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
  GSearchData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchData_Page_pageInfoBuilder();

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

class _$GSearchData_Page_mediaSerializer
    implements StructuredSerializer<GSearchData_Page_media> {
  @override
  final Iterable<Type> types = const [
    GSearchData_Page_media,
    _$GSearchData_Page_media
  ];
  @override
  final String wireName = 'GSearchData_Page_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchData_Page_media object,
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
            specifiedType: const FullType(GSearchData_Page_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSearchData_Page_media_coverImage)));
    }
    return result;
  }

  @override
  GSearchData_Page_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchData_Page_mediaBuilder();

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
                  specifiedType: const FullType(GSearchData_Page_media_title))!
              as GSearchData_Page_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSearchData_Page_media_coverImage))!
              as GSearchData_Page_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GSearchData_Page_media_titleSerializer
    implements StructuredSerializer<GSearchData_Page_media_title> {
  @override
  final Iterable<Type> types = const [
    GSearchData_Page_media_title,
    _$GSearchData_Page_media_title
  ];
  @override
  final String wireName = 'GSearchData_Page_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchData_Page_media_title object,
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
  GSearchData_Page_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchData_Page_media_titleBuilder();

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

class _$GSearchData_Page_media_coverImageSerializer
    implements StructuredSerializer<GSearchData_Page_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GSearchData_Page_media_coverImage,
    _$GSearchData_Page_media_coverImage
  ];
  @override
  final String wireName = 'GSearchData_Page_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSearchData_Page_media_coverImage object,
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
  GSearchData_Page_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchData_Page_media_coverImageBuilder();

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

class _$GGenreCollectionData extends GGenreCollectionData {
  @override
  final String G__typename;
  @override
  final BuiltList<String?>? genres;
  @override
  final BuiltList<GGenreCollectionData_tags?>? tags;

  factory _$GGenreCollectionData(
          [void Function(GGenreCollectionDataBuilder)? updates]) =>
      (new GGenreCollectionDataBuilder()..update(updates))._build();

  _$GGenreCollectionData._({required this.G__typename, this.genres, this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGenreCollectionData', 'G__typename');
  }

  @override
  GGenreCollectionData rebuild(
          void Function(GGenreCollectionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGenreCollectionDataBuilder toBuilder() =>
      new GGenreCollectionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGenreCollectionData &&
        G__typename == other.G__typename &&
        genres == other.genres &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGenreCollectionData')
          ..add('G__typename', G__typename)
          ..add('genres', genres)
          ..add('tags', tags))
        .toString();
  }
}

class GGenreCollectionDataBuilder
    implements Builder<GGenreCollectionData, GGenreCollectionDataBuilder> {
  _$GGenreCollectionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  ListBuilder<GGenreCollectionData_tags?>? _tags;
  ListBuilder<GGenreCollectionData_tags?> get tags =>
      _$this._tags ??= new ListBuilder<GGenreCollectionData_tags?>();
  set tags(ListBuilder<GGenreCollectionData_tags?>? tags) =>
      _$this._tags = tags;

  GGenreCollectionDataBuilder() {
    GGenreCollectionData._initializeBuilder(this);
  }

  GGenreCollectionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _genres = $v.genres?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGenreCollectionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGenreCollectionData;
  }

  @override
  void update(void Function(GGenreCollectionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGenreCollectionData build() => _build();

  _$GGenreCollectionData _build() {
    _$GGenreCollectionData _$result;
    try {
      _$result = _$v ??
          new _$GGenreCollectionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GGenreCollectionData', 'G__typename'),
              genres: _genres?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGenreCollectionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGenreCollectionData_tags extends GGenreCollectionData_tags {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? category;
  @override
  final bool? isAdult;

  factory _$GGenreCollectionData_tags(
          [void Function(GGenreCollectionData_tagsBuilder)? updates]) =>
      (new GGenreCollectionData_tagsBuilder()..update(updates))._build();

  _$GGenreCollectionData_tags._(
      {required this.G__typename,
      required this.name,
      this.description,
      this.category,
      this.isAdult})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGenreCollectionData_tags', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GGenreCollectionData_tags', 'name');
  }

  @override
  GGenreCollectionData_tags rebuild(
          void Function(GGenreCollectionData_tagsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGenreCollectionData_tagsBuilder toBuilder() =>
      new GGenreCollectionData_tagsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGenreCollectionData_tags &&
        G__typename == other.G__typename &&
        name == other.name &&
        description == other.description &&
        category == other.category &&
        isAdult == other.isAdult;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, isAdult.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGenreCollectionData_tags')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('description', description)
          ..add('category', category)
          ..add('isAdult', isAdult))
        .toString();
  }
}

class GGenreCollectionData_tagsBuilder
    implements
        Builder<GGenreCollectionData_tags, GGenreCollectionData_tagsBuilder> {
  _$GGenreCollectionData_tags? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  GGenreCollectionData_tagsBuilder() {
    GGenreCollectionData_tags._initializeBuilder(this);
  }

  GGenreCollectionData_tagsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _description = $v.description;
      _category = $v.category;
      _isAdult = $v.isAdult;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGenreCollectionData_tags other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGenreCollectionData_tags;
  }

  @override
  void update(void Function(GGenreCollectionData_tagsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGenreCollectionData_tags build() => _build();

  _$GGenreCollectionData_tags _build() {
    final _$result = _$v ??
        new _$GGenreCollectionData_tags._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGenreCollectionData_tags', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GGenreCollectionData_tags', 'name'),
            description: description,
            category: category,
            isAdult: isAdult);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchData extends GSearchData {
  @override
  final String G__typename;
  @override
  final GSearchData_Page? Page;

  factory _$GSearchData([void Function(GSearchDataBuilder)? updates]) =>
      (new GSearchDataBuilder()..update(updates))._build();

  _$GSearchData._({required this.G__typename, this.Page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchData', 'G__typename');
  }

  @override
  GSearchData rebuild(void Function(GSearchDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchDataBuilder toBuilder() => new GSearchDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchData &&
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
    return (newBuiltValueToStringHelper(r'GSearchData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GSearchDataBuilder implements Builder<GSearchData, GSearchDataBuilder> {
  _$GSearchData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSearchData_PageBuilder? _Page;
  GSearchData_PageBuilder get Page =>
      _$this._Page ??= new GSearchData_PageBuilder();
  set Page(GSearchData_PageBuilder? Page) => _$this._Page = Page;

  GSearchDataBuilder() {
    GSearchData._initializeBuilder(this);
  }

  GSearchDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchData;
  }

  @override
  void update(void Function(GSearchDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchData build() => _build();

  _$GSearchData _build() {
    _$GSearchData _$result;
    try {
      _$result = _$v ??
          new _$GSearchData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSearchData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchData_Page extends GSearchData_Page {
  @override
  final String G__typename;
  @override
  final GSearchData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GSearchData_Page_media?>? media;

  factory _$GSearchData_Page(
          [void Function(GSearchData_PageBuilder)? updates]) =>
      (new GSearchData_PageBuilder()..update(updates))._build();

  _$GSearchData_Page._({required this.G__typename, this.pageInfo, this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchData_Page', 'G__typename');
  }

  @override
  GSearchData_Page rebuild(void Function(GSearchData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchData_PageBuilder toBuilder() =>
      new GSearchData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchData_Page &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('media', media))
        .toString();
  }
}

class GSearchData_PageBuilder
    implements Builder<GSearchData_Page, GSearchData_PageBuilder> {
  _$GSearchData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSearchData_Page_pageInfoBuilder? _pageInfo;
  GSearchData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GSearchData_Page_pageInfoBuilder();
  set pageInfo(GSearchData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GSearchData_Page_media?>? _media;
  ListBuilder<GSearchData_Page_media?> get media =>
      _$this._media ??= new ListBuilder<GSearchData_Page_media?>();
  set media(ListBuilder<GSearchData_Page_media?>? media) =>
      _$this._media = media;

  GSearchData_PageBuilder() {
    GSearchData_Page._initializeBuilder(this);
  }

  GSearchData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchData_Page;
  }

  @override
  void update(void Function(GSearchData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchData_Page build() => _build();

  _$GSearchData_Page _build() {
    _$GSearchData_Page _$result;
    try {
      _$result = _$v ??
          new _$GSearchData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSearchData_Page', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchData_Page_pageInfo extends GSearchData_Page_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GSearchData_Page_pageInfo(
          [void Function(GSearchData_Page_pageInfoBuilder)? updates]) =>
      (new GSearchData_Page_pageInfoBuilder()..update(updates))._build();

  _$GSearchData_Page_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchData_Page_pageInfo', 'G__typename');
  }

  @override
  GSearchData_Page_pageInfo rebuild(
          void Function(GSearchData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchData_Page_pageInfoBuilder toBuilder() =>
      new GSearchData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchData_Page_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GSearchData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GSearchData_Page_pageInfoBuilder
    implements
        Builder<GSearchData_Page_pageInfo, GSearchData_Page_pageInfoBuilder> {
  _$GSearchData_Page_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GSearchData_Page_pageInfoBuilder() {
    GSearchData_Page_pageInfo._initializeBuilder(this);
  }

  GSearchData_Page_pageInfoBuilder get _$this {
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
  void replace(GSearchData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchData_Page_pageInfo;
  }

  @override
  void update(void Function(GSearchData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchData_Page_pageInfo build() => _build();

  _$GSearchData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GSearchData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSearchData_Page_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchData_Page_media extends GSearchData_Page_media {
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
  final GSearchData_Page_media_title? title;
  @override
  final GSearchData_Page_media_coverImage? coverImage;

  factory _$GSearchData_Page_media(
          [void Function(GSearchData_Page_mediaBuilder)? updates]) =>
      (new GSearchData_Page_mediaBuilder()..update(updates))._build();

  _$GSearchData_Page_media._(
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
        G__typename, r'GSearchData_Page_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GSearchData_Page_media', 'id');
  }

  @override
  GSearchData_Page_media rebuild(
          void Function(GSearchData_Page_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchData_Page_mediaBuilder toBuilder() =>
      new GSearchData_Page_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchData_Page_media &&
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
    return (newBuiltValueToStringHelper(r'GSearchData_Page_media')
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

class GSearchData_Page_mediaBuilder
    implements Builder<GSearchData_Page_media, GSearchData_Page_mediaBuilder> {
  _$GSearchData_Page_media? _$v;

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

  GSearchData_Page_media_titleBuilder? _title;
  GSearchData_Page_media_titleBuilder get title =>
      _$this._title ??= new GSearchData_Page_media_titleBuilder();
  set title(GSearchData_Page_media_titleBuilder? title) =>
      _$this._title = title;

  GSearchData_Page_media_coverImageBuilder? _coverImage;
  GSearchData_Page_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??= new GSearchData_Page_media_coverImageBuilder();
  set coverImage(GSearchData_Page_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GSearchData_Page_mediaBuilder() {
    GSearchData_Page_media._initializeBuilder(this);
  }

  GSearchData_Page_mediaBuilder get _$this {
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
  void replace(GSearchData_Page_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchData_Page_media;
  }

  @override
  void update(void Function(GSearchData_Page_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchData_Page_media build() => _build();

  _$GSearchData_Page_media _build() {
    _$GSearchData_Page_media _$result;
    try {
      _$result = _$v ??
          new _$GSearchData_Page_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSearchData_Page_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSearchData_Page_media', 'id'),
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
            r'GSearchData_Page_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSearchData_Page_media_title extends GSearchData_Page_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GSearchData_Page_media_title(
          [void Function(GSearchData_Page_media_titleBuilder)? updates]) =>
      (new GSearchData_Page_media_titleBuilder()..update(updates))._build();

  _$GSearchData_Page_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchData_Page_media_title', 'G__typename');
  }

  @override
  GSearchData_Page_media_title rebuild(
          void Function(GSearchData_Page_media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchData_Page_media_titleBuilder toBuilder() =>
      new GSearchData_Page_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchData_Page_media_title &&
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
    return (newBuiltValueToStringHelper(r'GSearchData_Page_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GSearchData_Page_media_titleBuilder
    implements
        Builder<GSearchData_Page_media_title,
            GSearchData_Page_media_titleBuilder> {
  _$GSearchData_Page_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GSearchData_Page_media_titleBuilder() {
    GSearchData_Page_media_title._initializeBuilder(this);
  }

  GSearchData_Page_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchData_Page_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchData_Page_media_title;
  }

  @override
  void update(void Function(GSearchData_Page_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchData_Page_media_title build() => _build();

  _$GSearchData_Page_media_title _build() {
    final _$result = _$v ??
        new _$GSearchData_Page_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSearchData_Page_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GSearchData_Page_media_coverImage
    extends GSearchData_Page_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GSearchData_Page_media_coverImage(
          [void Function(GSearchData_Page_media_coverImageBuilder)? updates]) =>
      (new GSearchData_Page_media_coverImageBuilder()..update(updates))
          ._build();

  _$GSearchData_Page_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSearchData_Page_media_coverImage', 'G__typename');
  }

  @override
  GSearchData_Page_media_coverImage rebuild(
          void Function(GSearchData_Page_media_coverImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchData_Page_media_coverImageBuilder toBuilder() =>
      new GSearchData_Page_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchData_Page_media_coverImage &&
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
    return (newBuiltValueToStringHelper(r'GSearchData_Page_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GSearchData_Page_media_coverImageBuilder
    implements
        Builder<GSearchData_Page_media_coverImage,
            GSearchData_Page_media_coverImageBuilder> {
  _$GSearchData_Page_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GSearchData_Page_media_coverImageBuilder() {
    GSearchData_Page_media_coverImage._initializeBuilder(this);
  }

  GSearchData_Page_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchData_Page_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchData_Page_media_coverImage;
  }

  @override
  void update(
      void Function(GSearchData_Page_media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchData_Page_media_coverImage build() => _build();

  _$GSearchData_Page_media_coverImage _build() {
    final _$result = _$v ??
        new _$GSearchData_Page_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSearchData_Page_media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
