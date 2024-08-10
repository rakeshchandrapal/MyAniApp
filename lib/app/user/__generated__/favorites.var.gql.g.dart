// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserFavoritesVars> _$gUserFavoritesVarsSerializer =
    new _$GUserFavoritesVarsSerializer();

class _$GUserFavoritesVarsSerializer
    implements StructuredSerializer<GUserFavoritesVars> {
  @override
  final Iterable<Type> types = const [GUserFavoritesVars, _$GUserFavoritesVars];
  @override
  final String wireName = 'GUserFavoritesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserFavoritesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.animePage;
    if (value != null) {
      result
        ..add('animePage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.mangaPage;
    if (value != null) {
      result
        ..add('mangaPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.characterPage;
    if (value != null) {
      result
        ..add('characterPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.staffPage;
    if (value != null) {
      result
        ..add('staffPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.studioPage;
    if (value != null) {
      result
        ..add('studioPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GUserFavoritesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserFavoritesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'animePage':
          result.animePage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'mangaPage':
          result.mangaPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'characterPage':
          result.characterPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'staffPage':
          result.staffPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'studioPage':
          result.studioPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserFavoritesVars extends GUserFavoritesVars {
  @override
  final String? name;
  @override
  final int? animePage;
  @override
  final int? mangaPage;
  @override
  final int? characterPage;
  @override
  final int? staffPage;
  @override
  final int? studioPage;

  factory _$GUserFavoritesVars(
          [void Function(GUserFavoritesVarsBuilder)? updates]) =>
      (new GUserFavoritesVarsBuilder()..update(updates))._build();

  _$GUserFavoritesVars._(
      {this.name,
      this.animePage,
      this.mangaPage,
      this.characterPage,
      this.staffPage,
      this.studioPage})
      : super._();

  @override
  GUserFavoritesVars rebuild(
          void Function(GUserFavoritesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserFavoritesVarsBuilder toBuilder() =>
      new GUserFavoritesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserFavoritesVars &&
        name == other.name &&
        animePage == other.animePage &&
        mangaPage == other.mangaPage &&
        characterPage == other.characterPage &&
        staffPage == other.staffPage &&
        studioPage == other.studioPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, animePage.hashCode);
    _$hash = $jc(_$hash, mangaPage.hashCode);
    _$hash = $jc(_$hash, characterPage.hashCode);
    _$hash = $jc(_$hash, staffPage.hashCode);
    _$hash = $jc(_$hash, studioPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserFavoritesVars')
          ..add('name', name)
          ..add('animePage', animePage)
          ..add('mangaPage', mangaPage)
          ..add('characterPage', characterPage)
          ..add('staffPage', staffPage)
          ..add('studioPage', studioPage))
        .toString();
  }
}

class GUserFavoritesVarsBuilder
    implements Builder<GUserFavoritesVars, GUserFavoritesVarsBuilder> {
  _$GUserFavoritesVars? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _animePage;
  int? get animePage => _$this._animePage;
  set animePage(int? animePage) => _$this._animePage = animePage;

  int? _mangaPage;
  int? get mangaPage => _$this._mangaPage;
  set mangaPage(int? mangaPage) => _$this._mangaPage = mangaPage;

  int? _characterPage;
  int? get characterPage => _$this._characterPage;
  set characterPage(int? characterPage) =>
      _$this._characterPage = characterPage;

  int? _staffPage;
  int? get staffPage => _$this._staffPage;
  set staffPage(int? staffPage) => _$this._staffPage = staffPage;

  int? _studioPage;
  int? get studioPage => _$this._studioPage;
  set studioPage(int? studioPage) => _$this._studioPage = studioPage;

  GUserFavoritesVarsBuilder();

  GUserFavoritesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _animePage = $v.animePage;
      _mangaPage = $v.mangaPage;
      _characterPage = $v.characterPage;
      _staffPage = $v.staffPage;
      _studioPage = $v.studioPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserFavoritesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserFavoritesVars;
  }

  @override
  void update(void Function(GUserFavoritesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserFavoritesVars build() => _build();

  _$GUserFavoritesVars _build() {
    final _$result = _$v ??
        new _$GUserFavoritesVars._(
            name: name,
            animePage: animePage,
            mangaPage: mangaPage,
            characterPage: characterPage,
            staffPage: staffPage,
            studioPage: studioPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
