// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNotificationsVars> _$gNotificationsVarsSerializer =
    new _$GNotificationsVarsSerializer();

class _$GNotificationsVarsSerializer
    implements StructuredSerializer<GNotificationsVars> {
  @override
  final Iterable<Type> types = const [GNotificationsVars, _$GNotificationsVars];
  @override
  final String wireName = 'GNotificationsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNotificationsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.types;
    if (value != null) {
      result
        ..add('types')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(_i1.GNotificationType)])));
    }
    value = object.reset;
    if (value != null) {
      result
        ..add('reset')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GNotificationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationsVarsBuilder();

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
        case 'types':
          result.types.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i1.GNotificationType)
              ]))! as BuiltList<Object?>);
          break;
        case 'reset':
          result.reset = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationsVars extends GNotificationsVars {
  @override
  final int? page;
  @override
  final BuiltList<_i1.GNotificationType?>? types;
  @override
  final bool? reset;

  factory _$GNotificationsVars(
          [void Function(GNotificationsVarsBuilder)? updates]) =>
      (new GNotificationsVarsBuilder()..update(updates))._build();

  _$GNotificationsVars._({this.page, this.types, this.reset}) : super._();

  @override
  GNotificationsVars rebuild(
          void Function(GNotificationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationsVarsBuilder toBuilder() =>
      new GNotificationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationsVars &&
        page == other.page &&
        types == other.types &&
        reset == other.reset;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, reset.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNotificationsVars')
          ..add('page', page)
          ..add('types', types)
          ..add('reset', reset))
        .toString();
  }
}

class GNotificationsVarsBuilder
    implements Builder<GNotificationsVars, GNotificationsVarsBuilder> {
  _$GNotificationsVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  ListBuilder<_i1.GNotificationType?>? _types;
  ListBuilder<_i1.GNotificationType?> get types =>
      _$this._types ??= new ListBuilder<_i1.GNotificationType?>();
  set types(ListBuilder<_i1.GNotificationType?>? types) =>
      _$this._types = types;

  bool? _reset;
  bool? get reset => _$this._reset;
  set reset(bool? reset) => _$this._reset = reset;

  GNotificationsVarsBuilder();

  GNotificationsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _types = $v.types?.toBuilder();
      _reset = $v.reset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationsVars;
  }

  @override
  void update(void Function(GNotificationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationsVars build() => _build();

  _$GNotificationsVars _build() {
    _$GNotificationsVars _$result;
    try {
      _$result = _$v ??
          new _$GNotificationsVars._(
              page: page, types: _types?.build(), reset: reset);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        _types?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNotificationsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
