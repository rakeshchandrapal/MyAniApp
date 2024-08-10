// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_comment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GThreadCommentVars> _$gThreadCommentVarsSerializer =
    new _$GThreadCommentVarsSerializer();

class _$GThreadCommentVarsSerializer
    implements StructuredSerializer<GThreadCommentVars> {
  @override
  final Iterable<Type> types = const [GThreadCommentVars, _$GThreadCommentVars];
  @override
  final String wireName = 'GThreadCommentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadCommentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GThreadCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GThreadCommentVarsBuilder().build();
  }
}

class _$GThreadCommentVars extends GThreadCommentVars {
  factory _$GThreadCommentVars(
          [void Function(GThreadCommentVarsBuilder)? updates]) =>
      (new GThreadCommentVarsBuilder()..update(updates))._build();

  _$GThreadCommentVars._() : super._();

  @override
  GThreadCommentVars rebuild(
          void Function(GThreadCommentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadCommentVarsBuilder toBuilder() =>
      new GThreadCommentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadCommentVars;
  }

  @override
  int get hashCode {
    return 114994107;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GThreadCommentVars').toString();
  }
}

class GThreadCommentVarsBuilder
    implements Builder<GThreadCommentVars, GThreadCommentVarsBuilder> {
  _$GThreadCommentVars? _$v;

  GThreadCommentVarsBuilder();

  @override
  void replace(GThreadCommentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadCommentVars;
  }

  @override
  void update(void Function(GThreadCommentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadCommentVars build() => _build();

  _$GThreadCommentVars _build() {
    final _$result = _$v ?? new _$GThreadCommentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
