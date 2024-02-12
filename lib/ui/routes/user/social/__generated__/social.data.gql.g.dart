// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSocialsData> _$gSocialsDataSerializer =
    new _$GSocialsDataSerializer();
Serializer<GSocialsData_followers> _$gSocialsDataFollowersSerializer =
    new _$GSocialsData_followersSerializer();
Serializer<GSocialsData_followers_pageInfo>
    _$gSocialsDataFollowersPageInfoSerializer =
    new _$GSocialsData_followers_pageInfoSerializer();
Serializer<GSocialsData_followers_followers>
    _$gSocialsDataFollowersFollowersSerializer =
    new _$GSocialsData_followers_followersSerializer();
Serializer<GSocialsData_followers_followers_avatar>
    _$gSocialsDataFollowersFollowersAvatarSerializer =
    new _$GSocialsData_followers_followers_avatarSerializer();
Serializer<GSocialsData_following> _$gSocialsDataFollowingSerializer =
    new _$GSocialsData_followingSerializer();
Serializer<GSocialsData_following_pageInfo>
    _$gSocialsDataFollowingPageInfoSerializer =
    new _$GSocialsData_following_pageInfoSerializer();
Serializer<GSocialsData_following_following>
    _$gSocialsDataFollowingFollowingSerializer =
    new _$GSocialsData_following_followingSerializer();
Serializer<GSocialsData_following_following_avatar>
    _$gSocialsDataFollowingFollowingAvatarSerializer =
    new _$GSocialsData_following_following_avatarSerializer();

class _$GSocialsDataSerializer implements StructuredSerializer<GSocialsData> {
  @override
  final Iterable<Type> types = const [GSocialsData, _$GSocialsData];
  @override
  final String wireName = 'GSocialsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSocialsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.followers;
    if (value != null) {
      result
        ..add('followers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSocialsData_followers)));
    }
    value = object.following;
    if (value != null) {
      result
        ..add('following')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSocialsData_following)));
    }
    return result;
  }

  @override
  GSocialsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'followers':
          result.followers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSocialsData_followers))!
              as GSocialsData_followers);
          break;
        case 'following':
          result.following.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSocialsData_following))!
              as GSocialsData_following);
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialsData_followersSerializer
    implements StructuredSerializer<GSocialsData_followers> {
  @override
  final Iterable<Type> types = const [
    GSocialsData_followers,
    _$GSocialsData_followers
  ];
  @override
  final String wireName = 'GSocialsData_followers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialsData_followers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pageInfo;
    if (value != null) {
      result
        ..add('pageInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSocialsData_followers_pageInfo)));
    }
    value = object.followers;
    if (value != null) {
      result
        ..add('followers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GSocialsData_followers_followers)
            ])));
    }
    return result;
  }

  @override
  GSocialsData_followers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialsData_followersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSocialsData_followers_pageInfo))!
              as GSocialsData_followers_pageInfo);
          break;
        case 'followers':
          result.followers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GSocialsData_followers_followers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialsData_followers_pageInfoSerializer
    implements StructuredSerializer<GSocialsData_followers_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GSocialsData_followers_pageInfo,
    _$GSocialsData_followers_pageInfo
  ];
  @override
  final String wireName = 'GSocialsData_followers_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialsData_followers_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasNextPage;
    if (value != null) {
      result
        ..add('hasNextPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GSocialsData_followers_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialsData_followers_pageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialsData_followers_followersSerializer
    implements StructuredSerializer<GSocialsData_followers_followers> {
  @override
  final Iterable<Type> types = const [
    GSocialsData_followers_followers,
    _$GSocialsData_followers_followers
  ];
  @override
  final String wireName = 'GSocialsData_followers_followers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialsData_followers_followers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.donatorTier;
    if (value != null) {
      result
        ..add('donatorTier')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.donatorBadge;
    if (value != null) {
      result
        ..add('donatorBadge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moderatorRoles;
    if (value != null) {
      result
        ..add('moderatorRoles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(_i4.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSocialsData_followers_followers_avatar)));
    }
    return result;
  }

  @override
  GSocialsData_followers_followers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialsData_followers_followersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'donatorTier':
          result.donatorTier = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'donatorBadge':
          result.donatorBadge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'moderatorRoles':
          result.moderatorRoles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i4.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSocialsData_followers_followers_avatar))!
              as GSocialsData_followers_followers_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialsData_followers_followers_avatarSerializer
    implements StructuredSerializer<GSocialsData_followers_followers_avatar> {
  @override
  final Iterable<Type> types = const [
    GSocialsData_followers_followers_avatar,
    _$GSocialsData_followers_followers_avatar
  ];
  @override
  final String wireName = 'GSocialsData_followers_followers_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialsData_followers_followers_avatar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSocialsData_followers_followers_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialsData_followers_followers_avatarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialsData_followingSerializer
    implements StructuredSerializer<GSocialsData_following> {
  @override
  final Iterable<Type> types = const [
    GSocialsData_following,
    _$GSocialsData_following
  ];
  @override
  final String wireName = 'GSocialsData_following';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialsData_following object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pageInfo;
    if (value != null) {
      result
        ..add('pageInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSocialsData_following_pageInfo)));
    }
    value = object.following;
    if (value != null) {
      result
        ..add('following')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GSocialsData_following_following)
            ])));
    }
    return result;
  }

  @override
  GSocialsData_following deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialsData_followingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSocialsData_following_pageInfo))!
              as GSocialsData_following_pageInfo);
          break;
        case 'following':
          result.following.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GSocialsData_following_following)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialsData_following_pageInfoSerializer
    implements StructuredSerializer<GSocialsData_following_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GSocialsData_following_pageInfo,
    _$GSocialsData_following_pageInfo
  ];
  @override
  final String wireName = 'GSocialsData_following_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialsData_following_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasNextPage;
    if (value != null) {
      result
        ..add('hasNextPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GSocialsData_following_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialsData_following_pageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialsData_following_followingSerializer
    implements StructuredSerializer<GSocialsData_following_following> {
  @override
  final Iterable<Type> types = const [
    GSocialsData_following_following,
    _$GSocialsData_following_following
  ];
  @override
  final String wireName = 'GSocialsData_following_following';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialsData_following_following object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.donatorTier;
    if (value != null) {
      result
        ..add('donatorTier')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.donatorBadge;
    if (value != null) {
      result
        ..add('donatorBadge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moderatorRoles;
    if (value != null) {
      result
        ..add('moderatorRoles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(_i4.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSocialsData_following_following_avatar)));
    }
    return result;
  }

  @override
  GSocialsData_following_following deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialsData_following_followingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'donatorTier':
          result.donatorTier = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'donatorBadge':
          result.donatorBadge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'moderatorRoles':
          result.moderatorRoles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i4.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSocialsData_following_following_avatar))!
              as GSocialsData_following_following_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialsData_following_following_avatarSerializer
    implements StructuredSerializer<GSocialsData_following_following_avatar> {
  @override
  final Iterable<Type> types = const [
    GSocialsData_following_following_avatar,
    _$GSocialsData_following_following_avatar
  ];
  @override
  final String wireName = 'GSocialsData_following_following_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSocialsData_following_following_avatar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GSocialsData_following_following_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSocialsData_following_following_avatarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSocialsData extends GSocialsData {
  @override
  final String G__typename;
  @override
  final GSocialsData_followers? followers;
  @override
  final GSocialsData_following? following;

  factory _$GSocialsData([void Function(GSocialsDataBuilder)? updates]) =>
      (new GSocialsDataBuilder()..update(updates))._build();

  _$GSocialsData._({required this.G__typename, this.followers, this.following})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSocialsData', 'G__typename');
  }

  @override
  GSocialsData rebuild(void Function(GSocialsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialsDataBuilder toBuilder() => new GSocialsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialsData &&
        G__typename == other.G__typename &&
        followers == other.followers &&
        following == other.following;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, followers.hashCode);
    _$hash = $jc(_$hash, following.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSocialsData')
          ..add('G__typename', G__typename)
          ..add('followers', followers)
          ..add('following', following))
        .toString();
  }
}

class GSocialsDataBuilder
    implements Builder<GSocialsData, GSocialsDataBuilder> {
  _$GSocialsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSocialsData_followersBuilder? _followers;
  GSocialsData_followersBuilder get followers =>
      _$this._followers ??= new GSocialsData_followersBuilder();
  set followers(GSocialsData_followersBuilder? followers) =>
      _$this._followers = followers;

  GSocialsData_followingBuilder? _following;
  GSocialsData_followingBuilder get following =>
      _$this._following ??= new GSocialsData_followingBuilder();
  set following(GSocialsData_followingBuilder? following) =>
      _$this._following = following;

  GSocialsDataBuilder() {
    GSocialsData._initializeBuilder(this);
  }

  GSocialsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _followers = $v.followers?.toBuilder();
      _following = $v.following?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialsData;
  }

  @override
  void update(void Function(GSocialsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialsData build() => _build();

  _$GSocialsData _build() {
    _$GSocialsData _$result;
    try {
      _$result = _$v ??
          new _$GSocialsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSocialsData', 'G__typename'),
              followers: _followers?.build(),
              following: _following?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'followers';
        _followers?.build();
        _$failedField = 'following';
        _following?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSocialsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSocialsData_followers extends GSocialsData_followers {
  @override
  final String G__typename;
  @override
  final GSocialsData_followers_pageInfo? pageInfo;
  @override
  final BuiltList<GSocialsData_followers_followers?>? followers;

  factory _$GSocialsData_followers(
          [void Function(GSocialsData_followersBuilder)? updates]) =>
      (new GSocialsData_followersBuilder()..update(updates))._build();

  _$GSocialsData_followers._(
      {required this.G__typename, this.pageInfo, this.followers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSocialsData_followers', 'G__typename');
  }

  @override
  GSocialsData_followers rebuild(
          void Function(GSocialsData_followersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialsData_followersBuilder toBuilder() =>
      new GSocialsData_followersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialsData_followers &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        followers == other.followers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, followers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSocialsData_followers')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('followers', followers))
        .toString();
  }
}

class GSocialsData_followersBuilder
    implements Builder<GSocialsData_followers, GSocialsData_followersBuilder> {
  _$GSocialsData_followers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSocialsData_followers_pageInfoBuilder? _pageInfo;
  GSocialsData_followers_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GSocialsData_followers_pageInfoBuilder();
  set pageInfo(GSocialsData_followers_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GSocialsData_followers_followers?>? _followers;
  ListBuilder<GSocialsData_followers_followers?> get followers =>
      _$this._followers ??=
          new ListBuilder<GSocialsData_followers_followers?>();
  set followers(ListBuilder<GSocialsData_followers_followers?>? followers) =>
      _$this._followers = followers;

  GSocialsData_followersBuilder() {
    GSocialsData_followers._initializeBuilder(this);
  }

  GSocialsData_followersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _followers = $v.followers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialsData_followers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialsData_followers;
  }

  @override
  void update(void Function(GSocialsData_followersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialsData_followers build() => _build();

  _$GSocialsData_followers _build() {
    _$GSocialsData_followers _$result;
    try {
      _$result = _$v ??
          new _$GSocialsData_followers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSocialsData_followers', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              followers: _followers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'followers';
        _followers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSocialsData_followers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSocialsData_followers_pageInfo
    extends GSocialsData_followers_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GSocialsData_followers_pageInfo(
          [void Function(GSocialsData_followers_pageInfoBuilder)? updates]) =>
      (new GSocialsData_followers_pageInfoBuilder()..update(updates))._build();

  _$GSocialsData_followers_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSocialsData_followers_pageInfo', 'G__typename');
  }

  @override
  GSocialsData_followers_pageInfo rebuild(
          void Function(GSocialsData_followers_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialsData_followers_pageInfoBuilder toBuilder() =>
      new GSocialsData_followers_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialsData_followers_pageInfo &&
        G__typename == other.G__typename &&
        currentPage == other.currentPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSocialsData_followers_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GSocialsData_followers_pageInfoBuilder
    implements
        Builder<GSocialsData_followers_pageInfo,
            GSocialsData_followers_pageInfoBuilder> {
  _$GSocialsData_followers_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GSocialsData_followers_pageInfoBuilder() {
    GSocialsData_followers_pageInfo._initializeBuilder(this);
  }

  GSocialsData_followers_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _currentPage = $v.currentPage;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialsData_followers_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialsData_followers_pageInfo;
  }

  @override
  void update(void Function(GSocialsData_followers_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialsData_followers_pageInfo build() => _build();

  _$GSocialsData_followers_pageInfo _build() {
    final _$result = _$v ??
        new _$GSocialsData_followers_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSocialsData_followers_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GSocialsData_followers_followers
    extends GSocialsData_followers_followers {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final int? donatorTier;
  @override
  final String? donatorBadge;
  @override
  final BuiltList<_i4.GModRole?>? moderatorRoles;
  @override
  final GSocialsData_followers_followers_avatar? avatar;

  factory _$GSocialsData_followers_followers(
          [void Function(GSocialsData_followers_followersBuilder)? updates]) =>
      (new GSocialsData_followers_followersBuilder()..update(updates))._build();

  _$GSocialsData_followers_followers._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSocialsData_followers_followers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSocialsData_followers_followers', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GSocialsData_followers_followers', 'name');
  }

  @override
  GSocialsData_followers_followers rebuild(
          void Function(GSocialsData_followers_followersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialsData_followers_followersBuilder toBuilder() =>
      new GSocialsData_followers_followersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialsData_followers_followers &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        donatorTier == other.donatorTier &&
        donatorBadge == other.donatorBadge &&
        moderatorRoles == other.moderatorRoles &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, donatorTier.hashCode);
    _$hash = $jc(_$hash, donatorBadge.hashCode);
    _$hash = $jc(_$hash, moderatorRoles.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSocialsData_followers_followers')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('donatorTier', donatorTier)
          ..add('donatorBadge', donatorBadge)
          ..add('moderatorRoles', moderatorRoles)
          ..add('avatar', avatar))
        .toString();
  }
}

class GSocialsData_followers_followersBuilder
    implements
        Builder<GSocialsData_followers_followers,
            GSocialsData_followers_followersBuilder> {
  _$GSocialsData_followers_followers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _donatorTier;
  int? get donatorTier => _$this._donatorTier;
  set donatorTier(int? donatorTier) => _$this._donatorTier = donatorTier;

  String? _donatorBadge;
  String? get donatorBadge => _$this._donatorBadge;
  set donatorBadge(String? donatorBadge) => _$this._donatorBadge = donatorBadge;

  ListBuilder<_i4.GModRole?>? _moderatorRoles;
  ListBuilder<_i4.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i4.GModRole?>();
  set moderatorRoles(ListBuilder<_i4.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GSocialsData_followers_followers_avatarBuilder? _avatar;
  GSocialsData_followers_followers_avatarBuilder get avatar =>
      _$this._avatar ??= new GSocialsData_followers_followers_avatarBuilder();
  set avatar(GSocialsData_followers_followers_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GSocialsData_followers_followersBuilder() {
    GSocialsData_followers_followers._initializeBuilder(this);
  }

  GSocialsData_followers_followersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _donatorTier = $v.donatorTier;
      _donatorBadge = $v.donatorBadge;
      _moderatorRoles = $v.moderatorRoles?.toBuilder();
      _avatar = $v.avatar?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialsData_followers_followers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialsData_followers_followers;
  }

  @override
  void update(void Function(GSocialsData_followers_followersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialsData_followers_followers build() => _build();

  _$GSocialsData_followers_followers _build() {
    _$GSocialsData_followers_followers _$result;
    try {
      _$result = _$v ??
          new _$GSocialsData_followers_followers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSocialsData_followers_followers', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSocialsData_followers_followers', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GSocialsData_followers_followers', 'name'),
              donatorTier: donatorTier,
              donatorBadge: donatorBadge,
              moderatorRoles: _moderatorRoles?.build(),
              avatar: _avatar?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'moderatorRoles';
        _moderatorRoles?.build();
        _$failedField = 'avatar';
        _avatar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSocialsData_followers_followers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSocialsData_followers_followers_avatar
    extends GSocialsData_followers_followers_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GSocialsData_followers_followers_avatar(
          [void Function(GSocialsData_followers_followers_avatarBuilder)?
              updates]) =>
      (new GSocialsData_followers_followers_avatarBuilder()..update(updates))
          ._build();

  _$GSocialsData_followers_followers_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSocialsData_followers_followers_avatar', 'G__typename');
  }

  @override
  GSocialsData_followers_followers_avatar rebuild(
          void Function(GSocialsData_followers_followers_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialsData_followers_followers_avatarBuilder toBuilder() =>
      new GSocialsData_followers_followers_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialsData_followers_followers_avatar &&
        G__typename == other.G__typename &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSocialsData_followers_followers_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GSocialsData_followers_followers_avatarBuilder
    implements
        Builder<GSocialsData_followers_followers_avatar,
            GSocialsData_followers_followers_avatarBuilder> {
  _$GSocialsData_followers_followers_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GSocialsData_followers_followers_avatarBuilder() {
    GSocialsData_followers_followers_avatar._initializeBuilder(this);
  }

  GSocialsData_followers_followers_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialsData_followers_followers_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialsData_followers_followers_avatar;
  }

  @override
  void update(
      void Function(GSocialsData_followers_followers_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialsData_followers_followers_avatar build() => _build();

  _$GSocialsData_followers_followers_avatar _build() {
    final _$result = _$v ??
        new _$GSocialsData_followers_followers_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSocialsData_followers_followers_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GSocialsData_following extends GSocialsData_following {
  @override
  final String G__typename;
  @override
  final GSocialsData_following_pageInfo? pageInfo;
  @override
  final BuiltList<GSocialsData_following_following?>? following;

  factory _$GSocialsData_following(
          [void Function(GSocialsData_followingBuilder)? updates]) =>
      (new GSocialsData_followingBuilder()..update(updates))._build();

  _$GSocialsData_following._(
      {required this.G__typename, this.pageInfo, this.following})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSocialsData_following', 'G__typename');
  }

  @override
  GSocialsData_following rebuild(
          void Function(GSocialsData_followingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialsData_followingBuilder toBuilder() =>
      new GSocialsData_followingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialsData_following &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        following == other.following;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, following.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSocialsData_following')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('following', following))
        .toString();
  }
}

class GSocialsData_followingBuilder
    implements Builder<GSocialsData_following, GSocialsData_followingBuilder> {
  _$GSocialsData_following? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSocialsData_following_pageInfoBuilder? _pageInfo;
  GSocialsData_following_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GSocialsData_following_pageInfoBuilder();
  set pageInfo(GSocialsData_following_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GSocialsData_following_following?>? _following;
  ListBuilder<GSocialsData_following_following?> get following =>
      _$this._following ??=
          new ListBuilder<GSocialsData_following_following?>();
  set following(ListBuilder<GSocialsData_following_following?>? following) =>
      _$this._following = following;

  GSocialsData_followingBuilder() {
    GSocialsData_following._initializeBuilder(this);
  }

  GSocialsData_followingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _following = $v.following?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialsData_following other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialsData_following;
  }

  @override
  void update(void Function(GSocialsData_followingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialsData_following build() => _build();

  _$GSocialsData_following _build() {
    _$GSocialsData_following _$result;
    try {
      _$result = _$v ??
          new _$GSocialsData_following._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSocialsData_following', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              following: _following?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'following';
        _following?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSocialsData_following', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSocialsData_following_pageInfo
    extends GSocialsData_following_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GSocialsData_following_pageInfo(
          [void Function(GSocialsData_following_pageInfoBuilder)? updates]) =>
      (new GSocialsData_following_pageInfoBuilder()..update(updates))._build();

  _$GSocialsData_following_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSocialsData_following_pageInfo', 'G__typename');
  }

  @override
  GSocialsData_following_pageInfo rebuild(
          void Function(GSocialsData_following_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialsData_following_pageInfoBuilder toBuilder() =>
      new GSocialsData_following_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialsData_following_pageInfo &&
        G__typename == other.G__typename &&
        currentPage == other.currentPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSocialsData_following_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GSocialsData_following_pageInfoBuilder
    implements
        Builder<GSocialsData_following_pageInfo,
            GSocialsData_following_pageInfoBuilder> {
  _$GSocialsData_following_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GSocialsData_following_pageInfoBuilder() {
    GSocialsData_following_pageInfo._initializeBuilder(this);
  }

  GSocialsData_following_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _currentPage = $v.currentPage;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialsData_following_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialsData_following_pageInfo;
  }

  @override
  void update(void Function(GSocialsData_following_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialsData_following_pageInfo build() => _build();

  _$GSocialsData_following_pageInfo _build() {
    final _$result = _$v ??
        new _$GSocialsData_following_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSocialsData_following_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GSocialsData_following_following
    extends GSocialsData_following_following {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final int? donatorTier;
  @override
  final String? donatorBadge;
  @override
  final BuiltList<_i4.GModRole?>? moderatorRoles;
  @override
  final GSocialsData_following_following_avatar? avatar;

  factory _$GSocialsData_following_following(
          [void Function(GSocialsData_following_followingBuilder)? updates]) =>
      (new GSocialsData_following_followingBuilder()..update(updates))._build();

  _$GSocialsData_following_following._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSocialsData_following_following', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSocialsData_following_following', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GSocialsData_following_following', 'name');
  }

  @override
  GSocialsData_following_following rebuild(
          void Function(GSocialsData_following_followingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialsData_following_followingBuilder toBuilder() =>
      new GSocialsData_following_followingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialsData_following_following &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        donatorTier == other.donatorTier &&
        donatorBadge == other.donatorBadge &&
        moderatorRoles == other.moderatorRoles &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, donatorTier.hashCode);
    _$hash = $jc(_$hash, donatorBadge.hashCode);
    _$hash = $jc(_$hash, moderatorRoles.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSocialsData_following_following')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('donatorTier', donatorTier)
          ..add('donatorBadge', donatorBadge)
          ..add('moderatorRoles', moderatorRoles)
          ..add('avatar', avatar))
        .toString();
  }
}

class GSocialsData_following_followingBuilder
    implements
        Builder<GSocialsData_following_following,
            GSocialsData_following_followingBuilder> {
  _$GSocialsData_following_following? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _donatorTier;
  int? get donatorTier => _$this._donatorTier;
  set donatorTier(int? donatorTier) => _$this._donatorTier = donatorTier;

  String? _donatorBadge;
  String? get donatorBadge => _$this._donatorBadge;
  set donatorBadge(String? donatorBadge) => _$this._donatorBadge = donatorBadge;

  ListBuilder<_i4.GModRole?>? _moderatorRoles;
  ListBuilder<_i4.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i4.GModRole?>();
  set moderatorRoles(ListBuilder<_i4.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GSocialsData_following_following_avatarBuilder? _avatar;
  GSocialsData_following_following_avatarBuilder get avatar =>
      _$this._avatar ??= new GSocialsData_following_following_avatarBuilder();
  set avatar(GSocialsData_following_following_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GSocialsData_following_followingBuilder() {
    GSocialsData_following_following._initializeBuilder(this);
  }

  GSocialsData_following_followingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _donatorTier = $v.donatorTier;
      _donatorBadge = $v.donatorBadge;
      _moderatorRoles = $v.moderatorRoles?.toBuilder();
      _avatar = $v.avatar?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialsData_following_following other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialsData_following_following;
  }

  @override
  void update(void Function(GSocialsData_following_followingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialsData_following_following build() => _build();

  _$GSocialsData_following_following _build() {
    _$GSocialsData_following_following _$result;
    try {
      _$result = _$v ??
          new _$GSocialsData_following_following._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSocialsData_following_following', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSocialsData_following_following', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GSocialsData_following_following', 'name'),
              donatorTier: donatorTier,
              donatorBadge: donatorBadge,
              moderatorRoles: _moderatorRoles?.build(),
              avatar: _avatar?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'moderatorRoles';
        _moderatorRoles?.build();
        _$failedField = 'avatar';
        _avatar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSocialsData_following_following', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSocialsData_following_following_avatar
    extends GSocialsData_following_following_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GSocialsData_following_following_avatar(
          [void Function(GSocialsData_following_following_avatarBuilder)?
              updates]) =>
      (new GSocialsData_following_following_avatarBuilder()..update(updates))
          ._build();

  _$GSocialsData_following_following_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSocialsData_following_following_avatar', 'G__typename');
  }

  @override
  GSocialsData_following_following_avatar rebuild(
          void Function(GSocialsData_following_following_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSocialsData_following_following_avatarBuilder toBuilder() =>
      new GSocialsData_following_following_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSocialsData_following_following_avatar &&
        G__typename == other.G__typename &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSocialsData_following_following_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GSocialsData_following_following_avatarBuilder
    implements
        Builder<GSocialsData_following_following_avatar,
            GSocialsData_following_following_avatarBuilder> {
  _$GSocialsData_following_following_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GSocialsData_following_following_avatarBuilder() {
    GSocialsData_following_following_avatar._initializeBuilder(this);
  }

  GSocialsData_following_following_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSocialsData_following_following_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSocialsData_following_following_avatar;
  }

  @override
  void update(
      void Function(GSocialsData_following_following_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSocialsData_following_following_avatar build() => _build();

  _$GSocialsData_following_following_avatar _build() {
    final _$result = _$v ??
        new _$GSocialsData_following_following_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GSocialsData_following_following_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
