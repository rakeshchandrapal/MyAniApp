// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserSocialsVars> _$gUserSocialsVarsSerializer =
    new _$GUserSocialsVarsSerializer();

class _$GUserSocialsVarsSerializer
    implements StructuredSerializer<GUserSocialsVars> {
  @override
  final Iterable<Type> types = const [GUserSocialsVars, _$GUserSocialsVars];
  @override
  final String wireName = 'GUserSocialsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserSocialsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.followersPage;
    if (value != null) {
      result
        ..add('followersPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.followingPage;
    if (value != null) {
      result
        ..add('followingPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GUserSocialsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserSocialsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'followersPage':
          result.followersPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'followingPage':
          result.followingPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserSocialsVars extends GUserSocialsVars {
  @override
  final int id;
  @override
  final int? followersPage;
  @override
  final int? followingPage;

  factory _$GUserSocialsVars(
          [void Function(GUserSocialsVarsBuilder)? updates]) =>
      (new GUserSocialsVarsBuilder()..update(updates))._build();

  _$GUserSocialsVars._(
      {required this.id, this.followersPage, this.followingPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GUserSocialsVars', 'id');
  }

  @override
  GUserSocialsVars rebuild(void Function(GUserSocialsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserSocialsVarsBuilder toBuilder() =>
      new GUserSocialsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserSocialsVars &&
        id == other.id &&
        followersPage == other.followersPage &&
        followingPage == other.followingPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, followersPage.hashCode);
    _$hash = $jc(_$hash, followingPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserSocialsVars')
          ..add('id', id)
          ..add('followersPage', followersPage)
          ..add('followingPage', followingPage))
        .toString();
  }
}

class GUserSocialsVarsBuilder
    implements Builder<GUserSocialsVars, GUserSocialsVarsBuilder> {
  _$GUserSocialsVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _followersPage;
  int? get followersPage => _$this._followersPage;
  set followersPage(int? followersPage) =>
      _$this._followersPage = followersPage;

  int? _followingPage;
  int? get followingPage => _$this._followingPage;
  set followingPage(int? followingPage) =>
      _$this._followingPage = followingPage;

  GUserSocialsVarsBuilder();

  GUserSocialsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _followersPage = $v.followersPage;
      _followingPage = $v.followingPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserSocialsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserSocialsVars;
  }

  @override
  void update(void Function(GUserSocialsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserSocialsVars build() => _build();

  _$GUserSocialsVars _build() {
    final _$result = _$v ??
        new _$GUserSocialsVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUserSocialsVars', 'id'),
            followersPage: followersPage,
            followingPage: followingPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
