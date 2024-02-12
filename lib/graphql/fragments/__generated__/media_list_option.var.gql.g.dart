// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_list_option.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaListOptionsVars> _$gMediaListOptionsVarsSerializer =
    new _$GMediaListOptionsVarsSerializer();

class _$GMediaListOptionsVarsSerializer
    implements StructuredSerializer<GMediaListOptionsVars> {
  @override
  final Iterable<Type> types = const [
    GMediaListOptionsVars,
    _$GMediaListOptionsVars
  ];
  @override
  final String wireName = 'GMediaListOptionsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListOptionsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GMediaListOptionsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GMediaListOptionsVarsBuilder().build();
  }
}

class _$GMediaListOptionsVars extends GMediaListOptionsVars {
  factory _$GMediaListOptionsVars(
          [void Function(GMediaListOptionsVarsBuilder)? updates]) =>
      (new GMediaListOptionsVarsBuilder()..update(updates))._build();

  _$GMediaListOptionsVars._() : super._();

  @override
  GMediaListOptionsVars rebuild(
          void Function(GMediaListOptionsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListOptionsVarsBuilder toBuilder() =>
      new GMediaListOptionsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListOptionsVars;
  }

  @override
  int get hashCode {
    return 743347106;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GMediaListOptionsVars').toString();
  }
}

class GMediaListOptionsVarsBuilder
    implements Builder<GMediaListOptionsVars, GMediaListOptionsVarsBuilder> {
  _$GMediaListOptionsVars? _$v;

  GMediaListOptionsVarsBuilder();

  @override
  void replace(GMediaListOptionsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListOptionsVars;
  }

  @override
  void update(void Function(GMediaListOptionsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListOptionsVars build() => _build();

  _$GMediaListOptionsVars _build() {
    final _$result = _$v ?? new _$GMediaListOptionsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
