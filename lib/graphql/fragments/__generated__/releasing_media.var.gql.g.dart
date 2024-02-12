// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'releasing_media.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReleasingMediaVars> _$gReleasingMediaVarsSerializer =
    new _$GReleasingMediaVarsSerializer();

class _$GReleasingMediaVarsSerializer
    implements StructuredSerializer<GReleasingMediaVars> {
  @override
  final Iterable<Type> types = const [
    GReleasingMediaVars,
    _$GReleasingMediaVars
  ];
  @override
  final String wireName = 'GReleasingMediaVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReleasingMediaVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GReleasingMediaVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GReleasingMediaVarsBuilder().build();
  }
}

class _$GReleasingMediaVars extends GReleasingMediaVars {
  factory _$GReleasingMediaVars(
          [void Function(GReleasingMediaVarsBuilder)? updates]) =>
      (new GReleasingMediaVarsBuilder()..update(updates))._build();

  _$GReleasingMediaVars._() : super._();

  @override
  GReleasingMediaVars rebuild(
          void Function(GReleasingMediaVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasingMediaVarsBuilder toBuilder() =>
      new GReleasingMediaVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasingMediaVars;
  }

  @override
  int get hashCode {
    return 22430543;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GReleasingMediaVars').toString();
  }
}

class GReleasingMediaVarsBuilder
    implements Builder<GReleasingMediaVars, GReleasingMediaVarsBuilder> {
  _$GReleasingMediaVars? _$v;

  GReleasingMediaVarsBuilder();

  @override
  void replace(GReleasingMediaVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasingMediaVars;
  }

  @override
  void update(void Function(GReleasingMediaVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasingMediaVars build() => _build();

  _$GReleasingMediaVars _build() {
    final _$result = _$v ?? new _$GReleasingMediaVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
