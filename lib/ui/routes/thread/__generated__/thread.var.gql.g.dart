// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GThreadVars> _$gThreadVarsSerializer = new _$GThreadVarsSerializer();
Serializer<GSaveCommentVars> _$gSaveCommentVarsSerializer =
    new _$GSaveCommentVarsSerializer();
Serializer<GDeleteCommentVars> _$gDeleteCommentVarsSerializer =
    new _$GDeleteCommentVarsSerializer();

class _$GThreadVarsSerializer implements StructuredSerializer<GThreadVars> {
  @override
  final Iterable<Type> types = const [GThreadVars, _$GThreadVars];
  @override
  final String wireName = 'GThreadVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GThreadVars object,
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
  GThreadVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadVarsBuilder();

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

class _$GSaveCommentVarsSerializer
    implements StructuredSerializer<GSaveCommentVars> {
  @override
  final Iterable<Type> types = const [GSaveCommentVars, _$GSaveCommentVars];
  @override
  final String wireName = 'GSaveCommentVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSaveCommentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.threadId;
    if (value != null) {
      result
        ..add('threadId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.parentCommentId;
    if (value != null) {
      result
        ..add('parentCommentId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSaveCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveCommentVarsBuilder();

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
        case 'threadId':
          result.threadId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'parentCommentId':
          result.parentCommentId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteCommentVarsSerializer
    implements StructuredSerializer<GDeleteCommentVars> {
  @override
  final Iterable<Type> types = const [GDeleteCommentVars, _$GDeleteCommentVars];
  @override
  final String wireName = 'GDeleteCommentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteCommentVars object,
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
  GDeleteCommentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteCommentVarsBuilder();

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

class _$GThreadVars extends GThreadVars {
  @override
  final int? id;
  @override
  final int? page;

  factory _$GThreadVars([void Function(GThreadVarsBuilder)? updates]) =>
      (new GThreadVarsBuilder()..update(updates))._build();

  _$GThreadVars._({this.id, this.page}) : super._();

  @override
  GThreadVars rebuild(void Function(GThreadVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadVarsBuilder toBuilder() => new GThreadVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadVars && id == other.id && page == other.page;
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
    return (newBuiltValueToStringHelper(r'GThreadVars')
          ..add('id', id)
          ..add('page', page))
        .toString();
  }
}

class GThreadVarsBuilder implements Builder<GThreadVars, GThreadVarsBuilder> {
  _$GThreadVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GThreadVarsBuilder();

  GThreadVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadVars;
  }

  @override
  void update(void Function(GThreadVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadVars build() => _build();

  _$GThreadVars _build() {
    final _$result = _$v ?? new _$GThreadVars._(id: id, page: page);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveCommentVars extends GSaveCommentVars {
  @override
  final int? id;
  @override
  final int? threadId;
  @override
  final int? parentCommentId;
  @override
  final String? comment;

  factory _$GSaveCommentVars(
          [void Function(GSaveCommentVarsBuilder)? updates]) =>
      (new GSaveCommentVarsBuilder()..update(updates))._build();

  _$GSaveCommentVars._(
      {this.id, this.threadId, this.parentCommentId, this.comment})
      : super._();

  @override
  GSaveCommentVars rebuild(void Function(GSaveCommentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveCommentVarsBuilder toBuilder() =>
      new GSaveCommentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveCommentVars &&
        id == other.id &&
        threadId == other.threadId &&
        parentCommentId == other.parentCommentId &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, parentCommentId.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveCommentVars')
          ..add('id', id)
          ..add('threadId', threadId)
          ..add('parentCommentId', parentCommentId)
          ..add('comment', comment))
        .toString();
  }
}

class GSaveCommentVarsBuilder
    implements Builder<GSaveCommentVars, GSaveCommentVarsBuilder> {
  _$GSaveCommentVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _threadId;
  int? get threadId => _$this._threadId;
  set threadId(int? threadId) => _$this._threadId = threadId;

  int? _parentCommentId;
  int? get parentCommentId => _$this._parentCommentId;
  set parentCommentId(int? parentCommentId) =>
      _$this._parentCommentId = parentCommentId;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  GSaveCommentVarsBuilder();

  GSaveCommentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _threadId = $v.threadId;
      _parentCommentId = $v.parentCommentId;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveCommentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveCommentVars;
  }

  @override
  void update(void Function(GSaveCommentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveCommentVars build() => _build();

  _$GSaveCommentVars _build() {
    final _$result = _$v ??
        new _$GSaveCommentVars._(
            id: id,
            threadId: threadId,
            parentCommentId: parentCommentId,
            comment: comment);
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteCommentVars extends GDeleteCommentVars {
  @override
  final int? id;

  factory _$GDeleteCommentVars(
          [void Function(GDeleteCommentVarsBuilder)? updates]) =>
      (new GDeleteCommentVarsBuilder()..update(updates))._build();

  _$GDeleteCommentVars._({this.id}) : super._();

  @override
  GDeleteCommentVars rebuild(
          void Function(GDeleteCommentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteCommentVarsBuilder toBuilder() =>
      new GDeleteCommentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteCommentVars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GDeleteCommentVars')..add('id', id))
        .toString();
  }
}

class GDeleteCommentVarsBuilder
    implements Builder<GDeleteCommentVars, GDeleteCommentVarsBuilder> {
  _$GDeleteCommentVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GDeleteCommentVarsBuilder();

  GDeleteCommentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteCommentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteCommentVars;
  }

  @override
  void update(void Function(GDeleteCommentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteCommentVars build() => _build();

  _$GDeleteCommentVars _build() {
    final _$result = _$v ?? new _$GDeleteCommentVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
