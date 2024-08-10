// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCharacterFragmentVars> _$gCharacterFragmentVarsSerializer =
    new _$GCharacterFragmentVarsSerializer();

class _$GCharacterFragmentVarsSerializer
    implements StructuredSerializer<GCharacterFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GCharacterFragmentVars,
    _$GCharacterFragmentVars
  ];
  @override
  final String wireName = 'GCharacterFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GCharacterFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GCharacterFragmentVarsBuilder().build();
  }
}

class _$GCharacterFragmentVars extends GCharacterFragmentVars {
  factory _$GCharacterFragmentVars(
          [void Function(GCharacterFragmentVarsBuilder)? updates]) =>
      (new GCharacterFragmentVarsBuilder()..update(updates))._build();

  _$GCharacterFragmentVars._() : super._();

  @override
  GCharacterFragmentVars rebuild(
          void Function(GCharacterFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterFragmentVarsBuilder toBuilder() =>
      new GCharacterFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterFragmentVars;
  }

  @override
  int get hashCode {
    return 277519982;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GCharacterFragmentVars').toString();
  }
}

class GCharacterFragmentVarsBuilder
    implements Builder<GCharacterFragmentVars, GCharacterFragmentVarsBuilder> {
  _$GCharacterFragmentVars? _$v;

  GCharacterFragmentVarsBuilder();

  @override
  void replace(GCharacterFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterFragmentVars;
  }

  @override
  void update(void Function(GCharacterFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterFragmentVars build() => _build();

  _$GCharacterFragmentVars _build() {
    final _$result = _$v ?? new _$GCharacterFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
