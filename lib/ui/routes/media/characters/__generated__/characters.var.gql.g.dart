// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCharactersVars> _$gCharactersVarsSerializer =
    new _$GCharactersVarsSerializer();

class _$GCharactersVarsSerializer
    implements StructuredSerializer<GCharactersVars> {
  @override
  final Iterable<Type> types = const [GCharactersVars, _$GCharactersVars];
  @override
  final String wireName = 'GCharactersVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCharactersVars object,
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
  GCharactersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharactersVarsBuilder();

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

class _$GCharactersVars extends GCharactersVars {
  @override
  final int? mediaId;
  @override
  final int? page;

  factory _$GCharactersVars([void Function(GCharactersVarsBuilder)? updates]) =>
      (new GCharactersVarsBuilder()..update(updates))._build();

  _$GCharactersVars._({this.mediaId, this.page}) : super._();

  @override
  GCharactersVars rebuild(void Function(GCharactersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharactersVarsBuilder toBuilder() =>
      new GCharactersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharactersVars &&
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
    return (newBuiltValueToStringHelper(r'GCharactersVars')
          ..add('mediaId', mediaId)
          ..add('page', page))
        .toString();
  }
}

class GCharactersVarsBuilder
    implements Builder<GCharactersVars, GCharactersVarsBuilder> {
  _$GCharactersVars? _$v;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GCharactersVarsBuilder();

  GCharactersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaId = $v.mediaId;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharactersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharactersVars;
  }

  @override
  void update(void Function(GCharactersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharactersVars build() => _build();

  _$GCharactersVars _build() {
    final _$result =
        _$v ?? new _$GCharactersVars._(mediaId: mediaId, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
