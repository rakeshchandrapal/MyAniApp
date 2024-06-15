// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaVars> _$gMediaVarsSerializer = new _$GMediaVarsSerializer();
Serializer<GToggleFavoriteVars> _$gToggleFavoriteVarsSerializer =
    new _$GToggleFavoriteVarsSerializer();

class _$GMediaVarsSerializer implements StructuredSerializer<GMediaVars> {
  @override
  final Iterable<Type> types = const [GMediaVars, _$GMediaVars];
  @override
  final String wireName = 'GMediaVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaVars object,
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
  GMediaVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaVarsBuilder();

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

class _$GToggleFavoriteVarsSerializer
    implements StructuredSerializer<GToggleFavoriteVars> {
  @override
  final Iterable<Type> types = const [
    GToggleFavoriteVars,
    _$GToggleFavoriteVars
  ];
  @override
  final String wireName = 'GToggleFavoriteVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleFavoriteVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.animeId;
    if (value != null) {
      result
        ..add('animeId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.mangaId;
    if (value != null) {
      result
        ..add('mangaId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.characterId;
    if (value != null) {
      result
        ..add('characterId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.staffId;
    if (value != null) {
      result
        ..add('staffId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.studioId;
    if (value != null) {
      result
        ..add('studioId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GToggleFavoriteVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleFavoriteVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'animeId':
          result.animeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'mangaId':
          result.mangaId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'characterId':
          result.characterId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'staffId':
          result.staffId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'studioId':
          result.studioId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaVars extends GMediaVars {
  @override
  final int? id;

  factory _$GMediaVars([void Function(GMediaVarsBuilder)? updates]) =>
      (new GMediaVarsBuilder()..update(updates))._build();

  _$GMediaVars._({this.id}) : super._();

  @override
  GMediaVars rebuild(void Function(GMediaVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaVarsBuilder toBuilder() => new GMediaVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaVars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GMediaVars')..add('id', id))
        .toString();
  }
}

class GMediaVarsBuilder implements Builder<GMediaVars, GMediaVarsBuilder> {
  _$GMediaVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GMediaVarsBuilder();

  GMediaVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaVars;
  }

  @override
  void update(void Function(GMediaVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaVars build() => _build();

  _$GMediaVars _build() {
    final _$result = _$v ?? new _$GMediaVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleFavoriteVars extends GToggleFavoriteVars {
  @override
  final int? animeId;
  @override
  final int? mangaId;
  @override
  final int? characterId;
  @override
  final int? staffId;
  @override
  final int? studioId;

  factory _$GToggleFavoriteVars(
          [void Function(GToggleFavoriteVarsBuilder)? updates]) =>
      (new GToggleFavoriteVarsBuilder()..update(updates))._build();

  _$GToggleFavoriteVars._(
      {this.animeId,
      this.mangaId,
      this.characterId,
      this.staffId,
      this.studioId})
      : super._();

  @override
  GToggleFavoriteVars rebuild(
          void Function(GToggleFavoriteVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleFavoriteVarsBuilder toBuilder() =>
      new GToggleFavoriteVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleFavoriteVars &&
        animeId == other.animeId &&
        mangaId == other.mangaId &&
        characterId == other.characterId &&
        staffId == other.staffId &&
        studioId == other.studioId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, animeId.hashCode);
    _$hash = $jc(_$hash, mangaId.hashCode);
    _$hash = $jc(_$hash, characterId.hashCode);
    _$hash = $jc(_$hash, staffId.hashCode);
    _$hash = $jc(_$hash, studioId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToggleFavoriteVars')
          ..add('animeId', animeId)
          ..add('mangaId', mangaId)
          ..add('characterId', characterId)
          ..add('staffId', staffId)
          ..add('studioId', studioId))
        .toString();
  }
}

class GToggleFavoriteVarsBuilder
    implements Builder<GToggleFavoriteVars, GToggleFavoriteVarsBuilder> {
  _$GToggleFavoriteVars? _$v;

  int? _animeId;
  int? get animeId => _$this._animeId;
  set animeId(int? animeId) => _$this._animeId = animeId;

  int? _mangaId;
  int? get mangaId => _$this._mangaId;
  set mangaId(int? mangaId) => _$this._mangaId = mangaId;

  int? _characterId;
  int? get characterId => _$this._characterId;
  set characterId(int? characterId) => _$this._characterId = characterId;

  int? _staffId;
  int? get staffId => _$this._staffId;
  set staffId(int? staffId) => _$this._staffId = staffId;

  int? _studioId;
  int? get studioId => _$this._studioId;
  set studioId(int? studioId) => _$this._studioId = studioId;

  GToggleFavoriteVarsBuilder();

  GToggleFavoriteVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _animeId = $v.animeId;
      _mangaId = $v.mangaId;
      _characterId = $v.characterId;
      _staffId = $v.staffId;
      _studioId = $v.studioId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleFavoriteVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleFavoriteVars;
  }

  @override
  void update(void Function(GToggleFavoriteVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleFavoriteVars build() => _build();

  _$GToggleFavoriteVars _build() {
    final _$result = _$v ??
        new _$GToggleFavoriteVars._(
            animeId: animeId,
            mangaId: mangaId,
            characterId: characterId,
            staffId: staffId,
            studioId: studioId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
