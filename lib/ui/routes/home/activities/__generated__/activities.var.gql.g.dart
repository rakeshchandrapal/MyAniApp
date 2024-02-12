// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activities.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GActivitiesVars> _$gActivitiesVarsSerializer =
    new _$GActivitiesVarsSerializer();
Serializer<GToggleLikeVars> _$gToggleLikeVarsSerializer =
    new _$GToggleLikeVarsSerializer();
Serializer<GSaveTextActivityVars> _$gSaveTextActivityVarsSerializer =
    new _$GSaveTextActivityVarsSerializer();

class _$GActivitiesVarsSerializer
    implements StructuredSerializer<GActivitiesVars> {
  @override
  final Iterable<Type> types = const [GActivitiesVars, _$GActivitiesVars];
  @override
  final String wireName = 'GActivitiesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GActivitiesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.isFollowing;
    if (value != null) {
      result
        ..add('isFollowing')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasReplies;
    if (value != null) {
      result
        ..add('hasReplies')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  GActivitiesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivitiesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'isFollowing':
          result.isFollowing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'hasReplies':
          result.hasReplies = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$GToggleLikeVarsSerializer
    implements StructuredSerializer<GToggleLikeVars> {
  @override
  final Iterable<Type> types = const [GToggleLikeVars, _$GToggleLikeVars];
  @override
  final String wireName = 'GToggleLikeVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GToggleLikeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GLikeableType)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GToggleLikeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleLikeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GLikeableType))
              as _i1.GLikeableType?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveTextActivityVarsSerializer
    implements StructuredSerializer<GSaveTextActivityVars> {
  @override
  final Iterable<Type> types = const [
    GSaveTextActivityVars,
    _$GSaveTextActivityVars
  ];
  @override
  final String wireName = 'GSaveTextActivityVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveTextActivityVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSaveTextActivityVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveTextActivityVarsBuilder();

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
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GActivitiesVars extends GActivitiesVars {
  @override
  final bool? isFollowing;
  @override
  final bool? hasReplies;
  @override
  final _i1.GActivityType? activityType;
  @override
  final int? page;

  factory _$GActivitiesVars([void Function(GActivitiesVarsBuilder)? updates]) =>
      (new GActivitiesVarsBuilder()..update(updates))._build();

  _$GActivitiesVars._(
      {this.isFollowing, this.hasReplies, this.activityType, this.page})
      : super._();

  @override
  GActivitiesVars rebuild(void Function(GActivitiesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesVarsBuilder toBuilder() =>
      new GActivitiesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivitiesVars &&
        isFollowing == other.isFollowing &&
        hasReplies == other.hasReplies &&
        activityType == other.activityType &&
        page == other.page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isFollowing.hashCode);
    _$hash = $jc(_$hash, hasReplies.hashCode);
    _$hash = $jc(_$hash, activityType.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GActivitiesVars')
          ..add('isFollowing', isFollowing)
          ..add('hasReplies', hasReplies)
          ..add('activityType', activityType)
          ..add('page', page))
        .toString();
  }
}

class GActivitiesVarsBuilder
    implements Builder<GActivitiesVars, GActivitiesVarsBuilder> {
  _$GActivitiesVars? _$v;

  bool? _isFollowing;
  bool? get isFollowing => _$this._isFollowing;
  set isFollowing(bool? isFollowing) => _$this._isFollowing = isFollowing;

  bool? _hasReplies;
  bool? get hasReplies => _$this._hasReplies;
  set hasReplies(bool? hasReplies) => _$this._hasReplies = hasReplies;

  _i1.GActivityType? _activityType;
  _i1.GActivityType? get activityType => _$this._activityType;
  set activityType(_i1.GActivityType? activityType) =>
      _$this._activityType = activityType;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GActivitiesVarsBuilder();

  GActivitiesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isFollowing = $v.isFollowing;
      _hasReplies = $v.hasReplies;
      _activityType = $v.activityType;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivitiesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivitiesVars;
  }

  @override
  void update(void Function(GActivitiesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesVars build() => _build();

  _$GActivitiesVars _build() {
    final _$result = _$v ??
        new _$GActivitiesVars._(
            isFollowing: isFollowing,
            hasReplies: hasReplies,
            activityType: activityType,
            page: page);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleLikeVars extends GToggleLikeVars {
  @override
  final _i1.GLikeableType? type;
  @override
  final int? id;

  factory _$GToggleLikeVars([void Function(GToggleLikeVarsBuilder)? updates]) =>
      (new GToggleLikeVarsBuilder()..update(updates))._build();

  _$GToggleLikeVars._({this.type, this.id}) : super._();

  @override
  GToggleLikeVars rebuild(void Function(GToggleLikeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleLikeVarsBuilder toBuilder() =>
      new GToggleLikeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleLikeVars && type == other.type && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToggleLikeVars')
          ..add('type', type)
          ..add('id', id))
        .toString();
  }
}

class GToggleLikeVarsBuilder
    implements Builder<GToggleLikeVars, GToggleLikeVarsBuilder> {
  _$GToggleLikeVars? _$v;

  _i1.GLikeableType? _type;
  _i1.GLikeableType? get type => _$this._type;
  set type(_i1.GLikeableType? type) => _$this._type = type;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GToggleLikeVarsBuilder();

  GToggleLikeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleLikeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleLikeVars;
  }

  @override
  void update(void Function(GToggleLikeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleLikeVars build() => _build();

  _$GToggleLikeVars _build() {
    final _$result = _$v ?? new _$GToggleLikeVars._(type: type, id: id);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveTextActivityVars extends GSaveTextActivityVars {
  @override
  final int? id;
  @override
  final String? text;

  factory _$GSaveTextActivityVars(
          [void Function(GSaveTextActivityVarsBuilder)? updates]) =>
      (new GSaveTextActivityVarsBuilder()..update(updates))._build();

  _$GSaveTextActivityVars._({this.id, this.text}) : super._();

  @override
  GSaveTextActivityVars rebuild(
          void Function(GSaveTextActivityVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveTextActivityVarsBuilder toBuilder() =>
      new GSaveTextActivityVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveTextActivityVars &&
        id == other.id &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveTextActivityVars')
          ..add('id', id)
          ..add('text', text))
        .toString();
  }
}

class GSaveTextActivityVarsBuilder
    implements Builder<GSaveTextActivityVars, GSaveTextActivityVarsBuilder> {
  _$GSaveTextActivityVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  GSaveTextActivityVarsBuilder();

  GSaveTextActivityVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveTextActivityVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveTextActivityVars;
  }

  @override
  void update(void Function(GSaveTextActivityVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveTextActivityVars build() => _build();

  _$GSaveTextActivityVars _build() {
    final _$result = _$v ?? new _$GSaveTextActivityVars._(id: id, text: text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
