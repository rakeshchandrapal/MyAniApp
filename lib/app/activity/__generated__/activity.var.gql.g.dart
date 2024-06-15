// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GActivityVars> _$gActivityVarsSerializer =
    new _$GActivityVarsSerializer();
Serializer<GSaveActivityReplyVars> _$gSaveActivityReplyVarsSerializer =
    new _$GSaveActivityReplyVarsSerializer();
Serializer<GSaveMessageActivityVars> _$gSaveMessageActivityVarsSerializer =
    new _$GSaveMessageActivityVarsSerializer();
Serializer<GToggleActivitySubscriptionVars>
    _$gToggleActivitySubscriptionVarsSerializer =
    new _$GToggleActivitySubscriptionVarsSerializer();
Serializer<GDeleteActivityReplyVars> _$gDeleteActivityReplyVarsSerializer =
    new _$GDeleteActivityReplyVarsSerializer();
Serializer<GDeleteActivityVars> _$gDeleteActivityVarsSerializer =
    new _$GDeleteActivityVarsSerializer();

class _$GActivityVarsSerializer implements StructuredSerializer<GActivityVars> {
  @override
  final Iterable<Type> types = const [GActivityVars, _$GActivityVars];
  @override
  final String wireName = 'GActivityVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GActivityVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  GActivityVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivityVarsBuilder();

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
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveActivityReplyVarsSerializer
    implements StructuredSerializer<GSaveActivityReplyVars> {
  @override
  final Iterable<Type> types = const [
    GSaveActivityReplyVars,
    _$GSaveActivityReplyVars
  ];
  @override
  final String wireName = 'GSaveActivityReplyVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveActivityReplyVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.activityId;
    if (value != null) {
      result
        ..add('activityId')
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
  GSaveActivityReplyVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveActivityReplyVarsBuilder();

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
        case 'activityId':
          result.activityId = serializers.deserialize(value,
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

class _$GSaveMessageActivityVarsSerializer
    implements StructuredSerializer<GSaveMessageActivityVars> {
  @override
  final Iterable<Type> types = const [
    GSaveMessageActivityVars,
    _$GSaveMessageActivityVars
  ];
  @override
  final String wireName = 'GSaveMessageActivityVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveMessageActivityVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.recipientId;
    if (value != null) {
      result
        ..add('recipientId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.private;
    if (value != null) {
      result
        ..add('private')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GSaveMessageActivityVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveMessageActivityVarsBuilder();

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
        case 'recipientId':
          result.recipientId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleActivitySubscriptionVarsSerializer
    implements StructuredSerializer<GToggleActivitySubscriptionVars> {
  @override
  final Iterable<Type> types = const [
    GToggleActivitySubscriptionVars,
    _$GToggleActivitySubscriptionVars
  ];
  @override
  final String wireName = 'GToggleActivitySubscriptionVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleActivitySubscriptionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.subscribe;
    if (value != null) {
      result
        ..add('subscribe')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GToggleActivitySubscriptionVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleActivitySubscriptionVarsBuilder();

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
        case 'subscribe':
          result.subscribe = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteActivityReplyVarsSerializer
    implements StructuredSerializer<GDeleteActivityReplyVars> {
  @override
  final Iterable<Type> types = const [
    GDeleteActivityReplyVars,
    _$GDeleteActivityReplyVars
  ];
  @override
  final String wireName = 'GDeleteActivityReplyVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteActivityReplyVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GDeleteActivityReplyVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteActivityReplyVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GDeleteActivityVarsSerializer
    implements StructuredSerializer<GDeleteActivityVars> {
  @override
  final Iterable<Type> types = const [
    GDeleteActivityVars,
    _$GDeleteActivityVars
  ];
  @override
  final String wireName = 'GDeleteActivityVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteActivityVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GDeleteActivityVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteActivityVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GActivityVars extends GActivityVars {
  @override
  final int? id;
  @override
  final int? page;

  factory _$GActivityVars([void Function(GActivityVarsBuilder)? updates]) =>
      (new GActivityVarsBuilder()..update(updates))._build();

  _$GActivityVars._({this.id, this.page}) : super._();

  @override
  GActivityVars rebuild(void Function(GActivityVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityVarsBuilder toBuilder() => new GActivityVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityVars && id == other.id && page == other.page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GActivityVars')
          ..add('id', id)
          ..add('page', page))
        .toString();
  }
}

class GActivityVarsBuilder
    implements Builder<GActivityVars, GActivityVarsBuilder> {
  _$GActivityVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GActivityVarsBuilder();

  GActivityVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivityVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityVars;
  }

  @override
  void update(void Function(GActivityVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityVars build() => _build();

  _$GActivityVars _build() {
    final _$result = _$v ?? new _$GActivityVars._(id: id, page: page);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveActivityReplyVars extends GSaveActivityReplyVars {
  @override
  final int? id;
  @override
  final int? activityId;
  @override
  final String? text;

  factory _$GSaveActivityReplyVars(
          [void Function(GSaveActivityReplyVarsBuilder)? updates]) =>
      (new GSaveActivityReplyVarsBuilder()..update(updates))._build();

  _$GSaveActivityReplyVars._({this.id, this.activityId, this.text}) : super._();

  @override
  GSaveActivityReplyVars rebuild(
          void Function(GSaveActivityReplyVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveActivityReplyVarsBuilder toBuilder() =>
      new GSaveActivityReplyVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveActivityReplyVars &&
        id == other.id &&
        activityId == other.activityId &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, activityId.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveActivityReplyVars')
          ..add('id', id)
          ..add('activityId', activityId)
          ..add('text', text))
        .toString();
  }
}

class GSaveActivityReplyVarsBuilder
    implements Builder<GSaveActivityReplyVars, GSaveActivityReplyVarsBuilder> {
  _$GSaveActivityReplyVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _activityId;
  int? get activityId => _$this._activityId;
  set activityId(int? activityId) => _$this._activityId = activityId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  GSaveActivityReplyVarsBuilder();

  GSaveActivityReplyVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _activityId = $v.activityId;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveActivityReplyVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveActivityReplyVars;
  }

  @override
  void update(void Function(GSaveActivityReplyVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveActivityReplyVars build() => _build();

  _$GSaveActivityReplyVars _build() {
    final _$result = _$v ??
        new _$GSaveActivityReplyVars._(
            id: id, activityId: activityId, text: text);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMessageActivityVars extends GSaveMessageActivityVars {
  @override
  final int? id;
  @override
  final int? recipientId;
  @override
  final String? message;
  @override
  final bool? private;

  factory _$GSaveMessageActivityVars(
          [void Function(GSaveMessageActivityVarsBuilder)? updates]) =>
      (new GSaveMessageActivityVarsBuilder()..update(updates))._build();

  _$GSaveMessageActivityVars._(
      {this.id, this.recipientId, this.message, this.private})
      : super._();

  @override
  GSaveMessageActivityVars rebuild(
          void Function(GSaveMessageActivityVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMessageActivityVarsBuilder toBuilder() =>
      new GSaveMessageActivityVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveMessageActivityVars &&
        id == other.id &&
        recipientId == other.recipientId &&
        message == other.message &&
        private == other.private;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, recipientId.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveMessageActivityVars')
          ..add('id', id)
          ..add('recipientId', recipientId)
          ..add('message', message)
          ..add('private', private))
        .toString();
  }
}

class GSaveMessageActivityVarsBuilder
    implements
        Builder<GSaveMessageActivityVars, GSaveMessageActivityVarsBuilder> {
  _$GSaveMessageActivityVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _recipientId;
  int? get recipientId => _$this._recipientId;
  set recipientId(int? recipientId) => _$this._recipientId = recipientId;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  GSaveMessageActivityVarsBuilder();

  GSaveMessageActivityVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _recipientId = $v.recipientId;
      _message = $v.message;
      _private = $v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveMessageActivityVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveMessageActivityVars;
  }

  @override
  void update(void Function(GSaveMessageActivityVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMessageActivityVars build() => _build();

  _$GSaveMessageActivityVars _build() {
    final _$result = _$v ??
        new _$GSaveMessageActivityVars._(
            id: id,
            recipientId: recipientId,
            message: message,
            private: private);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleActivitySubscriptionVars
    extends GToggleActivitySubscriptionVars {
  @override
  final int? id;
  @override
  final bool? subscribe;

  factory _$GToggleActivitySubscriptionVars(
          [void Function(GToggleActivitySubscriptionVarsBuilder)? updates]) =>
      (new GToggleActivitySubscriptionVarsBuilder()..update(updates))._build();

  _$GToggleActivitySubscriptionVars._({this.id, this.subscribe}) : super._();

  @override
  GToggleActivitySubscriptionVars rebuild(
          void Function(GToggleActivitySubscriptionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleActivitySubscriptionVarsBuilder toBuilder() =>
      new GToggleActivitySubscriptionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleActivitySubscriptionVars &&
        id == other.id &&
        subscribe == other.subscribe;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, subscribe.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToggleActivitySubscriptionVars')
          ..add('id', id)
          ..add('subscribe', subscribe))
        .toString();
  }
}

class GToggleActivitySubscriptionVarsBuilder
    implements
        Builder<GToggleActivitySubscriptionVars,
            GToggleActivitySubscriptionVarsBuilder> {
  _$GToggleActivitySubscriptionVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _subscribe;
  bool? get subscribe => _$this._subscribe;
  set subscribe(bool? subscribe) => _$this._subscribe = subscribe;

  GToggleActivitySubscriptionVarsBuilder();

  GToggleActivitySubscriptionVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _subscribe = $v.subscribe;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleActivitySubscriptionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleActivitySubscriptionVars;
  }

  @override
  void update(void Function(GToggleActivitySubscriptionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleActivitySubscriptionVars build() => _build();

  _$GToggleActivitySubscriptionVars _build() {
    final _$result = _$v ??
        new _$GToggleActivitySubscriptionVars._(id: id, subscribe: subscribe);
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteActivityReplyVars extends GDeleteActivityReplyVars {
  @override
  final int? id;

  factory _$GDeleteActivityReplyVars(
          [void Function(GDeleteActivityReplyVarsBuilder)? updates]) =>
      (new GDeleteActivityReplyVarsBuilder()..update(updates))._build();

  _$GDeleteActivityReplyVars._({this.id}) : super._();

  @override
  GDeleteActivityReplyVars rebuild(
          void Function(GDeleteActivityReplyVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteActivityReplyVarsBuilder toBuilder() =>
      new GDeleteActivityReplyVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteActivityReplyVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteActivityReplyVars')
          ..add('id', id))
        .toString();
  }
}

class GDeleteActivityReplyVarsBuilder
    implements
        Builder<GDeleteActivityReplyVars, GDeleteActivityReplyVarsBuilder> {
  _$GDeleteActivityReplyVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GDeleteActivityReplyVarsBuilder();

  GDeleteActivityReplyVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteActivityReplyVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteActivityReplyVars;
  }

  @override
  void update(void Function(GDeleteActivityReplyVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteActivityReplyVars build() => _build();

  _$GDeleteActivityReplyVars _build() {
    final _$result = _$v ?? new _$GDeleteActivityReplyVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteActivityVars extends GDeleteActivityVars {
  @override
  final int? id;

  factory _$GDeleteActivityVars(
          [void Function(GDeleteActivityVarsBuilder)? updates]) =>
      (new GDeleteActivityVarsBuilder()..update(updates))._build();

  _$GDeleteActivityVars._({this.id}) : super._();

  @override
  GDeleteActivityVars rebuild(
          void Function(GDeleteActivityVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteActivityVarsBuilder toBuilder() =>
      new GDeleteActivityVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteActivityVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteActivityVars')..add('id', id))
        .toString();
  }
}

class GDeleteActivityVarsBuilder
    implements Builder<GDeleteActivityVars, GDeleteActivityVarsBuilder> {
  _$GDeleteActivityVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GDeleteActivityVarsBuilder();

  GDeleteActivityVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteActivityVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteActivityVars;
  }

  @override
  void update(void Function(GDeleteActivityVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteActivityVars build() => _build();

  _$GDeleteActivityVars _build() {
    final _$result = _$v ?? new _$GDeleteActivityVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
