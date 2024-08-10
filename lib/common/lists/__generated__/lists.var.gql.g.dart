// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaListVars> _$gMediaListVarsSerializer =
    new _$GMediaListVarsSerializer();

class _$GMediaListVarsSerializer
    implements StructuredSerializer<GMediaListVars> {
  @override
  final Iterable<Type> types = const [GMediaListVars, _$GMediaListVars];
  @override
  final String wireName = 'GMediaListVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GMediaType)));
    }
    value = object.sort;
    if (value != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(_i1.GMediaListSort)])));
    }
    return result;
  }

  @override
  GMediaListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i1.GMediaType)) as _i1.GMediaType?;
          break;
        case 'sort':
          result.sort.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i1.GMediaListSort)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListVars extends GMediaListVars {
  @override
  final String? userName;
  @override
  final _i1.GMediaType? type;
  @override
  final BuiltList<_i1.GMediaListSort?>? sort;

  factory _$GMediaListVars([void Function(GMediaListVarsBuilder)? updates]) =>
      (new GMediaListVarsBuilder()..update(updates))._build();

  _$GMediaListVars._({this.userName, this.type, this.sort}) : super._();

  @override
  GMediaListVars rebuild(void Function(GMediaListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListVarsBuilder toBuilder() =>
      new GMediaListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListVars &&
        userName == other.userName &&
        type == other.type &&
        sort == other.sort;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaListVars')
          ..add('userName', userName)
          ..add('type', type)
          ..add('sort', sort))
        .toString();
  }
}

class GMediaListVarsBuilder
    implements Builder<GMediaListVars, GMediaListVarsBuilder> {
  _$GMediaListVars? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  _i1.GMediaType? _type;
  _i1.GMediaType? get type => _$this._type;
  set type(_i1.GMediaType? type) => _$this._type = type;

  ListBuilder<_i1.GMediaListSort?>? _sort;
  ListBuilder<_i1.GMediaListSort?> get sort =>
      _$this._sort ??= new ListBuilder<_i1.GMediaListSort?>();
  set sort(ListBuilder<_i1.GMediaListSort?>? sort) => _$this._sort = sort;

  GMediaListVarsBuilder();

  GMediaListVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _type = $v.type;
      _sort = $v.sort?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListVars;
  }

  @override
  void update(void Function(GMediaListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListVars build() => _build();

  _$GMediaListVars _build() {
    _$GMediaListVars _$result;
    try {
      _$result = _$v ??
          new _$GMediaListVars._(
              userName: userName, type: type, sort: _sort?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sort';
        _sort?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
