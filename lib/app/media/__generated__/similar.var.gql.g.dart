// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaSimilarVars> _$gMediaSimilarVarsSerializer =
    new _$GMediaSimilarVarsSerializer();

class _$GMediaSimilarVarsSerializer
    implements StructuredSerializer<GMediaSimilarVars> {
  @override
  final Iterable<Type> types = const [GMediaSimilarVars, _$GMediaSimilarVars];
  @override
  final String wireName = 'GMediaSimilarVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaSimilarVars object,
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
  GMediaSimilarVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaSimilarVarsBuilder();

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

class _$GMediaSimilarVars extends GMediaSimilarVars {
  @override
  final int? mediaId;
  @override
  final int? page;

  factory _$GMediaSimilarVars(
          [void Function(GMediaSimilarVarsBuilder)? updates]) =>
      (new GMediaSimilarVarsBuilder()..update(updates))._build();

  _$GMediaSimilarVars._({this.mediaId, this.page}) : super._();

  @override
  GMediaSimilarVars rebuild(void Function(GMediaSimilarVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaSimilarVarsBuilder toBuilder() =>
      new GMediaSimilarVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaSimilarVars &&
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
    return (newBuiltValueToStringHelper(r'GMediaSimilarVars')
          ..add('mediaId', mediaId)
          ..add('page', page))
        .toString();
  }
}

class GMediaSimilarVarsBuilder
    implements Builder<GMediaSimilarVars, GMediaSimilarVarsBuilder> {
  _$GMediaSimilarVars? _$v;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GMediaSimilarVarsBuilder();

  GMediaSimilarVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaId = $v.mediaId;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaSimilarVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaSimilarVars;
  }

  @override
  void update(void Function(GMediaSimilarVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaSimilarVars build() => _build();

  _$GMediaSimilarVars _build() {
    final _$result =
        _$v ?? new _$GMediaSimilarVars._(mediaId: mediaId, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
