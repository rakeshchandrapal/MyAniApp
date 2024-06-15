// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GHomeOverviewVars> _$gHomeOverviewVarsSerializer =
    new _$GHomeOverviewVarsSerializer();

class _$GHomeOverviewVarsSerializer
    implements StructuredSerializer<GHomeOverviewVars> {
  @override
  final Iterable<Type> types = const [GHomeOverviewVars, _$GHomeOverviewVars];
  @override
  final String wireName = 'GHomeOverviewVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GHomeOverviewVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaType)));
    }
    return result;
  }

  @override
  GHomeOverviewVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i1.GMediaType)) as _i1.GMediaType?;
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewVars extends GHomeOverviewVars {
  @override
  final int? page;
  @override
  final int userId;
  @override
  final _i1.GMediaType? type;

  factory _$GHomeOverviewVars(
          [void Function(GHomeOverviewVarsBuilder)? updates]) =>
      (new GHomeOverviewVarsBuilder()..update(updates))._build();

  _$GHomeOverviewVars._({this.page, required this.userId, this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GHomeOverviewVars', 'userId');
  }

  @override
  GHomeOverviewVars rebuild(void Function(GHomeOverviewVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewVarsBuilder toBuilder() =>
      new GHomeOverviewVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewVars &&
        page == other.page &&
        userId == other.userId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GHomeOverviewVars')
          ..add('page', page)
          ..add('userId', userId)
          ..add('type', type))
        .toString();
  }
}

class GHomeOverviewVarsBuilder
    implements Builder<GHomeOverviewVars, GHomeOverviewVarsBuilder> {
  _$GHomeOverviewVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  _i1.GMediaType? _type;
  _i1.GMediaType? get type => _$this._type;
  set type(_i1.GMediaType? type) => _$this._type = type;

  GHomeOverviewVarsBuilder();

  GHomeOverviewVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _userId = $v.userId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewVars;
  }

  @override
  void update(void Function(GHomeOverviewVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewVars build() => _build();

  _$GHomeOverviewVars _build() {
    final _$result = _$v ??
        new _$GHomeOverviewVars._(
            page: page,
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'GHomeOverviewVars', 'userId'),
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
