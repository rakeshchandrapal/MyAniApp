// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studio.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GStudioVars> _$gStudioVarsSerializer = new _$GStudioVarsSerializer();

class _$GStudioVarsSerializer implements StructuredSerializer<GStudioVars> {
  @override
  final Iterable<Type> types = const [GStudioVars, _$GStudioVars];
  @override
  final String wireName = 'GStudioVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GStudioVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sort;
    if (value != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(_i1.GMediaSort)])));
    }
    value = object.onList;
    if (value != null) {
      result
        ..add('onList')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GStudioVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStudioVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sort':
          result.sort.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i1.GMediaSort)
              ]))! as BuiltList<Object?>);
          break;
        case 'onList':
          result.onList = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStudioVars extends GStudioVars {
  @override
  final int id;
  @override
  final int? page;
  @override
  final BuiltList<_i1.GMediaSort?>? sort;
  @override
  final bool? onList;

  factory _$GStudioVars([void Function(GStudioVarsBuilder)? updates]) =>
      (new GStudioVarsBuilder()..update(updates))._build();

  _$GStudioVars._({required this.id, this.page, this.sort, this.onList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GStudioVars', 'id');
  }

  @override
  GStudioVars rebuild(void Function(GStudioVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStudioVarsBuilder toBuilder() => new GStudioVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStudioVars &&
        id == other.id &&
        page == other.page &&
        sort == other.sort &&
        onList == other.onList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jc(_$hash, onList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStudioVars')
          ..add('id', id)
          ..add('page', page)
          ..add('sort', sort)
          ..add('onList', onList))
        .toString();
  }
}

class GStudioVarsBuilder implements Builder<GStudioVars, GStudioVarsBuilder> {
  _$GStudioVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  ListBuilder<_i1.GMediaSort?>? _sort;
  ListBuilder<_i1.GMediaSort?> get sort =>
      _$this._sort ??= new ListBuilder<_i1.GMediaSort?>();
  set sort(ListBuilder<_i1.GMediaSort?>? sort) => _$this._sort = sort;

  bool? _onList;
  bool? get onList => _$this._onList;
  set onList(bool? onList) => _$this._onList = onList;

  GStudioVarsBuilder();

  GStudioVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _page = $v.page;
      _sort = $v.sort?.toBuilder();
      _onList = $v.onList;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStudioVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStudioVars;
  }

  @override
  void update(void Function(GStudioVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStudioVars build() => _build();

  _$GStudioVars _build() {
    _$GStudioVars _$result;
    try {
      _$result = _$v ??
          new _$GStudioVars._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GStudioVars', 'id'),
              page: page,
              sort: _sort?.build(),
              onList: onList);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sort';
        _sort?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStudioVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
