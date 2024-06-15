// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_card.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GEmbedMediaCardData> _$gEmbedMediaCardDataSerializer =
    new _$GEmbedMediaCardDataSerializer();
Serializer<GEmbedMediaCardData_Media> _$gEmbedMediaCardDataMediaSerializer =
    new _$GEmbedMediaCardData_MediaSerializer();
Serializer<GEmbedMediaCardData_Media_title>
    _$gEmbedMediaCardDataMediaTitleSerializer =
    new _$GEmbedMediaCardData_Media_titleSerializer();
Serializer<GEmbedMediaCardData_Media_coverImage>
    _$gEmbedMediaCardDataMediaCoverImageSerializer =
    new _$GEmbedMediaCardData_Media_coverImageSerializer();

class _$GEmbedMediaCardDataSerializer
    implements StructuredSerializer<GEmbedMediaCardData> {
  @override
  final Iterable<Type> types = const [
    GEmbedMediaCardData,
    _$GEmbedMediaCardData
  ];
  @override
  final String wireName = 'GEmbedMediaCardData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GEmbedMediaCardData object,
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
            specifiedType: const FullType(GEmbedMediaCardData_Media)));
    }
    return result;
  }

  @override
  GEmbedMediaCardData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEmbedMediaCardDataBuilder();

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
                  specifiedType: const FullType(GEmbedMediaCardData_Media))!
              as GEmbedMediaCardData_Media);
          break;
      }
    }

    return result.build();
  }
}

class _$GEmbedMediaCardData_MediaSerializer
    implements StructuredSerializer<GEmbedMediaCardData_Media> {
  @override
  final Iterable<Type> types = const [
    GEmbedMediaCardData_Media,
    _$GEmbedMediaCardData_Media
  ];
  @override
  final String wireName = 'GEmbedMediaCardData_Media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GEmbedMediaCardData_Media object,
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
            specifiedType: const FullType(_i3.GMediaType)));
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
            specifiedType: const FullType(_i3.GMediaFormat)));
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
            specifiedType: const FullType(GEmbedMediaCardData_Media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GEmbedMediaCardData_Media_coverImage)));
    }
    return result;
  }

  @override
  GEmbedMediaCardData_Media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEmbedMediaCardData_MediaBuilder();

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
              specifiedType: const FullType(_i3.GMediaType)) as _i3.GMediaType?;
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
                  specifiedType: const FullType(_i3.GMediaFormat))
              as _i3.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GEmbedMediaCardData_Media_title))!
              as GEmbedMediaCardData_Media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GEmbedMediaCardData_Media_coverImage))!
              as GEmbedMediaCardData_Media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GEmbedMediaCardData_Media_titleSerializer
    implements StructuredSerializer<GEmbedMediaCardData_Media_title> {
  @override
  final Iterable<Type> types = const [
    GEmbedMediaCardData_Media_title,
    _$GEmbedMediaCardData_Media_title
  ];
  @override
  final String wireName = 'GEmbedMediaCardData_Media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GEmbedMediaCardData_Media_title object,
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
  GEmbedMediaCardData_Media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEmbedMediaCardData_Media_titleBuilder();

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

class _$GEmbedMediaCardData_Media_coverImageSerializer
    implements StructuredSerializer<GEmbedMediaCardData_Media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GEmbedMediaCardData_Media_coverImage,
    _$GEmbedMediaCardData_Media_coverImage
  ];
  @override
  final String wireName = 'GEmbedMediaCardData_Media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GEmbedMediaCardData_Media_coverImage object,
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
  GEmbedMediaCardData_Media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEmbedMediaCardData_Media_coverImageBuilder();

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

class _$GEmbedMediaCardData extends GEmbedMediaCardData {
  @override
  final String G__typename;
  @override
  final GEmbedMediaCardData_Media? Media;

  factory _$GEmbedMediaCardData(
          [void Function(GEmbedMediaCardDataBuilder)? updates]) =>
      (new GEmbedMediaCardDataBuilder()..update(updates))._build();

  _$GEmbedMediaCardData._({required this.G__typename, this.Media}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GEmbedMediaCardData', 'G__typename');
  }

  @override
  GEmbedMediaCardData rebuild(
          void Function(GEmbedMediaCardDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEmbedMediaCardDataBuilder toBuilder() =>
      new GEmbedMediaCardDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEmbedMediaCardData &&
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
    return (newBuiltValueToStringHelper(r'GEmbedMediaCardData')
          ..add('G__typename', G__typename)
          ..add('Media', Media))
        .toString();
  }
}

class GEmbedMediaCardDataBuilder
    implements Builder<GEmbedMediaCardData, GEmbedMediaCardDataBuilder> {
  _$GEmbedMediaCardData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GEmbedMediaCardData_MediaBuilder? _Media;
  GEmbedMediaCardData_MediaBuilder get Media =>
      _$this._Media ??= new GEmbedMediaCardData_MediaBuilder();
  set Media(GEmbedMediaCardData_MediaBuilder? Media) => _$this._Media = Media;

  GEmbedMediaCardDataBuilder() {
    GEmbedMediaCardData._initializeBuilder(this);
  }

  GEmbedMediaCardDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Media = $v.Media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEmbedMediaCardData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEmbedMediaCardData;
  }

  @override
  void update(void Function(GEmbedMediaCardDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEmbedMediaCardData build() => _build();

  _$GEmbedMediaCardData _build() {
    _$GEmbedMediaCardData _$result;
    try {
      _$result = _$v ??
          new _$GEmbedMediaCardData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GEmbedMediaCardData', 'G__typename'),
              Media: _Media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Media';
        _Media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GEmbedMediaCardData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GEmbedMediaCardData_Media extends GEmbedMediaCardData_Media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i3.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i3.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GEmbedMediaCardData_Media_title? title;
  @override
  final GEmbedMediaCardData_Media_coverImage? coverImage;

  factory _$GEmbedMediaCardData_Media(
          [void Function(GEmbedMediaCardData_MediaBuilder)? updates]) =>
      (new GEmbedMediaCardData_MediaBuilder()..update(updates))._build();

  _$GEmbedMediaCardData_Media._(
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
        G__typename, r'GEmbedMediaCardData_Media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GEmbedMediaCardData_Media', 'id');
  }

  @override
  GEmbedMediaCardData_Media rebuild(
          void Function(GEmbedMediaCardData_MediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEmbedMediaCardData_MediaBuilder toBuilder() =>
      new GEmbedMediaCardData_MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEmbedMediaCardData_Media &&
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
    return (newBuiltValueToStringHelper(r'GEmbedMediaCardData_Media')
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

class GEmbedMediaCardData_MediaBuilder
    implements
        Builder<GEmbedMediaCardData_Media, GEmbedMediaCardData_MediaBuilder> {
  _$GEmbedMediaCardData_Media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i3.GMediaType? _type;
  _i3.GMediaType? get type => _$this._type;
  set type(_i3.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i3.GMediaFormat? _format;
  _i3.GMediaFormat? get format => _$this._format;
  set format(_i3.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GEmbedMediaCardData_Media_titleBuilder? _title;
  GEmbedMediaCardData_Media_titleBuilder get title =>
      _$this._title ??= new GEmbedMediaCardData_Media_titleBuilder();
  set title(GEmbedMediaCardData_Media_titleBuilder? title) =>
      _$this._title = title;

  GEmbedMediaCardData_Media_coverImageBuilder? _coverImage;
  GEmbedMediaCardData_Media_coverImageBuilder get coverImage =>
      _$this._coverImage ??= new GEmbedMediaCardData_Media_coverImageBuilder();
  set coverImage(GEmbedMediaCardData_Media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GEmbedMediaCardData_MediaBuilder() {
    GEmbedMediaCardData_Media._initializeBuilder(this);
  }

  GEmbedMediaCardData_MediaBuilder get _$this {
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
  void replace(GEmbedMediaCardData_Media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEmbedMediaCardData_Media;
  }

  @override
  void update(void Function(GEmbedMediaCardData_MediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEmbedMediaCardData_Media build() => _build();

  _$GEmbedMediaCardData_Media _build() {
    _$GEmbedMediaCardData_Media _$result;
    try {
      _$result = _$v ??
          new _$GEmbedMediaCardData_Media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GEmbedMediaCardData_Media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GEmbedMediaCardData_Media', 'id'),
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
            r'GEmbedMediaCardData_Media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GEmbedMediaCardData_Media_title
    extends GEmbedMediaCardData_Media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GEmbedMediaCardData_Media_title(
          [void Function(GEmbedMediaCardData_Media_titleBuilder)? updates]) =>
      (new GEmbedMediaCardData_Media_titleBuilder()..update(updates))._build();

  _$GEmbedMediaCardData_Media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GEmbedMediaCardData_Media_title', 'G__typename');
  }

  @override
  GEmbedMediaCardData_Media_title rebuild(
          void Function(GEmbedMediaCardData_Media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEmbedMediaCardData_Media_titleBuilder toBuilder() =>
      new GEmbedMediaCardData_Media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEmbedMediaCardData_Media_title &&
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
    return (newBuiltValueToStringHelper(r'GEmbedMediaCardData_Media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GEmbedMediaCardData_Media_titleBuilder
    implements
        Builder<GEmbedMediaCardData_Media_title,
            GEmbedMediaCardData_Media_titleBuilder> {
  _$GEmbedMediaCardData_Media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GEmbedMediaCardData_Media_titleBuilder() {
    GEmbedMediaCardData_Media_title._initializeBuilder(this);
  }

  GEmbedMediaCardData_Media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEmbedMediaCardData_Media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEmbedMediaCardData_Media_title;
  }

  @override
  void update(void Function(GEmbedMediaCardData_Media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEmbedMediaCardData_Media_title build() => _build();

  _$GEmbedMediaCardData_Media_title _build() {
    final _$result = _$v ??
        new _$GEmbedMediaCardData_Media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GEmbedMediaCardData_Media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GEmbedMediaCardData_Media_coverImage
    extends GEmbedMediaCardData_Media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GEmbedMediaCardData_Media_coverImage(
          [void Function(GEmbedMediaCardData_Media_coverImageBuilder)?
              updates]) =>
      (new GEmbedMediaCardData_Media_coverImageBuilder()..update(updates))
          ._build();

  _$GEmbedMediaCardData_Media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GEmbedMediaCardData_Media_coverImage', 'G__typename');
  }

  @override
  GEmbedMediaCardData_Media_coverImage rebuild(
          void Function(GEmbedMediaCardData_Media_coverImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEmbedMediaCardData_Media_coverImageBuilder toBuilder() =>
      new GEmbedMediaCardData_Media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEmbedMediaCardData_Media_coverImage &&
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
    return (newBuiltValueToStringHelper(r'GEmbedMediaCardData_Media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GEmbedMediaCardData_Media_coverImageBuilder
    implements
        Builder<GEmbedMediaCardData_Media_coverImage,
            GEmbedMediaCardData_Media_coverImageBuilder> {
  _$GEmbedMediaCardData_Media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GEmbedMediaCardData_Media_coverImageBuilder() {
    GEmbedMediaCardData_Media_coverImage._initializeBuilder(this);
  }

  GEmbedMediaCardData_Media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEmbedMediaCardData_Media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEmbedMediaCardData_Media_coverImage;
  }

  @override
  void update(
      void Function(GEmbedMediaCardData_Media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEmbedMediaCardData_Media_coverImage build() => _build();

  _$GEmbedMediaCardData_Media_coverImage _build() {
    final _$result = _$v ??
        new _$GEmbedMediaCardData_Media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GEmbedMediaCardData_Media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
