// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studio.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GStudioFragmentVars> _$gStudioFragmentVarsSerializer =
    new _$GStudioFragmentVarsSerializer();

class _$GStudioFragmentVarsSerializer
    implements StructuredSerializer<GStudioFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GStudioFragmentVars,
    _$GStudioFragmentVars
  ];
  @override
  final String wireName = 'GStudioFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStudioFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GStudioFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GStudioFragmentVarsBuilder().build();
  }
}

class _$GStudioFragmentVars extends GStudioFragmentVars {
  factory _$GStudioFragmentVars(
          [void Function(GStudioFragmentVarsBuilder)? updates]) =>
      (new GStudioFragmentVarsBuilder()..update(updates))._build();

  _$GStudioFragmentVars._() : super._();

  @override
  GStudioFragmentVars rebuild(
          void Function(GStudioFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStudioFragmentVarsBuilder toBuilder() =>
      new GStudioFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStudioFragmentVars;
  }

  @override
  int get hashCode {
    return 947201005;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GStudioFragmentVars').toString();
  }
}

class GStudioFragmentVarsBuilder
    implements Builder<GStudioFragmentVars, GStudioFragmentVarsBuilder> {
  _$GStudioFragmentVars? _$v;

  GStudioFragmentVarsBuilder();

  @override
  void replace(GStudioFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStudioFragmentVars;
  }

  @override
  void update(void Function(GStudioFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStudioFragmentVars build() => _build();

  _$GStudioFragmentVars _build() {
    final _$result = _$v ?? new _$GStudioFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
