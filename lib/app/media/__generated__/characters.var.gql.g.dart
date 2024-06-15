// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaCharactersVars> _$gMediaCharactersVarsSerializer =
    new _$GMediaCharactersVarsSerializer();

class _$GMediaCharactersVarsSerializer
    implements StructuredSerializer<GMediaCharactersVars> {
  @override
  final Iterable<Type> types = const [
    GMediaCharactersVars,
    _$GMediaCharactersVars
  ];
  @override
  final String wireName = 'GMediaCharactersVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaCharactersVars object,
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
  GMediaCharactersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaCharactersVarsBuilder();

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

class _$GMediaCharactersVars extends GMediaCharactersVars {
  @override
  final int? mediaId;
  @override
  final int? page;

  factory _$GMediaCharactersVars(
          [void Function(GMediaCharactersVarsBuilder)? updates]) =>
      (new GMediaCharactersVarsBuilder()..update(updates))._build();

  _$GMediaCharactersVars._({this.mediaId, this.page}) : super._();

  @override
  GMediaCharactersVars rebuild(
          void Function(GMediaCharactersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaCharactersVarsBuilder toBuilder() =>
      new GMediaCharactersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaCharactersVars &&
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
    return (newBuiltValueToStringHelper(r'GMediaCharactersVars')
          ..add('mediaId', mediaId)
          ..add('page', page))
        .toString();
  }
}

class GMediaCharactersVarsBuilder
    implements Builder<GMediaCharactersVars, GMediaCharactersVarsBuilder> {
  _$GMediaCharactersVars? _$v;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GMediaCharactersVarsBuilder();

  GMediaCharactersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaId = $v.mediaId;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaCharactersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaCharactersVars;
  }

  @override
  void update(void Function(GMediaCharactersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaCharactersVars build() => _build();

  _$GMediaCharactersVars _build() {
    final _$result =
        _$v ?? new _$GMediaCharactersVars._(mediaId: mediaId, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
