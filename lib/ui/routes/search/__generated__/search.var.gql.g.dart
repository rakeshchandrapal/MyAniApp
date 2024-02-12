// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGenreCollectionVars> _$gGenreCollectionVarsSerializer =
    new _$GGenreCollectionVarsSerializer();
Serializer<GSearchVars> _$gSearchVarsSerializer = new _$GSearchVarsSerializer();

class _$GGenreCollectionVarsSerializer
    implements StructuredSerializer<GGenreCollectionVars> {
  @override
  final Iterable<Type> types = const [
    GGenreCollectionVars,
    _$GGenreCollectionVars
  ];
  @override
  final String wireName = 'GGenreCollectionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGenreCollectionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGenreCollectionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGenreCollectionVarsBuilder().build();
  }
}

class _$GSearchVarsSerializer implements StructuredSerializer<GSearchVars> {
  @override
  final Iterable<Type> types = const [GSearchVars, _$GSearchVars];
  @override
  final String wireName = 'GSearchVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSearchVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('perPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaType)));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(_i2.GMediaFormat)])));
    }
    value = object.sort;
    if (value != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(_i2.GMediaSort)])));
    }
    value = object.season;
    if (value != null) {
      result
        ..add('season')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaSeason)));
    }
    value = object.seasonYear;
    if (value != null) {
      result
        ..add('seasonYear')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.search;
    if (value != null) {
      result
        ..add('search')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.yearGreater;
    if (value != null) {
      result
        ..add('yearGreater')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.yearLesser;
    if (value != null) {
      result
        ..add('yearLesser')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.with_tags;
    if (value != null) {
      result
        ..add('with_tags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.without_tags;
    if (value != null) {
      result
        ..add('without_tags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.isAdult;
    if (value != null) {
      result
        ..add('isAdult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  GSearchVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSearchVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i2.GMediaType)) as _i2.GMediaType?;
          break;
        case 'format':
          result.format.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i2.GMediaFormat)
              ]))! as BuiltList<Object?>);
          break;
        case 'sort':
          result.sort.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i2.GMediaSort)
              ]))! as BuiltList<Object?>);
          break;
        case 'season':
          result.season = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaSeason))
              as _i2.GMediaSeason?;
          break;
        case 'seasonYear':
          result.seasonYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'search':
          result.search = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'yearGreater':
          result.yearGreater = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'yearLesser':
          result.yearLesser = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'with_tags':
          result.with_tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'without_tags':
          result.without_tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'isAdult':
          result.isAdult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$GGenreCollectionVars extends GGenreCollectionVars {
  factory _$GGenreCollectionVars(
          [void Function(GGenreCollectionVarsBuilder)? updates]) =>
      (new GGenreCollectionVarsBuilder()..update(updates))._build();

  _$GGenreCollectionVars._() : super._();

  @override
  GGenreCollectionVars rebuild(
          void Function(GGenreCollectionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGenreCollectionVarsBuilder toBuilder() =>
      new GGenreCollectionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGenreCollectionVars;
  }

  @override
  int get hashCode {
    return 111148878;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGenreCollectionVars').toString();
  }
}

class GGenreCollectionVarsBuilder
    implements Builder<GGenreCollectionVars, GGenreCollectionVarsBuilder> {
  _$GGenreCollectionVars? _$v;

  GGenreCollectionVarsBuilder();

  @override
  void replace(GGenreCollectionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGenreCollectionVars;
  }

  @override
  void update(void Function(GGenreCollectionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGenreCollectionVars build() => _build();

  _$GGenreCollectionVars _build() {
    final _$result = _$v ?? new _$GGenreCollectionVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GSearchVars extends GSearchVars {
  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final _i2.GMediaType? type;
  @override
  final BuiltList<_i2.GMediaFormat?>? format;
  @override
  final BuiltList<_i2.GMediaSort?>? sort;
  @override
  final _i2.GMediaSeason? season;
  @override
  final int? seasonYear;
  @override
  final String? search;
  @override
  final String? year;
  @override
  final int? yearGreater;
  @override
  final int? yearLesser;
  @override
  final BuiltList<String?>? genres;
  @override
  final BuiltList<String?>? with_tags;
  @override
  final BuiltList<String?>? without_tags;
  @override
  final bool? isAdult;
  @override
  final bool? onList;

  factory _$GSearchVars([void Function(GSearchVarsBuilder)? updates]) =>
      (new GSearchVarsBuilder()..update(updates))._build();

  _$GSearchVars._(
      {this.page,
      this.perPage,
      this.type,
      this.format,
      this.sort,
      this.season,
      this.seasonYear,
      this.search,
      this.year,
      this.yearGreater,
      this.yearLesser,
      this.genres,
      this.with_tags,
      this.without_tags,
      this.isAdult,
      this.onList})
      : super._();

  @override
  GSearchVars rebuild(void Function(GSearchVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSearchVarsBuilder toBuilder() => new GSearchVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSearchVars &&
        page == other.page &&
        perPage == other.perPage &&
        type == other.type &&
        format == other.format &&
        sort == other.sort &&
        season == other.season &&
        seasonYear == other.seasonYear &&
        search == other.search &&
        year == other.year &&
        yearGreater == other.yearGreater &&
        yearLesser == other.yearLesser &&
        genres == other.genres &&
        with_tags == other.with_tags &&
        without_tags == other.without_tags &&
        isAdult == other.isAdult &&
        onList == other.onList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jc(_$hash, season.hashCode);
    _$hash = $jc(_$hash, seasonYear.hashCode);
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, yearGreater.hashCode);
    _$hash = $jc(_$hash, yearLesser.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, with_tags.hashCode);
    _$hash = $jc(_$hash, without_tags.hashCode);
    _$hash = $jc(_$hash, isAdult.hashCode);
    _$hash = $jc(_$hash, onList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSearchVars')
          ..add('page', page)
          ..add('perPage', perPage)
          ..add('type', type)
          ..add('format', format)
          ..add('sort', sort)
          ..add('season', season)
          ..add('seasonYear', seasonYear)
          ..add('search', search)
          ..add('year', year)
          ..add('yearGreater', yearGreater)
          ..add('yearLesser', yearLesser)
          ..add('genres', genres)
          ..add('with_tags', with_tags)
          ..add('without_tags', without_tags)
          ..add('isAdult', isAdult)
          ..add('onList', onList))
        .toString();
  }
}

class GSearchVarsBuilder implements Builder<GSearchVars, GSearchVarsBuilder> {
  _$GSearchVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  _i2.GMediaType? _type;
  _i2.GMediaType? get type => _$this._type;
  set type(_i2.GMediaType? type) => _$this._type = type;

  ListBuilder<_i2.GMediaFormat?>? _format;
  ListBuilder<_i2.GMediaFormat?> get format =>
      _$this._format ??= new ListBuilder<_i2.GMediaFormat?>();
  set format(ListBuilder<_i2.GMediaFormat?>? format) => _$this._format = format;

  ListBuilder<_i2.GMediaSort?>? _sort;
  ListBuilder<_i2.GMediaSort?> get sort =>
      _$this._sort ??= new ListBuilder<_i2.GMediaSort?>();
  set sort(ListBuilder<_i2.GMediaSort?>? sort) => _$this._sort = sort;

  _i2.GMediaSeason? _season;
  _i2.GMediaSeason? get season => _$this._season;
  set season(_i2.GMediaSeason? season) => _$this._season = season;

  int? _seasonYear;
  int? get seasonYear => _$this._seasonYear;
  set seasonYear(int? seasonYear) => _$this._seasonYear = seasonYear;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  String? _year;
  String? get year => _$this._year;
  set year(String? year) => _$this._year = year;

  int? _yearGreater;
  int? get yearGreater => _$this._yearGreater;
  set yearGreater(int? yearGreater) => _$this._yearGreater = yearGreater;

  int? _yearLesser;
  int? get yearLesser => _$this._yearLesser;
  set yearLesser(int? yearLesser) => _$this._yearLesser = yearLesser;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  ListBuilder<String?>? _with_tags;
  ListBuilder<String?> get with_tags =>
      _$this._with_tags ??= new ListBuilder<String?>();
  set with_tags(ListBuilder<String?>? with_tags) =>
      _$this._with_tags = with_tags;

  ListBuilder<String?>? _without_tags;
  ListBuilder<String?> get without_tags =>
      _$this._without_tags ??= new ListBuilder<String?>();
  set without_tags(ListBuilder<String?>? without_tags) =>
      _$this._without_tags = without_tags;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  bool? _onList;
  bool? get onList => _$this._onList;
  set onList(bool? onList) => _$this._onList = onList;

  GSearchVarsBuilder();

  GSearchVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _perPage = $v.perPage;
      _type = $v.type;
      _format = $v.format?.toBuilder();
      _sort = $v.sort?.toBuilder();
      _season = $v.season;
      _seasonYear = $v.seasonYear;
      _search = $v.search;
      _year = $v.year;
      _yearGreater = $v.yearGreater;
      _yearLesser = $v.yearLesser;
      _genres = $v.genres?.toBuilder();
      _with_tags = $v.with_tags?.toBuilder();
      _without_tags = $v.without_tags?.toBuilder();
      _isAdult = $v.isAdult;
      _onList = $v.onList;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSearchVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSearchVars;
  }

  @override
  void update(void Function(GSearchVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSearchVars build() => _build();

  _$GSearchVars _build() {
    _$GSearchVars _$result;
    try {
      _$result = _$v ??
          new _$GSearchVars._(
              page: page,
              perPage: perPage,
              type: type,
              format: _format?.build(),
              sort: _sort?.build(),
              season: season,
              seasonYear: seasonYear,
              search: search,
              year: year,
              yearGreater: yearGreater,
              yearLesser: yearLesser,
              genres: _genres?.build(),
              with_tags: _with_tags?.build(),
              without_tags: _without_tags?.build(),
              isAdult: isAdult,
              onList: onList);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'format';
        _format?.build();
        _$failedField = 'sort';
        _sort?.build();

        _$failedField = 'genres';
        _genres?.build();
        _$failedField = 'with_tags';
        _with_tags?.build();
        _$failedField = 'without_tags';
        _without_tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSearchVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
