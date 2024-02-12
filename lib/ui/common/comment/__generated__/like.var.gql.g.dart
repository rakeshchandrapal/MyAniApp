// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLikesVars> _$gLikesVarsSerializer = new _$GLikesVarsSerializer();

class _$GLikesVarsSerializer implements StructuredSerializer<GLikesVars> {
  @override
  final Iterable<Type> types = const [GLikesVars, _$GLikesVars];
  @override
  final String wireName = 'GLikesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLikesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GLikeableType)));
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
  GLikesVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GLikeableType))
              as _i1.GLikeableType?;
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

class _$GLikesVars extends GLikesVars {
  @override
  final int? id;
  @override
  final _i1.GLikeableType? type;
  @override
  final int? page;

  factory _$GLikesVars([void Function(GLikesVarsBuilder)? updates]) =>
      (new GLikesVarsBuilder()..update(updates))._build();

  _$GLikesVars._({this.id, this.type, this.page}) : super._();

  @override
  GLikesVars rebuild(void Function(GLikesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikesVarsBuilder toBuilder() => new GLikesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikesVars &&
        id == other.id &&
        type == other.type &&
        page == other.page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLikesVars')
          ..add('id', id)
          ..add('type', type)
          ..add('page', page))
        .toString();
  }
}

class GLikesVarsBuilder implements Builder<GLikesVars, GLikesVarsBuilder> {
  _$GLikesVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i1.GLikeableType? _type;
  _i1.GLikeableType? get type => _$this._type;
  set type(_i1.GLikeableType? type) => _$this._type = type;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GLikesVarsBuilder();

  GLikesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikesVars;
  }

  @override
  void update(void Function(GLikesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLikesVars build() => _build();

  _$GLikesVars _build() {
    final _$result = _$v ?? new _$GLikesVars._(id: id, type: type, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
