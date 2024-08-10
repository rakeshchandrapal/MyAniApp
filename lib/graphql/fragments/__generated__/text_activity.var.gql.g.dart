// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_activity.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GTextActivityVars> _$gTextActivityVarsSerializer =
    new _$GTextActivityVarsSerializer();

class _$GTextActivityVarsSerializer
    implements StructuredSerializer<GTextActivityVars> {
  @override
  final Iterable<Type> types = const [GTextActivityVars, _$GTextActivityVars];
  @override
  final String wireName = 'GTextActivityVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GTextActivityVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GTextActivityVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GTextActivityVarsBuilder().build();
  }
}

class _$GTextActivityVars extends GTextActivityVars {
  factory _$GTextActivityVars(
          [void Function(GTextActivityVarsBuilder)? updates]) =>
      (new GTextActivityVarsBuilder()..update(updates))._build();

  _$GTextActivityVars._() : super._();

  @override
  GTextActivityVars rebuild(void Function(GTextActivityVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTextActivityVarsBuilder toBuilder() =>
      new GTextActivityVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTextActivityVars;
  }

  @override
  int get hashCode {
    return 453776959;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GTextActivityVars').toString();
  }
}

class GTextActivityVarsBuilder
    implements Builder<GTextActivityVars, GTextActivityVarsBuilder> {
  _$GTextActivityVars? _$v;

  GTextActivityVarsBuilder();

  @override
  void replace(GTextActivityVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTextActivityVars;
  }

  @override
  void update(void Function(GTextActivityVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTextActivityVars build() => _build();

  _$GTextActivityVars _build() {
    final _$result = _$v ?? new _$GTextActivityVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
