// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserVars> _$gUserVarsSerializer = new _$GUserVarsSerializer();
Serializer<GGenreStatVars> _$gGenreStatVarsSerializer =
    new _$GGenreStatVarsSerializer();

class _$GUserVarsSerializer implements StructuredSerializer<GUserVars> {
  @override
  final Iterable<Type> types = const [GUserVars, _$GUserVars];
  @override
  final String wireName = 'GUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGenreStatVarsSerializer
    implements StructuredSerializer<GGenreStatVars> {
  @override
  final Iterable<Type> types = const [GGenreStatVars, _$GGenreStatVars];
  @override
  final String wireName = 'GGenreStatVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGenreStatVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGenreStatVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGenreStatVarsBuilder().build();
  }
}

class _$GUserVars extends GUserVars {
  @override
  final String? name;

  factory _$GUserVars([void Function(GUserVarsBuilder)? updates]) =>
      (new GUserVarsBuilder()..update(updates))._build();

  _$GUserVars._({this.name}) : super._();

  @override
  GUserVars rebuild(void Function(GUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserVarsBuilder toBuilder() => new GUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserVars && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserVars')..add('name', name))
        .toString();
  }
}

class GUserVarsBuilder implements Builder<GUserVars, GUserVarsBuilder> {
  _$GUserVars? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GUserVarsBuilder();

  GUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserVars;
  }

  @override
  void update(void Function(GUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserVars build() => _build();

  _$GUserVars _build() {
    final _$result = _$v ?? new _$GUserVars._(name: name);
    replace(_$result);
    return _$result;
  }
}

class _$GGenreStatVars extends GGenreStatVars {
  factory _$GGenreStatVars([void Function(GGenreStatVarsBuilder)? updates]) =>
      (new GGenreStatVarsBuilder()..update(updates))._build();

  _$GGenreStatVars._() : super._();

  @override
  GGenreStatVars rebuild(void Function(GGenreStatVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGenreStatVarsBuilder toBuilder() =>
      new GGenreStatVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGenreStatVars;
  }

  @override
  int get hashCode {
    return 3081396;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGenreStatVars').toString();
  }
}

class GGenreStatVarsBuilder
    implements Builder<GGenreStatVars, GGenreStatVarsBuilder> {
  _$GGenreStatVars? _$v;

  GGenreStatVarsBuilder();

  @override
  void replace(GGenreStatVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGenreStatVars;
  }

  @override
  void update(void Function(GGenreStatVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGenreStatVars build() => _build();

  _$GGenreStatVars _build() {
    final _$result = _$v ?? new _$GGenreStatVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
