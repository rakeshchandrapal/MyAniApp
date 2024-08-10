// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GStaffFragmentData> _$gStaffFragmentDataSerializer =
    new _$GStaffFragmentDataSerializer();
Serializer<GStaffFragmentData_name> _$gStaffFragmentDataNameSerializer =
    new _$GStaffFragmentData_nameSerializer();
Serializer<GStaffFragmentData_image> _$gStaffFragmentDataImageSerializer =
    new _$GStaffFragmentData_imageSerializer();

class _$GStaffFragmentDataSerializer
    implements StructuredSerializer<GStaffFragmentData> {
  @override
  final Iterable<Type> types = const [GStaffFragmentData, _$GStaffFragmentData];
  @override
  final String wireName = 'GStaffFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffFragmentData object,
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
            specifiedType: const FullType(GStaffFragmentData_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStaffFragmentData_image)));
    }
    return result;
  }

  @override
  GStaffFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffFragmentDataBuilder();

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
                  specifiedType: const FullType(GStaffFragmentData_name))!
              as GStaffFragmentData_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStaffFragmentData_image))!
              as GStaffFragmentData_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffFragmentData_nameSerializer
    implements StructuredSerializer<GStaffFragmentData_name> {
  @override
  final Iterable<Type> types = const [
    GStaffFragmentData_name,
    _$GStaffFragmentData_name
  ];
  @override
  final String wireName = 'GStaffFragmentData_name';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffFragmentData_name object,
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
  GStaffFragmentData_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffFragmentData_nameBuilder();

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

class _$GStaffFragmentData_imageSerializer
    implements StructuredSerializer<GStaffFragmentData_image> {
  @override
  final Iterable<Type> types = const [
    GStaffFragmentData_image,
    _$GStaffFragmentData_image
  ];
  @override
  final String wireName = 'GStaffFragmentData_image';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffFragmentData_image object,
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
  GStaffFragmentData_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffFragmentData_imageBuilder();

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

class _$GStaffFragmentData extends GStaffFragmentData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GStaffFragmentData_name? name;
  @override
  final GStaffFragmentData_image? image;

  factory _$GStaffFragmentData(
          [void Function(GStaffFragmentDataBuilder)? updates]) =>
      (new GStaffFragmentDataBuilder()..update(updates))._build();

  _$GStaffFragmentData._(
      {required this.G__typename, required this.id, this.name, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GStaffFragmentData', 'id');
  }

  @override
  GStaffFragmentData rebuild(
          void Function(GStaffFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffFragmentDataBuilder toBuilder() =>
      new GStaffFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffFragmentData &&
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
    return (newBuiltValueToStringHelper(r'GStaffFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class GStaffFragmentDataBuilder
    implements Builder<GStaffFragmentData, GStaffFragmentDataBuilder> {
  _$GStaffFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GStaffFragmentData_nameBuilder? _name;
  GStaffFragmentData_nameBuilder get name =>
      _$this._name ??= new GStaffFragmentData_nameBuilder();
  set name(GStaffFragmentData_nameBuilder? name) => _$this._name = name;

  GStaffFragmentData_imageBuilder? _image;
  GStaffFragmentData_imageBuilder get image =>
      _$this._image ??= new GStaffFragmentData_imageBuilder();
  set image(GStaffFragmentData_imageBuilder? image) => _$this._image = image;

  GStaffFragmentDataBuilder() {
    GStaffFragmentData._initializeBuilder(this);
  }

  GStaffFragmentDataBuilder get _$this {
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
  void replace(GStaffFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffFragmentData;
  }

  @override
  void update(void Function(GStaffFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffFragmentData build() => _build();

  _$GStaffFragmentData _build() {
    _$GStaffFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GStaffFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GStaffFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GStaffFragmentData', 'id'),
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
            r'GStaffFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffFragmentData_name extends GStaffFragmentData_name {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GStaffFragmentData_name(
          [void Function(GStaffFragmentData_nameBuilder)? updates]) =>
      (new GStaffFragmentData_nameBuilder()..update(updates))._build();

  _$GStaffFragmentData_name._({required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffFragmentData_name', 'G__typename');
  }

  @override
  GStaffFragmentData_name rebuild(
          void Function(GStaffFragmentData_nameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffFragmentData_nameBuilder toBuilder() =>
      new GStaffFragmentData_nameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffFragmentData_name &&
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
    return (newBuiltValueToStringHelper(r'GStaffFragmentData_name')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GStaffFragmentData_nameBuilder
    implements
        Builder<GStaffFragmentData_name, GStaffFragmentData_nameBuilder> {
  _$GStaffFragmentData_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GStaffFragmentData_nameBuilder() {
    GStaffFragmentData_name._initializeBuilder(this);
  }

  GStaffFragmentData_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffFragmentData_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffFragmentData_name;
  }

  @override
  void update(void Function(GStaffFragmentData_nameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffFragmentData_name build() => _build();

  _$GStaffFragmentData_name _build() {
    final _$result = _$v ??
        new _$GStaffFragmentData_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GStaffFragmentData_name', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffFragmentData_image extends GStaffFragmentData_image {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GStaffFragmentData_image(
          [void Function(GStaffFragmentData_imageBuilder)? updates]) =>
      (new GStaffFragmentData_imageBuilder()..update(updates))._build();

  _$GStaffFragmentData_image._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffFragmentData_image', 'G__typename');
  }

  @override
  GStaffFragmentData_image rebuild(
          void Function(GStaffFragmentData_imageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffFragmentData_imageBuilder toBuilder() =>
      new GStaffFragmentData_imageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffFragmentData_image &&
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
    return (newBuiltValueToStringHelper(r'GStaffFragmentData_image')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GStaffFragmentData_imageBuilder
    implements
        Builder<GStaffFragmentData_image, GStaffFragmentData_imageBuilder> {
  _$GStaffFragmentData_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GStaffFragmentData_imageBuilder() {
    GStaffFragmentData_image._initializeBuilder(this);
  }

  GStaffFragmentData_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffFragmentData_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffFragmentData_image;
  }

  @override
  void update(void Function(GStaffFragmentData_imageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffFragmentData_image build() => _build();

  _$GStaffFragmentData_image _build() {
    final _$result = _$v ??
        new _$GStaffFragmentData_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GStaffFragmentData_image', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
