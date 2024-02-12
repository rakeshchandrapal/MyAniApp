// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserFragmentVars> _$gUserFragmentVarsSerializer =
    new _$GUserFragmentVarsSerializer();

class _$GUserFragmentVarsSerializer
    implements StructuredSerializer<GUserFragmentVars> {
  @override
  final Iterable<Type> types = const [GUserFragmentVars, _$GUserFragmentVars];
  @override
  final String wireName = 'GUserFragmentVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUserFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUserFragmentVarsBuilder().build();
  }
}

class _$GUserFragmentVars extends GUserFragmentVars {
  factory _$GUserFragmentVars(
          [void Function(GUserFragmentVarsBuilder)? updates]) =>
      (new GUserFragmentVarsBuilder()..update(updates))._build();

  _$GUserFragmentVars._() : super._();

  @override
  GUserFragmentVars rebuild(void Function(GUserFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserFragmentVarsBuilder toBuilder() =>
      new GUserFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserFragmentVars;
  }

  @override
  int get hashCode {
    return 203572066;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GUserFragmentVars').toString();
  }
}

class GUserFragmentVarsBuilder
    implements Builder<GUserFragmentVars, GUserFragmentVarsBuilder> {
  _$GUserFragmentVars? _$v;

  GUserFragmentVarsBuilder();

  @override
  void replace(GUserFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserFragmentVars;
  }

  @override
  void update(void Function(GUserFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserFragmentVars build() => _build();

  _$GUserFragmentVars _build() {
    final _$result = _$v ?? new _$GUserFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
