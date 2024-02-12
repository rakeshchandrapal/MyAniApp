// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GThreadFragmentVars> _$gThreadFragmentVarsSerializer =
    new _$GThreadFragmentVarsSerializer();

class _$GThreadFragmentVarsSerializer
    implements StructuredSerializer<GThreadFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GThreadFragmentVars,
    _$GThreadFragmentVars
  ];
  @override
  final String wireName = 'GThreadFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GThreadFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GThreadFragmentVarsBuilder().build();
  }
}

class _$GThreadFragmentVars extends GThreadFragmentVars {
  factory _$GThreadFragmentVars(
          [void Function(GThreadFragmentVarsBuilder)? updates]) =>
      (new GThreadFragmentVarsBuilder()..update(updates))._build();

  _$GThreadFragmentVars._() : super._();

  @override
  GThreadFragmentVars rebuild(
          void Function(GThreadFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadFragmentVarsBuilder toBuilder() =>
      new GThreadFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadFragmentVars;
  }

  @override
  int get hashCode {
    return 30444292;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GThreadFragmentVars').toString();
  }
}

class GThreadFragmentVarsBuilder
    implements Builder<GThreadFragmentVars, GThreadFragmentVarsBuilder> {
  _$GThreadFragmentVars? _$v;

  GThreadFragmentVarsBuilder();

  @override
  void replace(GThreadFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadFragmentVars;
  }

  @override
  void update(void Function(GThreadFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadFragmentVars build() => _build();

  _$GThreadFragmentVars _build() {
    final _$result = _$v ?? new _$GThreadFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
