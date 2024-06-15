// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaReviewsVars> _$gMediaReviewsVarsSerializer =
    new _$GMediaReviewsVarsSerializer();

class _$GMediaReviewsVarsSerializer
    implements StructuredSerializer<GMediaReviewsVars> {
  @override
  final Iterable<Type> types = const [GMediaReviewsVars, _$GMediaReviewsVars];
  @override
  final String wireName = 'GMediaReviewsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaReviewsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.mediaId;
    if (value != null) {
      result
        ..add('mediaId')
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
  GMediaReviewsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaReviewsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mediaId':
          result.mediaId = serializers.deserialize(value,
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

class _$GMediaReviewsVars extends GMediaReviewsVars {
  @override
  final int? mediaId;
  @override
  final int? page;

  factory _$GMediaReviewsVars(
          [void Function(GMediaReviewsVarsBuilder)? updates]) =>
      (new GMediaReviewsVarsBuilder()..update(updates))._build();

  _$GMediaReviewsVars._({this.mediaId, this.page}) : super._();

  @override
  GMediaReviewsVars rebuild(void Function(GMediaReviewsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaReviewsVarsBuilder toBuilder() =>
      new GMediaReviewsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaReviewsVars &&
        mediaId == other.mediaId &&
        page == other.page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaReviewsVars')
          ..add('mediaId', mediaId)
          ..add('page', page))
        .toString();
  }
}

class GMediaReviewsVarsBuilder
    implements Builder<GMediaReviewsVars, GMediaReviewsVarsBuilder> {
  _$GMediaReviewsVars? _$v;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GMediaReviewsVarsBuilder();

  GMediaReviewsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaId = $v.mediaId;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaReviewsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaReviewsVars;
  }

  @override
  void update(void Function(GMediaReviewsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaReviewsVars build() => _build();

  _$GMediaReviewsVars _build() {
    final _$result =
        _$v ?? new _$GMediaReviewsVars._(mediaId: mediaId, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
