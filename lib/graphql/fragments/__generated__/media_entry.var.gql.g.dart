// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_entry.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaListEntryVars> _$gMediaListEntryVarsSerializer =
    new _$GMediaListEntryVarsSerializer();

class _$GMediaListEntryVarsSerializer
    implements StructuredSerializer<GMediaListEntryVars> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryVars,
    _$GMediaListEntryVars
  ];
  @override
  final String wireName = 'GMediaListEntryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListEntryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GMediaListEntryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GMediaListEntryVarsBuilder().build();
  }
}

class _$GMediaListEntryVars extends GMediaListEntryVars {
  factory _$GMediaListEntryVars(
          [void Function(GMediaListEntryVarsBuilder)? updates]) =>
      (new GMediaListEntryVarsBuilder()..update(updates))._build();

  _$GMediaListEntryVars._() : super._();

  @override
  GMediaListEntryVars rebuild(
          void Function(GMediaListEntryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryVarsBuilder toBuilder() =>
      new GMediaListEntryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListEntryVars;
  }

  @override
  int get hashCode {
    return 529864869;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GMediaListEntryVars').toString();
  }
}

class GMediaListEntryVarsBuilder
    implements Builder<GMediaListEntryVars, GMediaListEntryVarsBuilder> {
  _$GMediaListEntryVars? _$v;

  GMediaListEntryVarsBuilder();

  @override
  void replace(GMediaListEntryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryVars;
  }

  @override
  void update(void Function(GMediaListEntryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryVars build() => _build();

  _$GMediaListEntryVars _build() {
    final _$result = _$v ?? new _$GMediaListEntryVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
