// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserReviewsVars> _$gUserReviewsVarsSerializer =
    new _$GUserReviewsVarsSerializer();

class _$GUserReviewsVarsSerializer
    implements StructuredSerializer<GUserReviewsVars> {
  @override
  final Iterable<Type> types = const [GUserReviewsVars, _$GUserReviewsVars];
  @override
  final String wireName = 'GUserReviewsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserReviewsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GUserReviewsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserReviewsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserReviewsVars extends GUserReviewsVars {
  @override
  final int? userId;
  @override
  final int? page;

  factory _$GUserReviewsVars(
          [void Function(GUserReviewsVarsBuilder)? updates]) =>
      (new GUserReviewsVarsBuilder()..update(updates))._build();

  _$GUserReviewsVars._({this.userId, this.page}) : super._();

  @override
  GUserReviewsVars rebuild(void Function(GUserReviewsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserReviewsVarsBuilder toBuilder() =>
      new GUserReviewsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserReviewsVars &&
        userId == other.userId &&
        page == other.page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserReviewsVars')
          ..add('userId', userId)
          ..add('page', page))
        .toString();
  }
}

class GUserReviewsVarsBuilder
    implements Builder<GUserReviewsVars, GUserReviewsVarsBuilder> {
  _$GUserReviewsVars? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GUserReviewsVarsBuilder();

  GUserReviewsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserReviewsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserReviewsVars;
  }

  @override
  void update(void Function(GUserReviewsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserReviewsVars build() => _build();

  _$GUserReviewsVars _build() {
    final _$result =
        _$v ?? new _$GUserReviewsVars._(userId: userId, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
