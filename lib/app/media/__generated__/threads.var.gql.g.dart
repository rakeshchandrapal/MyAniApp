// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'threads.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaThreadsVars> _$gMediaThreadsVarsSerializer =
    new _$GMediaThreadsVarsSerializer();

class _$GMediaThreadsVarsSerializer
    implements StructuredSerializer<GMediaThreadsVars> {
  @override
  final Iterable<Type> types = const [GMediaThreadsVars, _$GMediaThreadsVars];
  @override
  final String wireName = 'GMediaThreadsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaThreadsVars object,
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
    value = object.perPage;
    if (value != null) {
      result
        ..add('perPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GMediaThreadsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaThreadsVarsBuilder();

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
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaThreadsVars extends GMediaThreadsVars {
  @override
  final int? mediaId;
  @override
  final int? page;
  @override
  final int? perPage;

  factory _$GMediaThreadsVars(
          [void Function(GMediaThreadsVarsBuilder)? updates]) =>
      (new GMediaThreadsVarsBuilder()..update(updates))._build();

  _$GMediaThreadsVars._({this.mediaId, this.page, this.perPage}) : super._();

  @override
  GMediaThreadsVars rebuild(void Function(GMediaThreadsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaThreadsVarsBuilder toBuilder() =>
      new GMediaThreadsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaThreadsVars &&
        mediaId == other.mediaId &&
        page == other.page &&
        perPage == other.perPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaThreadsVars')
          ..add('mediaId', mediaId)
          ..add('page', page)
          ..add('perPage', perPage))
        .toString();
  }
}

class GMediaThreadsVarsBuilder
    implements Builder<GMediaThreadsVars, GMediaThreadsVarsBuilder> {
  _$GMediaThreadsVars? _$v;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  GMediaThreadsVarsBuilder();

  GMediaThreadsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaId = $v.mediaId;
      _page = $v.page;
      _perPage = $v.perPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaThreadsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaThreadsVars;
  }

  @override
  void update(void Function(GMediaThreadsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaThreadsVars build() => _build();

  _$GMediaThreadsVars _build() {
    final _$result = _$v ??
        new _$GMediaThreadsVars._(
            mediaId: mediaId, page: page, perPage: perPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
