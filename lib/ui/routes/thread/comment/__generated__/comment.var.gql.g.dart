// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.var.gql.dart';

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
  GThreadCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadCommentVarsBuilder();

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

class _$GThreadCommentVars extends GThreadCommentVars {
  @override
  final int? id;

  factory _$GThreadCommentVars(
          [void Function(GThreadCommentVarsBuilder)? updates]) =>
      (new GThreadCommentVarsBuilder()..update(updates))._build();

  _$GThreadCommentVars._({this.id}) : super._();

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
    return other is GThreadCommentVars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GThreadCommentVars')..add('id', id))
        .toString();
  }
}

class GThreadCommentVarsBuilder
    implements Builder<GThreadCommentVars, GThreadCommentVarsBuilder> {
  _$GThreadCommentVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GThreadCommentVarsBuilder();

  GThreadCommentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

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
    final _$result = _$v ?? new _$GThreadCommentVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
