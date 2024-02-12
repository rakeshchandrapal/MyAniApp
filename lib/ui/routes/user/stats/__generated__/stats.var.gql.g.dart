// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserStatsVars> _$gUserStatsVarsSerializer =
    new _$GUserStatsVarsSerializer();

class _$GUserStatsVarsSerializer
    implements StructuredSerializer<GUserStatsVars> {
  @override
  final Iterable<Type> types = const [GUserStatsVars, _$GUserStatsVars];
  @override
  final String wireName = 'GUserStatsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserStatsVars object,
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
  GUserStatsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserStatsVarsBuilder();

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

class _$GUserStatsVars extends GUserStatsVars {
  @override
  final String? name;

  factory _$GUserStatsVars([void Function(GUserStatsVarsBuilder)? updates]) =>
      (new GUserStatsVarsBuilder()..update(updates))._build();

  _$GUserStatsVars._({this.name}) : super._();

  @override
  GUserStatsVars rebuild(void Function(GUserStatsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserStatsVarsBuilder toBuilder() =>
      new GUserStatsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserStatsVars && name == other.name;
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
    return (newBuiltValueToStringHelper(r'GUserStatsVars')..add('name', name))
        .toString();
  }
}

class GUserStatsVarsBuilder
    implements Builder<GUserStatsVars, GUserStatsVarsBuilder> {
  _$GUserStatsVars? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GUserStatsVarsBuilder();

  GUserStatsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserStatsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserStatsVars;
  }

  @override
  void update(void Function(GUserStatsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserStatsVars build() => _build();

  _$GUserStatsVars _build() {
    final _$result = _$v ?? new _$GUserStatsVars._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
