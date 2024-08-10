// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_activity.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GListActivityVars> _$gListActivityVarsSerializer =
    new _$GListActivityVarsSerializer();

class _$GListActivityVarsSerializer
    implements StructuredSerializer<GListActivityVars> {
  @override
  final Iterable<Type> types = const [GListActivityVars, _$GListActivityVars];
  @override
  final String wireName = 'GListActivityVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GListActivityVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GListActivityVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GListActivityVarsBuilder().build();
  }
}

class _$GListActivityVars extends GListActivityVars {
  factory _$GListActivityVars(
          [void Function(GListActivityVarsBuilder)? updates]) =>
      (new GListActivityVarsBuilder()..update(updates))._build();

  _$GListActivityVars._() : super._();

  @override
  GListActivityVars rebuild(void Function(GListActivityVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListActivityVarsBuilder toBuilder() =>
      new GListActivityVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListActivityVars;
  }

  @override
  int get hashCode {
    return 669165608;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GListActivityVars').toString();
  }
}

class GListActivityVarsBuilder
    implements Builder<GListActivityVars, GListActivityVarsBuilder> {
  _$GListActivityVars? _$v;

  GListActivityVarsBuilder();

  @override
  void replace(GListActivityVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListActivityVars;
  }

  @override
  void update(void Function(GListActivityVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListActivityVars build() => _build();

  _$GListActivityVars _build() {
    final _$result = _$v ?? new _$GListActivityVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
