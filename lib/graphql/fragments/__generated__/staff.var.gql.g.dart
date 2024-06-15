// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GStaffFragmentVars> _$gStaffFragmentVarsSerializer =
    new _$GStaffFragmentVarsSerializer();

class _$GStaffFragmentVarsSerializer
    implements StructuredSerializer<GStaffFragmentVars> {
  @override
  final Iterable<Type> types = const [GStaffFragmentVars, _$GStaffFragmentVars];
  @override
  final String wireName = 'GStaffFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GStaffFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GStaffFragmentVarsBuilder().build();
  }
}

class _$GStaffFragmentVars extends GStaffFragmentVars {
  factory _$GStaffFragmentVars(
          [void Function(GStaffFragmentVarsBuilder)? updates]) =>
      (new GStaffFragmentVarsBuilder()..update(updates))._build();

  _$GStaffFragmentVars._() : super._();

  @override
  GStaffFragmentVars rebuild(
          void Function(GStaffFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffFragmentVarsBuilder toBuilder() =>
      new GStaffFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffFragmentVars;
  }

  @override
  int get hashCode {
    return 1063442714;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GStaffFragmentVars').toString();
  }
}

class GStaffFragmentVarsBuilder
    implements Builder<GStaffFragmentVars, GStaffFragmentVarsBuilder> {
  _$GStaffFragmentVars? _$v;

  GStaffFragmentVarsBuilder();

  @override
  void replace(GStaffFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffFragmentVars;
  }

  @override
  void update(void Function(GStaffFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffFragmentVars build() => _build();

  _$GStaffFragmentVars _build() {
    final _$result = _$v ?? new _$GStaffFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
