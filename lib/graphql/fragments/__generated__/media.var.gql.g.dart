// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaFragmentVars> _$gMediaFragmentVarsSerializer =
    new _$GMediaFragmentVarsSerializer();

class _$GMediaFragmentVarsSerializer
    implements StructuredSerializer<GMediaFragmentVars> {
  @override
  final Iterable<Type> types = const [GMediaFragmentVars, _$GMediaFragmentVars];
  @override
  final String wireName = 'GMediaFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GMediaFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GMediaFragmentVarsBuilder().build();
  }
}

class _$GMediaFragmentVars extends GMediaFragmentVars {
  factory _$GMediaFragmentVars(
          [void Function(GMediaFragmentVarsBuilder)? updates]) =>
      (new GMediaFragmentVarsBuilder()..update(updates))._build();

  _$GMediaFragmentVars._() : super._();

  @override
  GMediaFragmentVars rebuild(
          void Function(GMediaFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaFragmentVarsBuilder toBuilder() =>
      new GMediaFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaFragmentVars;
  }

  @override
  int get hashCode {
    return 407101098;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GMediaFragmentVars').toString();
  }
}

class GMediaFragmentVarsBuilder
    implements Builder<GMediaFragmentVars, GMediaFragmentVarsBuilder> {
  _$GMediaFragmentVars? _$v;

  GMediaFragmentVarsBuilder();

  @override
  void replace(GMediaFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaFragmentVars;
  }

  @override
  void update(void Function(GMediaFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaFragmentVars build() => _build();

  _$GMediaFragmentVars _build() {
    final _$result = _$v ?? new _$GMediaFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
