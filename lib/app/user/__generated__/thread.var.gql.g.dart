// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserThreadsVars> _$gUserThreadsVarsSerializer =
    new _$GUserThreadsVarsSerializer();

class _$GUserThreadsVarsSerializer
    implements StructuredSerializer<GUserThreadsVars> {
  @override
  final Iterable<Type> types = const [GUserThreadsVars, _$GUserThreadsVars];
  @override
  final String wireName = 'GUserThreadsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserThreadsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.threadPage;
    if (value != null) {
      result
        ..add('threadPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.commentsPage;
    if (value != null) {
      result
        ..add('commentsPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GUserThreadsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsVarsBuilder();

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
        case 'threadPage':
          result.threadPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'commentsPage':
          result.commentsPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserThreadsVars extends GUserThreadsVars {
  @override
  final int? userId;
  @override
  final int? threadPage;
  @override
  final int? commentsPage;

  factory _$GUserThreadsVars(
          [void Function(GUserThreadsVarsBuilder)? updates]) =>
      (new GUserThreadsVarsBuilder()..update(updates))._build();

  _$GUserThreadsVars._({this.userId, this.threadPage, this.commentsPage})
      : super._();

  @override
  GUserThreadsVars rebuild(void Function(GUserThreadsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsVarsBuilder toBuilder() =>
      new GUserThreadsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsVars &&
        userId == other.userId &&
        threadPage == other.threadPage &&
        commentsPage == other.commentsPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, threadPage.hashCode);
    _$hash = $jc(_$hash, commentsPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserThreadsVars')
          ..add('userId', userId)
          ..add('threadPage', threadPage)
          ..add('commentsPage', commentsPage))
        .toString();
  }
}

class GUserThreadsVarsBuilder
    implements Builder<GUserThreadsVars, GUserThreadsVarsBuilder> {
  _$GUserThreadsVars? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _threadPage;
  int? get threadPage => _$this._threadPage;
  set threadPage(int? threadPage) => _$this._threadPage = threadPage;

  int? _commentsPage;
  int? get commentsPage => _$this._commentsPage;
  set commentsPage(int? commentsPage) => _$this._commentsPage = commentsPage;

  GUserThreadsVarsBuilder();

  GUserThreadsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _threadPage = $v.threadPage;
      _commentsPage = $v.commentsPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserThreadsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsVars;
  }

  @override
  void update(void Function(GUserThreadsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsVars build() => _build();

  _$GUserThreadsVars _build() {
    final _$result = _$v ??
        new _$GUserThreadsVars._(
            userId: userId, threadPage: threadPage, commentsPage: commentsPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
