// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studio.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GStudioFragmentData> _$gStudioFragmentDataSerializer =
    new _$GStudioFragmentDataSerializer();

class _$GStudioFragmentDataSerializer
    implements StructuredSerializer<GStudioFragmentData> {
  @override
  final Iterable<Type> types = const [
    GStudioFragmentData,
    _$GStudioFragmentData
  ];
  @override
  final String wireName = 'GStudioFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStudioFragmentData object,
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

    return result;
  }

  @override
  GStudioFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStudioFragmentDataBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GStudioFragmentData extends GStudioFragmentData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;

  factory _$GStudioFragmentData(
          [void Function(GStudioFragmentDataBuilder)? updates]) =>
      (new GStudioFragmentDataBuilder()..update(updates))._build();

  _$GStudioFragmentData._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStudioFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GStudioFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GStudioFragmentData', 'name');
  }

  @override
  GStudioFragmentData rebuild(
          void Function(GStudioFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStudioFragmentDataBuilder toBuilder() =>
      new GStudioFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStudioFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStudioFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GStudioFragmentDataBuilder
    implements Builder<GStudioFragmentData, GStudioFragmentDataBuilder> {
  _$GStudioFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GStudioFragmentDataBuilder() {
    GStudioFragmentData._initializeBuilder(this);
  }

  GStudioFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStudioFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStudioFragmentData;
  }

  @override
  void update(void Function(GStudioFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStudioFragmentData build() => _build();

  _$GStudioFragmentData _build() {
    final _$result = _$v ??
        new _$GStudioFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GStudioFragmentData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GStudioFragmentData', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GStudioFragmentData', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
