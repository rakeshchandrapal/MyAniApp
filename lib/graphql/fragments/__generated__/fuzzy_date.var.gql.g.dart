// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuzzy_date.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFuzzyDateVars> _$gFuzzyDateVarsSerializer =
    new _$GFuzzyDateVarsSerializer();

class _$GFuzzyDateVarsSerializer
    implements StructuredSerializer<GFuzzyDateVars> {
  @override
  final Iterable<Type> types = const [GFuzzyDateVars, _$GFuzzyDateVars];
  @override
  final String wireName = 'GFuzzyDateVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFuzzyDateVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GFuzzyDateVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GFuzzyDateVarsBuilder().build();
  }
}

class _$GFuzzyDateVars extends GFuzzyDateVars {
  factory _$GFuzzyDateVars([void Function(GFuzzyDateVarsBuilder)? updates]) =>
      (new GFuzzyDateVarsBuilder()..update(updates))._build();

  _$GFuzzyDateVars._() : super._();

  @override
  GFuzzyDateVars rebuild(void Function(GFuzzyDateVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFuzzyDateVarsBuilder toBuilder() =>
      new GFuzzyDateVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFuzzyDateVars;
  }

  @override
  int get hashCode {
    return 248696197;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GFuzzyDateVars').toString();
  }
}

class GFuzzyDateVarsBuilder
    implements Builder<GFuzzyDateVars, GFuzzyDateVarsBuilder> {
  _$GFuzzyDateVars? _$v;

  GFuzzyDateVarsBuilder();

  @override
  void replace(GFuzzyDateVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFuzzyDateVars;
  }

  @override
  void update(void Function(GFuzzyDateVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFuzzyDateVars build() => _build();

  _$GFuzzyDateVars _build() {
    final _$result = _$v ?? new _$GFuzzyDateVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
