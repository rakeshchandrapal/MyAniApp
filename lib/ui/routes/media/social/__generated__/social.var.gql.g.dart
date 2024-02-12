// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GThreadsVars> _$gThreadsVarsSerializer =
    new _$GThreadsVarsSerializer();

class _$GThreadsVarsSerializer implements StructuredSerializer<GThreadsVars> {
  @override
  final Iterable<Type> types = const [GThreadsVars, _$GThreadsVars];
  @override
  final String wireName = 'GThreadsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GThreadsVars object,
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
  GThreadsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadsVarsBuilder();

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

class _$GThreadsVars extends GThreadsVars {
  @override
  final int? mediaId;
  @override
  final int? page;
  @override
  final int? perPage;

  factory _$GThreadsVars([void Function(GThreadsVarsBuilder)? updates]) =>
      (new GThreadsVarsBuilder()..update(updates))._build();

  _$GThreadsVars._({this.mediaId, this.page, this.perPage}) : super._();

  @override
  GThreadsVars rebuild(void Function(GThreadsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadsVarsBuilder toBuilder() => new GThreadsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadsVars &&
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
    return (newBuiltValueToStringHelper(r'GThreadsVars')
          ..add('mediaId', mediaId)
          ..add('page', page)
          ..add('perPage', perPage))
        .toString();
  }
}

class GThreadsVarsBuilder
    implements Builder<GThreadsVars, GThreadsVarsBuilder> {
  _$GThreadsVars? _$v;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  GThreadsVarsBuilder();

  GThreadsVarsBuilder get _$this {
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
  void replace(GThreadsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadsVars;
  }

  @override
  void update(void Function(GThreadsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadsVars build() => _build();

  _$GThreadsVars _build() {
    final _$result = _$v ??
        new _$GThreadsVars._(mediaId: mediaId, page: page, perPage: perPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
