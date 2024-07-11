// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCommentVars> _$gCommentVarsSerializer =
    new _$GCommentVarsSerializer();

class _$GCommentVarsSerializer implements StructuredSerializer<GCommentVars> {
  @override
  final Iterable<Type> types = const [GCommentVars, _$GCommentVars];
  @override
  final String wireName = 'GCommentVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCommentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCommentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCommentVars extends GCommentVars {
  @override
  final int? id;

  factory _$GCommentVars([void Function(GCommentVarsBuilder)? updates]) =>
      (new GCommentVarsBuilder()..update(updates))._build();

  _$GCommentVars._({this.id}) : super._();

  @override
  GCommentVars rebuild(void Function(GCommentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCommentVarsBuilder toBuilder() => new GCommentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCommentVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCommentVars')..add('id', id))
        .toString();
  }
}

class GCommentVarsBuilder
    implements Builder<GCommentVars, GCommentVarsBuilder> {
  _$GCommentVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GCommentVarsBuilder();

  GCommentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCommentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCommentVars;
  }

  @override
  void update(void Function(GCommentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCommentVars build() => _build();

  _$GCommentVars _build() {
    final _$result = _$v ?? new _$GCommentVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
