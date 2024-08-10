// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fuzzy_date.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFuzzyDateData> _$gFuzzyDateDataSerializer =
    new _$GFuzzyDateDataSerializer();

class _$GFuzzyDateDataSerializer
    implements StructuredSerializer<GFuzzyDateData> {
  @override
  final Iterable<Type> types = const [GFuzzyDateData, _$GFuzzyDateData];
  @override
  final String wireName = 'GFuzzyDateData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFuzzyDateData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GFuzzyDateData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFuzzyDateDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFuzzyDateData extends GFuzzyDateData {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GFuzzyDateData([void Function(GFuzzyDateDataBuilder)? updates]) =>
      (new GFuzzyDateDataBuilder()..update(updates))._build();

  _$GFuzzyDateData._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GFuzzyDateData', 'G__typename');
  }

  @override
  GFuzzyDateData rebuild(void Function(GFuzzyDateDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFuzzyDateDataBuilder toBuilder() =>
      new GFuzzyDateDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFuzzyDateData &&
        G__typename == other.G__typename &&
        day == other.day &&
        month == other.month &&
        year == other.year;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GFuzzyDateData')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GFuzzyDateDataBuilder
    implements Builder<GFuzzyDateData, GFuzzyDateDataBuilder> {
  _$GFuzzyDateData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  GFuzzyDateDataBuilder() {
    GFuzzyDateData._initializeBuilder(this);
  }

  GFuzzyDateDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _day = $v.day;
      _month = $v.month;
      _year = $v.year;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFuzzyDateData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFuzzyDateData;
  }

  @override
  void update(void Function(GFuzzyDateDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GFuzzyDateData build() => _build();

  _$GFuzzyDateData _build() {
    final _$result = _$v ??
        new _$GFuzzyDateData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GFuzzyDateData', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
