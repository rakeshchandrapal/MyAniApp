// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCharacterVars> _$gCharacterVarsSerializer =
    new _$GCharacterVarsSerializer();

class _$GCharacterVarsSerializer
    implements StructuredSerializer<GCharacterVars> {
  @override
  final Iterable<Type> types = const [GCharacterVars, _$GCharacterVars];
  @override
  final String wireName = 'GCharacterVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCharacterVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.onList;
    if (value != null) {
      result
        ..add('onList')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GCharacterVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterVarsBuilder();

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
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'onList':
          result.onList = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterVars extends GCharacterVars {
  @override
  final int? id;
  @override
  final int? page;
  @override
  final bool? onList;

  factory _$GCharacterVars([void Function(GCharacterVarsBuilder)? updates]) =>
      (new GCharacterVarsBuilder()..update(updates))._build();

  _$GCharacterVars._({this.id, this.page, this.onList}) : super._();

  @override
  GCharacterVars rebuild(void Function(GCharacterVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterVarsBuilder toBuilder() =>
      new GCharacterVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterVars &&
        id == other.id &&
        page == other.page &&
        onList == other.onList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, onList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCharacterVars')
          ..add('id', id)
          ..add('page', page)
          ..add('onList', onList))
        .toString();
  }
}

class GCharacterVarsBuilder
    implements Builder<GCharacterVars, GCharacterVarsBuilder> {
  _$GCharacterVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  bool? _onList;
  bool? get onList => _$this._onList;
  set onList(bool? onList) => _$this._onList = onList;

  GCharacterVarsBuilder();

  GCharacterVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _page = $v.page;
      _onList = $v.onList;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterVars;
  }

  @override
  void update(void Function(GCharacterVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterVars build() => _build();

  _$GCharacterVars _build() {
    final _$result =
        _$v ?? new _$GCharacterVars._(id: id, page: page, onList: onList);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
