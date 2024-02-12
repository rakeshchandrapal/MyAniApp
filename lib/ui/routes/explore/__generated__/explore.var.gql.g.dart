// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GExploreVars> _$gExploreVarsSerializer =
    new _$GExploreVarsSerializer();

class _$GExploreVarsSerializer implements StructuredSerializer<GExploreVars> {
  @override
  final Iterable<Type> types = const [GExploreVars, _$GExploreVars];
  @override
  final String wireName = 'GExploreVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GExploreVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.season;
    if (value != null) {
      result
        ..add('season')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaSeason)));
    }
    value = object.seasonYear;
    if (value != null) {
      result
        ..add('seasonYear')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nextSeason;
    if (value != null) {
      result
        ..add('nextSeason')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaSeason)));
    }
    value = object.nextYear;
    if (value != null) {
      result
        ..add('nextYear')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GExploreVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'season':
          result.season = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMediaSeason))
              as _i1.GMediaSeason?;
          break;
        case 'seasonYear':
          result.seasonYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'nextSeason':
          result.nextSeason = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMediaSeason))
              as _i1.GMediaSeason?;
          break;
        case 'nextYear':
          result.nextYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GExploreVars extends GExploreVars {
  @override
  final _i1.GMediaSeason? season;
  @override
  final int? seasonYear;
  @override
  final _i1.GMediaSeason? nextSeason;
  @override
  final int? nextYear;

  factory _$GExploreVars([void Function(GExploreVarsBuilder)? updates]) =>
      (new GExploreVarsBuilder()..update(updates))._build();

  _$GExploreVars._(
      {this.season, this.seasonYear, this.nextSeason, this.nextYear})
      : super._();

  @override
  GExploreVars rebuild(void Function(GExploreVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreVarsBuilder toBuilder() => new GExploreVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreVars &&
        season == other.season &&
        seasonYear == other.seasonYear &&
        nextSeason == other.nextSeason &&
        nextYear == other.nextYear;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, season.hashCode);
    _$hash = $jc(_$hash, seasonYear.hashCode);
    _$hash = $jc(_$hash, nextSeason.hashCode);
    _$hash = $jc(_$hash, nextYear.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GExploreVars')
          ..add('season', season)
          ..add('seasonYear', seasonYear)
          ..add('nextSeason', nextSeason)
          ..add('nextYear', nextYear))
        .toString();
  }
}

class GExploreVarsBuilder
    implements Builder<GExploreVars, GExploreVarsBuilder> {
  _$GExploreVars? _$v;

  _i1.GMediaSeason? _season;
  _i1.GMediaSeason? get season => _$this._season;
  set season(_i1.GMediaSeason? season) => _$this._season = season;

  int? _seasonYear;
  int? get seasonYear => _$this._seasonYear;
  set seasonYear(int? seasonYear) => _$this._seasonYear = seasonYear;

  _i1.GMediaSeason? _nextSeason;
  _i1.GMediaSeason? get nextSeason => _$this._nextSeason;
  set nextSeason(_i1.GMediaSeason? nextSeason) =>
      _$this._nextSeason = nextSeason;

  int? _nextYear;
  int? get nextYear => _$this._nextYear;
  set nextYear(int? nextYear) => _$this._nextYear = nextYear;

  GExploreVarsBuilder();

  GExploreVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _season = $v.season;
      _seasonYear = $v.seasonYear;
      _nextSeason = $v.nextSeason;
      _nextYear = $v.nextYear;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreVars;
  }

  @override
  void update(void Function(GExploreVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreVars build() => _build();

  _$GExploreVars _build() {
    final _$result = _$v ??
        new _$GExploreVars._(
            season: season,
            seasonYear: seasonYear,
            nextSeason: nextSeason,
            nextYear: nextYear);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
