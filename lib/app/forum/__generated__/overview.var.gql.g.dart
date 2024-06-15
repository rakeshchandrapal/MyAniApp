// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GForumOverviewVars> _$gForumOverviewVarsSerializer =
    new _$GForumOverviewVarsSerializer();

class _$GForumOverviewVarsSerializer
    implements StructuredSerializer<GForumOverviewVars> {
  @override
  final Iterable<Type> types = const [GForumOverviewVars, _$GForumOverviewVars];
  @override
  final String wireName = 'GForumOverviewVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForumOverviewVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GForumOverviewVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GForumOverviewVarsBuilder().build();
  }
}

class _$GForumOverviewVars extends GForumOverviewVars {
  factory _$GForumOverviewVars(
          [void Function(GForumOverviewVarsBuilder)? updates]) =>
      (new GForumOverviewVarsBuilder()..update(updates))._build();

  _$GForumOverviewVars._() : super._();

  @override
  GForumOverviewVars rebuild(
          void Function(GForumOverviewVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewVarsBuilder toBuilder() =>
      new GForumOverviewVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewVars;
  }

  @override
  int get hashCode {
    return 786244439;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GForumOverviewVars').toString();
  }
}

class GForumOverviewVarsBuilder
    implements Builder<GForumOverviewVars, GForumOverviewVarsBuilder> {
  _$GForumOverviewVars? _$v;

  GForumOverviewVarsBuilder();

  @override
  void replace(GForumOverviewVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewVars;
  }

  @override
  void update(void Function(GForumOverviewVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewVars build() => _build();

  _$GForumOverviewVars _build() {
    final _$result = _$v ?? new _$GForumOverviewVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
