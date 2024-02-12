// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserActivitiesData> _$gUserActivitiesDataSerializer =
    new _$GUserActivitiesDataSerializer();
Serializer<GUserActivitiesData_Page> _$gUserActivitiesDataPageSerializer =
    new _$GUserActivitiesData_PageSerializer();
Serializer<GUserActivitiesData_Page_pageInfo>
    _$gUserActivitiesDataPagePageInfoSerializer =
    new _$GUserActivitiesData_Page_pageInfoSerializer();
Serializer<GUserActivitiesData_Page_activities__base>
    _$gUserActivitiesDataPageActivitiesBaseSerializer =
    new _$GUserActivitiesData_Page_activities__baseSerializer();
Serializer<GUserActivitiesData_Page_activities__asTextActivity>
    _$gUserActivitiesDataPageActivitiesAsTextActivitySerializer =
    new _$GUserActivitiesData_Page_activities__asTextActivitySerializer();
Serializer<GUserActivitiesData_Page_activities__asTextActivity_user>
    _$gUserActivitiesDataPageActivitiesAsTextActivityUserSerializer =
    new _$GUserActivitiesData_Page_activities__asTextActivity_userSerializer();
Serializer<GUserActivitiesData_Page_activities__asTextActivity_user_avatar>
    _$gUserActivitiesDataPageActivitiesAsTextActivityUserAvatarSerializer =
    new _$GUserActivitiesData_Page_activities__asTextActivity_user_avatarSerializer();
Serializer<GUserActivitiesData_Page_activities__asListActivity>
    _$gUserActivitiesDataPageActivitiesAsListActivitySerializer =
    new _$GUserActivitiesData_Page_activities__asListActivitySerializer();
Serializer<GUserActivitiesData_Page_activities__asListActivity_user>
    _$gUserActivitiesDataPageActivitiesAsListActivityUserSerializer =
    new _$GUserActivitiesData_Page_activities__asListActivity_userSerializer();
Serializer<GUserActivitiesData_Page_activities__asListActivity_user_avatar>
    _$gUserActivitiesDataPageActivitiesAsListActivityUserAvatarSerializer =
    new _$GUserActivitiesData_Page_activities__asListActivity_user_avatarSerializer();
Serializer<GUserActivitiesData_Page_activities__asListActivity_media>
    _$gUserActivitiesDataPageActivitiesAsListActivityMediaSerializer =
    new _$GUserActivitiesData_Page_activities__asListActivity_mediaSerializer();
Serializer<GUserActivitiesData_Page_activities__asListActivity_media_title>
    _$gUserActivitiesDataPageActivitiesAsListActivityMediaTitleSerializer =
    new _$GUserActivitiesData_Page_activities__asListActivity_media_titleSerializer();
Serializer<GUserActivitiesData_Page_activities__asListActivity_media_coverImage>
    _$gUserActivitiesDataPageActivitiesAsListActivityMediaCoverImageSerializer =
    new _$GUserActivitiesData_Page_activities__asListActivity_media_coverImageSerializer();
Serializer<GUserActivitiesData_Page_activities__asMessageActivity>
    _$gUserActivitiesDataPageActivitiesAsMessageActivitySerializer =
    new _$GUserActivitiesData_Page_activities__asMessageActivitySerializer();
Serializer<GUserActivitiesData_Page_activities__asMessageActivity_messenger>
    _$gUserActivitiesDataPageActivitiesAsMessageActivityMessengerSerializer =
    new _$GUserActivitiesData_Page_activities__asMessageActivity_messengerSerializer();
Serializer<
        GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar>
    _$gUserActivitiesDataPageActivitiesAsMessageActivityMessengerAvatarSerializer =
    new _$GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarSerializer();

class _$GUserActivitiesDataSerializer
    implements StructuredSerializer<GUserActivitiesData> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData,
    _$GUserActivitiesData
  ];
  @override
  final String wireName = 'GUserActivitiesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserActivitiesData object,
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
            specifiedType: const FullType(GUserActivitiesData_Page)));
    }
    return result;
  }

  @override
  GUserActivitiesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserActivitiesDataBuilder();

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
                  specifiedType: const FullType(GUserActivitiesData_Page))!
              as GUserActivitiesData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserActivitiesData_PageSerializer
    implements StructuredSerializer<GUserActivitiesData_Page> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page,
    _$GUserActivitiesData_Page
  ];
  @override
  final String wireName = 'GUserActivitiesData_Page';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserActivitiesData_Page object,
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
            specifiedType: const FullType(GUserActivitiesData_Page_pageInfo)));
    }
    value = object.activities;
    if (value != null) {
      result
        ..add('activities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GUserActivitiesData_Page_activities)
            ])));
    }
    return result;
  }

  @override
  GUserActivitiesData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserActivitiesData_PageBuilder();

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
                      const FullType(GUserActivitiesData_Page_pageInfo))!
              as GUserActivitiesData_Page_pageInfo);
          break;
        case 'activities':
          result.activities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GUserActivitiesData_Page_activities)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserActivitiesData_Page_pageInfoSerializer
    implements StructuredSerializer<GUserActivitiesData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_pageInfo,
    _$GUserActivitiesData_Page_pageInfo
  ];
  @override
  final String wireName = 'GUserActivitiesData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserActivitiesData_Page_pageInfo object,
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
  GUserActivitiesData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserActivitiesData_Page_pageInfoBuilder();

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

class _$GUserActivitiesData_Page_activities__baseSerializer
    implements StructuredSerializer<GUserActivitiesData_Page_activities__base> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_activities__base,
    _$GUserActivitiesData_Page_activities__base
  ];
  @override
  final String wireName = 'GUserActivitiesData_Page_activities__base';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserActivitiesData_Page_activities__base object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUserActivitiesData_Page_activities__base deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserActivitiesData_Page_activities__baseBuilder();

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

class _$GUserActivitiesData_Page_activities__asTextActivitySerializer
    implements
        StructuredSerializer<
            GUserActivitiesData_Page_activities__asTextActivity> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_activities__asTextActivity,
    _$GUserActivitiesData_Page_activities__asTextActivity
  ];
  @override
  final String wireName = 'GUserActivitiesData_Page_activities__asTextActivity';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserActivitiesData_Page_activities__asTextActivity object,
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
                GUserActivitiesData_Page_activities__asTextActivity_user)));
    }
    return result;
  }

  @override
  GUserActivitiesData_Page_activities__asTextActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserActivitiesData_Page_activities__asTextActivityBuilder();

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
                      GUserActivitiesData_Page_activities__asTextActivity_user))!
              as GUserActivitiesData_Page_activities__asTextActivity_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserActivitiesData_Page_activities__asTextActivity_userSerializer
    implements
        StructuredSerializer<
            GUserActivitiesData_Page_activities__asTextActivity_user> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_activities__asTextActivity_user,
    _$GUserActivitiesData_Page_activities__asTextActivity_user
  ];
  @override
  final String wireName =
      'GUserActivitiesData_Page_activities__asTextActivity_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserActivitiesData_Page_activities__asTextActivity_user object,
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
                GUserActivitiesData_Page_activities__asTextActivity_user_avatar)));
    }
    return result;
  }

  @override
  GUserActivitiesData_Page_activities__asTextActivity_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserActivitiesData_Page_activities__asTextActivity_userBuilder();

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
                      GUserActivitiesData_Page_activities__asTextActivity_user_avatar))!
              as GUserActivitiesData_Page_activities__asTextActivity_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserActivitiesData_Page_activities__asTextActivity_user_avatarSerializer
    implements
        StructuredSerializer<
            GUserActivitiesData_Page_activities__asTextActivity_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_activities__asTextActivity_user_avatar,
    _$GUserActivitiesData_Page_activities__asTextActivity_user_avatar
  ];
  @override
  final String wireName =
      'GUserActivitiesData_Page_activities__asTextActivity_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserActivitiesData_Page_activities__asTextActivity_user_avatar object,
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
  GUserActivitiesData_Page_activities__asTextActivity_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder();

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

class _$GUserActivitiesData_Page_activities__asListActivitySerializer
    implements
        StructuredSerializer<
            GUserActivitiesData_Page_activities__asListActivity> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_activities__asListActivity,
    _$GUserActivitiesData_Page_activities__asListActivity
  ];
  @override
  final String wireName = 'GUserActivitiesData_Page_activities__asListActivity';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserActivitiesData_Page_activities__asListActivity object,
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
                GUserActivitiesData_Page_activities__asListActivity_user)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GUserActivitiesData_Page_activities__asListActivity_media)));
    }
    return result;
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserActivitiesData_Page_activities__asListActivityBuilder();

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
                      GUserActivitiesData_Page_activities__asListActivity_user))!
              as GUserActivitiesData_Page_activities__asListActivity_user);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUserActivitiesData_Page_activities__asListActivity_media))!
              as GUserActivitiesData_Page_activities__asListActivity_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserActivitiesData_Page_activities__asListActivity_userSerializer
    implements
        StructuredSerializer<
            GUserActivitiesData_Page_activities__asListActivity_user> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_activities__asListActivity_user,
    _$GUserActivitiesData_Page_activities__asListActivity_user
  ];
  @override
  final String wireName =
      'GUserActivitiesData_Page_activities__asListActivity_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserActivitiesData_Page_activities__asListActivity_user object,
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
                GUserActivitiesData_Page_activities__asListActivity_user_avatar)));
    }
    return result;
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserActivitiesData_Page_activities__asListActivity_userBuilder();

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
                      GUserActivitiesData_Page_activities__asListActivity_user_avatar))!
              as GUserActivitiesData_Page_activities__asListActivity_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserActivitiesData_Page_activities__asListActivity_user_avatarSerializer
    implements
        StructuredSerializer<
            GUserActivitiesData_Page_activities__asListActivity_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_activities__asListActivity_user_avatar,
    _$GUserActivitiesData_Page_activities__asListActivity_user_avatar
  ];
  @override
  final String wireName =
      'GUserActivitiesData_Page_activities__asListActivity_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserActivitiesData_Page_activities__asListActivity_user_avatar object,
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
  GUserActivitiesData_Page_activities__asListActivity_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder();

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

class _$GUserActivitiesData_Page_activities__asListActivity_mediaSerializer
    implements
        StructuredSerializer<
            GUserActivitiesData_Page_activities__asListActivity_media> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_activities__asListActivity_media,
    _$GUserActivitiesData_Page_activities__asListActivity_media
  ];
  @override
  final String wireName =
      'GUserActivitiesData_Page_activities__asListActivity_media';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserActivitiesData_Page_activities__asListActivity_media object,
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
                GUserActivitiesData_Page_activities__asListActivity_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GUserActivitiesData_Page_activities__asListActivity_media_coverImage)));
    }
    return result;
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserActivitiesData_Page_activities__asListActivity_mediaBuilder();

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
                      GUserActivitiesData_Page_activities__asListActivity_media_title))!
              as GUserActivitiesData_Page_activities__asListActivity_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUserActivitiesData_Page_activities__asListActivity_media_coverImage))!
              as GUserActivitiesData_Page_activities__asListActivity_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserActivitiesData_Page_activities__asListActivity_media_titleSerializer
    implements
        StructuredSerializer<
            GUserActivitiesData_Page_activities__asListActivity_media_title> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_activities__asListActivity_media_title,
    _$GUserActivitiesData_Page_activities__asListActivity_media_title
  ];
  @override
  final String wireName =
      'GUserActivitiesData_Page_activities__asListActivity_media_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserActivitiesData_Page_activities__asListActivity_media_title object,
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
  GUserActivitiesData_Page_activities__asListActivity_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder();

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

class _$GUserActivitiesData_Page_activities__asListActivity_media_coverImageSerializer
    implements
        StructuredSerializer<
            GUserActivitiesData_Page_activities__asListActivity_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_activities__asListActivity_media_coverImage,
    _$GUserActivitiesData_Page_activities__asListActivity_media_coverImage
  ];
  @override
  final String wireName =
      'GUserActivitiesData_Page_activities__asListActivity_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GUserActivitiesData_Page_activities__asListActivity_media_coverImage
          object,
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
  GUserActivitiesData_Page_activities__asListActivity_media_coverImage
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder();

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

class _$GUserActivitiesData_Page_activities__asMessageActivitySerializer
    implements
        StructuredSerializer<
            GUserActivitiesData_Page_activities__asMessageActivity> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_activities__asMessageActivity,
    _$GUserActivitiesData_Page_activities__asMessageActivity
  ];
  @override
  final String wireName =
      'GUserActivitiesData_Page_activities__asMessageActivity';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserActivitiesData_Page_activities__asMessageActivity object,
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
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i5.GActivityType)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isPrivate;
    if (value != null) {
      result
        ..add('isPrivate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.messenger;
    if (value != null) {
      result
        ..add('messenger')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GUserActivitiesData_Page_activities__asMessageActivity_messenger)));
    }
    return result;
  }

  @override
  GUserActivitiesData_Page_activities__asMessageActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserActivitiesData_Page_activities__asMessageActivityBuilder();

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
                  specifiedType: const FullType(_i5.GActivityType))
              as _i5.GActivityType?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'replyCount':
          result.replyCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'isPrivate':
          result.isPrivate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'messenger':
          result.messenger.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUserActivitiesData_Page_activities__asMessageActivity_messenger))!
              as GUserActivitiesData_Page_activities__asMessageActivity_messenger);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserActivitiesData_Page_activities__asMessageActivity_messengerSerializer
    implements
        StructuredSerializer<
            GUserActivitiesData_Page_activities__asMessageActivity_messenger> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_activities__asMessageActivity_messenger,
    _$GUserActivitiesData_Page_activities__asMessageActivity_messenger
  ];
  @override
  final String wireName =
      'GUserActivitiesData_Page_activities__asMessageActivity_messenger';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserActivitiesData_Page_activities__asMessageActivity_messenger object,
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
                GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar)));
    }
    return result;
  }

  @override
  GUserActivitiesData_Page_activities__asMessageActivity_messenger deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder();

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
                      GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar))!
              as GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarSerializer
    implements
        StructuredSerializer<
            GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar> {
  @override
  final Iterable<Type> types = const [
    GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar,
    _$GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar
  ];
  @override
  final String wireName =
      'GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar
          object,
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
  GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder();

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

class _$GUserActivitiesData extends GUserActivitiesData {
  @override
  final String G__typename;
  @override
  final GUserActivitiesData_Page? Page;

  factory _$GUserActivitiesData(
          [void Function(GUserActivitiesDataBuilder)? updates]) =>
      (new GUserActivitiesDataBuilder()..update(updates))._build();

  _$GUserActivitiesData._({required this.G__typename, this.Page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserActivitiesData', 'G__typename');
  }

  @override
  GUserActivitiesData rebuild(
          void Function(GUserActivitiesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesDataBuilder toBuilder() =>
      new GUserActivitiesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserActivitiesData &&
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
    return (newBuiltValueToStringHelper(r'GUserActivitiesData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GUserActivitiesDataBuilder
    implements Builder<GUserActivitiesData, GUserActivitiesDataBuilder> {
  _$GUserActivitiesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserActivitiesData_PageBuilder? _Page;
  GUserActivitiesData_PageBuilder get Page =>
      _$this._Page ??= new GUserActivitiesData_PageBuilder();
  set Page(GUserActivitiesData_PageBuilder? Page) => _$this._Page = Page;

  GUserActivitiesDataBuilder() {
    GUserActivitiesData._initializeBuilder(this);
  }

  GUserActivitiesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserActivitiesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserActivitiesData;
  }

  @override
  void update(void Function(GUserActivitiesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData build() => _build();

  _$GUserActivitiesData _build() {
    _$GUserActivitiesData _$result;
    try {
      _$result = _$v ??
          new _$GUserActivitiesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserActivitiesData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserActivitiesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page extends GUserActivitiesData_Page {
  @override
  final String G__typename;
  @override
  final GUserActivitiesData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GUserActivitiesData_Page_activities?>? activities;

  factory _$GUserActivitiesData_Page(
          [void Function(GUserActivitiesData_PageBuilder)? updates]) =>
      (new GUserActivitiesData_PageBuilder()..update(updates))._build();

  _$GUserActivitiesData_Page._(
      {required this.G__typename, this.pageInfo, this.activities})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserActivitiesData_Page', 'G__typename');
  }

  @override
  GUserActivitiesData_Page rebuild(
          void Function(GUserActivitiesData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_PageBuilder toBuilder() =>
      new GUserActivitiesData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserActivitiesData_Page &&
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
    return (newBuiltValueToStringHelper(r'GUserActivitiesData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('activities', activities))
        .toString();
  }
}

class GUserActivitiesData_PageBuilder
    implements
        Builder<GUserActivitiesData_Page, GUserActivitiesData_PageBuilder> {
  _$GUserActivitiesData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserActivitiesData_Page_pageInfoBuilder? _pageInfo;
  GUserActivitiesData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GUserActivitiesData_Page_pageInfoBuilder();
  set pageInfo(GUserActivitiesData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GUserActivitiesData_Page_activities?>? _activities;
  ListBuilder<GUserActivitiesData_Page_activities?> get activities =>
      _$this._activities ??=
          new ListBuilder<GUserActivitiesData_Page_activities?>();
  set activities(
          ListBuilder<GUserActivitiesData_Page_activities?>? activities) =>
      _$this._activities = activities;

  GUserActivitiesData_PageBuilder() {
    GUserActivitiesData_Page._initializeBuilder(this);
  }

  GUserActivitiesData_PageBuilder get _$this {
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
  void replace(GUserActivitiesData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserActivitiesData_Page;
  }

  @override
  void update(void Function(GUserActivitiesData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page build() => _build();

  _$GUserActivitiesData_Page _build() {
    _$GUserActivitiesData_Page _$result;
    try {
      _$result = _$v ??
          new _$GUserActivitiesData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserActivitiesData_Page', 'G__typename'),
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
            r'GUserActivitiesData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_pageInfo
    extends GUserActivitiesData_Page_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GUserActivitiesData_Page_pageInfo(
          [void Function(GUserActivitiesData_Page_pageInfoBuilder)? updates]) =>
      (new GUserActivitiesData_Page_pageInfoBuilder()..update(updates))
          ._build();

  _$GUserActivitiesData_Page_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserActivitiesData_Page_pageInfo', 'G__typename');
  }

  @override
  GUserActivitiesData_Page_pageInfo rebuild(
          void Function(GUserActivitiesData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_pageInfoBuilder toBuilder() =>
      new GUserActivitiesData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserActivitiesData_Page_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GUserActivitiesData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GUserActivitiesData_Page_pageInfoBuilder
    implements
        Builder<GUserActivitiesData_Page_pageInfo,
            GUserActivitiesData_Page_pageInfoBuilder> {
  _$GUserActivitiesData_Page_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GUserActivitiesData_Page_pageInfoBuilder() {
    GUserActivitiesData_Page_pageInfo._initializeBuilder(this);
  }

  GUserActivitiesData_Page_pageInfoBuilder get _$this {
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
  void replace(GUserActivitiesData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserActivitiesData_Page_pageInfo;
  }

  @override
  void update(
      void Function(GUserActivitiesData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_pageInfo build() => _build();

  _$GUserActivitiesData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GUserActivitiesData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUserActivitiesData_Page_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_activities__base
    extends GUserActivitiesData_Page_activities__base {
  @override
  final String G__typename;

  factory _$GUserActivitiesData_Page_activities__base(
          [void Function(GUserActivitiesData_Page_activities__baseBuilder)?
              updates]) =>
      (new GUserActivitiesData_Page_activities__baseBuilder()..update(updates))
          ._build();

  _$GUserActivitiesData_Page_activities__base._({required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserActivitiesData_Page_activities__base', 'G__typename');
  }

  @override
  GUserActivitiesData_Page_activities__base rebuild(
          void Function(GUserActivitiesData_Page_activities__baseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_activities__baseBuilder toBuilder() =>
      new GUserActivitiesData_Page_activities__baseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserActivitiesData_Page_activities__base &&
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
            r'GUserActivitiesData_Page_activities__base')
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GUserActivitiesData_Page_activities__baseBuilder
    implements
        Builder<GUserActivitiesData_Page_activities__base,
            GUserActivitiesData_Page_activities__baseBuilder> {
  _$GUserActivitiesData_Page_activities__base? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserActivitiesData_Page_activities__baseBuilder() {
    GUserActivitiesData_Page_activities__base._initializeBuilder(this);
  }

  GUserActivitiesData_Page_activities__baseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserActivitiesData_Page_activities__base other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserActivitiesData_Page_activities__base;
  }

  @override
  void update(
      void Function(GUserActivitiesData_Page_activities__baseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_activities__base build() => _build();

  _$GUserActivitiesData_Page_activities__base _build() {
    final _$result = _$v ??
        new _$GUserActivitiesData_Page_activities__base._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUserActivitiesData_Page_activities__base', 'G__typename'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_activities__asTextActivity
    extends GUserActivitiesData_Page_activities__asTextActivity {
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
  final GUserActivitiesData_Page_activities__asTextActivity_user? user;

  factory _$GUserActivitiesData_Page_activities__asTextActivity(
          [void Function(
                  GUserActivitiesData_Page_activities__asTextActivityBuilder)?
              updates]) =>
      (new GUserActivitiesData_Page_activities__asTextActivityBuilder()
            ..update(updates))
          ._build();

  _$GUserActivitiesData_Page_activities__asTextActivity._(
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
        r'GUserActivitiesData_Page_activities__asTextActivity', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserActivitiesData_Page_activities__asTextActivity', 'id');
    BuiltValueNullFieldError.checkNotNull(replyCount,
        r'GUserActivitiesData_Page_activities__asTextActivity', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(likeCount,
        r'GUserActivitiesData_Page_activities__asTextActivity', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(createdAt,
        r'GUserActivitiesData_Page_activities__asTextActivity', 'createdAt');
  }

  @override
  GUserActivitiesData_Page_activities__asTextActivity rebuild(
          void Function(
                  GUserActivitiesData_Page_activities__asTextActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_activities__asTextActivityBuilder toBuilder() =>
      new GUserActivitiesData_Page_activities__asTextActivityBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserActivitiesData_Page_activities__asTextActivity &&
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
            r'GUserActivitiesData_Page_activities__asTextActivity')
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

class GUserActivitiesData_Page_activities__asTextActivityBuilder
    implements
        Builder<GUserActivitiesData_Page_activities__asTextActivity,
            GUserActivitiesData_Page_activities__asTextActivityBuilder> {
  _$GUserActivitiesData_Page_activities__asTextActivity? _$v;

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

  GUserActivitiesData_Page_activities__asTextActivity_userBuilder? _user;
  GUserActivitiesData_Page_activities__asTextActivity_userBuilder get user =>
      _$this._user ??=
          new GUserActivitiesData_Page_activities__asTextActivity_userBuilder();
  set user(
          GUserActivitiesData_Page_activities__asTextActivity_userBuilder?
              user) =>
      _$this._user = user;

  GUserActivitiesData_Page_activities__asTextActivityBuilder() {
    GUserActivitiesData_Page_activities__asTextActivity._initializeBuilder(
        this);
  }

  GUserActivitiesData_Page_activities__asTextActivityBuilder get _$this {
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
  void replace(GUserActivitiesData_Page_activities__asTextActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserActivitiesData_Page_activities__asTextActivity;
  }

  @override
  void update(
      void Function(GUserActivitiesData_Page_activities__asTextActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_activities__asTextActivity build() => _build();

  _$GUserActivitiesData_Page_activities__asTextActivity _build() {
    _$GUserActivitiesData_Page_activities__asTextActivity _$result;
    try {
      _$result = _$v ??
          new _$GUserActivitiesData_Page_activities__asTextActivity._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserActivitiesData_Page_activities__asTextActivity',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserActivitiesData_Page_activities__asTextActivity', 'id'),
              userId: userId,
              type: type,
              replyCount: BuiltValueNullFieldError.checkNotNull(
                  replyCount,
                  r'GUserActivitiesData_Page_activities__asTextActivity',
                  'replyCount'),
              text: text,
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(
                  likeCount,
                  r'GUserActivitiesData_Page_activities__asTextActivity',
                  'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt,
                  r'GUserActivitiesData_Page_activities__asTextActivity',
                  'createdAt'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserActivitiesData_Page_activities__asTextActivity',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_activities__asTextActivity_user
    extends GUserActivitiesData_Page_activities__asTextActivity_user {
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
  final GUserActivitiesData_Page_activities__asTextActivity_user_avatar? avatar;

  factory _$GUserActivitiesData_Page_activities__asTextActivity_user(
          [void Function(
                  GUserActivitiesData_Page_activities__asTextActivity_userBuilder)?
              updates]) =>
      (new GUserActivitiesData_Page_activities__asTextActivity_userBuilder()
            ..update(updates))
          ._build();

  _$GUserActivitiesData_Page_activities__asTextActivity_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUserActivitiesData_Page_activities__asTextActivity_user',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserActivitiesData_Page_activities__asTextActivity_user', 'id');
    BuiltValueNullFieldError.checkNotNull(name,
        r'GUserActivitiesData_Page_activities__asTextActivity_user', 'name');
  }

  @override
  GUserActivitiesData_Page_activities__asTextActivity_user rebuild(
          void Function(
                  GUserActivitiesData_Page_activities__asTextActivity_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_activities__asTextActivity_userBuilder toBuilder() =>
      new GUserActivitiesData_Page_activities__asTextActivity_userBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserActivitiesData_Page_activities__asTextActivity_user &&
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
            r'GUserActivitiesData_Page_activities__asTextActivity_user')
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

class GUserActivitiesData_Page_activities__asTextActivity_userBuilder
    implements
        Builder<GUserActivitiesData_Page_activities__asTextActivity_user,
            GUserActivitiesData_Page_activities__asTextActivity_userBuilder> {
  _$GUserActivitiesData_Page_activities__asTextActivity_user? _$v;

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

  GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder?
      _avatar;
  GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder
      get avatar => _$this._avatar ??=
          new GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder();
  set avatar(
          GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder?
              avatar) =>
      _$this._avatar = avatar;

  GUserActivitiesData_Page_activities__asTextActivity_userBuilder() {
    GUserActivitiesData_Page_activities__asTextActivity_user._initializeBuilder(
        this);
  }

  GUserActivitiesData_Page_activities__asTextActivity_userBuilder get _$this {
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
  void replace(GUserActivitiesData_Page_activities__asTextActivity_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserActivitiesData_Page_activities__asTextActivity_user;
  }

  @override
  void update(
      void Function(
              GUserActivitiesData_Page_activities__asTextActivity_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_activities__asTextActivity_user build() => _build();

  _$GUserActivitiesData_Page_activities__asTextActivity_user _build() {
    _$GUserActivitiesData_Page_activities__asTextActivity_user _$result;
    try {
      _$result = _$v ??
          new _$GUserActivitiesData_Page_activities__asTextActivity_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserActivitiesData_Page_activities__asTextActivity_user',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GUserActivitiesData_Page_activities__asTextActivity_user',
                  'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'GUserActivitiesData_Page_activities__asTextActivity_user',
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
            r'GUserActivitiesData_Page_activities__asTextActivity_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_activities__asTextActivity_user_avatar
    extends GUserActivitiesData_Page_activities__asTextActivity_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GUserActivitiesData_Page_activities__asTextActivity_user_avatar(
          [void Function(
                  GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder)?
              updates]) =>
      (new GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GUserActivitiesData_Page_activities__asTextActivity_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUserActivitiesData_Page_activities__asTextActivity_user_avatar',
        'G__typename');
  }

  @override
  GUserActivitiesData_Page_activities__asTextActivity_user_avatar rebuild(
          void Function(
                  GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder
      toBuilder() =>
          new GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GUserActivitiesData_Page_activities__asTextActivity_user_avatar &&
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
            r'GUserActivitiesData_Page_activities__asTextActivity_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder
    implements
        Builder<GUserActivitiesData_Page_activities__asTextActivity_user_avatar,
            GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder> {
  _$GUserActivitiesData_Page_activities__asTextActivity_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder() {
    GUserActivitiesData_Page_activities__asTextActivity_user_avatar
        ._initializeBuilder(this);
  }

  GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder
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
      GUserActivitiesData_Page_activities__asTextActivity_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GUserActivitiesData_Page_activities__asTextActivity_user_avatar;
  }

  @override
  void update(
      void Function(
              GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_activities__asTextActivity_user_avatar build() =>
      _build();

  _$GUserActivitiesData_Page_activities__asTextActivity_user_avatar _build() {
    final _$result = _$v ??
        new _$GUserActivitiesData_Page_activities__asTextActivity_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUserActivitiesData_Page_activities__asTextActivity_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_activities__asListActivity
    extends GUserActivitiesData_Page_activities__asListActivity {
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
  final GUserActivitiesData_Page_activities__asListActivity_user? user;
  @override
  final GUserActivitiesData_Page_activities__asListActivity_media? media;

  factory _$GUserActivitiesData_Page_activities__asListActivity(
          [void Function(
                  GUserActivitiesData_Page_activities__asListActivityBuilder)?
              updates]) =>
      (new GUserActivitiesData_Page_activities__asListActivityBuilder()
            ..update(updates))
          ._build();

  _$GUserActivitiesData_Page_activities__asListActivity._(
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
        r'GUserActivitiesData_Page_activities__asListActivity', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserActivitiesData_Page_activities__asListActivity', 'id');
    BuiltValueNullFieldError.checkNotNull(replyCount,
        r'GUserActivitiesData_Page_activities__asListActivity', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(likeCount,
        r'GUserActivitiesData_Page_activities__asListActivity', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(createdAt,
        r'GUserActivitiesData_Page_activities__asListActivity', 'createdAt');
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity rebuild(
          void Function(
                  GUserActivitiesData_Page_activities__asListActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_activities__asListActivityBuilder toBuilder() =>
      new GUserActivitiesData_Page_activities__asListActivityBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserActivitiesData_Page_activities__asListActivity &&
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
            r'GUserActivitiesData_Page_activities__asListActivity')
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

class GUserActivitiesData_Page_activities__asListActivityBuilder
    implements
        Builder<GUserActivitiesData_Page_activities__asListActivity,
            GUserActivitiesData_Page_activities__asListActivityBuilder> {
  _$GUserActivitiesData_Page_activities__asListActivity? _$v;

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

  GUserActivitiesData_Page_activities__asListActivity_userBuilder? _user;
  GUserActivitiesData_Page_activities__asListActivity_userBuilder get user =>
      _$this._user ??=
          new GUserActivitiesData_Page_activities__asListActivity_userBuilder();
  set user(
          GUserActivitiesData_Page_activities__asListActivity_userBuilder?
              user) =>
      _$this._user = user;

  GUserActivitiesData_Page_activities__asListActivity_mediaBuilder? _media;
  GUserActivitiesData_Page_activities__asListActivity_mediaBuilder get media =>
      _$this._media ??=
          new GUserActivitiesData_Page_activities__asListActivity_mediaBuilder();
  set media(
          GUserActivitiesData_Page_activities__asListActivity_mediaBuilder?
              media) =>
      _$this._media = media;

  GUserActivitiesData_Page_activities__asListActivityBuilder() {
    GUserActivitiesData_Page_activities__asListActivity._initializeBuilder(
        this);
  }

  GUserActivitiesData_Page_activities__asListActivityBuilder get _$this {
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
  void replace(GUserActivitiesData_Page_activities__asListActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserActivitiesData_Page_activities__asListActivity;
  }

  @override
  void update(
      void Function(GUserActivitiesData_Page_activities__asListActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity build() => _build();

  _$GUserActivitiesData_Page_activities__asListActivity _build() {
    _$GUserActivitiesData_Page_activities__asListActivity _$result;
    try {
      _$result = _$v ??
          new _$GUserActivitiesData_Page_activities__asListActivity._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserActivitiesData_Page_activities__asListActivity',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserActivitiesData_Page_activities__asListActivity', 'id'),
              userId: userId,
              type: type,
              status: status,
              progress: progress,
              replyCount: BuiltValueNullFieldError.checkNotNull(
                  replyCount,
                  r'GUserActivitiesData_Page_activities__asListActivity',
                  'replyCount'),
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(
                  likeCount,
                  r'GUserActivitiesData_Page_activities__asListActivity',
                  'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt,
                  r'GUserActivitiesData_Page_activities__asListActivity',
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
            r'GUserActivitiesData_Page_activities__asListActivity',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_activities__asListActivity_user
    extends GUserActivitiesData_Page_activities__asListActivity_user {
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
  final GUserActivitiesData_Page_activities__asListActivity_user_avatar? avatar;

  factory _$GUserActivitiesData_Page_activities__asListActivity_user(
          [void Function(
                  GUserActivitiesData_Page_activities__asListActivity_userBuilder)?
              updates]) =>
      (new GUserActivitiesData_Page_activities__asListActivity_userBuilder()
            ..update(updates))
          ._build();

  _$GUserActivitiesData_Page_activities__asListActivity_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUserActivitiesData_Page_activities__asListActivity_user',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserActivitiesData_Page_activities__asListActivity_user', 'id');
    BuiltValueNullFieldError.checkNotNull(name,
        r'GUserActivitiesData_Page_activities__asListActivity_user', 'name');
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity_user rebuild(
          void Function(
                  GUserActivitiesData_Page_activities__asListActivity_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_activities__asListActivity_userBuilder toBuilder() =>
      new GUserActivitiesData_Page_activities__asListActivity_userBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserActivitiesData_Page_activities__asListActivity_user &&
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
            r'GUserActivitiesData_Page_activities__asListActivity_user')
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

class GUserActivitiesData_Page_activities__asListActivity_userBuilder
    implements
        Builder<GUserActivitiesData_Page_activities__asListActivity_user,
            GUserActivitiesData_Page_activities__asListActivity_userBuilder> {
  _$GUserActivitiesData_Page_activities__asListActivity_user? _$v;

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

  GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder?
      _avatar;
  GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder
      get avatar => _$this._avatar ??=
          new GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder();
  set avatar(
          GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder?
              avatar) =>
      _$this._avatar = avatar;

  GUserActivitiesData_Page_activities__asListActivity_userBuilder() {
    GUserActivitiesData_Page_activities__asListActivity_user._initializeBuilder(
        this);
  }

  GUserActivitiesData_Page_activities__asListActivity_userBuilder get _$this {
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
  void replace(GUserActivitiesData_Page_activities__asListActivity_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserActivitiesData_Page_activities__asListActivity_user;
  }

  @override
  void update(
      void Function(
              GUserActivitiesData_Page_activities__asListActivity_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity_user build() => _build();

  _$GUserActivitiesData_Page_activities__asListActivity_user _build() {
    _$GUserActivitiesData_Page_activities__asListActivity_user _$result;
    try {
      _$result = _$v ??
          new _$GUserActivitiesData_Page_activities__asListActivity_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserActivitiesData_Page_activities__asListActivity_user',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GUserActivitiesData_Page_activities__asListActivity_user',
                  'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'GUserActivitiesData_Page_activities__asListActivity_user',
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
            r'GUserActivitiesData_Page_activities__asListActivity_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_activities__asListActivity_user_avatar
    extends GUserActivitiesData_Page_activities__asListActivity_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GUserActivitiesData_Page_activities__asListActivity_user_avatar(
          [void Function(
                  GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder)?
              updates]) =>
      (new GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GUserActivitiesData_Page_activities__asListActivity_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUserActivitiesData_Page_activities__asListActivity_user_avatar',
        'G__typename');
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity_user_avatar rebuild(
          void Function(
                  GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder
      toBuilder() =>
          new GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GUserActivitiesData_Page_activities__asListActivity_user_avatar &&
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
            r'GUserActivitiesData_Page_activities__asListActivity_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder
    implements
        Builder<GUserActivitiesData_Page_activities__asListActivity_user_avatar,
            GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder> {
  _$GUserActivitiesData_Page_activities__asListActivity_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder() {
    GUserActivitiesData_Page_activities__asListActivity_user_avatar
        ._initializeBuilder(this);
  }

  GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder
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
      GUserActivitiesData_Page_activities__asListActivity_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GUserActivitiesData_Page_activities__asListActivity_user_avatar;
  }

  @override
  void update(
      void Function(
              GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity_user_avatar build() =>
      _build();

  _$GUserActivitiesData_Page_activities__asListActivity_user_avatar _build() {
    final _$result = _$v ??
        new _$GUserActivitiesData_Page_activities__asListActivity_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUserActivitiesData_Page_activities__asListActivity_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_activities__asListActivity_media
    extends GUserActivitiesData_Page_activities__asListActivity_media {
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
  final GUserActivitiesData_Page_activities__asListActivity_media_title? title;
  @override
  final GUserActivitiesData_Page_activities__asListActivity_media_coverImage?
      coverImage;

  factory _$GUserActivitiesData_Page_activities__asListActivity_media(
          [void Function(
                  GUserActivitiesData_Page_activities__asListActivity_mediaBuilder)?
              updates]) =>
      (new GUserActivitiesData_Page_activities__asListActivity_mediaBuilder()
            ..update(updates))
          ._build();

  _$GUserActivitiesData_Page_activities__asListActivity_media._(
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
        r'GUserActivitiesData_Page_activities__asListActivity_media',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserActivitiesData_Page_activities__asListActivity_media', 'id');
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity_media rebuild(
          void Function(
                  GUserActivitiesData_Page_activities__asListActivity_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_activities__asListActivity_mediaBuilder
      toBuilder() =>
          new GUserActivitiesData_Page_activities__asListActivity_mediaBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserActivitiesData_Page_activities__asListActivity_media &&
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
            r'GUserActivitiesData_Page_activities__asListActivity_media')
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

class GUserActivitiesData_Page_activities__asListActivity_mediaBuilder
    implements
        Builder<GUserActivitiesData_Page_activities__asListActivity_media,
            GUserActivitiesData_Page_activities__asListActivity_mediaBuilder> {
  _$GUserActivitiesData_Page_activities__asListActivity_media? _$v;

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

  GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder?
      _title;
  GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder
      get title => _$this._title ??=
          new GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder();
  set title(
          GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder?
              title) =>
      _$this._title = title;

  GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder?
      _coverImage;
  GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder();
  set coverImage(
          GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GUserActivitiesData_Page_activities__asListActivity_mediaBuilder() {
    GUserActivitiesData_Page_activities__asListActivity_media
        ._initializeBuilder(this);
  }

  GUserActivitiesData_Page_activities__asListActivity_mediaBuilder get _$this {
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
  void replace(
      GUserActivitiesData_Page_activities__asListActivity_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserActivitiesData_Page_activities__asListActivity_media;
  }

  @override
  void update(
      void Function(
              GUserActivitiesData_Page_activities__asListActivity_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity_media build() => _build();

  _$GUserActivitiesData_Page_activities__asListActivity_media _build() {
    _$GUserActivitiesData_Page_activities__asListActivity_media _$result;
    try {
      _$result = _$v ??
          new _$GUserActivitiesData_Page_activities__asListActivity_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserActivitiesData_Page_activities__asListActivity_media',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GUserActivitiesData_Page_activities__asListActivity_media',
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
            r'GUserActivitiesData_Page_activities__asListActivity_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_activities__asListActivity_media_title
    extends GUserActivitiesData_Page_activities__asListActivity_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GUserActivitiesData_Page_activities__asListActivity_media_title(
          [void Function(
                  GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder)?
              updates]) =>
      (new GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GUserActivitiesData_Page_activities__asListActivity_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUserActivitiesData_Page_activities__asListActivity_media_title',
        'G__typename');
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity_media_title rebuild(
          void Function(
                  GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder
      toBuilder() =>
          new GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GUserActivitiesData_Page_activities__asListActivity_media_title &&
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
            r'GUserActivitiesData_Page_activities__asListActivity_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder
    implements
        Builder<GUserActivitiesData_Page_activities__asListActivity_media_title,
            GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder> {
  _$GUserActivitiesData_Page_activities__asListActivity_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder() {
    GUserActivitiesData_Page_activities__asListActivity_media_title
        ._initializeBuilder(this);
  }

  GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder
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
      GUserActivitiesData_Page_activities__asListActivity_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GUserActivitiesData_Page_activities__asListActivity_media_title;
  }

  @override
  void update(
      void Function(
              GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity_media_title build() =>
      _build();

  _$GUserActivitiesData_Page_activities__asListActivity_media_title _build() {
    final _$result = _$v ??
        new _$GUserActivitiesData_Page_activities__asListActivity_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUserActivitiesData_Page_activities__asListActivity_media_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_activities__asListActivity_media_coverImage
    extends GUserActivitiesData_Page_activities__asListActivity_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GUserActivitiesData_Page_activities__asListActivity_media_coverImage(
          [void Function(
                  GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder)?
              updates]) =>
      (new GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GUserActivitiesData_Page_activities__asListActivity_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUserActivitiesData_Page_activities__asListActivity_media_coverImage',
        'G__typename');
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity_media_coverImage rebuild(
          void Function(
                  GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder
      toBuilder() =>
          new GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GUserActivitiesData_Page_activities__asListActivity_media_coverImage &&
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
            r'GUserActivitiesData_Page_activities__asListActivity_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder
    implements
        Builder<
            GUserActivitiesData_Page_activities__asListActivity_media_coverImage,
            GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder> {
  _$GUserActivitiesData_Page_activities__asListActivity_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder() {
    GUserActivitiesData_Page_activities__asListActivity_media_coverImage
        ._initializeBuilder(this);
  }

  GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder
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
      GUserActivitiesData_Page_activities__asListActivity_media_coverImage
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GUserActivitiesData_Page_activities__asListActivity_media_coverImage;
  }

  @override
  void update(
      void Function(
              GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_activities__asListActivity_media_coverImage
      build() => _build();

  _$GUserActivitiesData_Page_activities__asListActivity_media_coverImage
      _build() {
    final _$result = _$v ??
        new _$GUserActivitiesData_Page_activities__asListActivity_media_coverImage
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUserActivitiesData_Page_activities__asListActivity_media_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_activities__asMessageActivity
    extends GUserActivitiesData_Page_activities__asMessageActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i5.GActivityType? type;
  @override
  final String? message;
  @override
  final int replyCount;
  @override
  final bool? isPrivate;
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
  final int? userId;
  @override
  final GUserActivitiesData_Page_activities__asMessageActivity_messenger?
      messenger;

  factory _$GUserActivitiesData_Page_activities__asMessageActivity(
          [void Function(
                  GUserActivitiesData_Page_activities__asMessageActivityBuilder)?
              updates]) =>
      (new GUserActivitiesData_Page_activities__asMessageActivityBuilder()
            ..update(updates))
          ._build();

  _$GUserActivitiesData_Page_activities__asMessageActivity._(
      {required this.G__typename,
      required this.id,
      this.type,
      this.message,
      required this.replyCount,
      this.isPrivate,
      this.isLocked,
      this.isSubscribed,
      this.isLiked,
      required this.likeCount,
      required this.createdAt,
      this.userId,
      this.messenger})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUserActivitiesData_Page_activities__asMessageActivity',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserActivitiesData_Page_activities__asMessageActivity', 'id');
    BuiltValueNullFieldError.checkNotNull(
        replyCount,
        r'GUserActivitiesData_Page_activities__asMessageActivity',
        'replyCount');
    BuiltValueNullFieldError.checkNotNull(likeCount,
        r'GUserActivitiesData_Page_activities__asMessageActivity', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(createdAt,
        r'GUserActivitiesData_Page_activities__asMessageActivity', 'createdAt');
  }

  @override
  GUserActivitiesData_Page_activities__asMessageActivity rebuild(
          void Function(
                  GUserActivitiesData_Page_activities__asMessageActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_activities__asMessageActivityBuilder toBuilder() =>
      new GUserActivitiesData_Page_activities__asMessageActivityBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserActivitiesData_Page_activities__asMessageActivity &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        message == other.message &&
        replyCount == other.replyCount &&
        isPrivate == other.isPrivate &&
        isLocked == other.isLocked &&
        isSubscribed == other.isSubscribed &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount &&
        createdAt == other.createdAt &&
        userId == other.userId &&
        messenger == other.messenger;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, replyCount.hashCode);
    _$hash = $jc(_$hash, isPrivate.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jc(_$hash, isSubscribed.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, messenger.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserActivitiesData_Page_activities__asMessageActivity')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('message', message)
          ..add('replyCount', replyCount)
          ..add('isPrivate', isPrivate)
          ..add('isLocked', isLocked)
          ..add('isSubscribed', isSubscribed)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount)
          ..add('createdAt', createdAt)
          ..add('userId', userId)
          ..add('messenger', messenger))
        .toString();
  }
}

class GUserActivitiesData_Page_activities__asMessageActivityBuilder
    implements
        Builder<GUserActivitiesData_Page_activities__asMessageActivity,
            GUserActivitiesData_Page_activities__asMessageActivityBuilder> {
  _$GUserActivitiesData_Page_activities__asMessageActivity? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i5.GActivityType? _type;
  _i5.GActivityType? get type => _$this._type;
  set type(_i5.GActivityType? type) => _$this._type = type;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _replyCount;
  int? get replyCount => _$this._replyCount;
  set replyCount(int? replyCount) => _$this._replyCount = replyCount;

  bool? _isPrivate;
  bool? get isPrivate => _$this._isPrivate;
  set isPrivate(bool? isPrivate) => _$this._isPrivate = isPrivate;

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

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder?
      _messenger;
  GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder
      get messenger => _$this._messenger ??=
          new GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder();
  set messenger(
          GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder?
              messenger) =>
      _$this._messenger = messenger;

  GUserActivitiesData_Page_activities__asMessageActivityBuilder() {
    GUserActivitiesData_Page_activities__asMessageActivity._initializeBuilder(
        this);
  }

  GUserActivitiesData_Page_activities__asMessageActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _message = $v.message;
      _replyCount = $v.replyCount;
      _isPrivate = $v.isPrivate;
      _isLocked = $v.isLocked;
      _isSubscribed = $v.isSubscribed;
      _isLiked = $v.isLiked;
      _likeCount = $v.likeCount;
      _createdAt = $v.createdAt;
      _userId = $v.userId;
      _messenger = $v.messenger?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserActivitiesData_Page_activities__asMessageActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserActivitiesData_Page_activities__asMessageActivity;
  }

  @override
  void update(
      void Function(
              GUserActivitiesData_Page_activities__asMessageActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_activities__asMessageActivity build() => _build();

  _$GUserActivitiesData_Page_activities__asMessageActivity _build() {
    _$GUserActivitiesData_Page_activities__asMessageActivity _$result;
    try {
      _$result = _$v ??
          new _$GUserActivitiesData_Page_activities__asMessageActivity._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserActivitiesData_Page_activities__asMessageActivity',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserActivitiesData_Page_activities__asMessageActivity', 'id'),
              type: type,
              message: message,
              replyCount: BuiltValueNullFieldError.checkNotNull(
                  replyCount,
                  r'GUserActivitiesData_Page_activities__asMessageActivity',
                  'replyCount'),
              isPrivate: isPrivate,
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(
                  likeCount,
                  r'GUserActivitiesData_Page_activities__asMessageActivity',
                  'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt,
                  r'GUserActivitiesData_Page_activities__asMessageActivity',
                  'createdAt'),
              userId: userId,
              messenger: _messenger?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messenger';
        _messenger?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserActivitiesData_Page_activities__asMessageActivity',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_activities__asMessageActivity_messenger
    extends GUserActivitiesData_Page_activities__asMessageActivity_messenger {
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
  final GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar?
      avatar;

  factory _$GUserActivitiesData_Page_activities__asMessageActivity_messenger(
          [void Function(
                  GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder)?
              updates]) =>
      (new GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder()
            ..update(updates))
          ._build();

  _$GUserActivitiesData_Page_activities__asMessageActivity_messenger._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUserActivitiesData_Page_activities__asMessageActivity_messenger',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GUserActivitiesData_Page_activities__asMessageActivity_messenger',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'GUserActivitiesData_Page_activities__asMessageActivity_messenger',
        'name');
  }

  @override
  GUserActivitiesData_Page_activities__asMessageActivity_messenger rebuild(
          void Function(
                  GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder
      toBuilder() =>
          new GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GUserActivitiesData_Page_activities__asMessageActivity_messenger &&
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
            r'GUserActivitiesData_Page_activities__asMessageActivity_messenger')
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

class GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder
    implements
        Builder<
            GUserActivitiesData_Page_activities__asMessageActivity_messenger,
            GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder> {
  _$GUserActivitiesData_Page_activities__asMessageActivity_messenger? _$v;

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

  GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder?
      _avatar;
  GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder
      get avatar => _$this._avatar ??=
          new GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder();
  set avatar(
          GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder?
              avatar) =>
      _$this._avatar = avatar;

  GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder() {
    GUserActivitiesData_Page_activities__asMessageActivity_messenger
        ._initializeBuilder(this);
  }

  GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder
      get _$this {
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
  void replace(
      GUserActivitiesData_Page_activities__asMessageActivity_messenger other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GUserActivitiesData_Page_activities__asMessageActivity_messenger;
  }

  @override
  void update(
      void Function(
              GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_activities__asMessageActivity_messenger build() =>
      _build();

  _$GUserActivitiesData_Page_activities__asMessageActivity_messenger _build() {
    _$GUserActivitiesData_Page_activities__asMessageActivity_messenger _$result;
    try {
      _$result = _$v ??
          new _$GUserActivitiesData_Page_activities__asMessageActivity_messenger._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserActivitiesData_Page_activities__asMessageActivity_messenger',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GUserActivitiesData_Page_activities__asMessageActivity_messenger', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'GUserActivitiesData_Page_activities__asMessageActivity_messenger',
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
            r'GUserActivitiesData_Page_activities__asMessageActivity_messenger',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar
    extends GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar(
          [void Function(
                  GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder)?
              updates]) =>
      (new GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder()
            ..update(updates))
          ._build();

  _$GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar',
        'G__typename');
  }

  @override
  GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar rebuild(
          void Function(
                  GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder
      toBuilder() =>
          new GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar &&
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
            r'GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder
    implements
        Builder<
            GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar,
            GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder> {
  _$GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder() {
    GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar
        ._initializeBuilder(this);
  }

  GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder
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
      GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar;
  }

  @override
  void update(
      void Function(
              GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar
      build() => _build();

  _$GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar
      _build() {
    final _$result = _$v ??
        new _$GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
