// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activities.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserActivitiesVars> _$gUserActivitiesVarsSerializer =
    new _$GUserActivitiesVarsSerializer();

class _$GUserActivitiesVarsSerializer
    implements StructuredSerializer<GUserActivitiesVars> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesVars,
    _$GUserActivitiesVars
  ];
  @override
  final String wireName = 'GUserActivitiesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserActivitiesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.activityType;
    if (value != null) {
      result
        ..add('activityType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GActivityType)));
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
  GUserActivitiesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserActivitiesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'activityType':
          result.activityType = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GActivityType))
              as _i1.GActivityType?;
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

class _$GUserActivitiesVars extends GUserActivitiesVars {
  @override
  final int? userId;
  @override
  final _i1.GActivityType? activityType;
  @override
  final int? page;

  factory _$GUserActivitiesVars(
          [void Function(GUserActivitiesVarsBuilder)? updates]) =>
      (new GUserActivitiesVarsBuilder()..update(updates))._build();

  _$GUserActivitiesVars._({this.userId, this.activityType, this.page})
      : super._();

  @override
  GUserActivitiesVars rebuild(
          void Function(GUserActivitiesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesVarsBuilder toBuilder() =>
      new GUserActivitiesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserActivitiesVars &&
        userId == other.userId &&
        activityType == other.activityType &&
        page == other.page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, activityType.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserActivitiesVars')
          ..add('userId', userId)
          ..add('activityType', activityType)
          ..add('page', page))
        .toString();
  }
}

class GUserActivitiesVarsBuilder
    implements Builder<GUserActivitiesVars, GUserActivitiesVarsBuilder> {
  _$GUserActivitiesVars? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  _i1.GActivityType? _activityType;
  _i1.GActivityType? get activityType => _$this._activityType;
  set activityType(_i1.GActivityType? activityType) =>
      _$this._activityType = activityType;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GUserActivitiesVarsBuilder();

  GUserActivitiesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _activityType = $v.activityType;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserActivitiesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserActivitiesVars;
  }

  @override
  void update(void Function(GUserActivitiesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesVars build() => _build();

  _$GUserActivitiesVars _build() {
    final _$result = _$v ??
        new _$GUserActivitiesVars._(
            userId: userId, activityType: activityType, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
