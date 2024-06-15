// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forums.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GForumsVars> _$gForumsVarsSerializer = new _$GForumsVarsSerializer();

class _$GForumsVarsSerializer implements StructuredSerializer<GForumsVars> {
  @override
  final Iterable<Type> types = const [GForumsVars, _$GForumsVars];
  @override
  final String wireName = 'GForumsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GForumsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
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
                BuiltList, const [const FullType.nullable(_i1.GThreadSort)])));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.subscribed;
    if (value != null) {
      result
        ..add('subscribed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.search;
    if (value != null) {
      result
        ..add('search')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GForumsVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumsVarsBuilder();

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
        case 'sort':
          result.sort.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i1.GThreadSort)
              ]))! as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'subscribed':
          result.subscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'search':
          result.search = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GForumsVars extends GForumsVars {
  @override
  final int? page;
  @override
  final BuiltList<_i1.GThreadSort?>? sort;
  @override
  final int? id;
  @override
  final bool? subscribed;
  @override
  final String? search;

  factory _$GForumsVars([void Function(GForumsVarsBuilder)? updates]) =>
      (new GForumsVarsBuilder()..update(updates))._build();

  _$GForumsVars._({this.page, this.sort, this.id, this.subscribed, this.search})
      : super._();

  @override
  GForumsVars rebuild(void Function(GForumsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumsVarsBuilder toBuilder() => new GForumsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumsVars &&
        page == other.page &&
        sort == other.sort &&
        id == other.id &&
        subscribed == other.subscribed &&
        search == other.search;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, subscribed.hashCode);
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GForumsVars')
          ..add('page', page)
          ..add('sort', sort)
          ..add('id', id)
          ..add('subscribed', subscribed)
          ..add('search', search))
        .toString();
  }
}

class GForumsVarsBuilder implements Builder<GForumsVars, GForumsVarsBuilder> {
  _$GForumsVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  ListBuilder<_i1.GThreadSort?>? _sort;
  ListBuilder<_i1.GThreadSort?> get sort =>
      _$this._sort ??= new ListBuilder<_i1.GThreadSort?>();
  set sort(ListBuilder<_i1.GThreadSort?>? sort) => _$this._sort = sort;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _subscribed;
  bool? get subscribed => _$this._subscribed;
  set subscribed(bool? subscribed) => _$this._subscribed = subscribed;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  GForumsVarsBuilder();

  GForumsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _sort = $v.sort?.toBuilder();
      _id = $v.id;
      _subscribed = $v.subscribed;
      _search = $v.search;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumsVars;
  }

  @override
  void update(void Function(GForumsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumsVars build() => _build();

  _$GForumsVars _build() {
    _$GForumsVars _$result;
    try {
      _$result = _$v ??
          new _$GForumsVars._(
              page: page,
              sort: _sort?.build(),
              id: id,
              subscribed: subscribed,
              search: search);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sort';
        _sort?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GForumsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
