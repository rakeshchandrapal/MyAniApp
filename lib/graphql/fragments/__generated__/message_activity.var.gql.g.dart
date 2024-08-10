// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_activity.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMessageActivityVars> _$gMessageActivityVarsSerializer =
    new _$GMessageActivityVarsSerializer();

class _$GMessageActivityVarsSerializer
    implements StructuredSerializer<GMessageActivityVars> {
  @override
  final Iterable<Type> types = const [
    GMessageActivityVars,
    _$GMessageActivityVars
  ];
  @override
  final String wireName = 'GMessageActivityVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMessageActivityVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GMessageActivityVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GMessageActivityVarsBuilder().build();
  }
}

class _$GMessageActivityVars extends GMessageActivityVars {
  factory _$GMessageActivityVars(
          [void Function(GMessageActivityVarsBuilder)? updates]) =>
      (new GMessageActivityVarsBuilder()..update(updates))._build();

  _$GMessageActivityVars._() : super._();

  @override
  GMessageActivityVars rebuild(
          void Function(GMessageActivityVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessageActivityVarsBuilder toBuilder() =>
      new GMessageActivityVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessageActivityVars;
  }

  @override
  int get hashCode {
    return 316742984;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GMessageActivityVars').toString();
  }
}

class GMessageActivityVarsBuilder
    implements Builder<GMessageActivityVars, GMessageActivityVarsBuilder> {
  _$GMessageActivityVars? _$v;

  GMessageActivityVarsBuilder();

  @override
  void replace(GMessageActivityVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessageActivityVars;
  }

  @override
  void update(void Function(GMessageActivityVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMessageActivityVars build() => _build();

  _$GMessageActivityVars _build() {
    final _$result = _$v ?? new _$GMessageActivityVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
