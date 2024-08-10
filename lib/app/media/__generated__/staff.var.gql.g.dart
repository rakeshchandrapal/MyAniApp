// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaStaffVars> _$gMediaStaffVarsSerializer =
    new _$GMediaStaffVarsSerializer();

class _$GMediaStaffVarsSerializer
    implements StructuredSerializer<GMediaStaffVars> {
  @override
  final Iterable<Type> types = const [GMediaStaffVars, _$GMediaStaffVars];
  @override
  final String wireName = 'GMediaStaffVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaStaffVars object,
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
  GMediaStaffVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaStaffVarsBuilder();

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

class _$GMediaStaffVars extends GMediaStaffVars {
  @override
  final int? mediaId;
  @override
  final int? page;

  factory _$GMediaStaffVars([void Function(GMediaStaffVarsBuilder)? updates]) =>
      (new GMediaStaffVarsBuilder()..update(updates))._build();

  _$GMediaStaffVars._({this.mediaId, this.page}) : super._();

  @override
  GMediaStaffVars rebuild(void Function(GMediaStaffVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaStaffVarsBuilder toBuilder() =>
      new GMediaStaffVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaStaffVars &&
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
    return (newBuiltValueToStringHelper(r'GMediaStaffVars')
          ..add('mediaId', mediaId)
          ..add('page', page))
        .toString();
  }
}

class GMediaStaffVarsBuilder
    implements Builder<GMediaStaffVars, GMediaStaffVarsBuilder> {
  _$GMediaStaffVars? _$v;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GMediaStaffVarsBuilder();

  GMediaStaffVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaId = $v.mediaId;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaStaffVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaStaffVars;
  }

  @override
  void update(void Function(GMediaStaffVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaStaffVars build() => _build();

  _$GMediaStaffVars _build() {
    final _$result =
        _$v ?? new _$GMediaStaffVars._(mediaId: mediaId, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
