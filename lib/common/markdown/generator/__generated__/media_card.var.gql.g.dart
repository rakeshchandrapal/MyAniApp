// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_card.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GEmbedMediaCardVars> _$gEmbedMediaCardVarsSerializer =
    new _$GEmbedMediaCardVarsSerializer();

class _$GEmbedMediaCardVarsSerializer
    implements StructuredSerializer<GEmbedMediaCardVars> {
  @override
  final Iterable<Type> types = const [
    GEmbedMediaCardVars,
    _$GEmbedMediaCardVars
  ];
  @override
  final String wireName = 'GEmbedMediaCardVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GEmbedMediaCardVars object,
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
  GEmbedMediaCardVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEmbedMediaCardVarsBuilder();

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

class _$GEmbedMediaCardVars extends GEmbedMediaCardVars {
  @override
  final int? id;

  factory _$GEmbedMediaCardVars(
          [void Function(GEmbedMediaCardVarsBuilder)? updates]) =>
      (new GEmbedMediaCardVarsBuilder()..update(updates))._build();

  _$GEmbedMediaCardVars._({this.id}) : super._();

  @override
  GEmbedMediaCardVars rebuild(
          void Function(GEmbedMediaCardVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEmbedMediaCardVarsBuilder toBuilder() =>
      new GEmbedMediaCardVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEmbedMediaCardVars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GEmbedMediaCardVars')..add('id', id))
        .toString();
  }
}

class GEmbedMediaCardVarsBuilder
    implements Builder<GEmbedMediaCardVars, GEmbedMediaCardVarsBuilder> {
  _$GEmbedMediaCardVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GEmbedMediaCardVarsBuilder();

  GEmbedMediaCardVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEmbedMediaCardVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEmbedMediaCardVars;
  }

  @override
  void update(void Function(GEmbedMediaCardVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEmbedMediaCardVars build() => _build();

  _$GEmbedMediaCardVars _build() {
    final _$result = _$v ?? new _$GEmbedMediaCardVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
