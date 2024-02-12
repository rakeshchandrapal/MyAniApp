// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_info.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPageInfoVars> _$gPageInfoVarsSerializer =
    new _$GPageInfoVarsSerializer();

class _$GPageInfoVarsSerializer implements StructuredSerializer<GPageInfoVars> {
  @override
  final Iterable<Type> types = const [GPageInfoVars, _$GPageInfoVars];
  @override
  final String wireName = 'GPageInfoVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPageInfoVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GPageInfoVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GPageInfoVarsBuilder().build();
  }
}

class _$GPageInfoVars extends GPageInfoVars {
  factory _$GPageInfoVars([void Function(GPageInfoVarsBuilder)? updates]) =>
      (new GPageInfoVarsBuilder()..update(updates))._build();

  _$GPageInfoVars._() : super._();

  @override
  GPageInfoVars rebuild(void Function(GPageInfoVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPageInfoVarsBuilder toBuilder() => new GPageInfoVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPageInfoVars;
  }

  @override
  int get hashCode {
    return 67484138;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GPageInfoVars').toString();
  }
}

class GPageInfoVarsBuilder
    implements Builder<GPageInfoVars, GPageInfoVarsBuilder> {
  _$GPageInfoVars? _$v;

  GPageInfoVarsBuilder();

  @override
  void replace(GPageInfoVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPageInfoVars;
  }

  @override
  void update(void Function(GPageInfoVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPageInfoVars build() => _build();

  _$GPageInfoVars _build() {
    final _$result = _$v ?? new _$GPageInfoVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
