// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRecommendationsVars> _$gRecommendationsVarsSerializer =
    new _$GRecommendationsVarsSerializer();

class _$GRecommendationsVarsSerializer
    implements StructuredSerializer<GRecommendationsVars> {
  @override
  final Iterable<Type> types = const [
    GRecommendationsVars,
    _$GRecommendationsVars
  ];
  @override
  final String wireName = 'GRecommendationsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRecommendationsVars object,
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
  GRecommendationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRecommendationsVarsBuilder();

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

class _$GRecommendationsVars extends GRecommendationsVars {
  @override
  final int? mediaId;
  @override
  final int? page;

  factory _$GRecommendationsVars(
          [void Function(GRecommendationsVarsBuilder)? updates]) =>
      (new GRecommendationsVarsBuilder()..update(updates))._build();

  _$GRecommendationsVars._({this.mediaId, this.page}) : super._();

  @override
  GRecommendationsVars rebuild(
          void Function(GRecommendationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecommendationsVarsBuilder toBuilder() =>
      new GRecommendationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRecommendationsVars &&
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
    return (newBuiltValueToStringHelper(r'GRecommendationsVars')
          ..add('mediaId', mediaId)
          ..add('page', page))
        .toString();
  }
}

class GRecommendationsVarsBuilder
    implements Builder<GRecommendationsVars, GRecommendationsVarsBuilder> {
  _$GRecommendationsVars? _$v;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GRecommendationsVarsBuilder();

  GRecommendationsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaId = $v.mediaId;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRecommendationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRecommendationsVars;
  }

  @override
  void update(void Function(GRecommendationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRecommendationsVars build() => _build();

  _$GRecommendationsVars _build() {
    final _$result =
        _$v ?? new _$GRecommendationsVars._(mediaId: mediaId, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
