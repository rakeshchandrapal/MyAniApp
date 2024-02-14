// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaRecommendationsVars> _$gMediaRecommendationsVarsSerializer =
    new _$GMediaRecommendationsVarsSerializer();

class _$GMediaRecommendationsVarsSerializer
    implements StructuredSerializer<GMediaRecommendationsVars> {
  @override
  final Iterable<Type> types = const [
    GMediaRecommendationsVars,
    _$GMediaRecommendationsVars
  ];
  @override
  final String wireName = 'GMediaRecommendationsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaRecommendationsVars object,
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
  GMediaRecommendationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaRecommendationsVarsBuilder();

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

class _$GMediaRecommendationsVars extends GMediaRecommendationsVars {
  @override
  final int? mediaId;
  @override
  final int? page;

  factory _$GMediaRecommendationsVars(
          [void Function(GMediaRecommendationsVarsBuilder)? updates]) =>
      (new GMediaRecommendationsVarsBuilder()..update(updates))._build();

  _$GMediaRecommendationsVars._({this.mediaId, this.page}) : super._();

  @override
  GMediaRecommendationsVars rebuild(
          void Function(GMediaRecommendationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaRecommendationsVarsBuilder toBuilder() =>
      new GMediaRecommendationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaRecommendationsVars &&
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
    return (newBuiltValueToStringHelper(r'GMediaRecommendationsVars')
          ..add('mediaId', mediaId)
          ..add('page', page))
        .toString();
  }
}

class GMediaRecommendationsVarsBuilder
    implements
        Builder<GMediaRecommendationsVars, GMediaRecommendationsVarsBuilder> {
  _$GMediaRecommendationsVars? _$v;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GMediaRecommendationsVarsBuilder();

  GMediaRecommendationsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaId = $v.mediaId;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaRecommendationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaRecommendationsVars;
  }

  @override
  void update(void Function(GMediaRecommendationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaRecommendationsVars build() => _build();

  _$GMediaRecommendationsVars _build() {
    final _$result =
        _$v ?? new _$GMediaRecommendationsVars._(mediaId: mediaId, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
