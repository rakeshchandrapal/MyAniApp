// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReviewVars> _$gReviewVarsSerializer = new _$GReviewVarsSerializer();
Serializer<GRateReviewVars> _$gRateReviewVarsSerializer =
    new _$GRateReviewVarsSerializer();

class _$GReviewVarsSerializer implements StructuredSerializer<GReviewVars> {
  @override
  final Iterable<Type> types = const [GReviewVars, _$GReviewVars];
  @override
  final String wireName = 'GReviewVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReviewVars object,
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
  GReviewVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReviewVarsBuilder();

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

class _$GRateReviewVarsSerializer
    implements StructuredSerializer<GRateReviewVars> {
  @override
  final Iterable<Type> types = const [GRateReviewVars, _$GRateReviewVars];
  @override
  final String wireName = 'GRateReviewVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRateReviewVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GReviewRating)));
    }
    return result;
  }

  @override
  GRateReviewVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRateReviewVarsBuilder();

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
        case 'rating':
          result.rating = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GReviewRating))
              as _i2.GReviewRating?;
          break;
      }
    }

    return result.build();
  }
}

class _$GReviewVars extends GReviewVars {
  @override
  final int? id;

  factory _$GReviewVars([void Function(GReviewVarsBuilder)? updates]) =>
      (new GReviewVarsBuilder()..update(updates))._build();

  _$GReviewVars._({this.id}) : super._();

  @override
  GReviewVars rebuild(void Function(GReviewVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReviewVarsBuilder toBuilder() => new GReviewVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReviewVars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GReviewVars')..add('id', id))
        .toString();
  }
}

class GReviewVarsBuilder implements Builder<GReviewVars, GReviewVarsBuilder> {
  _$GReviewVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GReviewVarsBuilder();

  GReviewVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

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
    final _$result = _$v ?? new _$GReviewVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

class _$GRateReviewVars extends GRateReviewVars {
  @override
  final int? id;
  @override
  final _i2.GReviewRating? rating;

  factory _$GRateReviewVars([void Function(GRateReviewVarsBuilder)? updates]) =>
      (new GRateReviewVarsBuilder()..update(updates))._build();

  _$GRateReviewVars._({this.id, this.rating}) : super._();

  @override
  GRateReviewVars rebuild(void Function(GRateReviewVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRateReviewVarsBuilder toBuilder() =>
      new GRateReviewVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRateReviewVars && id == other.id && rating == other.rating;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRateReviewVars')
          ..add('id', id)
          ..add('rating', rating))
        .toString();
  }
}

class GRateReviewVarsBuilder
    implements Builder<GRateReviewVars, GRateReviewVarsBuilder> {
  _$GRateReviewVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i2.GReviewRating? _rating;
  _i2.GReviewRating? get rating => _$this._rating;
  set rating(_i2.GReviewRating? rating) => _$this._rating = rating;

  GRateReviewVarsBuilder();

  GRateReviewVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _rating = $v.rating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRateReviewVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRateReviewVars;
  }

  @override
  void update(void Function(GRateReviewVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRateReviewVars build() => _build();

  _$GRateReviewVars _build() {
    final _$result = _$v ?? new _$GRateReviewVars._(id: id, rating: rating);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
