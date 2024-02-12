// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GStaffVars> _$gStaffVarsSerializer = new _$GStaffVarsSerializer();

class _$GStaffVarsSerializer implements StructuredSerializer<GStaffVars> {
  @override
  final Iterable<Type> types = const [GStaffVars, _$GStaffVars];
  @override
  final String wireName = 'GStaffVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GStaffVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.onList;
    if (value != null) {
      result
        ..add('onList')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.characterPage;
    if (value != null) {
      result
        ..add('characterPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.staffPage;
    if (value != null) {
      result
        ..add('staffPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GStaffVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffVarsBuilder();

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
        case 'onList':
          result.onList = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'characterPage':
          result.characterPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'staffPage':
          result.staffPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffVars extends GStaffVars {
  @override
  final int? id;
  @override
  final bool? onList;
  @override
  final int? characterPage;
  @override
  final int? staffPage;

  factory _$GStaffVars([void Function(GStaffVarsBuilder)? updates]) =>
      (new GStaffVarsBuilder()..update(updates))._build();

  _$GStaffVars._({this.id, this.onList, this.characterPage, this.staffPage})
      : super._();

  @override
  GStaffVars rebuild(void Function(GStaffVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffVarsBuilder toBuilder() => new GStaffVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffVars &&
        id == other.id &&
        onList == other.onList &&
        characterPage == other.characterPage &&
        staffPage == other.staffPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, onList.hashCode);
    _$hash = $jc(_$hash, characterPage.hashCode);
    _$hash = $jc(_$hash, staffPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffVars')
          ..add('id', id)
          ..add('onList', onList)
          ..add('characterPage', characterPage)
          ..add('staffPage', staffPage))
        .toString();
  }
}

class GStaffVarsBuilder implements Builder<GStaffVars, GStaffVarsBuilder> {
  _$GStaffVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _onList;
  bool? get onList => _$this._onList;
  set onList(bool? onList) => _$this._onList = onList;

  int? _characterPage;
  int? get characterPage => _$this._characterPage;
  set characterPage(int? characterPage) =>
      _$this._characterPage = characterPage;

  int? _staffPage;
  int? get staffPage => _$this._staffPage;
  set staffPage(int? staffPage) => _$this._staffPage = staffPage;

  GStaffVarsBuilder();

  GStaffVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _onList = $v.onList;
      _characterPage = $v.characterPage;
      _staffPage = $v.staffPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffVars;
  }

  @override
  void update(void Function(GStaffVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffVars build() => _build();

  _$GStaffVars _build() {
    final _$result = _$v ??
        new _$GStaffVars._(
            id: id,
            onList: onList,
            characterPage: characterPage,
            staffPage: staffPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
