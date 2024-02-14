// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReviewVars> _$gReviewVarsSerializer = new _$GReviewVarsSerializer();

class _$GReviewVarsSerializer implements StructuredSerializer<GReviewVars> {
  @override
  final Iterable<Type> types = const [GReviewVars, _$GReviewVars];
  @override
  final String wireName = 'GReviewVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReviewVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GReviewVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GReviewVarsBuilder().build();
  }
}

class _$GReviewVars extends GReviewVars {
  factory _$GReviewVars([void Function(GReviewVarsBuilder)? updates]) =>
      (new GReviewVarsBuilder()..update(updates))._build();

  _$GReviewVars._() : super._();

  @override
  GReviewVars rebuild(void Function(GReviewVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewVarsBuilder toBuilder() => new GReviewVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewVars;
  }

  @override
  int get hashCode {
    return 166270492;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GReviewVars').toString();
  }
}

class GReviewVarsBuilder implements Builder<GReviewVars, GReviewVarsBuilder> {
  _$GReviewVars? _$v;

  GReviewVarsBuilder();

  @override
  void replace(GReviewVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReviewVars;
  }

  @override
  void update(void Function(GReviewVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReviewVars build() => _build();

  _$GReviewVars _build() {
    final _$result = _$v ?? new _$GReviewVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
