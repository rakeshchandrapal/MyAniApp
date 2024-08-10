// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCharacterFragmentData> _$gCharacterFragmentDataSerializer =
    new _$GCharacterFragmentDataSerializer();
Serializer<GCharacterFragmentData_name> _$gCharacterFragmentDataNameSerializer =
    new _$GCharacterFragmentData_nameSerializer();
Serializer<GCharacterFragmentData_image>
    _$gCharacterFragmentDataImageSerializer =
    new _$GCharacterFragmentData_imageSerializer();

class _$GCharacterFragmentDataSerializer
    implements StructuredSerializer<GCharacterFragmentData> {
  @override
  final Iterable<Type> types = const [
    GCharacterFragmentData,
    _$GCharacterFragmentData
  ];
  @override
  final String wireName = 'GCharacterFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCharacterFragmentData_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCharacterFragmentData_image)));
    }
    return result;
  }

  @override
  GCharacterFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterFragmentDataBuilder();

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
          result.name.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCharacterFragmentData_name))!
              as GCharacterFragmentData_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCharacterFragmentData_image))!
              as GCharacterFragmentData_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterFragmentData_nameSerializer
    implements StructuredSerializer<GCharacterFragmentData_name> {
  @override
  final Iterable<Type> types = const [
    GCharacterFragmentData_name,
    _$GCharacterFragmentData_name
  ];
  @override
  final String wireName = 'GCharacterFragmentData_name';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterFragmentData_name object,
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
  GCharacterFragmentData_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterFragmentData_nameBuilder();

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

class _$GCharacterFragmentData_imageSerializer
    implements StructuredSerializer<GCharacterFragmentData_image> {
  @override
  final Iterable<Type> types = const [
    GCharacterFragmentData_image,
    _$GCharacterFragmentData_image
  ];
  @override
  final String wireName = 'GCharacterFragmentData_image';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterFragmentData_image object,
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
  GCharacterFragmentData_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterFragmentData_imageBuilder();

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

class _$GCharacterFragmentData extends GCharacterFragmentData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GCharacterFragmentData_name? name;
  @override
  final GCharacterFragmentData_image? image;

  factory _$GCharacterFragmentData(
          [void Function(GCharacterFragmentDataBuilder)? updates]) =>
      (new GCharacterFragmentDataBuilder()..update(updates))._build();

  _$GCharacterFragmentData._(
      {required this.G__typename, required this.id, this.name, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharacterFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GCharacterFragmentData', 'id');
  }

  @override
  GCharacterFragmentData rebuild(
          void Function(GCharacterFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterFragmentDataBuilder toBuilder() =>
      new GCharacterFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCharacterFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class GCharacterFragmentDataBuilder
    implements Builder<GCharacterFragmentData, GCharacterFragmentDataBuilder> {
  _$GCharacterFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GCharacterFragmentData_nameBuilder? _name;
  GCharacterFragmentData_nameBuilder get name =>
      _$this._name ??= new GCharacterFragmentData_nameBuilder();
  set name(GCharacterFragmentData_nameBuilder? name) => _$this._name = name;

  GCharacterFragmentData_imageBuilder? _image;
  GCharacterFragmentData_imageBuilder get image =>
      _$this._image ??= new GCharacterFragmentData_imageBuilder();
  set image(GCharacterFragmentData_imageBuilder? image) =>
      _$this._image = image;

  GCharacterFragmentDataBuilder() {
    GCharacterFragmentData._initializeBuilder(this);
  }

  GCharacterFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name?.toBuilder();
      _image = $v.image?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterFragmentData;
  }

  @override
  void update(void Function(GCharacterFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterFragmentData build() => _build();

  _$GCharacterFragmentData _build() {
    _$GCharacterFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GCharacterFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCharacterFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GCharacterFragmentData', 'id'),
              name: _name?.build(),
              image: _image?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharacterFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterFragmentData_name extends GCharacterFragmentData_name {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GCharacterFragmentData_name(
          [void Function(GCharacterFragmentData_nameBuilder)? updates]) =>
      (new GCharacterFragmentData_nameBuilder()..update(updates))._build();

  _$GCharacterFragmentData_name._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharacterFragmentData_name', 'G__typename');
  }

  @override
  GCharacterFragmentData_name rebuild(
          void Function(GCharacterFragmentData_nameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterFragmentData_nameBuilder toBuilder() =>
      new GCharacterFragmentData_nameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterFragmentData_name &&
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
    return (newBuiltValueToStringHelper(r'GCharacterFragmentData_name')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GCharacterFragmentData_nameBuilder
    implements
        Builder<GCharacterFragmentData_name,
            GCharacterFragmentData_nameBuilder> {
  _$GCharacterFragmentData_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GCharacterFragmentData_nameBuilder() {
    GCharacterFragmentData_name._initializeBuilder(this);
  }

  GCharacterFragmentData_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterFragmentData_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterFragmentData_name;
  }

  @override
  void update(void Function(GCharacterFragmentData_nameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterFragmentData_name build() => _build();

  _$GCharacterFragmentData_name _build() {
    final _$result = _$v ??
        new _$GCharacterFragmentData_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GCharacterFragmentData_name', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterFragmentData_image extends GCharacterFragmentData_image {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GCharacterFragmentData_image(
          [void Function(GCharacterFragmentData_imageBuilder)? updates]) =>
      (new GCharacterFragmentData_imageBuilder()..update(updates))._build();

  _$GCharacterFragmentData_image._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharacterFragmentData_image', 'G__typename');
  }

  @override
  GCharacterFragmentData_image rebuild(
          void Function(GCharacterFragmentData_imageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterFragmentData_imageBuilder toBuilder() =>
      new GCharacterFragmentData_imageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterFragmentData_image &&
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
    return (newBuiltValueToStringHelper(r'GCharacterFragmentData_image')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GCharacterFragmentData_imageBuilder
    implements
        Builder<GCharacterFragmentData_image,
            GCharacterFragmentData_imageBuilder> {
  _$GCharacterFragmentData_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GCharacterFragmentData_imageBuilder() {
    GCharacterFragmentData_image._initializeBuilder(this);
  }

  GCharacterFragmentData_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterFragmentData_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterFragmentData_image;
  }

  @override
  void update(void Function(GCharacterFragmentData_imageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterFragmentData_image build() => _build();

  _$GCharacterFragmentData_image _build() {
    final _$result = _$v ??
        new _$GCharacterFragmentData_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GCharacterFragmentData_image', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
