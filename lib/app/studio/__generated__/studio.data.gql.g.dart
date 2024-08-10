// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studio.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GStudioData> _$gStudioDataSerializer = new _$GStudioDataSerializer();
Serializer<GStudioData_Studio> _$gStudioDataStudioSerializer =
    new _$GStudioData_StudioSerializer();
Serializer<GStudioData_Studio_media> _$gStudioDataStudioMediaSerializer =
    new _$GStudioData_Studio_mediaSerializer();
Serializer<GStudioData_Studio_media_pageInfo>
    _$gStudioDataStudioMediaPageInfoSerializer =
    new _$GStudioData_Studio_media_pageInfoSerializer();
Serializer<GStudioData_Studio_media_nodes>
    _$gStudioDataStudioMediaNodesSerializer =
    new _$GStudioData_Studio_media_nodesSerializer();
Serializer<GStudioData_Studio_media_nodes_title>
    _$gStudioDataStudioMediaNodesTitleSerializer =
    new _$GStudioData_Studio_media_nodes_titleSerializer();
Serializer<GStudioData_Studio_media_nodes_coverImage>
    _$gStudioDataStudioMediaNodesCoverImageSerializer =
    new _$GStudioData_Studio_media_nodes_coverImageSerializer();

class _$GStudioDataSerializer implements StructuredSerializer<GStudioData> {
  @override
  final Iterable<Type> types = const [GStudioData, _$GStudioData];
  @override
  final String wireName = 'GStudioData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GStudioData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Studio;
    if (value != null) {
      result
        ..add('Studio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStudioData_Studio)));
    }
    return result;
  }

  @override
  GStudioData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStudioDataBuilder();

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
        case 'Studio':
          result.Studio.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStudioData_Studio))!
              as GStudioData_Studio);
          break;
      }
    }

    return result.build();
  }
}

class _$GStudioData_StudioSerializer
    implements StructuredSerializer<GStudioData_Studio> {
  @override
  final Iterable<Type> types = const [GStudioData_Studio, _$GStudioData_Studio];
  @override
  final String wireName = 'GStudioData_Studio';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStudioData_Studio object,
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
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStudioData_Studio_media)));
    }
    return result;
  }

  @override
  GStudioData_Studio deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStudioData_StudioBuilder();

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
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStudioData_Studio_media))!
              as GStudioData_Studio_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GStudioData_Studio_mediaSerializer
    implements StructuredSerializer<GStudioData_Studio_media> {
  @override
  final Iterable<Type> types = const [
    GStudioData_Studio_media,
    _$GStudioData_Studio_media
  ];
  @override
  final String wireName = 'GStudioData_Studio_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStudioData_Studio_media object,
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
            specifiedType: const FullType(GStudioData_Studio_media_pageInfo)));
    }
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GStudioData_Studio_media_nodes)
            ])));
    }
    return result;
  }

  @override
  GStudioData_Studio_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStudioData_Studio_mediaBuilder();

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
                      const FullType(GStudioData_Studio_media_pageInfo))!
              as GStudioData_Studio_media_pageInfo);
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GStudioData_Studio_media_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GStudioData_Studio_media_pageInfoSerializer
    implements StructuredSerializer<GStudioData_Studio_media_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GStudioData_Studio_media_pageInfo,
    _$GStudioData_Studio_media_pageInfo
  ];
  @override
  final String wireName = 'GStudioData_Studio_media_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStudioData_Studio_media_pageInfo object,
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
  GStudioData_Studio_media_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStudioData_Studio_media_pageInfoBuilder();

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

class _$GStudioData_Studio_media_nodesSerializer
    implements StructuredSerializer<GStudioData_Studio_media_nodes> {
  @override
  final Iterable<Type> types = const [
    GStudioData_Studio_media_nodes,
    _$GStudioData_Studio_media_nodes
  ];
  @override
  final String wireName = 'GStudioData_Studio_media_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStudioData_Studio_media_nodes object,
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
            specifiedType: const FullType(_i5.GMediaType)));
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
            specifiedType: const FullType(_i5.GMediaFormat)));
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
            specifiedType:
                const FullType(GStudioData_Studio_media_nodes_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GStudioData_Studio_media_nodes_coverImage)));
    }
    return result;
  }

  @override
  GStudioData_Studio_media_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStudioData_Studio_media_nodesBuilder();

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
              specifiedType: const FullType(_i5.GMediaType)) as _i5.GMediaType?;
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
                  specifiedType: const FullType(_i5.GMediaFormat))
              as _i5.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GStudioData_Studio_media_nodes_title))!
              as GStudioData_Studio_media_nodes_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GStudioData_Studio_media_nodes_coverImage))!
              as GStudioData_Studio_media_nodes_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GStudioData_Studio_media_nodes_titleSerializer
    implements StructuredSerializer<GStudioData_Studio_media_nodes_title> {
  @override
  final Iterable<Type> types = const [
    GStudioData_Studio_media_nodes_title,
    _$GStudioData_Studio_media_nodes_title
  ];
  @override
  final String wireName = 'GStudioData_Studio_media_nodes_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStudioData_Studio_media_nodes_title object,
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
  GStudioData_Studio_media_nodes_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStudioData_Studio_media_nodes_titleBuilder();

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

class _$GStudioData_Studio_media_nodes_coverImageSerializer
    implements StructuredSerializer<GStudioData_Studio_media_nodes_coverImage> {
  @override
  final Iterable<Type> types = const [
    GStudioData_Studio_media_nodes_coverImage,
    _$GStudioData_Studio_media_nodes_coverImage
  ];
  @override
  final String wireName = 'GStudioData_Studio_media_nodes_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStudioData_Studio_media_nodes_coverImage object,
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
  GStudioData_Studio_media_nodes_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStudioData_Studio_media_nodes_coverImageBuilder();

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

class _$GStudioData extends GStudioData {
  @override
  final String G__typename;
  @override
  final GStudioData_Studio? Studio;

  factory _$GStudioData([void Function(GStudioDataBuilder)? updates]) =>
      (new GStudioDataBuilder()..update(updates))._build();

  _$GStudioData._({required this.G__typename, this.Studio}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStudioData', 'G__typename');
  }

  @override
  GStudioData rebuild(void Function(GStudioDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStudioDataBuilder toBuilder() => new GStudioDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStudioData &&
        G__typename == other.G__typename &&
        Studio == other.Studio;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Studio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStudioData')
          ..add('G__typename', G__typename)
          ..add('Studio', Studio))
        .toString();
  }
}

class GStudioDataBuilder implements Builder<GStudioData, GStudioDataBuilder> {
  _$GStudioData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GStudioData_StudioBuilder? _Studio;
  GStudioData_StudioBuilder get Studio =>
      _$this._Studio ??= new GStudioData_StudioBuilder();
  set Studio(GStudioData_StudioBuilder? Studio) => _$this._Studio = Studio;

  GStudioDataBuilder() {
    GStudioData._initializeBuilder(this);
  }

  GStudioDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Studio = $v.Studio?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStudioData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStudioData;
  }

  @override
  void update(void Function(GStudioDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStudioData build() => _build();

  _$GStudioData _build() {
    _$GStudioData _$result;
    try {
      _$result = _$v ??
          new _$GStudioData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GStudioData', 'G__typename'),
              Studio: _Studio?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Studio';
        _Studio?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStudioData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStudioData_Studio extends GStudioData_Studio {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final GStudioData_Studio_media? media;

  factory _$GStudioData_Studio(
          [void Function(GStudioData_StudioBuilder)? updates]) =>
      (new GStudioData_StudioBuilder()..update(updates))._build();

  _$GStudioData_Studio._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStudioData_Studio', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GStudioData_Studio', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GStudioData_Studio', 'name');
  }

  @override
  GStudioData_Studio rebuild(
          void Function(GStudioData_StudioBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStudioData_StudioBuilder toBuilder() =>
      new GStudioData_StudioBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStudioData_Studio &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStudioData_Studio')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('media', media))
        .toString();
  }
}

class GStudioData_StudioBuilder
    implements Builder<GStudioData_Studio, GStudioData_StudioBuilder> {
  _$GStudioData_Studio? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GStudioData_Studio_mediaBuilder? _media;
  GStudioData_Studio_mediaBuilder get media =>
      _$this._media ??= new GStudioData_Studio_mediaBuilder();
  set media(GStudioData_Studio_mediaBuilder? media) => _$this._media = media;

  GStudioData_StudioBuilder() {
    GStudioData_Studio._initializeBuilder(this);
  }

  GStudioData_StudioBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStudioData_Studio other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStudioData_Studio;
  }

  @override
  void update(void Function(GStudioData_StudioBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStudioData_Studio build() => _build();

  _$GStudioData_Studio _build() {
    _$GStudioData_Studio _$result;
    try {
      _$result = _$v ??
          new _$GStudioData_Studio._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GStudioData_Studio', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GStudioData_Studio', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GStudioData_Studio', 'name'),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStudioData_Studio', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStudioData_Studio_media extends GStudioData_Studio_media {
  @override
  final String G__typename;
  @override
  final GStudioData_Studio_media_pageInfo? pageInfo;
  @override
  final BuiltList<GStudioData_Studio_media_nodes?>? nodes;

  factory _$GStudioData_Studio_media(
          [void Function(GStudioData_Studio_mediaBuilder)? updates]) =>
      (new GStudioData_Studio_mediaBuilder()..update(updates))._build();

  _$GStudioData_Studio_media._(
      {required this.G__typename, this.pageInfo, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStudioData_Studio_media', 'G__typename');
  }

  @override
  GStudioData_Studio_media rebuild(
          void Function(GStudioData_Studio_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStudioData_Studio_mediaBuilder toBuilder() =>
      new GStudioData_Studio_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStudioData_Studio_media &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStudioData_Studio_media')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('nodes', nodes))
        .toString();
  }
}

class GStudioData_Studio_mediaBuilder
    implements
        Builder<GStudioData_Studio_media, GStudioData_Studio_mediaBuilder> {
  _$GStudioData_Studio_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GStudioData_Studio_media_pageInfoBuilder? _pageInfo;
  GStudioData_Studio_media_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GStudioData_Studio_media_pageInfoBuilder();
  set pageInfo(GStudioData_Studio_media_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GStudioData_Studio_media_nodes?>? _nodes;
  ListBuilder<GStudioData_Studio_media_nodes?> get nodes =>
      _$this._nodes ??= new ListBuilder<GStudioData_Studio_media_nodes?>();
  set nodes(ListBuilder<GStudioData_Studio_media_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GStudioData_Studio_mediaBuilder() {
    GStudioData_Studio_media._initializeBuilder(this);
  }

  GStudioData_Studio_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStudioData_Studio_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStudioData_Studio_media;
  }

  @override
  void update(void Function(GStudioData_Studio_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStudioData_Studio_media build() => _build();

  _$GStudioData_Studio_media _build() {
    _$GStudioData_Studio_media _$result;
    try {
      _$result = _$v ??
          new _$GStudioData_Studio_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GStudioData_Studio_media', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStudioData_Studio_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStudioData_Studio_media_pageInfo
    extends GStudioData_Studio_media_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GStudioData_Studio_media_pageInfo(
          [void Function(GStudioData_Studio_media_pageInfoBuilder)? updates]) =>
      (new GStudioData_Studio_media_pageInfoBuilder()..update(updates))
          ._build();

  _$GStudioData_Studio_media_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStudioData_Studio_media_pageInfo', 'G__typename');
  }

  @override
  GStudioData_Studio_media_pageInfo rebuild(
          void Function(GStudioData_Studio_media_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStudioData_Studio_media_pageInfoBuilder toBuilder() =>
      new GStudioData_Studio_media_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStudioData_Studio_media_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GStudioData_Studio_media_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GStudioData_Studio_media_pageInfoBuilder
    implements
        Builder<GStudioData_Studio_media_pageInfo,
            GStudioData_Studio_media_pageInfoBuilder> {
  _$GStudioData_Studio_media_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GStudioData_Studio_media_pageInfoBuilder() {
    GStudioData_Studio_media_pageInfo._initializeBuilder(this);
  }

  GStudioData_Studio_media_pageInfoBuilder get _$this {
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
  void replace(GStudioData_Studio_media_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStudioData_Studio_media_pageInfo;
  }

  @override
  void update(
      void Function(GStudioData_Studio_media_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStudioData_Studio_media_pageInfo build() => _build();

  _$GStudioData_Studio_media_pageInfo _build() {
    final _$result = _$v ??
        new _$GStudioData_Studio_media_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GStudioData_Studio_media_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GStudioData_Studio_media_nodes extends GStudioData_Studio_media_nodes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i5.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i5.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GStudioData_Studio_media_nodes_title? title;
  @override
  final GStudioData_Studio_media_nodes_coverImage? coverImage;

  factory _$GStudioData_Studio_media_nodes(
          [void Function(GStudioData_Studio_media_nodesBuilder)? updates]) =>
      (new GStudioData_Studio_media_nodesBuilder()..update(updates))._build();

  _$GStudioData_Studio_media_nodes._(
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
        G__typename, r'GStudioData_Studio_media_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GStudioData_Studio_media_nodes', 'id');
  }

  @override
  GStudioData_Studio_media_nodes rebuild(
          void Function(GStudioData_Studio_media_nodesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStudioData_Studio_media_nodesBuilder toBuilder() =>
      new GStudioData_Studio_media_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStudioData_Studio_media_nodes &&
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
    return (newBuiltValueToStringHelper(r'GStudioData_Studio_media_nodes')
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

class GStudioData_Studio_media_nodesBuilder
    implements
        Builder<GStudioData_Studio_media_nodes,
            GStudioData_Studio_media_nodesBuilder> {
  _$GStudioData_Studio_media_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i5.GMediaType? _type;
  _i5.GMediaType? get type => _$this._type;
  set type(_i5.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i5.GMediaFormat? _format;
  _i5.GMediaFormat? get format => _$this._format;
  set format(_i5.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GStudioData_Studio_media_nodes_titleBuilder? _title;
  GStudioData_Studio_media_nodes_titleBuilder get title =>
      _$this._title ??= new GStudioData_Studio_media_nodes_titleBuilder();
  set title(GStudioData_Studio_media_nodes_titleBuilder? title) =>
      _$this._title = title;

  GStudioData_Studio_media_nodes_coverImageBuilder? _coverImage;
  GStudioData_Studio_media_nodes_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GStudioData_Studio_media_nodes_coverImageBuilder();
  set coverImage(
          GStudioData_Studio_media_nodes_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GStudioData_Studio_media_nodesBuilder() {
    GStudioData_Studio_media_nodes._initializeBuilder(this);
  }

  GStudioData_Studio_media_nodesBuilder get _$this {
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
  void replace(GStudioData_Studio_media_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStudioData_Studio_media_nodes;
  }

  @override
  void update(void Function(GStudioData_Studio_media_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStudioData_Studio_media_nodes build() => _build();

  _$GStudioData_Studio_media_nodes _build() {
    _$GStudioData_Studio_media_nodes _$result;
    try {
      _$result = _$v ??
          new _$GStudioData_Studio_media_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GStudioData_Studio_media_nodes', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GStudioData_Studio_media_nodes', 'id'),
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
            r'GStudioData_Studio_media_nodes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStudioData_Studio_media_nodes_title
    extends GStudioData_Studio_media_nodes_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GStudioData_Studio_media_nodes_title(
          [void Function(GStudioData_Studio_media_nodes_titleBuilder)?
              updates]) =>
      (new GStudioData_Studio_media_nodes_titleBuilder()..update(updates))
          ._build();

  _$GStudioData_Studio_media_nodes_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStudioData_Studio_media_nodes_title', 'G__typename');
  }

  @override
  GStudioData_Studio_media_nodes_title rebuild(
          void Function(GStudioData_Studio_media_nodes_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStudioData_Studio_media_nodes_titleBuilder toBuilder() =>
      new GStudioData_Studio_media_nodes_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStudioData_Studio_media_nodes_title &&
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
    return (newBuiltValueToStringHelper(r'GStudioData_Studio_media_nodes_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GStudioData_Studio_media_nodes_titleBuilder
    implements
        Builder<GStudioData_Studio_media_nodes_title,
            GStudioData_Studio_media_nodes_titleBuilder> {
  _$GStudioData_Studio_media_nodes_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GStudioData_Studio_media_nodes_titleBuilder() {
    GStudioData_Studio_media_nodes_title._initializeBuilder(this);
  }

  GStudioData_Studio_media_nodes_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStudioData_Studio_media_nodes_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStudioData_Studio_media_nodes_title;
  }

  @override
  void update(
      void Function(GStudioData_Studio_media_nodes_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStudioData_Studio_media_nodes_title build() => _build();

  _$GStudioData_Studio_media_nodes_title _build() {
    final _$result = _$v ??
        new _$GStudioData_Studio_media_nodes_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GStudioData_Studio_media_nodes_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GStudioData_Studio_media_nodes_coverImage
    extends GStudioData_Studio_media_nodes_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GStudioData_Studio_media_nodes_coverImage(
          [void Function(GStudioData_Studio_media_nodes_coverImageBuilder)?
              updates]) =>
      (new GStudioData_Studio_media_nodes_coverImageBuilder()..update(updates))
          ._build();

  _$GStudioData_Studio_media_nodes_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GStudioData_Studio_media_nodes_coverImage', 'G__typename');
  }

  @override
  GStudioData_Studio_media_nodes_coverImage rebuild(
          void Function(GStudioData_Studio_media_nodes_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStudioData_Studio_media_nodes_coverImageBuilder toBuilder() =>
      new GStudioData_Studio_media_nodes_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStudioData_Studio_media_nodes_coverImage &&
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
            r'GStudioData_Studio_media_nodes_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GStudioData_Studio_media_nodes_coverImageBuilder
    implements
        Builder<GStudioData_Studio_media_nodes_coverImage,
            GStudioData_Studio_media_nodes_coverImageBuilder> {
  _$GStudioData_Studio_media_nodes_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GStudioData_Studio_media_nodes_coverImageBuilder() {
    GStudioData_Studio_media_nodes_coverImage._initializeBuilder(this);
  }

  GStudioData_Studio_media_nodes_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStudioData_Studio_media_nodes_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStudioData_Studio_media_nodes_coverImage;
  }

  @override
  void update(
      void Function(GStudioData_Studio_media_nodes_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStudioData_Studio_media_nodes_coverImage build() => _build();

  _$GStudioData_Studio_media_nodes_coverImage _build() {
    final _$result = _$v ??
        new _$GStudioData_Studio_media_nodes_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GStudioData_Studio_media_nodes_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
