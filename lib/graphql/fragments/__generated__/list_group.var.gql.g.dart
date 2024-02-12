// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_group.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GListGroupVars> _$gListGroupVarsSerializer =
    new _$GListGroupVarsSerializer();

class _$GListGroupVarsSerializer
    implements StructuredSerializer<GListGroupVars> {
  @override
  final Iterable<Type> types = const [GListGroupVars, _$GListGroupVars];
  @override
  final String wireName = 'GListGroupVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GListGroupVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GListGroupVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GListGroupVarsBuilder().build();
  }
}

class _$GListGroupVars extends GListGroupVars {
  factory _$GListGroupVars([void Function(GListGroupVarsBuilder)? updates]) =>
      (new GListGroupVarsBuilder()..update(updates))._build();

  _$GListGroupVars._() : super._();

  @override
  GListGroupVars rebuild(void Function(GListGroupVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListGroupVarsBuilder toBuilder() =>
      new GListGroupVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListGroupVars;
  }

  @override
  int get hashCode {
    return 899677371;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GListGroupVars').toString();
  }
}

class GListGroupVarsBuilder
    implements Builder<GListGroupVars, GListGroupVarsBuilder> {
  _$GListGroupVars? _$v;

  GListGroupVarsBuilder();

  @override
  void replace(GListGroupVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListGroupVars;
  }

  @override
  void update(void Function(GListGroupVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GListGroupVars build() => _build();

  _$GListGroupVars _build() {
    final _$result = _$v ?? new _$GListGroupVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
