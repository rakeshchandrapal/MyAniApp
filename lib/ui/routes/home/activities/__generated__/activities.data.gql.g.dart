// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activities.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GActivitiesData> _$gActivitiesDataSerializer =
    new _$GActivitiesDataSerializer();
Serializer<GActivitiesData_Page> _$gActivitiesDataPageSerializer =
    new _$GActivitiesData_PageSerializer();
Serializer<GActivitiesData_Page_pageInfo>
    _$gActivitiesDataPagePageInfoSerializer =
    new _$GActivitiesData_Page_pageInfoSerializer();
Serializer<GActivitiesData_Page_activities__base>
    _$gActivitiesDataPageActivitiesBaseSerializer =
    new _$GActivitiesData_Page_activities__baseSerializer();
Serializer<GActivitiesData_Page_activities__asTextActivity>
    _$gActivitiesDataPageActivitiesAsTextActivitySerializer =
    new _$GActivitiesData_Page_activities__asTextActivitySerializer();
Serializer<GActivitiesData_Page_activities__asTextActivity_user>
    _$gActivitiesDataPageActivitiesAsTextActivityUserSerializer =
    new _$GActivitiesData_Page_activities__asTextActivity_userSerializer();
Serializer<GActivitiesData_Page_activities__asTextActivity_user_avatar>
    _$gActivitiesDataPageActivitiesAsTextActivityUserAvatarSerializer =
    new _$GActivitiesData_Page_activities__asTextActivity_user_avatarSerializer();
Serializer<GActivitiesData_Page_activities__asListActivity>
    _$gActivitiesDataPageActivitiesAsListActivitySerializer =
    new _$GActivitiesData_Page_activities__asListActivitySerializer();
Serializer<GActivitiesData_Page_activities__asListActivity_user>
    _$gActivitiesDataPageActivitiesAsListActivityUserSerializer =
    new _$GActivitiesData_Page_activities__asListActivity_userSerializer();
Serializer<GActivitiesData_Page_activities__asListActivity_user_avatar>
    _$gActivitiesDataPageActivitiesAsListActivityUserAvatarSerializer =
    new _$GActivitiesData_Page_activities__asListActivity_user_avatarSerializer();
Serializer<GActivitiesData_Page_activities__asListActivity_media>
    _$gActivitiesDataPageActivitiesAsListActivityMediaSerializer =
    new _$GActivitiesData_Page_activities__asListActivity_mediaSerializer();
Serializer<GActivitiesData_Page_activities__asListActivity_media_title>
    _$gActivitiesDataPageActivitiesAsListActivityMediaTitleSerializer =
    new _$GActivitiesData_Page_activities__asListActivity_media_titleSerializer();
Serializer<GActivitiesData_Page_activities__asListActivity_media_coverImage>
    _$gActivitiesDataPageActivitiesAsListActivityMediaCoverImageSerializer =
    new _$GActivitiesData_Page_activities__asListActivity_media_coverImageSerializer();
Serializer<GToggleLikeData> _$gToggleLikeDataSerializer =
    new _$GToggleLikeDataSerializer();
Serializer<GToggleLikeData_ToggleLikeV2__base>
    _$gToggleLikeDataToggleLikeV2BaseSerializer =
    new _$GToggleLikeData_ToggleLikeV2__baseSerializer();
Serializer<GToggleLikeData_ToggleLikeV2__asListActivity>
    _$gToggleLikeDataToggleLikeV2AsListActivitySerializer =
    new _$GToggleLikeData_ToggleLikeV2__asListActivitySerializer();
Serializer<GToggleLikeData_ToggleLikeV2__asMessageActivity>
    _$gToggleLikeDataToggleLikeV2AsMessageActivitySerializer =
    new _$GToggleLikeData_ToggleLikeV2__asMessageActivitySerializer();
Serializer<GToggleLikeData_ToggleLikeV2__asTextActivity>
    _$gToggleLikeDataToggleLikeV2AsTextActivitySerializer =
    new _$GToggleLikeData_ToggleLikeV2__asTextActivitySerializer();
Serializer<GToggleLikeData_ToggleLikeV2__asActivityReply>
    _$gToggleLikeDataToggleLikeV2AsActivityReplySerializer =
    new _$GToggleLikeData_ToggleLikeV2__asActivityReplySerializer();
Serializer<GToggleLikeData_ToggleLikeV2__asThread>
    _$gToggleLikeDataToggleLikeV2AsThreadSerializer =
    new _$GToggleLikeData_ToggleLikeV2__asThreadSerializer();
Serializer<GToggleLikeData_ToggleLikeV2__asThreadComment>
    _$gToggleLikeDataToggleLikeV2AsThreadCommentSerializer =
    new _$GToggleLikeData_ToggleLikeV2__asThreadCommentSerializer();
Serializer<GSaveTextActivityData> _$gSaveTextActivityDataSerializer =
    new _$GSaveTextActivityDataSerializer();
Serializer<GSaveTextActivityData_SaveTextActivity>
    _$gSaveTextActivityDataSaveTextActivitySerializer =
    new _$GSaveTextActivityData_SaveTextActivitySerializer();
Serializer<GSaveTextActivityData_SaveTextActivity_user>
    _$gSaveTextActivityDataSaveTextActivityUserSerializer =
    new _$GSaveTextActivityData_SaveTextActivity_userSerializer();
Serializer<GSaveTextActivityData_SaveTextActivity_user_avatar>
    _$gSaveTextActivityDataSaveTextActivityUserAvatarSerializer =
    new _$GSaveTextActivityData_SaveTextActivity_user_avatarSerializer();

class _$GActivitiesDataSerializer
    implements StructuredSerializer<GActivitiesData> {
  @override
  final Iterable<Type> types = const [GActivitiesData, _$GActivitiesData];
  @override
  final String wireName = 'GActivitiesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GActivitiesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Page;
    if (value != null) {
      result
        ..add('Page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GActivitiesData_Page)));
    }
    return result;
  }

  @override
  GActivitiesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivitiesDataBuilder();

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
        case 'Page':
          result.Page.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GActivitiesData_Page))!
              as GActivitiesData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivitiesData_PageSerializer
    implements StructuredSerializer<GActivitiesData_Page> {
  @override
  final Iterable<Type> types = const [
    GActivitiesData_Page,
    _$GActivitiesData_Page
  ];
  @override
  final String wireName = 'GActivitiesData_Page';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GActivitiesData_Page object,
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
            specifiedType: const FullType(GActivitiesData_Page_pageInfo)));
    }
    value = object.activities;
    if (value != null) {
      result
        ..add('activities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GActivitiesData_Page_activities)
            ])));
    }
    return result;
  }

  @override
  GActivitiesData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivitiesData_PageBuilder();

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
                  specifiedType: const FullType(GActivitiesData_Page_pageInfo))!
              as GActivitiesData_Page_pageInfo);
          break;
        case 'activities':
          result.activities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GActivitiesData_Page_activities)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivitiesData_Page_pageInfoSerializer
    implements StructuredSerializer<GActivitiesData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GActivitiesData_Page_pageInfo,
    _$GActivitiesData_Page_pageInfo
  ];
  @override
  final String wireName = 'GActivitiesData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GActivitiesData_Page_pageInfo object,
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
  GActivitiesData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivitiesData_Page_pageInfoBuilder();

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

class _$GActivitiesData_Page_activities__baseSerializer
    implements StructuredSerializer<GActivitiesData_Page_activities__base> {
  @override
  final Iterable<Type> types = const [
    GActivitiesData_Page_activities__base,
    _$GActivitiesData_Page_activities__base
  ];
  @override
  final String wireName = 'GActivitiesData_Page_activities__base';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GActivitiesData_Page_activities__base object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GActivitiesData_Page_activities__base deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivitiesData_Page_activities__baseBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GActivitiesData_Page_activities__asTextActivitySerializer
    implements
        StructuredSerializer<GActivitiesData_Page_activities__asTextActivity> {
  @override
  final Iterable<Type> types = const [
    GActivitiesData_Page_activities__asTextActivity,
    _$GActivitiesData_Page_activities__asTextActivity
  ];
  @override
  final String wireName = 'GActivitiesData_Page_activities__asTextActivity';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivitiesData_Page_activities__asTextActivity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'replyCount',
      serializers.serialize(object.replyCount,
          specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i5.GActivityType)));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isLocked;
    if (value != null) {
      result
        ..add('isLocked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isSubscribed;
    if (value != null) {
      result
        ..add('isSubscribed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isLiked;
    if (value != null) {
      result
        ..add('isLiked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GActivitiesData_Page_activities__asTextActivity_user)));
    }
    return result;
  }

  @override
  GActivitiesData_Page_activities__asTextActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivitiesData_Page_activities__asTextActivityBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.GActivityType))
              as _i5.GActivityType?;
          break;
        case 'replyCount':
          result.replyCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isLocked':
          result.isLocked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isSubscribed':
          result.isSubscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isLiked':
          result.isLiked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GActivitiesData_Page_activities__asTextActivity_user))!
              as GActivitiesData_Page_activities__asTextActivity_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivitiesData_Page_activities__asTextActivity_userSerializer
    implements
        StructuredSerializer<
            GActivitiesData_Page_activities__asTextActivity_user> {
  @override
  final Iterable<Type> types = const [
    GActivitiesData_Page_activities__asTextActivity_user,
    _$GActivitiesData_Page_activities__asTextActivity_user
  ];
  @override
  final String wireName =
      'GActivitiesData_Page_activities__asTextActivity_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivitiesData_Page_activities__asTextActivity_user object,
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
                BuiltList, const [const FullType.nullable(_i5.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GActivitiesData_Page_activities__asTextActivity_user_avatar)));
    }
    return result;
  }

  @override
  GActivitiesData_Page_activities__asTextActivity_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivitiesData_Page_activities__asTextActivity_userBuilder();

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
                const FullType.nullable(_i5.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GActivitiesData_Page_activities__asTextActivity_user_avatar))!
              as GActivitiesData_Page_activities__asTextActivity_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivitiesData_Page_activities__asTextActivity_user_avatarSerializer
    implements
        StructuredSerializer<
            GActivitiesData_Page_activities__asTextActivity_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GActivitiesData_Page_activities__asTextActivity_user_avatar,
    _$GActivitiesData_Page_activities__asTextActivity_user_avatar
  ];
  @override
  final String wireName =
      'GActivitiesData_Page_activities__asTextActivity_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivitiesData_Page_activities__asTextActivity_user_avatar object,
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
  GActivitiesData_Page_activities__asTextActivity_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder();

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

class _$GActivitiesData_Page_activities__asListActivitySerializer
    implements
        StructuredSerializer<GActivitiesData_Page_activities__asListActivity> {
  @override
  final Iterable<Type> types = const [
    GActivitiesData_Page_activities__asListActivity,
    _$GActivitiesData_Page_activities__asListActivity
  ];
  @override
  final String wireName = 'GActivitiesData_Page_activities__asListActivity';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivitiesData_Page_activities__asListActivity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'replyCount',
      serializers.serialize(object.replyCount,
          specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i5.GActivityType)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.progress;
    if (value != null) {
      result
        ..add('progress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isLocked;
    if (value != null) {
      result
        ..add('isLocked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isSubscribed;
    if (value != null) {
      result
        ..add('isSubscribed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isLiked;
    if (value != null) {
      result
        ..add('isLiked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GActivitiesData_Page_activities__asListActivity_user)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GActivitiesData_Page_activities__asListActivity_media)));
    }
    return result;
  }

  @override
  GActivitiesData_Page_activities__asListActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivitiesData_Page_activities__asListActivityBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.GActivityType))
              as _i5.GActivityType?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'replyCount':
          result.replyCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'isLocked':
          result.isLocked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isSubscribed':
          result.isSubscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isLiked':
          result.isLiked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GActivitiesData_Page_activities__asListActivity_user))!
              as GActivitiesData_Page_activities__asListActivity_user);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GActivitiesData_Page_activities__asListActivity_media))!
              as GActivitiesData_Page_activities__asListActivity_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivitiesData_Page_activities__asListActivity_userSerializer
    implements
        StructuredSerializer<
            GActivitiesData_Page_activities__asListActivity_user> {
  @override
  final Iterable<Type> types = const [
    GActivitiesData_Page_activities__asListActivity_user,
    _$GActivitiesData_Page_activities__asListActivity_user
  ];
  @override
  final String wireName =
      'GActivitiesData_Page_activities__asListActivity_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivitiesData_Page_activities__asListActivity_user object,
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
                BuiltList, const [const FullType.nullable(_i5.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GActivitiesData_Page_activities__asListActivity_user_avatar)));
    }
    return result;
  }

  @override
  GActivitiesData_Page_activities__asListActivity_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivitiesData_Page_activities__asListActivity_userBuilder();

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
                const FullType.nullable(_i5.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GActivitiesData_Page_activities__asListActivity_user_avatar))!
              as GActivitiesData_Page_activities__asListActivity_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivitiesData_Page_activities__asListActivity_user_avatarSerializer
    implements
        StructuredSerializer<
            GActivitiesData_Page_activities__asListActivity_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GActivitiesData_Page_activities__asListActivity_user_avatar,
    _$GActivitiesData_Page_activities__asListActivity_user_avatar
  ];
  @override
  final String wireName =
      'GActivitiesData_Page_activities__asListActivity_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivitiesData_Page_activities__asListActivity_user_avatar object,
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
  GActivitiesData_Page_activities__asListActivity_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivitiesData_Page_activities__asListActivity_user_avatarBuilder();

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

class _$GActivitiesData_Page_activities__asListActivity_mediaSerializer
    implements
        StructuredSerializer<
            GActivitiesData_Page_activities__asListActivity_media> {
  @override
  final Iterable<Type> types = const [
    GActivitiesData_Page_activities__asListActivity_media,
    _$GActivitiesData_Page_activities__asListActivity_media
  ];
  @override
  final String wireName =
      'GActivitiesData_Page_activities__asListActivity_media';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivitiesData_Page_activities__asListActivity_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i5.GMediaType)));
    }
    value = object.isAdult;
    if (value != null) {
      result
        ..add('isAdult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i5.GMediaFormat)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GActivitiesData_Page_activities__asListActivity_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GActivitiesData_Page_activities__asListActivity_media_coverImage)));
    }
    return result;
  }

  @override
  GActivitiesData_Page_activities__asListActivity_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivitiesData_Page_activities__asListActivity_mediaBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i5.GMediaType)) as _i5.GMediaType?;
          break;
        case 'isAdult':
          result.isAdult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'format':
          result.format = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.GMediaFormat))
              as _i5.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GActivitiesData_Page_activities__asListActivity_media_title))!
              as GActivitiesData_Page_activities__asListActivity_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GActivitiesData_Page_activities__asListActivity_media_coverImage))!
              as GActivitiesData_Page_activities__asListActivity_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivitiesData_Page_activities__asListActivity_media_titleSerializer
    implements
        StructuredSerializer<
            GActivitiesData_Page_activities__asListActivity_media_title> {
  @override
  final Iterable<Type> types = const [
    GActivitiesData_Page_activities__asListActivity_media_title,
    _$GActivitiesData_Page_activities__asListActivity_media_title
  ];
  @override
  final String wireName =
      'GActivitiesData_Page_activities__asListActivity_media_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivitiesData_Page_activities__asListActivity_media_title object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userPreferred;
    if (value != null) {
      result
        ..add('userPreferred')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GActivitiesData_Page_activities__asListActivity_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivitiesData_Page_activities__asListActivity_media_titleBuilder();

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
        case 'userPreferred':
          result.userPreferred = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GActivitiesData_Page_activities__asListActivity_media_coverImageSerializer
    implements
        StructuredSerializer<
            GActivitiesData_Page_activities__asListActivity_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GActivitiesData_Page_activities__asListActivity_media_coverImage,
    _$GActivitiesData_Page_activities__asListActivity_media_coverImage
  ];
  @override
  final String wireName =
      'GActivitiesData_Page_activities__asListActivity_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivitiesData_Page_activities__asListActivity_media_coverImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extraLarge;
    if (value != null) {
      result
        ..add('extraLarge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GActivitiesData_Page_activities__asListActivity_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder();

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
        case 'extraLarge':
          result.extraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleLikeDataSerializer
    implements StructuredSerializer<GToggleLikeData> {
  @override
  final Iterable<Type> types = const [GToggleLikeData, _$GToggleLikeData];
  @override
  final String wireName = 'GToggleLikeData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GToggleLikeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ToggleLikeV2;
    if (value != null) {
      result
        ..add('ToggleLikeV2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GToggleLikeData_ToggleLikeV2)));
    }
    return result;
  }

  @override
  GToggleLikeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleLikeDataBuilder();

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
        case 'ToggleLikeV2':
          result.ToggleLikeV2 = serializers.deserialize(value,
                  specifiedType: const FullType(GToggleLikeData_ToggleLikeV2))
              as GToggleLikeData_ToggleLikeV2?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleLikeData_ToggleLikeV2__baseSerializer
    implements StructuredSerializer<GToggleLikeData_ToggleLikeV2__base> {
  @override
  final Iterable<Type> types = const [
    GToggleLikeData_ToggleLikeV2__base,
    _$GToggleLikeData_ToggleLikeV2__base
  ];
  @override
  final String wireName = 'GToggleLikeData_ToggleLikeV2__base';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleLikeData_ToggleLikeV2__base object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GToggleLikeData_ToggleLikeV2__base deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleLikeData_ToggleLikeV2__baseBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GToggleLikeData_ToggleLikeV2__asListActivitySerializer
    implements
        StructuredSerializer<GToggleLikeData_ToggleLikeV2__asListActivity> {
  @override
  final Iterable<Type> types = const [
    GToggleLikeData_ToggleLikeV2__asListActivity,
    _$GToggleLikeData_ToggleLikeV2__asListActivity
  ];
  @override
  final String wireName = 'GToggleLikeData_ToggleLikeV2__asListActivity';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleLikeData_ToggleLikeV2__asListActivity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.isLiked;
    if (value != null) {
      result
        ..add('isLiked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GToggleLikeData_ToggleLikeV2__asListActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleLikeData_ToggleLikeV2__asListActivityBuilder();

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
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'isLiked':
          result.isLiked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleLikeData_ToggleLikeV2__asMessageActivitySerializer
    implements
        StructuredSerializer<GToggleLikeData_ToggleLikeV2__asMessageActivity> {
  @override
  final Iterable<Type> types = const [
    GToggleLikeData_ToggleLikeV2__asMessageActivity,
    _$GToggleLikeData_ToggleLikeV2__asMessageActivity
  ];
  @override
  final String wireName = 'GToggleLikeData_ToggleLikeV2__asMessageActivity';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleLikeData_ToggleLikeV2__asMessageActivity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.isLiked;
    if (value != null) {
      result
        ..add('isLiked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GToggleLikeData_ToggleLikeV2__asMessageActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder();

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
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'isLiked':
          result.isLiked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleLikeData_ToggleLikeV2__asTextActivitySerializer
    implements
        StructuredSerializer<GToggleLikeData_ToggleLikeV2__asTextActivity> {
  @override
  final Iterable<Type> types = const [
    GToggleLikeData_ToggleLikeV2__asTextActivity,
    _$GToggleLikeData_ToggleLikeV2__asTextActivity
  ];
  @override
  final String wireName = 'GToggleLikeData_ToggleLikeV2__asTextActivity';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleLikeData_ToggleLikeV2__asTextActivity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.isLiked;
    if (value != null) {
      result
        ..add('isLiked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GToggleLikeData_ToggleLikeV2__asTextActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleLikeData_ToggleLikeV2__asTextActivityBuilder();

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
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'isLiked':
          result.isLiked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleLikeData_ToggleLikeV2__asActivityReplySerializer
    implements
        StructuredSerializer<GToggleLikeData_ToggleLikeV2__asActivityReply> {
  @override
  final Iterable<Type> types = const [
    GToggleLikeData_ToggleLikeV2__asActivityReply,
    _$GToggleLikeData_ToggleLikeV2__asActivityReply
  ];
  @override
  final String wireName = 'GToggleLikeData_ToggleLikeV2__asActivityReply';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleLikeData_ToggleLikeV2__asActivityReply object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.isLiked;
    if (value != null) {
      result
        ..add('isLiked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GToggleLikeData_ToggleLikeV2__asActivityReply deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder();

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
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'isLiked':
          result.isLiked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleLikeData_ToggleLikeV2__asThreadSerializer
    implements StructuredSerializer<GToggleLikeData_ToggleLikeV2__asThread> {
  @override
  final Iterable<Type> types = const [
    GToggleLikeData_ToggleLikeV2__asThread,
    _$GToggleLikeData_ToggleLikeV2__asThread
  ];
  @override
  final String wireName = 'GToggleLikeData_ToggleLikeV2__asThread';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleLikeData_ToggleLikeV2__asThread object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.isLiked;
    if (value != null) {
      result
        ..add('isLiked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GToggleLikeData_ToggleLikeV2__asThread deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleLikeData_ToggleLikeV2__asThreadBuilder();

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
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'isLiked':
          result.isLiked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleLikeData_ToggleLikeV2__asThreadCommentSerializer
    implements
        StructuredSerializer<GToggleLikeData_ToggleLikeV2__asThreadComment> {
  @override
  final Iterable<Type> types = const [
    GToggleLikeData_ToggleLikeV2__asThreadComment,
    _$GToggleLikeData_ToggleLikeV2__asThreadComment
  ];
  @override
  final String wireName = 'GToggleLikeData_ToggleLikeV2__asThreadComment';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleLikeData_ToggleLikeV2__asThreadComment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.isLiked;
    if (value != null) {
      result
        ..add('isLiked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GToggleLikeData_ToggleLikeV2__asThreadComment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder();

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
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'isLiked':
          result.isLiked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveTextActivityDataSerializer
    implements StructuredSerializer<GSaveTextActivityData> {
  @override
  final Iterable<Type> types = const [
    GSaveTextActivityData,
    _$GSaveTextActivityData
  ];
  @override
  final String wireName = 'GSaveTextActivityData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveTextActivityData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.SaveTextActivity;
    if (value != null) {
      result
        ..add('SaveTextActivity')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSaveTextActivityData_SaveTextActivity)));
    }
    return result;
  }

  @override
  GSaveTextActivityData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveTextActivityDataBuilder();

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
        case 'SaveTextActivity':
          result.SaveTextActivity.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSaveTextActivityData_SaveTextActivity))!
              as GSaveTextActivityData_SaveTextActivity);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveTextActivityData_SaveTextActivitySerializer
    implements StructuredSerializer<GSaveTextActivityData_SaveTextActivity> {
  @override
  final Iterable<Type> types = const [
    GSaveTextActivityData_SaveTextActivity,
    _$GSaveTextActivityData_SaveTextActivity
  ];
  @override
  final String wireName = 'GSaveTextActivityData_SaveTextActivity';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveTextActivityData_SaveTextActivity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'replyCount',
      serializers.serialize(object.replyCount,
          specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i5.GActivityType)));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isLocked;
    if (value != null) {
      result
        ..add('isLocked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isSubscribed;
    if (value != null) {
      result
        ..add('isSubscribed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isLiked;
    if (value != null) {
      result
        ..add('isLiked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSaveTextActivityData_SaveTextActivity_user)));
    }
    return result;
  }

  @override
  GSaveTextActivityData_SaveTextActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveTextActivityData_SaveTextActivityBuilder();

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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.GActivityType))
              as _i5.GActivityType?;
          break;
        case 'replyCount':
          result.replyCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isLocked':
          result.isLocked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isSubscribed':
          result.isSubscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isLiked':
          result.isLiked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveTextActivityData_SaveTextActivity_user))!
              as GSaveTextActivityData_SaveTextActivity_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveTextActivityData_SaveTextActivity_userSerializer
    implements
        StructuredSerializer<GSaveTextActivityData_SaveTextActivity_user> {
  @override
  final Iterable<Type> types = const [
    GSaveTextActivityData_SaveTextActivity_user,
    _$GSaveTextActivityData_SaveTextActivity_user
  ];
  @override
  final String wireName = 'GSaveTextActivityData_SaveTextActivity_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveTextActivityData_SaveTextActivity_user object,
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
                BuiltList, const [const FullType.nullable(_i5.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSaveTextActivityData_SaveTextActivity_user_avatar)));
    }
    return result;
  }

  @override
  GSaveTextActivityData_SaveTextActivity_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveTextActivityData_SaveTextActivity_userBuilder();

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
                const FullType.nullable(_i5.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveTextActivityData_SaveTextActivity_user_avatar))!
              as GSaveTextActivityData_SaveTextActivity_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveTextActivityData_SaveTextActivity_user_avatarSerializer
    implements
        StructuredSerializer<
            GSaveTextActivityData_SaveTextActivity_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GSaveTextActivityData_SaveTextActivity_user_avatar,
    _$GSaveTextActivityData_SaveTextActivity_user_avatar
  ];
  @override
  final String wireName = 'GSaveTextActivityData_SaveTextActivity_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveTextActivityData_SaveTextActivity_user_avatar object,
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
  GSaveTextActivityData_SaveTextActivity_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveTextActivityData_SaveTextActivity_user_avatarBuilder();

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

class _$GActivitiesData extends GActivitiesData {
  @override
  final String G__typename;
  @override
  final GActivitiesData_Page? Page;

  factory _$GActivitiesData([void Function(GActivitiesDataBuilder)? updates]) =>
      (new GActivitiesDataBuilder()..update(updates))._build();

  _$GActivitiesData._({required this.G__typename, this.Page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GActivitiesData', 'G__typename');
  }

  @override
  GActivitiesData rebuild(void Function(GActivitiesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesDataBuilder toBuilder() =>
      new GActivitiesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivitiesData &&
        G__typename == other.G__typename &&
        Page == other.Page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GActivitiesData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GActivitiesDataBuilder
    implements Builder<GActivitiesData, GActivitiesDataBuilder> {
  _$GActivitiesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GActivitiesData_PageBuilder? _Page;
  GActivitiesData_PageBuilder get Page =>
      _$this._Page ??= new GActivitiesData_PageBuilder();
  set Page(GActivitiesData_PageBuilder? Page) => _$this._Page = Page;

  GActivitiesDataBuilder() {
    GActivitiesData._initializeBuilder(this);
  }

  GActivitiesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivitiesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivitiesData;
  }

  @override
  void update(void Function(GActivitiesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesData build() => _build();

  _$GActivitiesData _build() {
    _$GActivitiesData _$result;
    try {
      _$result = _$v ??
          new _$GActivitiesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GActivitiesData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GActivitiesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivitiesData_Page extends GActivitiesData_Page {
  @override
  final String G__typename;
  @override
  final GActivitiesData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GActivitiesData_Page_activities?>? activities;

  factory _$GActivitiesData_Page(
          [void Function(GActivitiesData_PageBuilder)? updates]) =>
      (new GActivitiesData_PageBuilder()..update(updates))._build();

  _$GActivitiesData_Page._(
      {required this.G__typename, this.pageInfo, this.activities})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GActivitiesData_Page', 'G__typename');
  }

  @override
  GActivitiesData_Page rebuild(
          void Function(GActivitiesData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesData_PageBuilder toBuilder() =>
      new GActivitiesData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivitiesData_Page &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        activities == other.activities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, activities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GActivitiesData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('activities', activities))
        .toString();
  }
}

class GActivitiesData_PageBuilder
    implements Builder<GActivitiesData_Page, GActivitiesData_PageBuilder> {
  _$GActivitiesData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GActivitiesData_Page_pageInfoBuilder? _pageInfo;
  GActivitiesData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GActivitiesData_Page_pageInfoBuilder();
  set pageInfo(GActivitiesData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GActivitiesData_Page_activities?>? _activities;
  ListBuilder<GActivitiesData_Page_activities?> get activities =>
      _$this._activities ??=
          new ListBuilder<GActivitiesData_Page_activities?>();
  set activities(ListBuilder<GActivitiesData_Page_activities?>? activities) =>
      _$this._activities = activities;

  GActivitiesData_PageBuilder() {
    GActivitiesData_Page._initializeBuilder(this);
  }

  GActivitiesData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _activities = $v.activities?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivitiesData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivitiesData_Page;
  }

  @override
  void update(void Function(GActivitiesData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesData_Page build() => _build();

  _$GActivitiesData_Page _build() {
    _$GActivitiesData_Page _$result;
    try {
      _$result = _$v ??
          new _$GActivitiesData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GActivitiesData_Page', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              activities: _activities?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'activities';
        _activities?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GActivitiesData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivitiesData_Page_pageInfo extends GActivitiesData_Page_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GActivitiesData_Page_pageInfo(
          [void Function(GActivitiesData_Page_pageInfoBuilder)? updates]) =>
      (new GActivitiesData_Page_pageInfoBuilder()..update(updates))._build();

  _$GActivitiesData_Page_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GActivitiesData_Page_pageInfo', 'G__typename');
  }

  @override
  GActivitiesData_Page_pageInfo rebuild(
          void Function(GActivitiesData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesData_Page_pageInfoBuilder toBuilder() =>
      new GActivitiesData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivitiesData_Page_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GActivitiesData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GActivitiesData_Page_pageInfoBuilder
    implements
        Builder<GActivitiesData_Page_pageInfo,
            GActivitiesData_Page_pageInfoBuilder> {
  _$GActivitiesData_Page_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GActivitiesData_Page_pageInfoBuilder() {
    GActivitiesData_Page_pageInfo._initializeBuilder(this);
  }

  GActivitiesData_Page_pageInfoBuilder get _$this {
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
  void replace(GActivitiesData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivitiesData_Page_pageInfo;
  }

  @override
  void update(void Function(GActivitiesData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesData_Page_pageInfo build() => _build();

  _$GActivitiesData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GActivitiesData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GActivitiesData_Page_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GActivitiesData_Page_activities__base
    extends GActivitiesData_Page_activities__base {
  @override
  final String G__typename;

  factory _$GActivitiesData_Page_activities__base(
          [void Function(GActivitiesData_Page_activities__baseBuilder)?
              updates]) =>
      (new GActivitiesData_Page_activities__baseBuilder()..update(updates))
          ._build();

  _$GActivitiesData_Page_activities__base._({required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GActivitiesData_Page_activities__base', 'G__typename');
  }

  @override
  GActivitiesData_Page_activities__base rebuild(
          void Function(GActivitiesData_Page_activities__baseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesData_Page_activities__baseBuilder toBuilder() =>
      new GActivitiesData_Page_activities__baseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivitiesData_Page_activities__base &&
        G__typename == other.G__typename;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GActivitiesData_Page_activities__base')
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GActivitiesData_Page_activities__baseBuilder
    implements
        Builder<GActivitiesData_Page_activities__base,
            GActivitiesData_Page_activities__baseBuilder> {
  _$GActivitiesData_Page_activities__base? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GActivitiesData_Page_activities__baseBuilder() {
    GActivitiesData_Page_activities__base._initializeBuilder(this);
  }

  GActivitiesData_Page_activities__baseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivitiesData_Page_activities__base other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivitiesData_Page_activities__base;
  }

  @override
  void update(
      void Function(GActivitiesData_Page_activities__baseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesData_Page_activities__base build() => _build();

  _$GActivitiesData_Page_activities__base _build() {
    final _$result = _$v ??
        new _$GActivitiesData_Page_activities__base._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GActivitiesData_Page_activities__base', 'G__typename'));
    replace(_$result);
    return _$result;
  }
}

class _$GActivitiesData_Page_activities__asTextActivity
    extends GActivitiesData_Page_activities__asTextActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? userId;
  @override
  final _i5.GActivityType? type;
  @override
  final int replyCount;
  @override
  final String? text;
  @override
  final bool? isLocked;
  @override
  final bool? isSubscribed;
  @override
  final bool? isLiked;
  @override
  final int likeCount;
  @override
  final int createdAt;
  @override
  final GActivitiesData_Page_activities__asTextActivity_user? user;

  factory _$GActivitiesData_Page_activities__asTextActivity(
          [void Function(
                  GActivitiesData_Page_activities__asTextActivityBuilder)?
              updates]) =>
      (new GActivitiesData_Page_activities__asTextActivityBuilder()
            ..update(updates))
          ._build();

  _$GActivitiesData_Page_activities__asTextActivity._(
      {required this.G__typename,
      required this.id,
      this.userId,
      this.type,
      required this.replyCount,
      this.text,
      this.isLocked,
      this.isSubscribed,
      this.isLiked,
      required this.likeCount,
      required this.createdAt,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivitiesData_Page_activities__asTextActivity', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivitiesData_Page_activities__asTextActivity', 'id');
    BuiltValueNullFieldError.checkNotNull(replyCount,
        r'GActivitiesData_Page_activities__asTextActivity', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(likeCount,
        r'GActivitiesData_Page_activities__asTextActivity', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(createdAt,
        r'GActivitiesData_Page_activities__asTextActivity', 'createdAt');
  }

  @override
  GActivitiesData_Page_activities__asTextActivity rebuild(
          void Function(GActivitiesData_Page_activities__asTextActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesData_Page_activities__asTextActivityBuilder toBuilder() =>
      new GActivitiesData_Page_activities__asTextActivityBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivitiesData_Page_activities__asTextActivity &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        type == other.type &&
        replyCount == other.replyCount &&
        text == other.text &&
        isLocked == other.isLocked &&
        isSubscribed == other.isSubscribed &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount &&
        createdAt == other.createdAt &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, replyCount.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jc(_$hash, isSubscribed.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GActivitiesData_Page_activities__asTextActivity')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('type', type)
          ..add('replyCount', replyCount)
          ..add('text', text)
          ..add('isLocked', isLocked)
          ..add('isSubscribed', isSubscribed)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount)
          ..add('createdAt', createdAt)
          ..add('user', user))
        .toString();
  }
}

class GActivitiesData_Page_activities__asTextActivityBuilder
    implements
        Builder<GActivitiesData_Page_activities__asTextActivity,
            GActivitiesData_Page_activities__asTextActivityBuilder> {
  _$GActivitiesData_Page_activities__asTextActivity? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  _i5.GActivityType? _type;
  _i5.GActivityType? get type => _$this._type;
  set type(_i5.GActivityType? type) => _$this._type = type;

  int? _replyCount;
  int? get replyCount => _$this._replyCount;
  set replyCount(int? replyCount) => _$this._replyCount = replyCount;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  bool? _isLocked;
  bool? get isLocked => _$this._isLocked;
  set isLocked(bool? isLocked) => _$this._isLocked = isLocked;

  bool? _isSubscribed;
  bool? get isSubscribed => _$this._isSubscribed;
  set isSubscribed(bool? isSubscribed) => _$this._isSubscribed = isSubscribed;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  GActivitiesData_Page_activities__asTextActivity_userBuilder? _user;
  GActivitiesData_Page_activities__asTextActivity_userBuilder get user =>
      _$this._user ??=
          new GActivitiesData_Page_activities__asTextActivity_userBuilder();
  set user(GActivitiesData_Page_activities__asTextActivity_userBuilder? user) =>
      _$this._user = user;

  GActivitiesData_Page_activities__asTextActivityBuilder() {
    GActivitiesData_Page_activities__asTextActivity._initializeBuilder(this);
  }

  GActivitiesData_Page_activities__asTextActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userId = $v.userId;
      _type = $v.type;
      _replyCount = $v.replyCount;
      _text = $v.text;
      _isLocked = $v.isLocked;
      _isSubscribed = $v.isSubscribed;
      _isLiked = $v.isLiked;
      _likeCount = $v.likeCount;
      _createdAt = $v.createdAt;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivitiesData_Page_activities__asTextActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivitiesData_Page_activities__asTextActivity;
  }

  @override
  void update(
      void Function(GActivitiesData_Page_activities__asTextActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesData_Page_activities__asTextActivity build() => _build();

  _$GActivitiesData_Page_activities__asTextActivity _build() {
    _$GActivitiesData_Page_activities__asTextActivity _$result;
    try {
      _$result = _$v ??
          new _$GActivitiesData_Page_activities__asTextActivity._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GActivitiesData_Page_activities__asTextActivity',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GActivitiesData_Page_activities__asTextActivity', 'id'),
              userId: userId,
              type: type,
              replyCount: BuiltValueNullFieldError.checkNotNull(
                  replyCount,
                  r'GActivitiesData_Page_activities__asTextActivity',
                  'replyCount'),
              text: text,
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(
                  likeCount,
                  r'GActivitiesData_Page_activities__asTextActivity',
                  'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt,
                  r'GActivitiesData_Page_activities__asTextActivity',
                  'createdAt'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GActivitiesData_Page_activities__asTextActivity',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivitiesData_Page_activities__asTextActivity_user
    extends GActivitiesData_Page_activities__asTextActivity_user {
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
  final BuiltList<_i5.GModRole?>? moderatorRoles;
  @override
  final GActivitiesData_Page_activities__asTextActivity_user_avatar? avatar;

  factory _$GActivitiesData_Page_activities__asTextActivity_user(
          [void Function(
                  GActivitiesData_Page_activities__asTextActivity_userBuilder)?
              updates]) =>
      (new GActivitiesData_Page_activities__asTextActivity_userBuilder()
            ..update(updates))
          ._build();

  _$GActivitiesData_Page_activities__asTextActivity_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivitiesData_Page_activities__asTextActivity_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivitiesData_Page_activities__asTextActivity_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GActivitiesData_Page_activities__asTextActivity_user', 'name');
  }

  @override
  GActivitiesData_Page_activities__asTextActivity_user rebuild(
          void Function(
                  GActivitiesData_Page_activities__asTextActivity_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesData_Page_activities__asTextActivity_userBuilder toBuilder() =>
      new GActivitiesData_Page_activities__asTextActivity_userBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivitiesData_Page_activities__asTextActivity_user &&
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
    return (newBuiltValueToStringHelper(
            r'GActivitiesData_Page_activities__asTextActivity_user')
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

class GActivitiesData_Page_activities__asTextActivity_userBuilder
    implements
        Builder<GActivitiesData_Page_activities__asTextActivity_user,
            GActivitiesData_Page_activities__asTextActivity_userBuilder> {
  _$GActivitiesData_Page_activities__asTextActivity_user? _$v;

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

  ListBuilder<_i5.GModRole?>? _moderatorRoles;
  ListBuilder<_i5.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i5.GModRole?>();
  set moderatorRoles(ListBuilder<_i5.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder? _avatar;
  GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder
      get avatar => _$this._avatar ??=
          new GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder();
  set avatar(
          GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder?
              avatar) =>
      _$this._avatar = avatar;

  GActivitiesData_Page_activities__asTextActivity_userBuilder() {
    GActivitiesData_Page_activities__asTextActivity_user._initializeBuilder(
        this);
  }

  GActivitiesData_Page_activities__asTextActivity_userBuilder get _$this {
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
  void replace(GActivitiesData_Page_activities__asTextActivity_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivitiesData_Page_activities__asTextActivity_user;
  }

  @override
  void update(
      void Function(
              GActivitiesData_Page_activities__asTextActivity_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesData_Page_activities__asTextActivity_user build() => _build();

  _$GActivitiesData_Page_activities__asTextActivity_user _build() {
    _$GActivitiesData_Page_activities__asTextActivity_user _$result;
    try {
      _$result = _$v ??
          new _$GActivitiesData_Page_activities__asTextActivity_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GActivitiesData_Page_activities__asTextActivity_user',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GActivitiesData_Page_activities__asTextActivity_user',
                  'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'GActivitiesData_Page_activities__asTextActivity_user',
                  'name'),
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
            r'GActivitiesData_Page_activities__asTextActivity_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivitiesData_Page_activities__asTextActivity_user_avatar
    extends GActivitiesData_Page_activities__asTextActivity_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GActivitiesData_Page_activities__asTextActivity_user_avatar(
          [void Function(
                  GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder)?
              updates]) =>
      (new GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GActivitiesData_Page_activities__asTextActivity_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GActivitiesData_Page_activities__asTextActivity_user_avatar',
        'G__typename');
  }

  @override
  GActivitiesData_Page_activities__asTextActivity_user_avatar rebuild(
          void Function(
                  GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder
      toBuilder() =>
          new GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GActivitiesData_Page_activities__asTextActivity_user_avatar &&
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
            r'GActivitiesData_Page_activities__asTextActivity_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder
    implements
        Builder<GActivitiesData_Page_activities__asTextActivity_user_avatar,
            GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder> {
  _$GActivitiesData_Page_activities__asTextActivity_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder() {
    GActivitiesData_Page_activities__asTextActivity_user_avatar
        ._initializeBuilder(this);
  }

  GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GActivitiesData_Page_activities__asTextActivity_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GActivitiesData_Page_activities__asTextActivity_user_avatar;
  }

  @override
  void update(
      void Function(
              GActivitiesData_Page_activities__asTextActivity_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesData_Page_activities__asTextActivity_user_avatar build() =>
      _build();

  _$GActivitiesData_Page_activities__asTextActivity_user_avatar _build() {
    final _$result = _$v ??
        new _$GActivitiesData_Page_activities__asTextActivity_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GActivitiesData_Page_activities__asTextActivity_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GActivitiesData_Page_activities__asListActivity
    extends GActivitiesData_Page_activities__asListActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? userId;
  @override
  final _i5.GActivityType? type;
  @override
  final String? status;
  @override
  final String? progress;
  @override
  final int replyCount;
  @override
  final bool? isLocked;
  @override
  final bool? isSubscribed;
  @override
  final bool? isLiked;
  @override
  final int likeCount;
  @override
  final int createdAt;
  @override
  final GActivitiesData_Page_activities__asListActivity_user? user;
  @override
  final GActivitiesData_Page_activities__asListActivity_media? media;

  factory _$GActivitiesData_Page_activities__asListActivity(
          [void Function(
                  GActivitiesData_Page_activities__asListActivityBuilder)?
              updates]) =>
      (new GActivitiesData_Page_activities__asListActivityBuilder()
            ..update(updates))
          ._build();

  _$GActivitiesData_Page_activities__asListActivity._(
      {required this.G__typename,
      required this.id,
      this.userId,
      this.type,
      this.status,
      this.progress,
      required this.replyCount,
      this.isLocked,
      this.isSubscribed,
      this.isLiked,
      required this.likeCount,
      required this.createdAt,
      this.user,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivitiesData_Page_activities__asListActivity', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivitiesData_Page_activities__asListActivity', 'id');
    BuiltValueNullFieldError.checkNotNull(replyCount,
        r'GActivitiesData_Page_activities__asListActivity', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(likeCount,
        r'GActivitiesData_Page_activities__asListActivity', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(createdAt,
        r'GActivitiesData_Page_activities__asListActivity', 'createdAt');
  }

  @override
  GActivitiesData_Page_activities__asListActivity rebuild(
          void Function(GActivitiesData_Page_activities__asListActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesData_Page_activities__asListActivityBuilder toBuilder() =>
      new GActivitiesData_Page_activities__asListActivityBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivitiesData_Page_activities__asListActivity &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        type == other.type &&
        status == other.status &&
        progress == other.progress &&
        replyCount == other.replyCount &&
        isLocked == other.isLocked &&
        isSubscribed == other.isSubscribed &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount &&
        createdAt == other.createdAt &&
        user == other.user &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, replyCount.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jc(_$hash, isSubscribed.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GActivitiesData_Page_activities__asListActivity')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('type', type)
          ..add('status', status)
          ..add('progress', progress)
          ..add('replyCount', replyCount)
          ..add('isLocked', isLocked)
          ..add('isSubscribed', isSubscribed)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount)
          ..add('createdAt', createdAt)
          ..add('user', user)
          ..add('media', media))
        .toString();
  }
}

class GActivitiesData_Page_activities__asListActivityBuilder
    implements
        Builder<GActivitiesData_Page_activities__asListActivity,
            GActivitiesData_Page_activities__asListActivityBuilder> {
  _$GActivitiesData_Page_activities__asListActivity? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  _i5.GActivityType? _type;
  _i5.GActivityType? get type => _$this._type;
  set type(_i5.GActivityType? type) => _$this._type = type;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _progress;
  String? get progress => _$this._progress;
  set progress(String? progress) => _$this._progress = progress;

  int? _replyCount;
  int? get replyCount => _$this._replyCount;
  set replyCount(int? replyCount) => _$this._replyCount = replyCount;

  bool? _isLocked;
  bool? get isLocked => _$this._isLocked;
  set isLocked(bool? isLocked) => _$this._isLocked = isLocked;

  bool? _isSubscribed;
  bool? get isSubscribed => _$this._isSubscribed;
  set isSubscribed(bool? isSubscribed) => _$this._isSubscribed = isSubscribed;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  GActivitiesData_Page_activities__asListActivity_userBuilder? _user;
  GActivitiesData_Page_activities__asListActivity_userBuilder get user =>
      _$this._user ??=
          new GActivitiesData_Page_activities__asListActivity_userBuilder();
  set user(GActivitiesData_Page_activities__asListActivity_userBuilder? user) =>
      _$this._user = user;

  GActivitiesData_Page_activities__asListActivity_mediaBuilder? _media;
  GActivitiesData_Page_activities__asListActivity_mediaBuilder get media =>
      _$this._media ??=
          new GActivitiesData_Page_activities__asListActivity_mediaBuilder();
  set media(
          GActivitiesData_Page_activities__asListActivity_mediaBuilder?
              media) =>
      _$this._media = media;

  GActivitiesData_Page_activities__asListActivityBuilder() {
    GActivitiesData_Page_activities__asListActivity._initializeBuilder(this);
  }

  GActivitiesData_Page_activities__asListActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userId = $v.userId;
      _type = $v.type;
      _status = $v.status;
      _progress = $v.progress;
      _replyCount = $v.replyCount;
      _isLocked = $v.isLocked;
      _isSubscribed = $v.isSubscribed;
      _isLiked = $v.isLiked;
      _likeCount = $v.likeCount;
      _createdAt = $v.createdAt;
      _user = $v.user?.toBuilder();
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivitiesData_Page_activities__asListActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivitiesData_Page_activities__asListActivity;
  }

  @override
  void update(
      void Function(GActivitiesData_Page_activities__asListActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesData_Page_activities__asListActivity build() => _build();

  _$GActivitiesData_Page_activities__asListActivity _build() {
    _$GActivitiesData_Page_activities__asListActivity _$result;
    try {
      _$result = _$v ??
          new _$GActivitiesData_Page_activities__asListActivity._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GActivitiesData_Page_activities__asListActivity',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GActivitiesData_Page_activities__asListActivity', 'id'),
              userId: userId,
              type: type,
              status: status,
              progress: progress,
              replyCount: BuiltValueNullFieldError.checkNotNull(
                  replyCount,
                  r'GActivitiesData_Page_activities__asListActivity',
                  'replyCount'),
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(
                  likeCount,
                  r'GActivitiesData_Page_activities__asListActivity',
                  'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt,
                  r'GActivitiesData_Page_activities__asListActivity',
                  'createdAt'),
              user: _user?.build(),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GActivitiesData_Page_activities__asListActivity',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivitiesData_Page_activities__asListActivity_user
    extends GActivitiesData_Page_activities__asListActivity_user {
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
  final BuiltList<_i5.GModRole?>? moderatorRoles;
  @override
  final GActivitiesData_Page_activities__asListActivity_user_avatar? avatar;

  factory _$GActivitiesData_Page_activities__asListActivity_user(
          [void Function(
                  GActivitiesData_Page_activities__asListActivity_userBuilder)?
              updates]) =>
      (new GActivitiesData_Page_activities__asListActivity_userBuilder()
            ..update(updates))
          ._build();

  _$GActivitiesData_Page_activities__asListActivity_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivitiesData_Page_activities__asListActivity_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivitiesData_Page_activities__asListActivity_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GActivitiesData_Page_activities__asListActivity_user', 'name');
  }

  @override
  GActivitiesData_Page_activities__asListActivity_user rebuild(
          void Function(
                  GActivitiesData_Page_activities__asListActivity_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesData_Page_activities__asListActivity_userBuilder toBuilder() =>
      new GActivitiesData_Page_activities__asListActivity_userBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivitiesData_Page_activities__asListActivity_user &&
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
    return (newBuiltValueToStringHelper(
            r'GActivitiesData_Page_activities__asListActivity_user')
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

class GActivitiesData_Page_activities__asListActivity_userBuilder
    implements
        Builder<GActivitiesData_Page_activities__asListActivity_user,
            GActivitiesData_Page_activities__asListActivity_userBuilder> {
  _$GActivitiesData_Page_activities__asListActivity_user? _$v;

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

  ListBuilder<_i5.GModRole?>? _moderatorRoles;
  ListBuilder<_i5.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i5.GModRole?>();
  set moderatorRoles(ListBuilder<_i5.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GActivitiesData_Page_activities__asListActivity_user_avatarBuilder? _avatar;
  GActivitiesData_Page_activities__asListActivity_user_avatarBuilder
      get avatar => _$this._avatar ??=
          new GActivitiesData_Page_activities__asListActivity_user_avatarBuilder();
  set avatar(
          GActivitiesData_Page_activities__asListActivity_user_avatarBuilder?
              avatar) =>
      _$this._avatar = avatar;

  GActivitiesData_Page_activities__asListActivity_userBuilder() {
    GActivitiesData_Page_activities__asListActivity_user._initializeBuilder(
        this);
  }

  GActivitiesData_Page_activities__asListActivity_userBuilder get _$this {
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
  void replace(GActivitiesData_Page_activities__asListActivity_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivitiesData_Page_activities__asListActivity_user;
  }

  @override
  void update(
      void Function(
              GActivitiesData_Page_activities__asListActivity_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesData_Page_activities__asListActivity_user build() => _build();

  _$GActivitiesData_Page_activities__asListActivity_user _build() {
    _$GActivitiesData_Page_activities__asListActivity_user _$result;
    try {
      _$result = _$v ??
          new _$GActivitiesData_Page_activities__asListActivity_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GActivitiesData_Page_activities__asListActivity_user',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GActivitiesData_Page_activities__asListActivity_user',
                  'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'GActivitiesData_Page_activities__asListActivity_user',
                  'name'),
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
            r'GActivitiesData_Page_activities__asListActivity_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivitiesData_Page_activities__asListActivity_user_avatar
    extends GActivitiesData_Page_activities__asListActivity_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GActivitiesData_Page_activities__asListActivity_user_avatar(
          [void Function(
                  GActivitiesData_Page_activities__asListActivity_user_avatarBuilder)?
              updates]) =>
      (new GActivitiesData_Page_activities__asListActivity_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GActivitiesData_Page_activities__asListActivity_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GActivitiesData_Page_activities__asListActivity_user_avatar',
        'G__typename');
  }

  @override
  GActivitiesData_Page_activities__asListActivity_user_avatar rebuild(
          void Function(
                  GActivitiesData_Page_activities__asListActivity_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesData_Page_activities__asListActivity_user_avatarBuilder
      toBuilder() =>
          new GActivitiesData_Page_activities__asListActivity_user_avatarBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GActivitiesData_Page_activities__asListActivity_user_avatar &&
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
            r'GActivitiesData_Page_activities__asListActivity_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GActivitiesData_Page_activities__asListActivity_user_avatarBuilder
    implements
        Builder<GActivitiesData_Page_activities__asListActivity_user_avatar,
            GActivitiesData_Page_activities__asListActivity_user_avatarBuilder> {
  _$GActivitiesData_Page_activities__asListActivity_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GActivitiesData_Page_activities__asListActivity_user_avatarBuilder() {
    GActivitiesData_Page_activities__asListActivity_user_avatar
        ._initializeBuilder(this);
  }

  GActivitiesData_Page_activities__asListActivity_user_avatarBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GActivitiesData_Page_activities__asListActivity_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GActivitiesData_Page_activities__asListActivity_user_avatar;
  }

  @override
  void update(
      void Function(
              GActivitiesData_Page_activities__asListActivity_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesData_Page_activities__asListActivity_user_avatar build() =>
      _build();

  _$GActivitiesData_Page_activities__asListActivity_user_avatar _build() {
    final _$result = _$v ??
        new _$GActivitiesData_Page_activities__asListActivity_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GActivitiesData_Page_activities__asListActivity_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GActivitiesData_Page_activities__asListActivity_media
    extends GActivitiesData_Page_activities__asListActivity_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i5.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i5.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GActivitiesData_Page_activities__asListActivity_media_title? title;
  @override
  final GActivitiesData_Page_activities__asListActivity_media_coverImage?
      coverImage;

  factory _$GActivitiesData_Page_activities__asListActivity_media(
          [void Function(
                  GActivitiesData_Page_activities__asListActivity_mediaBuilder)?
              updates]) =>
      (new GActivitiesData_Page_activities__asListActivity_mediaBuilder()
            ..update(updates))
          ._build();

  _$GActivitiesData_Page_activities__asListActivity_media._(
      {required this.G__typename,
      required this.id,
      this.type,
      this.isAdult,
      this.genres,
      this.format,
      this.description,
      this.title,
      this.coverImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GActivitiesData_Page_activities__asListActivity_media',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivitiesData_Page_activities__asListActivity_media', 'id');
  }

  @override
  GActivitiesData_Page_activities__asListActivity_media rebuild(
          void Function(
                  GActivitiesData_Page_activities__asListActivity_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesData_Page_activities__asListActivity_mediaBuilder toBuilder() =>
      new GActivitiesData_Page_activities__asListActivity_mediaBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivitiesData_Page_activities__asListActivity_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        isAdult == other.isAdult &&
        genres == other.genres &&
        format == other.format &&
        description == other.description &&
        title == other.title &&
        coverImage == other.coverImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, isAdult.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GActivitiesData_Page_activities__asListActivity_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('isAdult', isAdult)
          ..add('genres', genres)
          ..add('format', format)
          ..add('description', description)
          ..add('title', title)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GActivitiesData_Page_activities__asListActivity_mediaBuilder
    implements
        Builder<GActivitiesData_Page_activities__asListActivity_media,
            GActivitiesData_Page_activities__asListActivity_mediaBuilder> {
  _$GActivitiesData_Page_activities__asListActivity_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i5.GMediaType? _type;
  _i5.GMediaType? get type => _$this._type;
  set type(_i5.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i5.GMediaFormat? _format;
  _i5.GMediaFormat? get format => _$this._format;
  set format(_i5.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GActivitiesData_Page_activities__asListActivity_media_titleBuilder? _title;
  GActivitiesData_Page_activities__asListActivity_media_titleBuilder
      get title => _$this._title ??=
          new GActivitiesData_Page_activities__asListActivity_media_titleBuilder();
  set title(
          GActivitiesData_Page_activities__asListActivity_media_titleBuilder?
              title) =>
      _$this._title = title;

  GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder?
      _coverImage;
  GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder();
  set coverImage(
          GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GActivitiesData_Page_activities__asListActivity_mediaBuilder() {
    GActivitiesData_Page_activities__asListActivity_media._initializeBuilder(
        this);
  }

  GActivitiesData_Page_activities__asListActivity_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _isAdult = $v.isAdult;
      _genres = $v.genres?.toBuilder();
      _format = $v.format;
      _description = $v.description;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivitiesData_Page_activities__asListActivity_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivitiesData_Page_activities__asListActivity_media;
  }

  @override
  void update(
      void Function(
              GActivitiesData_Page_activities__asListActivity_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesData_Page_activities__asListActivity_media build() => _build();

  _$GActivitiesData_Page_activities__asListActivity_media _build() {
    _$GActivitiesData_Page_activities__asListActivity_media _$result;
    try {
      _$result = _$v ??
          new _$GActivitiesData_Page_activities__asListActivity_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GActivitiesData_Page_activities__asListActivity_media',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GActivitiesData_Page_activities__asListActivity_media',
                  'id'),
              type: type,
              isAdult: isAdult,
              genres: _genres?.build(),
              format: format,
              description: description,
              title: _title?.build(),
              coverImage: _coverImage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GActivitiesData_Page_activities__asListActivity_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivitiesData_Page_activities__asListActivity_media_title
    extends GActivitiesData_Page_activities__asListActivity_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GActivitiesData_Page_activities__asListActivity_media_title(
          [void Function(
                  GActivitiesData_Page_activities__asListActivity_media_titleBuilder)?
              updates]) =>
      (new GActivitiesData_Page_activities__asListActivity_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GActivitiesData_Page_activities__asListActivity_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GActivitiesData_Page_activities__asListActivity_media_title',
        'G__typename');
  }

  @override
  GActivitiesData_Page_activities__asListActivity_media_title rebuild(
          void Function(
                  GActivitiesData_Page_activities__asListActivity_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesData_Page_activities__asListActivity_media_titleBuilder
      toBuilder() =>
          new GActivitiesData_Page_activities__asListActivity_media_titleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GActivitiesData_Page_activities__asListActivity_media_title &&
        G__typename == other.G__typename &&
        userPreferred == other.userPreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GActivitiesData_Page_activities__asListActivity_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GActivitiesData_Page_activities__asListActivity_media_titleBuilder
    implements
        Builder<GActivitiesData_Page_activities__asListActivity_media_title,
            GActivitiesData_Page_activities__asListActivity_media_titleBuilder> {
  _$GActivitiesData_Page_activities__asListActivity_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GActivitiesData_Page_activities__asListActivity_media_titleBuilder() {
    GActivitiesData_Page_activities__asListActivity_media_title
        ._initializeBuilder(this);
  }

  GActivitiesData_Page_activities__asListActivity_media_titleBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GActivitiesData_Page_activities__asListActivity_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GActivitiesData_Page_activities__asListActivity_media_title;
  }

  @override
  void update(
      void Function(
              GActivitiesData_Page_activities__asListActivity_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesData_Page_activities__asListActivity_media_title build() =>
      _build();

  _$GActivitiesData_Page_activities__asListActivity_media_title _build() {
    final _$result = _$v ??
        new _$GActivitiesData_Page_activities__asListActivity_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GActivitiesData_Page_activities__asListActivity_media_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GActivitiesData_Page_activities__asListActivity_media_coverImage
    extends GActivitiesData_Page_activities__asListActivity_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GActivitiesData_Page_activities__asListActivity_media_coverImage(
          [void Function(
                  GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder)?
              updates]) =>
      (new GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GActivitiesData_Page_activities__asListActivity_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GActivitiesData_Page_activities__asListActivity_media_coverImage',
        'G__typename');
  }

  @override
  GActivitiesData_Page_activities__asListActivity_media_coverImage rebuild(
          void Function(
                  GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder
      toBuilder() =>
          new GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GActivitiesData_Page_activities__asListActivity_media_coverImage &&
        G__typename == other.G__typename &&
        extraLarge == other.extraLarge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, extraLarge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GActivitiesData_Page_activities__asListActivity_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder
    implements
        Builder<
            GActivitiesData_Page_activities__asListActivity_media_coverImage,
            GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder> {
  _$GActivitiesData_Page_activities__asListActivity_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder() {
    GActivitiesData_Page_activities__asListActivity_media_coverImage
        ._initializeBuilder(this);
  }

  GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GActivitiesData_Page_activities__asListActivity_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GActivitiesData_Page_activities__asListActivity_media_coverImage;
  }

  @override
  void update(
      void Function(
              GActivitiesData_Page_activities__asListActivity_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivitiesData_Page_activities__asListActivity_media_coverImage build() =>
      _build();

  _$GActivitiesData_Page_activities__asListActivity_media_coverImage _build() {
    final _$result = _$v ??
        new _$GActivitiesData_Page_activities__asListActivity_media_coverImage
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GActivitiesData_Page_activities__asListActivity_media_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleLikeData extends GToggleLikeData {
  @override
  final String G__typename;
  @override
  final GToggleLikeData_ToggleLikeV2? ToggleLikeV2;

  factory _$GToggleLikeData([void Function(GToggleLikeDataBuilder)? updates]) =>
      (new GToggleLikeDataBuilder()..update(updates))._build();

  _$GToggleLikeData._({required this.G__typename, this.ToggleLikeV2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GToggleLikeData', 'G__typename');
  }

  @override
  GToggleLikeData rebuild(void Function(GToggleLikeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleLikeDataBuilder toBuilder() =>
      new GToggleLikeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleLikeData &&
        G__typename == other.G__typename &&
        ToggleLikeV2 == other.ToggleLikeV2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ToggleLikeV2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToggleLikeData')
          ..add('G__typename', G__typename)
          ..add('ToggleLikeV2', ToggleLikeV2))
        .toString();
  }
}

class GToggleLikeDataBuilder
    implements Builder<GToggleLikeData, GToggleLikeDataBuilder> {
  _$GToggleLikeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleLikeData_ToggleLikeV2? _ToggleLikeV2;
  GToggleLikeData_ToggleLikeV2? get ToggleLikeV2 => _$this._ToggleLikeV2;
  set ToggleLikeV2(GToggleLikeData_ToggleLikeV2? ToggleLikeV2) =>
      _$this._ToggleLikeV2 = ToggleLikeV2;

  GToggleLikeDataBuilder() {
    GToggleLikeData._initializeBuilder(this);
  }

  GToggleLikeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ToggleLikeV2 = $v.ToggleLikeV2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleLikeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleLikeData;
  }

  @override
  void update(void Function(GToggleLikeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleLikeData build() => _build();

  _$GToggleLikeData _build() {
    final _$result = _$v ??
        new _$GToggleLikeData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GToggleLikeData', 'G__typename'),
            ToggleLikeV2: ToggleLikeV2);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleLikeData_ToggleLikeV2__base
    extends GToggleLikeData_ToggleLikeV2__base {
  @override
  final String G__typename;

  factory _$GToggleLikeData_ToggleLikeV2__base(
          [void Function(GToggleLikeData_ToggleLikeV2__baseBuilder)?
              updates]) =>
      (new GToggleLikeData_ToggleLikeV2__baseBuilder()..update(updates))
          ._build();

  _$GToggleLikeData_ToggleLikeV2__base._({required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GToggleLikeData_ToggleLikeV2__base', 'G__typename');
  }

  @override
  GToggleLikeData_ToggleLikeV2__base rebuild(
          void Function(GToggleLikeData_ToggleLikeV2__baseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleLikeData_ToggleLikeV2__baseBuilder toBuilder() =>
      new GToggleLikeData_ToggleLikeV2__baseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleLikeData_ToggleLikeV2__base &&
        G__typename == other.G__typename;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToggleLikeData_ToggleLikeV2__base')
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GToggleLikeData_ToggleLikeV2__baseBuilder
    implements
        Builder<GToggleLikeData_ToggleLikeV2__base,
            GToggleLikeData_ToggleLikeV2__baseBuilder> {
  _$GToggleLikeData_ToggleLikeV2__base? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleLikeData_ToggleLikeV2__baseBuilder() {
    GToggleLikeData_ToggleLikeV2__base._initializeBuilder(this);
  }

  GToggleLikeData_ToggleLikeV2__baseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleLikeData_ToggleLikeV2__base other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleLikeData_ToggleLikeV2__base;
  }

  @override
  void update(
      void Function(GToggleLikeData_ToggleLikeV2__baseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleLikeData_ToggleLikeV2__base build() => _build();

  _$GToggleLikeData_ToggleLikeV2__base _build() {
    final _$result = _$v ??
        new _$GToggleLikeData_ToggleLikeV2__base._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GToggleLikeData_ToggleLikeV2__base', 'G__typename'));
    replace(_$result);
    return _$result;
  }
}

class _$GToggleLikeData_ToggleLikeV2__asListActivity
    extends GToggleLikeData_ToggleLikeV2__asListActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int likeCount;
  @override
  final bool? isLiked;

  factory _$GToggleLikeData_ToggleLikeV2__asListActivity(
          [void Function(GToggleLikeData_ToggleLikeV2__asListActivityBuilder)?
              updates]) =>
      (new GToggleLikeData_ToggleLikeV2__asListActivityBuilder()
            ..update(updates))
          ._build();

  _$GToggleLikeData_ToggleLikeV2__asListActivity._(
      {required this.G__typename,
      required this.id,
      required this.likeCount,
      this.isLiked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleLikeData_ToggleLikeV2__asListActivity', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GToggleLikeData_ToggleLikeV2__asListActivity', 'id');
    BuiltValueNullFieldError.checkNotNull(likeCount,
        r'GToggleLikeData_ToggleLikeV2__asListActivity', 'likeCount');
  }

  @override
  GToggleLikeData_ToggleLikeV2__asListActivity rebuild(
          void Function(GToggleLikeData_ToggleLikeV2__asListActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleLikeData_ToggleLikeV2__asListActivityBuilder toBuilder() =>
      new GToggleLikeData_ToggleLikeV2__asListActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleLikeData_ToggleLikeV2__asListActivity &&
        G__typename == other.G__typename &&
        id == other.id &&
        likeCount == other.likeCount &&
        isLiked == other.isLiked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleLikeData_ToggleLikeV2__asListActivity')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('likeCount', likeCount)
          ..add('isLiked', isLiked))
        .toString();
  }
}

class GToggleLikeData_ToggleLikeV2__asListActivityBuilder
    implements
        Builder<GToggleLikeData_ToggleLikeV2__asListActivity,
            GToggleLikeData_ToggleLikeV2__asListActivityBuilder> {
  _$GToggleLikeData_ToggleLikeV2__asListActivity? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  GToggleLikeData_ToggleLikeV2__asListActivityBuilder() {
    GToggleLikeData_ToggleLikeV2__asListActivity._initializeBuilder(this);
  }

  GToggleLikeData_ToggleLikeV2__asListActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _likeCount = $v.likeCount;
      _isLiked = $v.isLiked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleLikeData_ToggleLikeV2__asListActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleLikeData_ToggleLikeV2__asListActivity;
  }

  @override
  void update(
      void Function(GToggleLikeData_ToggleLikeV2__asListActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleLikeData_ToggleLikeV2__asListActivity build() => _build();

  _$GToggleLikeData_ToggleLikeV2__asListActivity _build() {
    final _$result = _$v ??
        new _$GToggleLikeData_ToggleLikeV2__asListActivity._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GToggleLikeData_ToggleLikeV2__asListActivity', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GToggleLikeData_ToggleLikeV2__asListActivity', 'id'),
            likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                r'GToggleLikeData_ToggleLikeV2__asListActivity', 'likeCount'),
            isLiked: isLiked);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleLikeData_ToggleLikeV2__asMessageActivity
    extends GToggleLikeData_ToggleLikeV2__asMessageActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int likeCount;
  @override
  final bool? isLiked;

  factory _$GToggleLikeData_ToggleLikeV2__asMessageActivity(
          [void Function(
                  GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder)?
              updates]) =>
      (new GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder()
            ..update(updates))
          ._build();

  _$GToggleLikeData_ToggleLikeV2__asMessageActivity._(
      {required this.G__typename,
      required this.id,
      required this.likeCount,
      this.isLiked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleLikeData_ToggleLikeV2__asMessageActivity', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GToggleLikeData_ToggleLikeV2__asMessageActivity', 'id');
    BuiltValueNullFieldError.checkNotNull(likeCount,
        r'GToggleLikeData_ToggleLikeV2__asMessageActivity', 'likeCount');
  }

  @override
  GToggleLikeData_ToggleLikeV2__asMessageActivity rebuild(
          void Function(GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder toBuilder() =>
      new GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleLikeData_ToggleLikeV2__asMessageActivity &&
        G__typename == other.G__typename &&
        id == other.id &&
        likeCount == other.likeCount &&
        isLiked == other.isLiked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleLikeData_ToggleLikeV2__asMessageActivity')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('likeCount', likeCount)
          ..add('isLiked', isLiked))
        .toString();
  }
}

class GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder
    implements
        Builder<GToggleLikeData_ToggleLikeV2__asMessageActivity,
            GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder> {
  _$GToggleLikeData_ToggleLikeV2__asMessageActivity? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder() {
    GToggleLikeData_ToggleLikeV2__asMessageActivity._initializeBuilder(this);
  }

  GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _likeCount = $v.likeCount;
      _isLiked = $v.isLiked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleLikeData_ToggleLikeV2__asMessageActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleLikeData_ToggleLikeV2__asMessageActivity;
  }

  @override
  void update(
      void Function(GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleLikeData_ToggleLikeV2__asMessageActivity build() => _build();

  _$GToggleLikeData_ToggleLikeV2__asMessageActivity _build() {
    final _$result = _$v ??
        new _$GToggleLikeData_ToggleLikeV2__asMessageActivity._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleLikeData_ToggleLikeV2__asMessageActivity',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GToggleLikeData_ToggleLikeV2__asMessageActivity', 'id'),
            likeCount: BuiltValueNullFieldError.checkNotNull(
                likeCount,
                r'GToggleLikeData_ToggleLikeV2__asMessageActivity',
                'likeCount'),
            isLiked: isLiked);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleLikeData_ToggleLikeV2__asTextActivity
    extends GToggleLikeData_ToggleLikeV2__asTextActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int likeCount;
  @override
  final bool? isLiked;

  factory _$GToggleLikeData_ToggleLikeV2__asTextActivity(
          [void Function(GToggleLikeData_ToggleLikeV2__asTextActivityBuilder)?
              updates]) =>
      (new GToggleLikeData_ToggleLikeV2__asTextActivityBuilder()
            ..update(updates))
          ._build();

  _$GToggleLikeData_ToggleLikeV2__asTextActivity._(
      {required this.G__typename,
      required this.id,
      required this.likeCount,
      this.isLiked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleLikeData_ToggleLikeV2__asTextActivity', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GToggleLikeData_ToggleLikeV2__asTextActivity', 'id');
    BuiltValueNullFieldError.checkNotNull(likeCount,
        r'GToggleLikeData_ToggleLikeV2__asTextActivity', 'likeCount');
  }

  @override
  GToggleLikeData_ToggleLikeV2__asTextActivity rebuild(
          void Function(GToggleLikeData_ToggleLikeV2__asTextActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleLikeData_ToggleLikeV2__asTextActivityBuilder toBuilder() =>
      new GToggleLikeData_ToggleLikeV2__asTextActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleLikeData_ToggleLikeV2__asTextActivity &&
        G__typename == other.G__typename &&
        id == other.id &&
        likeCount == other.likeCount &&
        isLiked == other.isLiked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleLikeData_ToggleLikeV2__asTextActivity')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('likeCount', likeCount)
          ..add('isLiked', isLiked))
        .toString();
  }
}

class GToggleLikeData_ToggleLikeV2__asTextActivityBuilder
    implements
        Builder<GToggleLikeData_ToggleLikeV2__asTextActivity,
            GToggleLikeData_ToggleLikeV2__asTextActivityBuilder> {
  _$GToggleLikeData_ToggleLikeV2__asTextActivity? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  GToggleLikeData_ToggleLikeV2__asTextActivityBuilder() {
    GToggleLikeData_ToggleLikeV2__asTextActivity._initializeBuilder(this);
  }

  GToggleLikeData_ToggleLikeV2__asTextActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _likeCount = $v.likeCount;
      _isLiked = $v.isLiked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleLikeData_ToggleLikeV2__asTextActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleLikeData_ToggleLikeV2__asTextActivity;
  }

  @override
  void update(
      void Function(GToggleLikeData_ToggleLikeV2__asTextActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleLikeData_ToggleLikeV2__asTextActivity build() => _build();

  _$GToggleLikeData_ToggleLikeV2__asTextActivity _build() {
    final _$result = _$v ??
        new _$GToggleLikeData_ToggleLikeV2__asTextActivity._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GToggleLikeData_ToggleLikeV2__asTextActivity', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GToggleLikeData_ToggleLikeV2__asTextActivity', 'id'),
            likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                r'GToggleLikeData_ToggleLikeV2__asTextActivity', 'likeCount'),
            isLiked: isLiked);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleLikeData_ToggleLikeV2__asActivityReply
    extends GToggleLikeData_ToggleLikeV2__asActivityReply {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int likeCount;
  @override
  final bool? isLiked;

  factory _$GToggleLikeData_ToggleLikeV2__asActivityReply(
          [void Function(GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder)?
              updates]) =>
      (new GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder()
            ..update(updates))
          ._build();

  _$GToggleLikeData_ToggleLikeV2__asActivityReply._(
      {required this.G__typename,
      required this.id,
      required this.likeCount,
      this.isLiked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleLikeData_ToggleLikeV2__asActivityReply', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GToggleLikeData_ToggleLikeV2__asActivityReply', 'id');
    BuiltValueNullFieldError.checkNotNull(likeCount,
        r'GToggleLikeData_ToggleLikeV2__asActivityReply', 'likeCount');
  }

  @override
  GToggleLikeData_ToggleLikeV2__asActivityReply rebuild(
          void Function(GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder toBuilder() =>
      new GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleLikeData_ToggleLikeV2__asActivityReply &&
        G__typename == other.G__typename &&
        id == other.id &&
        likeCount == other.likeCount &&
        isLiked == other.isLiked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleLikeData_ToggleLikeV2__asActivityReply')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('likeCount', likeCount)
          ..add('isLiked', isLiked))
        .toString();
  }
}

class GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder
    implements
        Builder<GToggleLikeData_ToggleLikeV2__asActivityReply,
            GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder> {
  _$GToggleLikeData_ToggleLikeV2__asActivityReply? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder() {
    GToggleLikeData_ToggleLikeV2__asActivityReply._initializeBuilder(this);
  }

  GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _likeCount = $v.likeCount;
      _isLiked = $v.isLiked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleLikeData_ToggleLikeV2__asActivityReply other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleLikeData_ToggleLikeV2__asActivityReply;
  }

  @override
  void update(
      void Function(GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleLikeData_ToggleLikeV2__asActivityReply build() => _build();

  _$GToggleLikeData_ToggleLikeV2__asActivityReply _build() {
    final _$result = _$v ??
        new _$GToggleLikeData_ToggleLikeV2__asActivityReply._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleLikeData_ToggleLikeV2__asActivityReply',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GToggleLikeData_ToggleLikeV2__asActivityReply', 'id'),
            likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                r'GToggleLikeData_ToggleLikeV2__asActivityReply', 'likeCount'),
            isLiked: isLiked);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleLikeData_ToggleLikeV2__asThread
    extends GToggleLikeData_ToggleLikeV2__asThread {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int likeCount;
  @override
  final bool? isLiked;

  factory _$GToggleLikeData_ToggleLikeV2__asThread(
          [void Function(GToggleLikeData_ToggleLikeV2__asThreadBuilder)?
              updates]) =>
      (new GToggleLikeData_ToggleLikeV2__asThreadBuilder()..update(updates))
          ._build();

  _$GToggleLikeData_ToggleLikeV2__asThread._(
      {required this.G__typename,
      required this.id,
      required this.likeCount,
      this.isLiked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GToggleLikeData_ToggleLikeV2__asThread', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GToggleLikeData_ToggleLikeV2__asThread', 'id');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GToggleLikeData_ToggleLikeV2__asThread', 'likeCount');
  }

  @override
  GToggleLikeData_ToggleLikeV2__asThread rebuild(
          void Function(GToggleLikeData_ToggleLikeV2__asThreadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleLikeData_ToggleLikeV2__asThreadBuilder toBuilder() =>
      new GToggleLikeData_ToggleLikeV2__asThreadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleLikeData_ToggleLikeV2__asThread &&
        G__typename == other.G__typename &&
        id == other.id &&
        likeCount == other.likeCount &&
        isLiked == other.isLiked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleLikeData_ToggleLikeV2__asThread')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('likeCount', likeCount)
          ..add('isLiked', isLiked))
        .toString();
  }
}

class GToggleLikeData_ToggleLikeV2__asThreadBuilder
    implements
        Builder<GToggleLikeData_ToggleLikeV2__asThread,
            GToggleLikeData_ToggleLikeV2__asThreadBuilder> {
  _$GToggleLikeData_ToggleLikeV2__asThread? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  GToggleLikeData_ToggleLikeV2__asThreadBuilder() {
    GToggleLikeData_ToggleLikeV2__asThread._initializeBuilder(this);
  }

  GToggleLikeData_ToggleLikeV2__asThreadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _likeCount = $v.likeCount;
      _isLiked = $v.isLiked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleLikeData_ToggleLikeV2__asThread other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleLikeData_ToggleLikeV2__asThread;
  }

  @override
  void update(
      void Function(GToggleLikeData_ToggleLikeV2__asThreadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleLikeData_ToggleLikeV2__asThread build() => _build();

  _$GToggleLikeData_ToggleLikeV2__asThread _build() {
    final _$result = _$v ??
        new _$GToggleLikeData_ToggleLikeV2__asThread._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GToggleLikeData_ToggleLikeV2__asThread', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GToggleLikeData_ToggleLikeV2__asThread', 'id'),
            likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                r'GToggleLikeData_ToggleLikeV2__asThread', 'likeCount'),
            isLiked: isLiked);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleLikeData_ToggleLikeV2__asThreadComment
    extends GToggleLikeData_ToggleLikeV2__asThreadComment {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int likeCount;
  @override
  final bool? isLiked;

  factory _$GToggleLikeData_ToggleLikeV2__asThreadComment(
          [void Function(GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder)?
              updates]) =>
      (new GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder()
            ..update(updates))
          ._build();

  _$GToggleLikeData_ToggleLikeV2__asThreadComment._(
      {required this.G__typename,
      required this.id,
      required this.likeCount,
      this.isLiked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GToggleLikeData_ToggleLikeV2__asThreadComment', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GToggleLikeData_ToggleLikeV2__asThreadComment', 'id');
    BuiltValueNullFieldError.checkNotNull(likeCount,
        r'GToggleLikeData_ToggleLikeV2__asThreadComment', 'likeCount');
  }

  @override
  GToggleLikeData_ToggleLikeV2__asThreadComment rebuild(
          void Function(GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder toBuilder() =>
      new GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleLikeData_ToggleLikeV2__asThreadComment &&
        G__typename == other.G__typename &&
        id == other.id &&
        likeCount == other.likeCount &&
        isLiked == other.isLiked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleLikeData_ToggleLikeV2__asThreadComment')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('likeCount', likeCount)
          ..add('isLiked', isLiked))
        .toString();
  }
}

class GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder
    implements
        Builder<GToggleLikeData_ToggleLikeV2__asThreadComment,
            GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder> {
  _$GToggleLikeData_ToggleLikeV2__asThreadComment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder() {
    GToggleLikeData_ToggleLikeV2__asThreadComment._initializeBuilder(this);
  }

  GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _likeCount = $v.likeCount;
      _isLiked = $v.isLiked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleLikeData_ToggleLikeV2__asThreadComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleLikeData_ToggleLikeV2__asThreadComment;
  }

  @override
  void update(
      void Function(GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleLikeData_ToggleLikeV2__asThreadComment build() => _build();

  _$GToggleLikeData_ToggleLikeV2__asThreadComment _build() {
    final _$result = _$v ??
        new _$GToggleLikeData_ToggleLikeV2__asThreadComment._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleLikeData_ToggleLikeV2__asThreadComment',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GToggleLikeData_ToggleLikeV2__asThreadComment', 'id'),
            likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                r'GToggleLikeData_ToggleLikeV2__asThreadComment', 'likeCount'),
            isLiked: isLiked);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveTextActivityData extends GSaveTextActivityData {
  @override
  final String G__typename;
  @override
  final GSaveTextActivityData_SaveTextActivity? SaveTextActivity;

  factory _$GSaveTextActivityData(
          [void Function(GSaveTextActivityDataBuilder)? updates]) =>
      (new GSaveTextActivityDataBuilder()..update(updates))._build();

  _$GSaveTextActivityData._({required this.G__typename, this.SaveTextActivity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaveTextActivityData', 'G__typename');
  }

  @override
  GSaveTextActivityData rebuild(
          void Function(GSaveTextActivityDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveTextActivityDataBuilder toBuilder() =>
      new GSaveTextActivityDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveTextActivityData &&
        G__typename == other.G__typename &&
        SaveTextActivity == other.SaveTextActivity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, SaveTextActivity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveTextActivityData')
          ..add('G__typename', G__typename)
          ..add('SaveTextActivity', SaveTextActivity))
        .toString();
  }
}

class GSaveTextActivityDataBuilder
    implements Builder<GSaveTextActivityData, GSaveTextActivityDataBuilder> {
  _$GSaveTextActivityData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSaveTextActivityData_SaveTextActivityBuilder? _SaveTextActivity;
  GSaveTextActivityData_SaveTextActivityBuilder get SaveTextActivity =>
      _$this._SaveTextActivity ??=
          new GSaveTextActivityData_SaveTextActivityBuilder();
  set SaveTextActivity(
          GSaveTextActivityData_SaveTextActivityBuilder? SaveTextActivity) =>
      _$this._SaveTextActivity = SaveTextActivity;

  GSaveTextActivityDataBuilder() {
    GSaveTextActivityData._initializeBuilder(this);
  }

  GSaveTextActivityDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _SaveTextActivity = $v.SaveTextActivity?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveTextActivityData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveTextActivityData;
  }

  @override
  void update(void Function(GSaveTextActivityDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveTextActivityData build() => _build();

  _$GSaveTextActivityData _build() {
    _$GSaveTextActivityData _$result;
    try {
      _$result = _$v ??
          new _$GSaveTextActivityData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSaveTextActivityData', 'G__typename'),
              SaveTextActivity: _SaveTextActivity?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'SaveTextActivity';
        _SaveTextActivity?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveTextActivityData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveTextActivityData_SaveTextActivity
    extends GSaveTextActivityData_SaveTextActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? userId;
  @override
  final _i5.GActivityType? type;
  @override
  final int replyCount;
  @override
  final String? text;
  @override
  final bool? isLocked;
  @override
  final bool? isSubscribed;
  @override
  final bool? isLiked;
  @override
  final int likeCount;
  @override
  final int createdAt;
  @override
  final GSaveTextActivityData_SaveTextActivity_user? user;

  factory _$GSaveTextActivityData_SaveTextActivity(
          [void Function(GSaveTextActivityData_SaveTextActivityBuilder)?
              updates]) =>
      (new GSaveTextActivityData_SaveTextActivityBuilder()..update(updates))
          ._build();

  _$GSaveTextActivityData_SaveTextActivity._(
      {required this.G__typename,
      required this.id,
      this.userId,
      this.type,
      required this.replyCount,
      this.text,
      this.isLocked,
      this.isSubscribed,
      this.isLiked,
      required this.likeCount,
      required this.createdAt,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaveTextActivityData_SaveTextActivity', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSaveTextActivityData_SaveTextActivity', 'id');
    BuiltValueNullFieldError.checkNotNull(
        replyCount, r'GSaveTextActivityData_SaveTextActivity', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GSaveTextActivityData_SaveTextActivity', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GSaveTextActivityData_SaveTextActivity', 'createdAt');
  }

  @override
  GSaveTextActivityData_SaveTextActivity rebuild(
          void Function(GSaveTextActivityData_SaveTextActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveTextActivityData_SaveTextActivityBuilder toBuilder() =>
      new GSaveTextActivityData_SaveTextActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveTextActivityData_SaveTextActivity &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        type == other.type &&
        replyCount == other.replyCount &&
        text == other.text &&
        isLocked == other.isLocked &&
        isSubscribed == other.isSubscribed &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount &&
        createdAt == other.createdAt &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, replyCount.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jc(_$hash, isSubscribed.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSaveTextActivityData_SaveTextActivity')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('type', type)
          ..add('replyCount', replyCount)
          ..add('text', text)
          ..add('isLocked', isLocked)
          ..add('isSubscribed', isSubscribed)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount)
          ..add('createdAt', createdAt)
          ..add('user', user))
        .toString();
  }
}

class GSaveTextActivityData_SaveTextActivityBuilder
    implements
        Builder<GSaveTextActivityData_SaveTextActivity,
            GSaveTextActivityData_SaveTextActivityBuilder> {
  _$GSaveTextActivityData_SaveTextActivity? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  _i5.GActivityType? _type;
  _i5.GActivityType? get type => _$this._type;
  set type(_i5.GActivityType? type) => _$this._type = type;

  int? _replyCount;
  int? get replyCount => _$this._replyCount;
  set replyCount(int? replyCount) => _$this._replyCount = replyCount;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  bool? _isLocked;
  bool? get isLocked => _$this._isLocked;
  set isLocked(bool? isLocked) => _$this._isLocked = isLocked;

  bool? _isSubscribed;
  bool? get isSubscribed => _$this._isSubscribed;
  set isSubscribed(bool? isSubscribed) => _$this._isSubscribed = isSubscribed;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  GSaveTextActivityData_SaveTextActivity_userBuilder? _user;
  GSaveTextActivityData_SaveTextActivity_userBuilder get user =>
      _$this._user ??= new GSaveTextActivityData_SaveTextActivity_userBuilder();
  set user(GSaveTextActivityData_SaveTextActivity_userBuilder? user) =>
      _$this._user = user;

  GSaveTextActivityData_SaveTextActivityBuilder() {
    GSaveTextActivityData_SaveTextActivity._initializeBuilder(this);
  }

  GSaveTextActivityData_SaveTextActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userId = $v.userId;
      _type = $v.type;
      _replyCount = $v.replyCount;
      _text = $v.text;
      _isLocked = $v.isLocked;
      _isSubscribed = $v.isSubscribed;
      _isLiked = $v.isLiked;
      _likeCount = $v.likeCount;
      _createdAt = $v.createdAt;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveTextActivityData_SaveTextActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveTextActivityData_SaveTextActivity;
  }

  @override
  void update(
      void Function(GSaveTextActivityData_SaveTextActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveTextActivityData_SaveTextActivity build() => _build();

  _$GSaveTextActivityData_SaveTextActivity _build() {
    _$GSaveTextActivityData_SaveTextActivity _$result;
    try {
      _$result = _$v ??
          new _$GSaveTextActivityData_SaveTextActivity._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSaveTextActivityData_SaveTextActivity', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSaveTextActivityData_SaveTextActivity', 'id'),
              userId: userId,
              type: type,
              replyCount: BuiltValueNullFieldError.checkNotNull(replyCount,
                  r'GSaveTextActivityData_SaveTextActivity', 'replyCount'),
              text: text,
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                  r'GSaveTextActivityData_SaveTextActivity', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
                  r'GSaveTextActivityData_SaveTextActivity', 'createdAt'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveTextActivityData_SaveTextActivity',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveTextActivityData_SaveTextActivity_user
    extends GSaveTextActivityData_SaveTextActivity_user {
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
  final BuiltList<_i5.GModRole?>? moderatorRoles;
  @override
  final GSaveTextActivityData_SaveTextActivity_user_avatar? avatar;

  factory _$GSaveTextActivityData_SaveTextActivity_user(
          [void Function(GSaveTextActivityData_SaveTextActivity_userBuilder)?
              updates]) =>
      (new GSaveTextActivityData_SaveTextActivity_userBuilder()
            ..update(updates))
          ._build();

  _$GSaveTextActivityData_SaveTextActivity_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSaveTextActivityData_SaveTextActivity_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSaveTextActivityData_SaveTextActivity_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GSaveTextActivityData_SaveTextActivity_user', 'name');
  }

  @override
  GSaveTextActivityData_SaveTextActivity_user rebuild(
          void Function(GSaveTextActivityData_SaveTextActivity_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveTextActivityData_SaveTextActivity_userBuilder toBuilder() =>
      new GSaveTextActivityData_SaveTextActivity_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveTextActivityData_SaveTextActivity_user &&
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
    return (newBuiltValueToStringHelper(
            r'GSaveTextActivityData_SaveTextActivity_user')
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

class GSaveTextActivityData_SaveTextActivity_userBuilder
    implements
        Builder<GSaveTextActivityData_SaveTextActivity_user,
            GSaveTextActivityData_SaveTextActivity_userBuilder> {
  _$GSaveTextActivityData_SaveTextActivity_user? _$v;

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

  ListBuilder<_i5.GModRole?>? _moderatorRoles;
  ListBuilder<_i5.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i5.GModRole?>();
  set moderatorRoles(ListBuilder<_i5.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GSaveTextActivityData_SaveTextActivity_user_avatarBuilder? _avatar;
  GSaveTextActivityData_SaveTextActivity_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GSaveTextActivityData_SaveTextActivity_user_avatarBuilder();
  set avatar(
          GSaveTextActivityData_SaveTextActivity_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GSaveTextActivityData_SaveTextActivity_userBuilder() {
    GSaveTextActivityData_SaveTextActivity_user._initializeBuilder(this);
  }

  GSaveTextActivityData_SaveTextActivity_userBuilder get _$this {
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
  void replace(GSaveTextActivityData_SaveTextActivity_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveTextActivityData_SaveTextActivity_user;
  }

  @override
  void update(
      void Function(GSaveTextActivityData_SaveTextActivity_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveTextActivityData_SaveTextActivity_user build() => _build();

  _$GSaveTextActivityData_SaveTextActivity_user _build() {
    _$GSaveTextActivityData_SaveTextActivity_user _$result;
    try {
      _$result = _$v ??
          new _$GSaveTextActivityData_SaveTextActivity_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSaveTextActivityData_SaveTextActivity_user',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSaveTextActivityData_SaveTextActivity_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GSaveTextActivityData_SaveTextActivity_user', 'name'),
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
            r'GSaveTextActivityData_SaveTextActivity_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveTextActivityData_SaveTextActivity_user_avatar
    extends GSaveTextActivityData_SaveTextActivity_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GSaveTextActivityData_SaveTextActivity_user_avatar(
          [void Function(
                  GSaveTextActivityData_SaveTextActivity_user_avatarBuilder)?
              updates]) =>
      (new GSaveTextActivityData_SaveTextActivity_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GSaveTextActivityData_SaveTextActivity_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSaveTextActivityData_SaveTextActivity_user_avatar', 'G__typename');
  }

  @override
  GSaveTextActivityData_SaveTextActivity_user_avatar rebuild(
          void Function(
                  GSaveTextActivityData_SaveTextActivity_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveTextActivityData_SaveTextActivity_user_avatarBuilder toBuilder() =>
      new GSaveTextActivityData_SaveTextActivity_user_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveTextActivityData_SaveTextActivity_user_avatar &&
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
            r'GSaveTextActivityData_SaveTextActivity_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GSaveTextActivityData_SaveTextActivity_user_avatarBuilder
    implements
        Builder<GSaveTextActivityData_SaveTextActivity_user_avatar,
            GSaveTextActivityData_SaveTextActivity_user_avatarBuilder> {
  _$GSaveTextActivityData_SaveTextActivity_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GSaveTextActivityData_SaveTextActivity_user_avatarBuilder() {
    GSaveTextActivityData_SaveTextActivity_user_avatar._initializeBuilder(this);
  }

  GSaveTextActivityData_SaveTextActivity_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveTextActivityData_SaveTextActivity_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveTextActivityData_SaveTextActivity_user_avatar;
  }

  @override
  void update(
      void Function(GSaveTextActivityData_SaveTextActivity_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveTextActivityData_SaveTextActivity_user_avatar build() => _build();

  _$GSaveTextActivityData_SaveTextActivity_user_avatar _build() {
    final _$result = _$v ??
        new _$GSaveTextActivityData_SaveTextActivity_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSaveTextActivityData_SaveTextActivity_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
