// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaRecommendationsData> _$gMediaRecommendationsDataSerializer =
    new _$GMediaRecommendationsDataSerializer();
Serializer<GMediaRecommendationsData_Media>
    _$gMediaRecommendationsDataMediaSerializer =
    new _$GMediaRecommendationsData_MediaSerializer();
Serializer<GMediaRecommendationsData_Media_recommendations>
    _$gMediaRecommendationsDataMediaRecommendationsSerializer =
    new _$GMediaRecommendationsData_Media_recommendationsSerializer();
Serializer<GMediaRecommendationsData_Media_recommendations_pageInfo>
    _$gMediaRecommendationsDataMediaRecommendationsPageInfoSerializer =
    new _$GMediaRecommendationsData_Media_recommendations_pageInfoSerializer();
Serializer<GMediaRecommendationsData_Media_recommendations_nodes>
    _$gMediaRecommendationsDataMediaRecommendationsNodesSerializer =
    new _$GMediaRecommendationsData_Media_recommendations_nodesSerializer();
Serializer<
        GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation>
    _$gMediaRecommendationsDataMediaRecommendationsNodesMediaRecommendationSerializer =
    new _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationSerializer();
Serializer<
        GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title>
    _$gMediaRecommendationsDataMediaRecommendationsNodesMediaRecommendationTitleSerializer =
    new _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleSerializer();
Serializer<
        GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage>
    _$gMediaRecommendationsDataMediaRecommendationsNodesMediaRecommendationCoverImageSerializer =
    new _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageSerializer();

class _$GMediaRecommendationsDataSerializer
    implements StructuredSerializer<GMediaRecommendationsData> {
  @override
  final Iterable<Type> types = const [
    GMediaRecommendationsData,
    _$GMediaRecommendationsData
  ];
  @override
  final String wireName = 'GMediaRecommendationsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaRecommendationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Media;
    if (value != null) {
      result
        ..add('Media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaRecommendationsData_Media)));
    }
    return result;
  }

  @override
  GMediaRecommendationsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaRecommendationsDataBuilder();

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
        case 'Media':
          result.Media.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaRecommendationsData_Media))!
              as GMediaRecommendationsData_Media);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaRecommendationsData_MediaSerializer
    implements StructuredSerializer<GMediaRecommendationsData_Media> {
  @override
  final Iterable<Type> types = const [
    GMediaRecommendationsData_Media,
    _$GMediaRecommendationsData_Media
  ];
  @override
  final String wireName = 'GMediaRecommendationsData_Media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaRecommendationsData_Media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.recommendations;
    if (value != null) {
      result
        ..add('recommendations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaRecommendationsData_Media_recommendations)));
    }
    return result;
  }

  @override
  GMediaRecommendationsData_Media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaRecommendationsData_MediaBuilder();

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
        case 'recommendations':
          result.recommendations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaRecommendationsData_Media_recommendations))!
              as GMediaRecommendationsData_Media_recommendations);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaRecommendationsData_Media_recommendationsSerializer
    implements
        StructuredSerializer<GMediaRecommendationsData_Media_recommendations> {
  @override
  final Iterable<Type> types = const [
    GMediaRecommendationsData_Media_recommendations,
    _$GMediaRecommendationsData_Media_recommendations
  ];
  @override
  final String wireName = 'GMediaRecommendationsData_Media_recommendations';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaRecommendationsData_Media_recommendations object,
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
            specifiedType: const FullType(
                GMediaRecommendationsData_Media_recommendations_pageInfo)));
    }
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GMediaRecommendationsData_Media_recommendations_nodes)
            ])));
    }
    return result;
  }

  @override
  GMediaRecommendationsData_Media_recommendations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaRecommendationsData_Media_recommendationsBuilder();

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
                  specifiedType: const FullType(
                      GMediaRecommendationsData_Media_recommendations_pageInfo))!
              as GMediaRecommendationsData_Media_recommendations_pageInfo);
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GMediaRecommendationsData_Media_recommendations_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaRecommendationsData_Media_recommendations_pageInfoSerializer
    implements
        StructuredSerializer<
            GMediaRecommendationsData_Media_recommendations_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GMediaRecommendationsData_Media_recommendations_pageInfo,
    _$GMediaRecommendationsData_Media_recommendations_pageInfo
  ];
  @override
  final String wireName =
      'GMediaRecommendationsData_Media_recommendations_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaRecommendationsData_Media_recommendations_pageInfo object,
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
  GMediaRecommendationsData_Media_recommendations_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaRecommendationsData_Media_recommendations_pageInfoBuilder();

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

class _$GMediaRecommendationsData_Media_recommendations_nodesSerializer
    implements
        StructuredSerializer<
            GMediaRecommendationsData_Media_recommendations_nodes> {
  @override
  final Iterable<Type> types = const [
    GMediaRecommendationsData_Media_recommendations_nodes,
    _$GMediaRecommendationsData_Media_recommendations_nodes
  ];
  @override
  final String wireName =
      'GMediaRecommendationsData_Media_recommendations_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaRecommendationsData_Media_recommendations_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.mediaRecommendation;
    if (value != null) {
      result
        ..add('mediaRecommendation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation)));
    }
    return result;
  }

  @override
  GMediaRecommendationsData_Media_recommendations_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaRecommendationsData_Media_recommendations_nodesBuilder();

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
        case 'mediaRecommendation':
          result.mediaRecommendation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation))!
              as GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationSerializer
    implements
        StructuredSerializer<
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation> {
  @override
  final Iterable<Type> types = const [
    GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation,
    _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
  ];
  @override
  final String wireName =
      'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
          object,
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
                GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage)));
    }
    return result;
  }

  @override
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder();

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
                      GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title))!
              as GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage))!
              as GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleSerializer
    implements
        StructuredSerializer<
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title> {
  @override
  final Iterable<Type> types = const [
    GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title,
    _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
  ];
  @override
  final String wireName =
      'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
          object,
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
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder();

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

class _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageSerializer
    implements
        StructuredSerializer<
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage> {
  @override
  final Iterable<Type> types = const [
    GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage,
    _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
  ];
  @override
  final String wireName =
      'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
          object,
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
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder();

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

class _$GMediaRecommendationsData extends GMediaRecommendationsData {
  @override
  final String G__typename;
  @override
  final GMediaRecommendationsData_Media? Media;

  factory _$GMediaRecommendationsData(
          [void Function(GMediaRecommendationsDataBuilder)? updates]) =>
      (new GMediaRecommendationsDataBuilder()..update(updates))._build();

  _$GMediaRecommendationsData._({required this.G__typename, this.Media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaRecommendationsData', 'G__typename');
  }

  @override
  GMediaRecommendationsData rebuild(
          void Function(GMediaRecommendationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaRecommendationsDataBuilder toBuilder() =>
      new GMediaRecommendationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaRecommendationsData &&
        G__typename == other.G__typename &&
        Media == other.Media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaRecommendationsData')
          ..add('G__typename', G__typename)
          ..add('Media', Media))
        .toString();
  }
}

class GMediaRecommendationsDataBuilder
    implements
        Builder<GMediaRecommendationsData, GMediaRecommendationsDataBuilder> {
  _$GMediaRecommendationsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaRecommendationsData_MediaBuilder? _Media;
  GMediaRecommendationsData_MediaBuilder get Media =>
      _$this._Media ??= new GMediaRecommendationsData_MediaBuilder();
  set Media(GMediaRecommendationsData_MediaBuilder? Media) =>
      _$this._Media = Media;

  GMediaRecommendationsDataBuilder() {
    GMediaRecommendationsData._initializeBuilder(this);
  }

  GMediaRecommendationsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Media = $v.Media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaRecommendationsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaRecommendationsData;
  }

  @override
  void update(void Function(GMediaRecommendationsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaRecommendationsData build() => _build();

  _$GMediaRecommendationsData _build() {
    _$GMediaRecommendationsData _$result;
    try {
      _$result = _$v ??
          new _$GMediaRecommendationsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaRecommendationsData', 'G__typename'),
              Media: _Media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Media';
        _Media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaRecommendationsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaRecommendationsData_Media
    extends GMediaRecommendationsData_Media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GMediaRecommendationsData_Media_recommendations? recommendations;

  factory _$GMediaRecommendationsData_Media(
          [void Function(GMediaRecommendationsData_MediaBuilder)? updates]) =>
      (new GMediaRecommendationsData_MediaBuilder()..update(updates))._build();

  _$GMediaRecommendationsData_Media._(
      {required this.G__typename, required this.id, this.recommendations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaRecommendationsData_Media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaRecommendationsData_Media', 'id');
  }

  @override
  GMediaRecommendationsData_Media rebuild(
          void Function(GMediaRecommendationsData_MediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaRecommendationsData_MediaBuilder toBuilder() =>
      new GMediaRecommendationsData_MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaRecommendationsData_Media &&
        G__typename == other.G__typename &&
        id == other.id &&
        recommendations == other.recommendations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, recommendations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaRecommendationsData_Media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('recommendations', recommendations))
        .toString();
  }
}

class GMediaRecommendationsData_MediaBuilder
    implements
        Builder<GMediaRecommendationsData_Media,
            GMediaRecommendationsData_MediaBuilder> {
  _$GMediaRecommendationsData_Media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GMediaRecommendationsData_Media_recommendationsBuilder? _recommendations;
  GMediaRecommendationsData_Media_recommendationsBuilder get recommendations =>
      _$this._recommendations ??=
          new GMediaRecommendationsData_Media_recommendationsBuilder();
  set recommendations(
          GMediaRecommendationsData_Media_recommendationsBuilder?
              recommendations) =>
      _$this._recommendations = recommendations;

  GMediaRecommendationsData_MediaBuilder() {
    GMediaRecommendationsData_Media._initializeBuilder(this);
  }

  GMediaRecommendationsData_MediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _recommendations = $v.recommendations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaRecommendationsData_Media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaRecommendationsData_Media;
  }

  @override
  void update(void Function(GMediaRecommendationsData_MediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaRecommendationsData_Media build() => _build();

  _$GMediaRecommendationsData_Media _build() {
    _$GMediaRecommendationsData_Media _$result;
    try {
      _$result = _$v ??
          new _$GMediaRecommendationsData_Media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaRecommendationsData_Media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaRecommendationsData_Media', 'id'),
              recommendations: _recommendations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recommendations';
        _recommendations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaRecommendationsData_Media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaRecommendationsData_Media_recommendations
    extends GMediaRecommendationsData_Media_recommendations {
  @override
  final String G__typename;
  @override
  final GMediaRecommendationsData_Media_recommendations_pageInfo? pageInfo;
  @override
  final BuiltList<GMediaRecommendationsData_Media_recommendations_nodes?>?
      nodes;

  factory _$GMediaRecommendationsData_Media_recommendations(
          [void Function(
                  GMediaRecommendationsData_Media_recommendationsBuilder)?
              updates]) =>
      (new GMediaRecommendationsData_Media_recommendationsBuilder()
            ..update(updates))
          ._build();

  _$GMediaRecommendationsData_Media_recommendations._(
      {required this.G__typename, this.pageInfo, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaRecommendationsData_Media_recommendations', 'G__typename');
  }

  @override
  GMediaRecommendationsData_Media_recommendations rebuild(
          void Function(GMediaRecommendationsData_Media_recommendationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaRecommendationsData_Media_recommendationsBuilder toBuilder() =>
      new GMediaRecommendationsData_Media_recommendationsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaRecommendationsData_Media_recommendations &&
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
    return (newBuiltValueToStringHelper(
            r'GMediaRecommendationsData_Media_recommendations')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('nodes', nodes))
        .toString();
  }
}

class GMediaRecommendationsData_Media_recommendationsBuilder
    implements
        Builder<GMediaRecommendationsData_Media_recommendations,
            GMediaRecommendationsData_Media_recommendationsBuilder> {
  _$GMediaRecommendationsData_Media_recommendations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaRecommendationsData_Media_recommendations_pageInfoBuilder? _pageInfo;
  GMediaRecommendationsData_Media_recommendations_pageInfoBuilder
      get pageInfo => _$this._pageInfo ??=
          new GMediaRecommendationsData_Media_recommendations_pageInfoBuilder();
  set pageInfo(
          GMediaRecommendationsData_Media_recommendations_pageInfoBuilder?
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GMediaRecommendationsData_Media_recommendations_nodes?>? _nodes;
  ListBuilder<GMediaRecommendationsData_Media_recommendations_nodes?>
      get nodes => _$this._nodes ??= new ListBuilder<
          GMediaRecommendationsData_Media_recommendations_nodes?>();
  set nodes(
          ListBuilder<GMediaRecommendationsData_Media_recommendations_nodes?>?
              nodes) =>
      _$this._nodes = nodes;

  GMediaRecommendationsData_Media_recommendationsBuilder() {
    GMediaRecommendationsData_Media_recommendations._initializeBuilder(this);
  }

  GMediaRecommendationsData_Media_recommendationsBuilder get _$this {
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
  void replace(GMediaRecommendationsData_Media_recommendations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaRecommendationsData_Media_recommendations;
  }

  @override
  void update(
      void Function(GMediaRecommendationsData_Media_recommendationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaRecommendationsData_Media_recommendations build() => _build();

  _$GMediaRecommendationsData_Media_recommendations _build() {
    _$GMediaRecommendationsData_Media_recommendations _$result;
    try {
      _$result = _$v ??
          new _$GMediaRecommendationsData_Media_recommendations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaRecommendationsData_Media_recommendations',
                  'G__typename'),
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
            r'GMediaRecommendationsData_Media_recommendations',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaRecommendationsData_Media_recommendations_pageInfo
    extends GMediaRecommendationsData_Media_recommendations_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GMediaRecommendationsData_Media_recommendations_pageInfo(
          [void Function(
                  GMediaRecommendationsData_Media_recommendations_pageInfoBuilder)?
              updates]) =>
      (new GMediaRecommendationsData_Media_recommendations_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$GMediaRecommendationsData_Media_recommendations_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaRecommendationsData_Media_recommendations_pageInfo',
        'G__typename');
  }

  @override
  GMediaRecommendationsData_Media_recommendations_pageInfo rebuild(
          void Function(
                  GMediaRecommendationsData_Media_recommendations_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaRecommendationsData_Media_recommendations_pageInfoBuilder toBuilder() =>
      new GMediaRecommendationsData_Media_recommendations_pageInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaRecommendationsData_Media_recommendations_pageInfo &&
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
    return (newBuiltValueToStringHelper(
            r'GMediaRecommendationsData_Media_recommendations_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GMediaRecommendationsData_Media_recommendations_pageInfoBuilder
    implements
        Builder<GMediaRecommendationsData_Media_recommendations_pageInfo,
            GMediaRecommendationsData_Media_recommendations_pageInfoBuilder> {
  _$GMediaRecommendationsData_Media_recommendations_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GMediaRecommendationsData_Media_recommendations_pageInfoBuilder() {
    GMediaRecommendationsData_Media_recommendations_pageInfo._initializeBuilder(
        this);
  }

  GMediaRecommendationsData_Media_recommendations_pageInfoBuilder get _$this {
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
  void replace(GMediaRecommendationsData_Media_recommendations_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaRecommendationsData_Media_recommendations_pageInfo;
  }

  @override
  void update(
      void Function(
              GMediaRecommendationsData_Media_recommendations_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaRecommendationsData_Media_recommendations_pageInfo build() => _build();

  _$GMediaRecommendationsData_Media_recommendations_pageInfo _build() {
    final _$result = _$v ??
        new _$GMediaRecommendationsData_Media_recommendations_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaRecommendationsData_Media_recommendations_pageInfo',
                'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaRecommendationsData_Media_recommendations_nodes
    extends GMediaRecommendationsData_Media_recommendations_nodes {
  @override
  final String G__typename;
  @override
  final GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation?
      mediaRecommendation;

  factory _$GMediaRecommendationsData_Media_recommendations_nodes(
          [void Function(
                  GMediaRecommendationsData_Media_recommendations_nodesBuilder)?
              updates]) =>
      (new GMediaRecommendationsData_Media_recommendations_nodesBuilder()
            ..update(updates))
          ._build();

  _$GMediaRecommendationsData_Media_recommendations_nodes._(
      {required this.G__typename, this.mediaRecommendation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaRecommendationsData_Media_recommendations_nodes',
        'G__typename');
  }

  @override
  GMediaRecommendationsData_Media_recommendations_nodes rebuild(
          void Function(
                  GMediaRecommendationsData_Media_recommendations_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaRecommendationsData_Media_recommendations_nodesBuilder toBuilder() =>
      new GMediaRecommendationsData_Media_recommendations_nodesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaRecommendationsData_Media_recommendations_nodes &&
        G__typename == other.G__typename &&
        mediaRecommendation == other.mediaRecommendation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, mediaRecommendation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaRecommendationsData_Media_recommendations_nodes')
          ..add('G__typename', G__typename)
          ..add('mediaRecommendation', mediaRecommendation))
        .toString();
  }
}

class GMediaRecommendationsData_Media_recommendations_nodesBuilder
    implements
        Builder<GMediaRecommendationsData_Media_recommendations_nodes,
            GMediaRecommendationsData_Media_recommendations_nodesBuilder> {
  _$GMediaRecommendationsData_Media_recommendations_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder?
      _mediaRecommendation;
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder
      get mediaRecommendation => _$this._mediaRecommendation ??=
          new GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder();
  set mediaRecommendation(
          GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder?
              mediaRecommendation) =>
      _$this._mediaRecommendation = mediaRecommendation;

  GMediaRecommendationsData_Media_recommendations_nodesBuilder() {
    GMediaRecommendationsData_Media_recommendations_nodes._initializeBuilder(
        this);
  }

  GMediaRecommendationsData_Media_recommendations_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _mediaRecommendation = $v.mediaRecommendation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaRecommendationsData_Media_recommendations_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaRecommendationsData_Media_recommendations_nodes;
  }

  @override
  void update(
      void Function(
              GMediaRecommendationsData_Media_recommendations_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaRecommendationsData_Media_recommendations_nodes build() => _build();

  _$GMediaRecommendationsData_Media_recommendations_nodes _build() {
    _$GMediaRecommendationsData_Media_recommendations_nodes _$result;
    try {
      _$result = _$v ??
          new _$GMediaRecommendationsData_Media_recommendations_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaRecommendationsData_Media_recommendations_nodes',
                  'G__typename'),
              mediaRecommendation: _mediaRecommendation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaRecommendation';
        _mediaRecommendation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaRecommendationsData_Media_recommendations_nodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
    extends GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation {
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
  final GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title?
      title;
  @override
  final GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage?
      coverImage;

  factory _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation(
          [void Function(
                  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder)?
              updates]) =>
      (new GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder()
            ..update(updates))
          ._build();

  _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation._(
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
        G__typename,
        r'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation',
        'id');
  }

  @override
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation rebuild(
          void Function(
                  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder
      toBuilder() =>
          new GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation &&
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
            r'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation')
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

class GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder
    implements
        Builder<
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation,
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder> {
  _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation?
      _$v;

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

  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder?
      _title;
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder
      get title => _$this._title ??=
          new GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder();
  set title(
          GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder?
              title) =>
      _$this._title = title;

  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder?
      _coverImage;
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder();
  set coverImage(
          GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder() {
    GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
        ._initializeBuilder(this);
  }

  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder
      get _$this {
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
  void replace(
      GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation;
  }

  @override
  void update(
      void Function(
              GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
      build() => _build();

  _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
      _build() {
    _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
        _$result;
    try {
      _$result = _$v ??
          new _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation',
                  'id'),
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
            r'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
    extends GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title(
          [void Function(
                  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder)?
              updates]) =>
      (new GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder()
            ..update(updates))
          ._build();

  _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title',
        'G__typename');
  }

  @override
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
      rebuild(
              void Function(
                      GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder
      toBuilder() =>
          new GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title &&
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
            r'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder
    implements
        Builder<
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title,
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder> {
  _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder() {
    GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
        ._initializeBuilder(this);
  }

  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title;
  }

  @override
  void update(
      void Function(
              GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
      build() => _build();

  _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
      _build() {
    final _$result = _$v ??
        new _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
    extends GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage(
          [void Function(
                  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder)?
              updates]) =>
      (new GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage',
        'G__typename');
  }

  @override
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
      rebuild(
              void Function(
                      GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder
      toBuilder() =>
          new GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage &&
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
            r'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder
    implements
        Builder<
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage,
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder> {
  _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder() {
    GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
        ._initializeBuilder(this);
  }

  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder
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
      GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage;
  }

  @override
  void update(
      void Function(
              GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
      build() => _build();

  _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
      _build() {
    final _$result = _$v ??
        new _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
