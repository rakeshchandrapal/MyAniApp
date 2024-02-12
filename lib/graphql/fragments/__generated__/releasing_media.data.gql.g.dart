// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'releasing_media.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReleasingMediaData> _$gReleasingMediaDataSerializer =
    new _$GReleasingMediaDataSerializer();
Serializer<GReleasingMediaData_title> _$gReleasingMediaDataTitleSerializer =
    new _$GReleasingMediaData_titleSerializer();
Serializer<GReleasingMediaData_coverImage>
    _$gReleasingMediaDataCoverImageSerializer =
    new _$GReleasingMediaData_coverImageSerializer();
Serializer<GReleasingMediaData_nextAiringEpisode>
    _$gReleasingMediaDataNextAiringEpisodeSerializer =
    new _$GReleasingMediaData_nextAiringEpisodeSerializer();
Serializer<GReleasingMediaData_airingSchedule>
    _$gReleasingMediaDataAiringScheduleSerializer =
    new _$GReleasingMediaData_airingScheduleSerializer();
Serializer<GReleasingMediaData_airingSchedule_edges>
    _$gReleasingMediaDataAiringScheduleEdgesSerializer =
    new _$GReleasingMediaData_airingSchedule_edgesSerializer();
Serializer<GReleasingMediaData_airingSchedule_edges_node>
    _$gReleasingMediaDataAiringScheduleEdgesNodeSerializer =
    new _$GReleasingMediaData_airingSchedule_edges_nodeSerializer();

class _$GReleasingMediaDataSerializer
    implements StructuredSerializer<GReleasingMediaData> {
  @override
  final Iterable<Type> types = const [
    GReleasingMediaData,
    _$GReleasingMediaData
  ];
  @override
  final String wireName = 'GReleasingMediaData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReleasingMediaData object,
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
            specifiedType: const FullType(_i2.GMediaType)));
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
            specifiedType: const FullType(_i2.GMediaFormat)));
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
            specifiedType: const FullType(GReleasingMediaData_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReleasingMediaData_coverImage)));
    }
    value = object.nextAiringEpisode;
    if (value != null) {
      result
        ..add('nextAiringEpisode')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GReleasingMediaData_nextAiringEpisode)));
    }
    value = object.airingSchedule;
    if (value != null) {
      result
        ..add('airingSchedule')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReleasingMediaData_airingSchedule)));
    }
    return result;
  }

  @override
  GReleasingMediaData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasingMediaDataBuilder();

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
              specifiedType: const FullType(_i2.GMediaType)) as _i2.GMediaType?;
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
                  specifiedType: const FullType(_i2.GMediaFormat))
              as _i2.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GReleasingMediaData_title))!
              as GReleasingMediaData_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReleasingMediaData_coverImage))!
              as GReleasingMediaData_coverImage);
          break;
        case 'nextAiringEpisode':
          result.nextAiringEpisode.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReleasingMediaData_nextAiringEpisode))!
              as GReleasingMediaData_nextAiringEpisode);
          break;
        case 'airingSchedule':
          result.airingSchedule.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReleasingMediaData_airingSchedule))!
              as GReleasingMediaData_airingSchedule);
          break;
      }
    }

    return result.build();
  }
}

class _$GReleasingMediaData_titleSerializer
    implements StructuredSerializer<GReleasingMediaData_title> {
  @override
  final Iterable<Type> types = const [
    GReleasingMediaData_title,
    _$GReleasingMediaData_title
  ];
  @override
  final String wireName = 'GReleasingMediaData_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReleasingMediaData_title object,
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
  GReleasingMediaData_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasingMediaData_titleBuilder();

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

class _$GReleasingMediaData_coverImageSerializer
    implements StructuredSerializer<GReleasingMediaData_coverImage> {
  @override
  final Iterable<Type> types = const [
    GReleasingMediaData_coverImage,
    _$GReleasingMediaData_coverImage
  ];
  @override
  final String wireName = 'GReleasingMediaData_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReleasingMediaData_coverImage object,
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
  GReleasingMediaData_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasingMediaData_coverImageBuilder();

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

class _$GReleasingMediaData_nextAiringEpisodeSerializer
    implements StructuredSerializer<GReleasingMediaData_nextAiringEpisode> {
  @override
  final Iterable<Type> types = const [
    GReleasingMediaData_nextAiringEpisode,
    _$GReleasingMediaData_nextAiringEpisode
  ];
  @override
  final String wireName = 'GReleasingMediaData_nextAiringEpisode';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReleasingMediaData_nextAiringEpisode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'airingAt',
      serializers.serialize(object.airingAt,
          specifiedType: const FullType(int)),
      'timeUntilAiring',
      serializers.serialize(object.timeUntilAiring,
          specifiedType: const FullType(int)),
      'episode',
      serializers.serialize(object.episode, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GReleasingMediaData_nextAiringEpisode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasingMediaData_nextAiringEpisodeBuilder();

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
        case 'airingAt':
          result.airingAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'timeUntilAiring':
          result.timeUntilAiring = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'episode':
          result.episode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GReleasingMediaData_airingScheduleSerializer
    implements StructuredSerializer<GReleasingMediaData_airingSchedule> {
  @override
  final Iterable<Type> types = const [
    GReleasingMediaData_airingSchedule,
    _$GReleasingMediaData_airingSchedule
  ];
  @override
  final String wireName = 'GReleasingMediaData_airingSchedule';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReleasingMediaData_airingSchedule object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GReleasingMediaData_airingSchedule_edges)
            ])));
    }
    return result;
  }

  @override
  GReleasingMediaData_airingSchedule deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasingMediaData_airingScheduleBuilder();

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
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GReleasingMediaData_airingSchedule_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GReleasingMediaData_airingSchedule_edgesSerializer
    implements StructuredSerializer<GReleasingMediaData_airingSchedule_edges> {
  @override
  final Iterable<Type> types = const [
    GReleasingMediaData_airingSchedule_edges,
    _$GReleasingMediaData_airingSchedule_edges
  ];
  @override
  final String wireName = 'GReleasingMediaData_airingSchedule_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReleasingMediaData_airingSchedule_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GReleasingMediaData_airingSchedule_edges_node)));
    }
    return result;
  }

  @override
  GReleasingMediaData_airingSchedule_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasingMediaData_airingSchedule_edgesBuilder();

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
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GReleasingMediaData_airingSchedule_edges_node))!
              as GReleasingMediaData_airingSchedule_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GReleasingMediaData_airingSchedule_edges_nodeSerializer
    implements
        StructuredSerializer<GReleasingMediaData_airingSchedule_edges_node> {
  @override
  final Iterable<Type> types = const [
    GReleasingMediaData_airingSchedule_edges_node,
    _$GReleasingMediaData_airingSchedule_edges_node
  ];
  @override
  final String wireName = 'GReleasingMediaData_airingSchedule_edges_node';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GReleasingMediaData_airingSchedule_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'airingAt',
      serializers.serialize(object.airingAt,
          specifiedType: const FullType(int)),
      'timeUntilAiring',
      serializers.serialize(object.timeUntilAiring,
          specifiedType: const FullType(int)),
      'episode',
      serializers.serialize(object.episode, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GReleasingMediaData_airingSchedule_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasingMediaData_airingSchedule_edges_nodeBuilder();

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
        case 'airingAt':
          result.airingAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'timeUntilAiring':
          result.timeUntilAiring = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'episode':
          result.episode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GReleasingMediaData extends GReleasingMediaData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i2.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i2.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GReleasingMediaData_title? title;
  @override
  final GReleasingMediaData_coverImage? coverImage;
  @override
  final GReleasingMediaData_nextAiringEpisode? nextAiringEpisode;
  @override
  final GReleasingMediaData_airingSchedule? airingSchedule;

  factory _$GReleasingMediaData(
          [void Function(GReleasingMediaDataBuilder)? updates]) =>
      (new GReleasingMediaDataBuilder()..update(updates))._build();

  _$GReleasingMediaData._(
      {required this.G__typename,
      required this.id,
      this.type,
      this.isAdult,
      this.genres,
      this.format,
      this.description,
      this.title,
      this.coverImage,
      this.nextAiringEpisode,
      this.airingSchedule})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReleasingMediaData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GReleasingMediaData', 'id');
  }

  @override
  GReleasingMediaData rebuild(
          void Function(GReleasingMediaDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasingMediaDataBuilder toBuilder() =>
      new GReleasingMediaDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasingMediaData &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        isAdult == other.isAdult &&
        genres == other.genres &&
        format == other.format &&
        description == other.description &&
        title == other.title &&
        coverImage == other.coverImage &&
        nextAiringEpisode == other.nextAiringEpisode &&
        airingSchedule == other.airingSchedule;
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
    _$hash = $jc(_$hash, nextAiringEpisode.hashCode);
    _$hash = $jc(_$hash, airingSchedule.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReleasingMediaData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('isAdult', isAdult)
          ..add('genres', genres)
          ..add('format', format)
          ..add('description', description)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('nextAiringEpisode', nextAiringEpisode)
          ..add('airingSchedule', airingSchedule))
        .toString();
  }
}

class GReleasingMediaDataBuilder
    implements Builder<GReleasingMediaData, GReleasingMediaDataBuilder> {
  _$GReleasingMediaData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i2.GMediaType? _type;
  _i2.GMediaType? get type => _$this._type;
  set type(_i2.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i2.GMediaFormat? _format;
  _i2.GMediaFormat? get format => _$this._format;
  set format(_i2.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GReleasingMediaData_titleBuilder? _title;
  GReleasingMediaData_titleBuilder get title =>
      _$this._title ??= new GReleasingMediaData_titleBuilder();
  set title(GReleasingMediaData_titleBuilder? title) => _$this._title = title;

  GReleasingMediaData_coverImageBuilder? _coverImage;
  GReleasingMediaData_coverImageBuilder get coverImage =>
      _$this._coverImage ??= new GReleasingMediaData_coverImageBuilder();
  set coverImage(GReleasingMediaData_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GReleasingMediaData_nextAiringEpisodeBuilder? _nextAiringEpisode;
  GReleasingMediaData_nextAiringEpisodeBuilder get nextAiringEpisode =>
      _$this._nextAiringEpisode ??=
          new GReleasingMediaData_nextAiringEpisodeBuilder();
  set nextAiringEpisode(
          GReleasingMediaData_nextAiringEpisodeBuilder? nextAiringEpisode) =>
      _$this._nextAiringEpisode = nextAiringEpisode;

  GReleasingMediaData_airingScheduleBuilder? _airingSchedule;
  GReleasingMediaData_airingScheduleBuilder get airingSchedule =>
      _$this._airingSchedule ??=
          new GReleasingMediaData_airingScheduleBuilder();
  set airingSchedule(
          GReleasingMediaData_airingScheduleBuilder? airingSchedule) =>
      _$this._airingSchedule = airingSchedule;

  GReleasingMediaDataBuilder() {
    GReleasingMediaData._initializeBuilder(this);
  }

  GReleasingMediaDataBuilder get _$this {
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
      _nextAiringEpisode = $v.nextAiringEpisode?.toBuilder();
      _airingSchedule = $v.airingSchedule?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasingMediaData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasingMediaData;
  }

  @override
  void update(void Function(GReleasingMediaDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasingMediaData build() => _build();

  _$GReleasingMediaData _build() {
    _$GReleasingMediaData _$result;
    try {
      _$result = _$v ??
          new _$GReleasingMediaData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReleasingMediaData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReleasingMediaData', 'id'),
              type: type,
              isAdult: isAdult,
              genres: _genres?.build(),
              format: format,
              description: description,
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              nextAiringEpisode: _nextAiringEpisode?.build(),
              airingSchedule: _airingSchedule?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
        _$failedField = 'nextAiringEpisode';
        _nextAiringEpisode?.build();
        _$failedField = 'airingSchedule';
        _airingSchedule?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReleasingMediaData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReleasingMediaData_title extends GReleasingMediaData_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GReleasingMediaData_title(
          [void Function(GReleasingMediaData_titleBuilder)? updates]) =>
      (new GReleasingMediaData_titleBuilder()..update(updates))._build();

  _$GReleasingMediaData_title._({required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReleasingMediaData_title', 'G__typename');
  }

  @override
  GReleasingMediaData_title rebuild(
          void Function(GReleasingMediaData_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasingMediaData_titleBuilder toBuilder() =>
      new GReleasingMediaData_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasingMediaData_title &&
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
    return (newBuiltValueToStringHelper(r'GReleasingMediaData_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GReleasingMediaData_titleBuilder
    implements
        Builder<GReleasingMediaData_title, GReleasingMediaData_titleBuilder> {
  _$GReleasingMediaData_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GReleasingMediaData_titleBuilder() {
    GReleasingMediaData_title._initializeBuilder(this);
  }

  GReleasingMediaData_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasingMediaData_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasingMediaData_title;
  }

  @override
  void update(void Function(GReleasingMediaData_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasingMediaData_title build() => _build();

  _$GReleasingMediaData_title _build() {
    final _$result = _$v ??
        new _$GReleasingMediaData_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GReleasingMediaData_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GReleasingMediaData_coverImage extends GReleasingMediaData_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GReleasingMediaData_coverImage(
          [void Function(GReleasingMediaData_coverImageBuilder)? updates]) =>
      (new GReleasingMediaData_coverImageBuilder()..update(updates))._build();

  _$GReleasingMediaData_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReleasingMediaData_coverImage', 'G__typename');
  }

  @override
  GReleasingMediaData_coverImage rebuild(
          void Function(GReleasingMediaData_coverImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasingMediaData_coverImageBuilder toBuilder() =>
      new GReleasingMediaData_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasingMediaData_coverImage &&
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
    return (newBuiltValueToStringHelper(r'GReleasingMediaData_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GReleasingMediaData_coverImageBuilder
    implements
        Builder<GReleasingMediaData_coverImage,
            GReleasingMediaData_coverImageBuilder> {
  _$GReleasingMediaData_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GReleasingMediaData_coverImageBuilder() {
    GReleasingMediaData_coverImage._initializeBuilder(this);
  }

  GReleasingMediaData_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasingMediaData_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasingMediaData_coverImage;
  }

  @override
  void update(void Function(GReleasingMediaData_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasingMediaData_coverImage build() => _build();

  _$GReleasingMediaData_coverImage _build() {
    final _$result = _$v ??
        new _$GReleasingMediaData_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GReleasingMediaData_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GReleasingMediaData_nextAiringEpisode
    extends GReleasingMediaData_nextAiringEpisode {
  @override
  final String G__typename;
  @override
  final int airingAt;
  @override
  final int timeUntilAiring;
  @override
  final int episode;

  factory _$GReleasingMediaData_nextAiringEpisode(
          [void Function(GReleasingMediaData_nextAiringEpisodeBuilder)?
              updates]) =>
      (new GReleasingMediaData_nextAiringEpisodeBuilder()..update(updates))
          ._build();

  _$GReleasingMediaData_nextAiringEpisode._(
      {required this.G__typename,
      required this.airingAt,
      required this.timeUntilAiring,
      required this.episode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReleasingMediaData_nextAiringEpisode', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        airingAt, r'GReleasingMediaData_nextAiringEpisode', 'airingAt');
    BuiltValueNullFieldError.checkNotNull(timeUntilAiring,
        r'GReleasingMediaData_nextAiringEpisode', 'timeUntilAiring');
    BuiltValueNullFieldError.checkNotNull(
        episode, r'GReleasingMediaData_nextAiringEpisode', 'episode');
  }

  @override
  GReleasingMediaData_nextAiringEpisode rebuild(
          void Function(GReleasingMediaData_nextAiringEpisodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasingMediaData_nextAiringEpisodeBuilder toBuilder() =>
      new GReleasingMediaData_nextAiringEpisodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasingMediaData_nextAiringEpisode &&
        G__typename == other.G__typename &&
        airingAt == other.airingAt &&
        timeUntilAiring == other.timeUntilAiring &&
        episode == other.episode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, airingAt.hashCode);
    _$hash = $jc(_$hash, timeUntilAiring.hashCode);
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GReleasingMediaData_nextAiringEpisode')
          ..add('G__typename', G__typename)
          ..add('airingAt', airingAt)
          ..add('timeUntilAiring', timeUntilAiring)
          ..add('episode', episode))
        .toString();
  }
}

class GReleasingMediaData_nextAiringEpisodeBuilder
    implements
        Builder<GReleasingMediaData_nextAiringEpisode,
            GReleasingMediaData_nextAiringEpisodeBuilder> {
  _$GReleasingMediaData_nextAiringEpisode? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _airingAt;
  int? get airingAt => _$this._airingAt;
  set airingAt(int? airingAt) => _$this._airingAt = airingAt;

  int? _timeUntilAiring;
  int? get timeUntilAiring => _$this._timeUntilAiring;
  set timeUntilAiring(int? timeUntilAiring) =>
      _$this._timeUntilAiring = timeUntilAiring;

  int? _episode;
  int? get episode => _$this._episode;
  set episode(int? episode) => _$this._episode = episode;

  GReleasingMediaData_nextAiringEpisodeBuilder() {
    GReleasingMediaData_nextAiringEpisode._initializeBuilder(this);
  }

  GReleasingMediaData_nextAiringEpisodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _airingAt = $v.airingAt;
      _timeUntilAiring = $v.timeUntilAiring;
      _episode = $v.episode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasingMediaData_nextAiringEpisode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasingMediaData_nextAiringEpisode;
  }

  @override
  void update(
      void Function(GReleasingMediaData_nextAiringEpisodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasingMediaData_nextAiringEpisode build() => _build();

  _$GReleasingMediaData_nextAiringEpisode _build() {
    final _$result = _$v ??
        new _$GReleasingMediaData_nextAiringEpisode._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GReleasingMediaData_nextAiringEpisode', 'G__typename'),
            airingAt: BuiltValueNullFieldError.checkNotNull(
                airingAt, r'GReleasingMediaData_nextAiringEpisode', 'airingAt'),
            timeUntilAiring: BuiltValueNullFieldError.checkNotNull(
                timeUntilAiring,
                r'GReleasingMediaData_nextAiringEpisode',
                'timeUntilAiring'),
            episode: BuiltValueNullFieldError.checkNotNull(
                episode, r'GReleasingMediaData_nextAiringEpisode', 'episode'));
    replace(_$result);
    return _$result;
  }
}

class _$GReleasingMediaData_airingSchedule
    extends GReleasingMediaData_airingSchedule {
  @override
  final String G__typename;
  @override
  final BuiltList<GReleasingMediaData_airingSchedule_edges?>? edges;

  factory _$GReleasingMediaData_airingSchedule(
          [void Function(GReleasingMediaData_airingScheduleBuilder)?
              updates]) =>
      (new GReleasingMediaData_airingScheduleBuilder()..update(updates))
          ._build();

  _$GReleasingMediaData_airingSchedule._(
      {required this.G__typename, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReleasingMediaData_airingSchedule', 'G__typename');
  }

  @override
  GReleasingMediaData_airingSchedule rebuild(
          void Function(GReleasingMediaData_airingScheduleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasingMediaData_airingScheduleBuilder toBuilder() =>
      new GReleasingMediaData_airingScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasingMediaData_airingSchedule &&
        G__typename == other.G__typename &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReleasingMediaData_airingSchedule')
          ..add('G__typename', G__typename)
          ..add('edges', edges))
        .toString();
  }
}

class GReleasingMediaData_airingScheduleBuilder
    implements
        Builder<GReleasingMediaData_airingSchedule,
            GReleasingMediaData_airingScheduleBuilder> {
  _$GReleasingMediaData_airingSchedule? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GReleasingMediaData_airingSchedule_edges?>? _edges;
  ListBuilder<GReleasingMediaData_airingSchedule_edges?> get edges =>
      _$this._edges ??=
          new ListBuilder<GReleasingMediaData_airingSchedule_edges?>();
  set edges(ListBuilder<GReleasingMediaData_airingSchedule_edges?>? edges) =>
      _$this._edges = edges;

  GReleasingMediaData_airingScheduleBuilder() {
    GReleasingMediaData_airingSchedule._initializeBuilder(this);
  }

  GReleasingMediaData_airingScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasingMediaData_airingSchedule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasingMediaData_airingSchedule;
  }

  @override
  void update(
      void Function(GReleasingMediaData_airingScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasingMediaData_airingSchedule build() => _build();

  _$GReleasingMediaData_airingSchedule _build() {
    _$GReleasingMediaData_airingSchedule _$result;
    try {
      _$result = _$v ??
          new _$GReleasingMediaData_airingSchedule._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GReleasingMediaData_airingSchedule', 'G__typename'),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReleasingMediaData_airingSchedule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReleasingMediaData_airingSchedule_edges
    extends GReleasingMediaData_airingSchedule_edges {
  @override
  final String G__typename;
  @override
  final GReleasingMediaData_airingSchedule_edges_node? node;

  factory _$GReleasingMediaData_airingSchedule_edges(
          [void Function(GReleasingMediaData_airingSchedule_edgesBuilder)?
              updates]) =>
      (new GReleasingMediaData_airingSchedule_edgesBuilder()..update(updates))
          ._build();

  _$GReleasingMediaData_airingSchedule_edges._(
      {required this.G__typename, this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GReleasingMediaData_airingSchedule_edges', 'G__typename');
  }

  @override
  GReleasingMediaData_airingSchedule_edges rebuild(
          void Function(GReleasingMediaData_airingSchedule_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasingMediaData_airingSchedule_edgesBuilder toBuilder() =>
      new GReleasingMediaData_airingSchedule_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasingMediaData_airingSchedule_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GReleasingMediaData_airingSchedule_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GReleasingMediaData_airingSchedule_edgesBuilder
    implements
        Builder<GReleasingMediaData_airingSchedule_edges,
            GReleasingMediaData_airingSchedule_edgesBuilder> {
  _$GReleasingMediaData_airingSchedule_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReleasingMediaData_airingSchedule_edges_nodeBuilder? _node;
  GReleasingMediaData_airingSchedule_edges_nodeBuilder get node =>
      _$this._node ??=
          new GReleasingMediaData_airingSchedule_edges_nodeBuilder();
  set node(GReleasingMediaData_airingSchedule_edges_nodeBuilder? node) =>
      _$this._node = node;

  GReleasingMediaData_airingSchedule_edgesBuilder() {
    GReleasingMediaData_airingSchedule_edges._initializeBuilder(this);
  }

  GReleasingMediaData_airingSchedule_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasingMediaData_airingSchedule_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasingMediaData_airingSchedule_edges;
  }

  @override
  void update(
      void Function(GReleasingMediaData_airingSchedule_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasingMediaData_airingSchedule_edges build() => _build();

  _$GReleasingMediaData_airingSchedule_edges _build() {
    _$GReleasingMediaData_airingSchedule_edges _$result;
    try {
      _$result = _$v ??
          new _$GReleasingMediaData_airingSchedule_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GReleasingMediaData_airingSchedule_edges', 'G__typename'),
              node: _node?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReleasingMediaData_airingSchedule_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReleasingMediaData_airingSchedule_edges_node
    extends GReleasingMediaData_airingSchedule_edges_node {
  @override
  final String G__typename;
  @override
  final int airingAt;
  @override
  final int timeUntilAiring;
  @override
  final int episode;

  factory _$GReleasingMediaData_airingSchedule_edges_node(
          [void Function(GReleasingMediaData_airingSchedule_edges_nodeBuilder)?
              updates]) =>
      (new GReleasingMediaData_airingSchedule_edges_nodeBuilder()
            ..update(updates))
          ._build();

  _$GReleasingMediaData_airingSchedule_edges_node._(
      {required this.G__typename,
      required this.airingAt,
      required this.timeUntilAiring,
      required this.episode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GReleasingMediaData_airingSchedule_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        airingAt, r'GReleasingMediaData_airingSchedule_edges_node', 'airingAt');
    BuiltValueNullFieldError.checkNotNull(timeUntilAiring,
        r'GReleasingMediaData_airingSchedule_edges_node', 'timeUntilAiring');
    BuiltValueNullFieldError.checkNotNull(
        episode, r'GReleasingMediaData_airingSchedule_edges_node', 'episode');
  }

  @override
  GReleasingMediaData_airingSchedule_edges_node rebuild(
          void Function(GReleasingMediaData_airingSchedule_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasingMediaData_airingSchedule_edges_nodeBuilder toBuilder() =>
      new GReleasingMediaData_airingSchedule_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasingMediaData_airingSchedule_edges_node &&
        G__typename == other.G__typename &&
        airingAt == other.airingAt &&
        timeUntilAiring == other.timeUntilAiring &&
        episode == other.episode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, airingAt.hashCode);
    _$hash = $jc(_$hash, timeUntilAiring.hashCode);
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GReleasingMediaData_airingSchedule_edges_node')
          ..add('G__typename', G__typename)
          ..add('airingAt', airingAt)
          ..add('timeUntilAiring', timeUntilAiring)
          ..add('episode', episode))
        .toString();
  }
}

class GReleasingMediaData_airingSchedule_edges_nodeBuilder
    implements
        Builder<GReleasingMediaData_airingSchedule_edges_node,
            GReleasingMediaData_airingSchedule_edges_nodeBuilder> {
  _$GReleasingMediaData_airingSchedule_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _airingAt;
  int? get airingAt => _$this._airingAt;
  set airingAt(int? airingAt) => _$this._airingAt = airingAt;

  int? _timeUntilAiring;
  int? get timeUntilAiring => _$this._timeUntilAiring;
  set timeUntilAiring(int? timeUntilAiring) =>
      _$this._timeUntilAiring = timeUntilAiring;

  int? _episode;
  int? get episode => _$this._episode;
  set episode(int? episode) => _$this._episode = episode;

  GReleasingMediaData_airingSchedule_edges_nodeBuilder() {
    GReleasingMediaData_airingSchedule_edges_node._initializeBuilder(this);
  }

  GReleasingMediaData_airingSchedule_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _airingAt = $v.airingAt;
      _timeUntilAiring = $v.timeUntilAiring;
      _episode = $v.episode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasingMediaData_airingSchedule_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasingMediaData_airingSchedule_edges_node;
  }

  @override
  void update(
      void Function(GReleasingMediaData_airingSchedule_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasingMediaData_airingSchedule_edges_node build() => _build();

  _$GReleasingMediaData_airingSchedule_edges_node _build() {
    final _$result = _$v ??
        new _$GReleasingMediaData_airingSchedule_edges_node._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GReleasingMediaData_airingSchedule_edges_node',
                'G__typename'),
            airingAt: BuiltValueNullFieldError.checkNotNull(airingAt,
                r'GReleasingMediaData_airingSchedule_edges_node', 'airingAt'),
            timeUntilAiring: BuiltValueNullFieldError.checkNotNull(
                timeUntilAiring,
                r'GReleasingMediaData_airingSchedule_edges_node',
                'timeUntilAiring'),
            episode: BuiltValueNullFieldError.checkNotNull(episode,
                r'GReleasingMediaData_airingSchedule_edges_node', 'episode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
