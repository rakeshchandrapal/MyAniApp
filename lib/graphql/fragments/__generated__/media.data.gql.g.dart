// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaFragmentData> _$gMediaFragmentDataSerializer =
    new _$GMediaFragmentDataSerializer();
Serializer<GMediaFragmentData_title> _$gMediaFragmentDataTitleSerializer =
    new _$GMediaFragmentData_titleSerializer();
Serializer<GMediaFragmentData_coverImage>
    _$gMediaFragmentDataCoverImageSerializer =
    new _$GMediaFragmentData_coverImageSerializer();

class _$GMediaFragmentDataSerializer
    implements StructuredSerializer<GMediaFragmentData> {
  @override
  final Iterable<Type> types = const [GMediaFragmentData, _$GMediaFragmentData];
  @override
  final String wireName = 'GMediaFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaFragmentData object,
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
            specifiedType: const FullType(_i1.GMediaType)));
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
            specifiedType: const FullType(_i1.GMediaFormat)));
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
            specifiedType: const FullType(GMediaFragmentData_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaFragmentData_coverImage)));
    }
    return result;
  }

  @override
  GMediaFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaFragmentDataBuilder();

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
              specifiedType: const FullType(_i1.GMediaType)) as _i1.GMediaType?;
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
                  specifiedType: const FullType(_i1.GMediaFormat))
              as _i1.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaFragmentData_title))!
              as GMediaFragmentData_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaFragmentData_coverImage))!
              as GMediaFragmentData_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaFragmentData_titleSerializer
    implements StructuredSerializer<GMediaFragmentData_title> {
  @override
  final Iterable<Type> types = const [
    GMediaFragmentData_title,
    _$GMediaFragmentData_title
  ];
  @override
  final String wireName = 'GMediaFragmentData_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaFragmentData_title object,
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
  GMediaFragmentData_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaFragmentData_titleBuilder();

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

class _$GMediaFragmentData_coverImageSerializer
    implements StructuredSerializer<GMediaFragmentData_coverImage> {
  @override
  final Iterable<Type> types = const [
    GMediaFragmentData_coverImage,
    _$GMediaFragmentData_coverImage
  ];
  @override
  final String wireName = 'GMediaFragmentData_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaFragmentData_coverImage object,
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
  GMediaFragmentData_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaFragmentData_coverImageBuilder();

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

class _$GMediaFragmentData extends GMediaFragmentData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i1.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i1.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GMediaFragmentData_title? title;
  @override
  final GMediaFragmentData_coverImage? coverImage;

  factory _$GMediaFragmentData(
          [void Function(GMediaFragmentDataBuilder)? updates]) =>
      (new GMediaFragmentDataBuilder()..update(updates))._build();

  _$GMediaFragmentData._(
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
        G__typename, r'GMediaFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GMediaFragmentData', 'id');
  }

  @override
  GMediaFragmentData rebuild(
          void Function(GMediaFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaFragmentDataBuilder toBuilder() =>
      new GMediaFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaFragmentData &&
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
    return (newBuiltValueToStringHelper(r'GMediaFragmentData')
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

class GMediaFragmentDataBuilder
    implements Builder<GMediaFragmentData, GMediaFragmentDataBuilder> {
  _$GMediaFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i1.GMediaType? _type;
  _i1.GMediaType? get type => _$this._type;
  set type(_i1.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i1.GMediaFormat? _format;
  _i1.GMediaFormat? get format => _$this._format;
  set format(_i1.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GMediaFragmentData_titleBuilder? _title;
  GMediaFragmentData_titleBuilder get title =>
      _$this._title ??= new GMediaFragmentData_titleBuilder();
  set title(GMediaFragmentData_titleBuilder? title) => _$this._title = title;

  GMediaFragmentData_coverImageBuilder? _coverImage;
  GMediaFragmentData_coverImageBuilder get coverImage =>
      _$this._coverImage ??= new GMediaFragmentData_coverImageBuilder();
  set coverImage(GMediaFragmentData_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GMediaFragmentDataBuilder() {
    GMediaFragmentData._initializeBuilder(this);
  }

  GMediaFragmentDataBuilder get _$this {
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
  void replace(GMediaFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaFragmentData;
  }

  @override
  void update(void Function(GMediaFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaFragmentData build() => _build();

  _$GMediaFragmentData _build() {
    _$GMediaFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GMediaFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaFragmentData', 'id'),
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
            r'GMediaFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaFragmentData_title extends GMediaFragmentData_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GMediaFragmentData_title(
          [void Function(GMediaFragmentData_titleBuilder)? updates]) =>
      (new GMediaFragmentData_titleBuilder()..update(updates))._build();

  _$GMediaFragmentData_title._({required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaFragmentData_title', 'G__typename');
  }

  @override
  GMediaFragmentData_title rebuild(
          void Function(GMediaFragmentData_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaFragmentData_titleBuilder toBuilder() =>
      new GMediaFragmentData_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaFragmentData_title &&
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
    return (newBuiltValueToStringHelper(r'GMediaFragmentData_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GMediaFragmentData_titleBuilder
    implements
        Builder<GMediaFragmentData_title, GMediaFragmentData_titleBuilder> {
  _$GMediaFragmentData_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GMediaFragmentData_titleBuilder() {
    GMediaFragmentData_title._initializeBuilder(this);
  }

  GMediaFragmentData_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaFragmentData_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaFragmentData_title;
  }

  @override
  void update(void Function(GMediaFragmentData_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaFragmentData_title build() => _build();

  _$GMediaFragmentData_title _build() {
    final _$result = _$v ??
        new _$GMediaFragmentData_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaFragmentData_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaFragmentData_coverImage extends GMediaFragmentData_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GMediaFragmentData_coverImage(
          [void Function(GMediaFragmentData_coverImageBuilder)? updates]) =>
      (new GMediaFragmentData_coverImageBuilder()..update(updates))._build();

  _$GMediaFragmentData_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaFragmentData_coverImage', 'G__typename');
  }

  @override
  GMediaFragmentData_coverImage rebuild(
          void Function(GMediaFragmentData_coverImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaFragmentData_coverImageBuilder toBuilder() =>
      new GMediaFragmentData_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaFragmentData_coverImage &&
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
    return (newBuiltValueToStringHelper(r'GMediaFragmentData_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GMediaFragmentData_coverImageBuilder
    implements
        Builder<GMediaFragmentData_coverImage,
            GMediaFragmentData_coverImageBuilder> {
  _$GMediaFragmentData_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GMediaFragmentData_coverImageBuilder() {
    GMediaFragmentData_coverImage._initializeBuilder(this);
  }

  GMediaFragmentData_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaFragmentData_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaFragmentData_coverImage;
  }

  @override
  void update(void Function(GMediaFragmentData_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaFragmentData_coverImage build() => _build();

  _$GMediaFragmentData_coverImage _build() {
    final _$result = _$v ??
        new _$GMediaFragmentData_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaFragmentData_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
