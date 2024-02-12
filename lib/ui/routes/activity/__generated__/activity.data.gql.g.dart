// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GActivityData> _$gActivityDataSerializer =
    new _$GActivityDataSerializer();
Serializer<GActivityData_activity__base> _$gActivityDataActivityBaseSerializer =
    new _$GActivityData_activity__baseSerializer();
Serializer<GActivityData_activity__asTextActivity>
    _$gActivityDataActivityAsTextActivitySerializer =
    new _$GActivityData_activity__asTextActivitySerializer();
Serializer<GActivityData_activity__asTextActivity_user>
    _$gActivityDataActivityAsTextActivityUserSerializer =
    new _$GActivityData_activity__asTextActivity_userSerializer();
Serializer<GActivityData_activity__asTextActivity_user_avatar>
    _$gActivityDataActivityAsTextActivityUserAvatarSerializer =
    new _$GActivityData_activity__asTextActivity_user_avatarSerializer();
Serializer<GActivityData_activity__asListActivity>
    _$gActivityDataActivityAsListActivitySerializer =
    new _$GActivityData_activity__asListActivitySerializer();
Serializer<GActivityData_activity__asListActivity_user>
    _$gActivityDataActivityAsListActivityUserSerializer =
    new _$GActivityData_activity__asListActivity_userSerializer();
Serializer<GActivityData_activity__asListActivity_user_avatar>
    _$gActivityDataActivityAsListActivityUserAvatarSerializer =
    new _$GActivityData_activity__asListActivity_user_avatarSerializer();
Serializer<GActivityData_activity__asListActivity_media>
    _$gActivityDataActivityAsListActivityMediaSerializer =
    new _$GActivityData_activity__asListActivity_mediaSerializer();
Serializer<GActivityData_activity__asListActivity_media_title>
    _$gActivityDataActivityAsListActivityMediaTitleSerializer =
    new _$GActivityData_activity__asListActivity_media_titleSerializer();
Serializer<GActivityData_activity__asListActivity_media_coverImage>
    _$gActivityDataActivityAsListActivityMediaCoverImageSerializer =
    new _$GActivityData_activity__asListActivity_media_coverImageSerializer();
Serializer<GActivityData_activity__asMessageActivity>
    _$gActivityDataActivityAsMessageActivitySerializer =
    new _$GActivityData_activity__asMessageActivitySerializer();
Serializer<GActivityData_activity__asMessageActivity_messenger>
    _$gActivityDataActivityAsMessageActivityMessengerSerializer =
    new _$GActivityData_activity__asMessageActivity_messengerSerializer();
Serializer<GActivityData_activity__asMessageActivity_messenger_avatar>
    _$gActivityDataActivityAsMessageActivityMessengerAvatarSerializer =
    new _$GActivityData_activity__asMessageActivity_messenger_avatarSerializer();
Serializer<GActivityData_replies> _$gActivityDataRepliesSerializer =
    new _$GActivityData_repliesSerializer();
Serializer<GActivityData_replies_pageInfo>
    _$gActivityDataRepliesPageInfoSerializer =
    new _$GActivityData_replies_pageInfoSerializer();
Serializer<GActivityData_replies_activityReplies>
    _$gActivityDataRepliesActivityRepliesSerializer =
    new _$GActivityData_replies_activityRepliesSerializer();
Serializer<GActivityData_replies_activityReplies_user>
    _$gActivityDataRepliesActivityRepliesUserSerializer =
    new _$GActivityData_replies_activityReplies_userSerializer();
Serializer<GActivityData_replies_activityReplies_user_avatar>
    _$gActivityDataRepliesActivityRepliesUserAvatarSerializer =
    new _$GActivityData_replies_activityReplies_user_avatarSerializer();
Serializer<GSaveActivityReplyData> _$gSaveActivityReplyDataSerializer =
    new _$GSaveActivityReplyDataSerializer();
Serializer<GSaveActivityReplyData_SaveActivityReply>
    _$gSaveActivityReplyDataSaveActivityReplySerializer =
    new _$GSaveActivityReplyData_SaveActivityReplySerializer();
Serializer<GSaveActivityReplyData_SaveActivityReply_user>
    _$gSaveActivityReplyDataSaveActivityReplyUserSerializer =
    new _$GSaveActivityReplyData_SaveActivityReply_userSerializer();
Serializer<GSaveActivityReplyData_SaveActivityReply_user_avatar>
    _$gSaveActivityReplyDataSaveActivityReplyUserAvatarSerializer =
    new _$GSaveActivityReplyData_SaveActivityReply_user_avatarSerializer();
Serializer<GSaveMessageActivityData> _$gSaveMessageActivityDataSerializer =
    new _$GSaveMessageActivityDataSerializer();
Serializer<GSaveMessageActivityData_SaveMessageActivity>
    _$gSaveMessageActivityDataSaveMessageActivitySerializer =
    new _$GSaveMessageActivityData_SaveMessageActivitySerializer();
Serializer<GSaveMessageActivityData_SaveMessageActivity_messenger>
    _$gSaveMessageActivityDataSaveMessageActivityMessengerSerializer =
    new _$GSaveMessageActivityData_SaveMessageActivity_messengerSerializer();
Serializer<GSaveMessageActivityData_SaveMessageActivity_messenger_avatar>
    _$gSaveMessageActivityDataSaveMessageActivityMessengerAvatarSerializer =
    new _$GSaveMessageActivityData_SaveMessageActivity_messenger_avatarSerializer();
Serializer<GToggleActivitySubscriptionData>
    _$gToggleActivitySubscriptionDataSerializer =
    new _$GToggleActivitySubscriptionDataSerializer();
Serializer<GToggleActivitySubscriptionData_ToggleActivitySubscription__base>
    _$gToggleActivitySubscriptionDataToggleActivitySubscriptionBaseSerializer =
    new _$GToggleActivitySubscriptionData_ToggleActivitySubscription__baseSerializer();
Serializer<
        GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity>
    _$gToggleActivitySubscriptionDataToggleActivitySubscriptionAsListActivitySerializer =
    new _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivitySerializer();
Serializer<
        GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity>
    _$gToggleActivitySubscriptionDataToggleActivitySubscriptionAsTextActivitySerializer =
    new _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivitySerializer();
Serializer<
        GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity>
    _$gToggleActivitySubscriptionDataToggleActivitySubscriptionAsMessageActivitySerializer =
    new _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivitySerializer();
Serializer<GDeleteActivityReplyData> _$gDeleteActivityReplyDataSerializer =
    new _$GDeleteActivityReplyDataSerializer();
Serializer<GDeleteActivityReplyData_DeleteActivityReply>
    _$gDeleteActivityReplyDataDeleteActivityReplySerializer =
    new _$GDeleteActivityReplyData_DeleteActivityReplySerializer();
Serializer<GDeleteActivityData> _$gDeleteActivityDataSerializer =
    new _$GDeleteActivityDataSerializer();
Serializer<GDeleteActivityData_DeleteActivity>
    _$gDeleteActivityDataDeleteActivitySerializer =
    new _$GDeleteActivityData_DeleteActivitySerializer();

class _$GActivityDataSerializer implements StructuredSerializer<GActivityData> {
  @override
  final Iterable<Type> types = const [GActivityData, _$GActivityData];
  @override
  final String wireName = 'GActivityData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GActivityData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.activity;
    if (value != null) {
      result
        ..add('activity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GActivityData_activity)));
    }
    value = object.replies;
    if (value != null) {
      result
        ..add('replies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GActivityData_replies)));
    }
    return result;
  }

  @override
  GActivityData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivityDataBuilder();

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
        case 'activity':
          result.activity = serializers.deserialize(value,
                  specifiedType: const FullType(GActivityData_activity))
              as GActivityData_activity?;
          break;
        case 'replies':
          result.replies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GActivityData_replies))!
              as GActivityData_replies);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivityData_activity__baseSerializer
    implements StructuredSerializer<GActivityData_activity__base> {
  @override
  final Iterable<Type> types = const [
    GActivityData_activity__base,
    _$GActivityData_activity__base
  ];
  @override
  final String wireName = 'GActivityData_activity__base';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GActivityData_activity__base object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GActivityData_activity__base deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivityData_activity__baseBuilder();

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

class _$GActivityData_activity__asTextActivitySerializer
    implements StructuredSerializer<GActivityData_activity__asTextActivity> {
  @override
  final Iterable<Type> types = const [
    GActivityData_activity__asTextActivity,
    _$GActivityData_activity__asTextActivity
  ];
  @override
  final String wireName = 'GActivityData_activity__asTextActivity';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GActivityData_activity__asTextActivity object,
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
            specifiedType: const FullType(_i4.GActivityType)));
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
                const FullType(GActivityData_activity__asTextActivity_user)));
    }
    return result;
  }

  @override
  GActivityData_activity__asTextActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivityData_activity__asTextActivityBuilder();

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
                  specifiedType: const FullType(_i4.GActivityType))
              as _i4.GActivityType?;
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
                      GActivityData_activity__asTextActivity_user))!
              as GActivityData_activity__asTextActivity_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivityData_activity__asTextActivity_userSerializer
    implements
        StructuredSerializer<GActivityData_activity__asTextActivity_user> {
  @override
  final Iterable<Type> types = const [
    GActivityData_activity__asTextActivity_user,
    _$GActivityData_activity__asTextActivity_user
  ];
  @override
  final String wireName = 'GActivityData_activity__asTextActivity_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivityData_activity__asTextActivity_user object,
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
            specifiedType: const FullType(
                GActivityData_activity__asTextActivity_user_avatar)));
    }
    return result;
  }

  @override
  GActivityData_activity__asTextActivity_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivityData_activity__asTextActivity_userBuilder();

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
                  specifiedType: const FullType(
                      GActivityData_activity__asTextActivity_user_avatar))!
              as GActivityData_activity__asTextActivity_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivityData_activity__asTextActivity_user_avatarSerializer
    implements
        StructuredSerializer<
            GActivityData_activity__asTextActivity_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GActivityData_activity__asTextActivity_user_avatar,
    _$GActivityData_activity__asTextActivity_user_avatar
  ];
  @override
  final String wireName = 'GActivityData_activity__asTextActivity_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivityData_activity__asTextActivity_user_avatar object,
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
  GActivityData_activity__asTextActivity_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivityData_activity__asTextActivity_user_avatarBuilder();

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

class _$GActivityData_activity__asListActivitySerializer
    implements StructuredSerializer<GActivityData_activity__asListActivity> {
  @override
  final Iterable<Type> types = const [
    GActivityData_activity__asListActivity,
    _$GActivityData_activity__asListActivity
  ];
  @override
  final String wireName = 'GActivityData_activity__asListActivity';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GActivityData_activity__asListActivity object,
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
            specifiedType: const FullType(_i4.GActivityType)));
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
            specifiedType:
                const FullType(GActivityData_activity__asListActivity_user)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GActivityData_activity__asListActivity_media)));
    }
    return result;
  }

  @override
  GActivityData_activity__asListActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivityData_activity__asListActivityBuilder();

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
                  specifiedType: const FullType(_i4.GActivityType))
              as _i4.GActivityType?;
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
                      GActivityData_activity__asListActivity_user))!
              as GActivityData_activity__asListActivity_user);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GActivityData_activity__asListActivity_media))!
              as GActivityData_activity__asListActivity_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivityData_activity__asListActivity_userSerializer
    implements
        StructuredSerializer<GActivityData_activity__asListActivity_user> {
  @override
  final Iterable<Type> types = const [
    GActivityData_activity__asListActivity_user,
    _$GActivityData_activity__asListActivity_user
  ];
  @override
  final String wireName = 'GActivityData_activity__asListActivity_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivityData_activity__asListActivity_user object,
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
            specifiedType: const FullType(
                GActivityData_activity__asListActivity_user_avatar)));
    }
    return result;
  }

  @override
  GActivityData_activity__asListActivity_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivityData_activity__asListActivity_userBuilder();

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
                  specifiedType: const FullType(
                      GActivityData_activity__asListActivity_user_avatar))!
              as GActivityData_activity__asListActivity_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivityData_activity__asListActivity_user_avatarSerializer
    implements
        StructuredSerializer<
            GActivityData_activity__asListActivity_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GActivityData_activity__asListActivity_user_avatar,
    _$GActivityData_activity__asListActivity_user_avatar
  ];
  @override
  final String wireName = 'GActivityData_activity__asListActivity_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivityData_activity__asListActivity_user_avatar object,
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
  GActivityData_activity__asListActivity_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivityData_activity__asListActivity_user_avatarBuilder();

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

class _$GActivityData_activity__asListActivity_mediaSerializer
    implements
        StructuredSerializer<GActivityData_activity__asListActivity_media> {
  @override
  final Iterable<Type> types = const [
    GActivityData_activity__asListActivity_media,
    _$GActivityData_activity__asListActivity_media
  ];
  @override
  final String wireName = 'GActivityData_activity__asListActivity_media';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivityData_activity__asListActivity_media object,
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
            specifiedType: const FullType(_i4.GMediaType)));
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
            specifiedType: const FullType(_i4.GMediaFormat)));
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
                GActivityData_activity__asListActivity_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GActivityData_activity__asListActivity_media_coverImage)));
    }
    return result;
  }

  @override
  GActivityData_activity__asListActivity_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivityData_activity__asListActivity_mediaBuilder();

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
              specifiedType: const FullType(_i4.GMediaType)) as _i4.GMediaType?;
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
                  specifiedType: const FullType(_i4.GMediaFormat))
              as _i4.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GActivityData_activity__asListActivity_media_title))!
              as GActivityData_activity__asListActivity_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GActivityData_activity__asListActivity_media_coverImage))!
              as GActivityData_activity__asListActivity_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivityData_activity__asListActivity_media_titleSerializer
    implements
        StructuredSerializer<
            GActivityData_activity__asListActivity_media_title> {
  @override
  final Iterable<Type> types = const [
    GActivityData_activity__asListActivity_media_title,
    _$GActivityData_activity__asListActivity_media_title
  ];
  @override
  final String wireName = 'GActivityData_activity__asListActivity_media_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivityData_activity__asListActivity_media_title object,
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
  GActivityData_activity__asListActivity_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivityData_activity__asListActivity_media_titleBuilder();

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

class _$GActivityData_activity__asListActivity_media_coverImageSerializer
    implements
        StructuredSerializer<
            GActivityData_activity__asListActivity_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GActivityData_activity__asListActivity_media_coverImage,
    _$GActivityData_activity__asListActivity_media_coverImage
  ];
  @override
  final String wireName =
      'GActivityData_activity__asListActivity_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivityData_activity__asListActivity_media_coverImage object,
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
  GActivityData_activity__asListActivity_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivityData_activity__asListActivity_media_coverImageBuilder();

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

class _$GActivityData_activity__asMessageActivitySerializer
    implements StructuredSerializer<GActivityData_activity__asMessageActivity> {
  @override
  final Iterable<Type> types = const [
    GActivityData_activity__asMessageActivity,
    _$GActivityData_activity__asMessageActivity
  ];
  @override
  final String wireName = 'GActivityData_activity__asMessageActivity';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GActivityData_activity__asMessageActivity object,
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
            specifiedType: const FullType(_i4.GActivityType)));
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
                GActivityData_activity__asMessageActivity_messenger)));
    }
    return result;
  }

  @override
  GActivityData_activity__asMessageActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivityData_activity__asMessageActivityBuilder();

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
                  specifiedType: const FullType(_i4.GActivityType))
              as _i4.GActivityType?;
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
                      GActivityData_activity__asMessageActivity_messenger))!
              as GActivityData_activity__asMessageActivity_messenger);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivityData_activity__asMessageActivity_messengerSerializer
    implements
        StructuredSerializer<
            GActivityData_activity__asMessageActivity_messenger> {
  @override
  final Iterable<Type> types = const [
    GActivityData_activity__asMessageActivity_messenger,
    _$GActivityData_activity__asMessageActivity_messenger
  ];
  @override
  final String wireName = 'GActivityData_activity__asMessageActivity_messenger';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivityData_activity__asMessageActivity_messenger object,
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
            specifiedType: const FullType(
                GActivityData_activity__asMessageActivity_messenger_avatar)));
    }
    return result;
  }

  @override
  GActivityData_activity__asMessageActivity_messenger deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivityData_activity__asMessageActivity_messengerBuilder();

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
                  specifiedType: const FullType(
                      GActivityData_activity__asMessageActivity_messenger_avatar))!
              as GActivityData_activity__asMessageActivity_messenger_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivityData_activity__asMessageActivity_messenger_avatarSerializer
    implements
        StructuredSerializer<
            GActivityData_activity__asMessageActivity_messenger_avatar> {
  @override
  final Iterable<Type> types = const [
    GActivityData_activity__asMessageActivity_messenger_avatar,
    _$GActivityData_activity__asMessageActivity_messenger_avatar
  ];
  @override
  final String wireName =
      'GActivityData_activity__asMessageActivity_messenger_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivityData_activity__asMessageActivity_messenger_avatar object,
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
  GActivityData_activity__asMessageActivity_messenger_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivityData_activity__asMessageActivity_messenger_avatarBuilder();

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

class _$GActivityData_repliesSerializer
    implements StructuredSerializer<GActivityData_replies> {
  @override
  final Iterable<Type> types = const [
    GActivityData_replies,
    _$GActivityData_replies
  ];
  @override
  final String wireName = 'GActivityData_replies';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GActivityData_replies object,
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
            specifiedType: const FullType(GActivityData_replies_pageInfo)));
    }
    value = object.activityReplies;
    if (value != null) {
      result
        ..add('activityReplies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GActivityData_replies_activityReplies)
            ])));
    }
    return result;
  }

  @override
  GActivityData_replies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivityData_repliesBuilder();

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
                      const FullType(GActivityData_replies_pageInfo))!
              as GActivityData_replies_pageInfo);
          break;
        case 'activityReplies':
          result.activityReplies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GActivityData_replies_activityReplies)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivityData_replies_pageInfoSerializer
    implements StructuredSerializer<GActivityData_replies_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GActivityData_replies_pageInfo,
    _$GActivityData_replies_pageInfo
  ];
  @override
  final String wireName = 'GActivityData_replies_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GActivityData_replies_pageInfo object,
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
  GActivityData_replies_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivityData_replies_pageInfoBuilder();

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

class _$GActivityData_replies_activityRepliesSerializer
    implements StructuredSerializer<GActivityData_replies_activityReplies> {
  @override
  final Iterable<Type> types = const [
    GActivityData_replies_activityReplies,
    _$GActivityData_replies_activityReplies
  ];
  @override
  final String wireName = 'GActivityData_replies_activityReplies';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GActivityData_replies_activityReplies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.activityId;
    if (value != null) {
      result
        ..add('activityId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
                const FullType(GActivityData_replies_activityReplies_user)));
    }
    return result;
  }

  @override
  GActivityData_replies_activityReplies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivityData_replies_activityRepliesBuilder();

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
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'activityId':
          result.activityId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isLiked':
          result.isLiked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'likeCount':
          result.likeCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GActivityData_replies_activityReplies_user))!
              as GActivityData_replies_activityReplies_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivityData_replies_activityReplies_userSerializer
    implements
        StructuredSerializer<GActivityData_replies_activityReplies_user> {
  @override
  final Iterable<Type> types = const [
    GActivityData_replies_activityReplies_user,
    _$GActivityData_replies_activityReplies_user
  ];
  @override
  final String wireName = 'GActivityData_replies_activityReplies_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivityData_replies_activityReplies_user object,
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
            specifiedType: const FullType(
                GActivityData_replies_activityReplies_user_avatar)));
    }
    return result;
  }

  @override
  GActivityData_replies_activityReplies_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GActivityData_replies_activityReplies_userBuilder();

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
                  specifiedType: const FullType(
                      GActivityData_replies_activityReplies_user_avatar))!
              as GActivityData_replies_activityReplies_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GActivityData_replies_activityReplies_user_avatarSerializer
    implements
        StructuredSerializer<
            GActivityData_replies_activityReplies_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GActivityData_replies_activityReplies_user_avatar,
    _$GActivityData_replies_activityReplies_user_avatar
  ];
  @override
  final String wireName = 'GActivityData_replies_activityReplies_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GActivityData_replies_activityReplies_user_avatar object,
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
  GActivityData_replies_activityReplies_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GActivityData_replies_activityReplies_user_avatarBuilder();

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

class _$GSaveActivityReplyDataSerializer
    implements StructuredSerializer<GSaveActivityReplyData> {
  @override
  final Iterable<Type> types = const [
    GSaveActivityReplyData,
    _$GSaveActivityReplyData
  ];
  @override
  final String wireName = 'GSaveActivityReplyData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveActivityReplyData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.SaveActivityReply;
    if (value != null) {
      result
        ..add('SaveActivityReply')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSaveActivityReplyData_SaveActivityReply)));
    }
    return result;
  }

  @override
  GSaveActivityReplyData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveActivityReplyDataBuilder();

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
        case 'SaveActivityReply':
          result.SaveActivityReply.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSaveActivityReplyData_SaveActivityReply))!
              as GSaveActivityReplyData_SaveActivityReply);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveActivityReplyData_SaveActivityReplySerializer
    implements StructuredSerializer<GSaveActivityReplyData_SaveActivityReply> {
  @override
  final Iterable<Type> types = const [
    GSaveActivityReplyData_SaveActivityReply,
    _$GSaveActivityReplyData_SaveActivityReply
  ];
  @override
  final String wireName = 'GSaveActivityReplyData_SaveActivityReply';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveActivityReplyData_SaveActivityReply object,
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
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
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
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSaveActivityReplyData_SaveActivityReply_user)));
    }
    return result;
  }

  @override
  GSaveActivityReplyData_SaveActivityReply deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveActivityReplyData_SaveActivityReplyBuilder();

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
        case 'activityId':
          result.activityId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
                      GSaveActivityReplyData_SaveActivityReply_user))!
              as GSaveActivityReplyData_SaveActivityReply_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveActivityReplyData_SaveActivityReply_userSerializer
    implements
        StructuredSerializer<GSaveActivityReplyData_SaveActivityReply_user> {
  @override
  final Iterable<Type> types = const [
    GSaveActivityReplyData_SaveActivityReply_user,
    _$GSaveActivityReplyData_SaveActivityReply_user
  ];
  @override
  final String wireName = 'GSaveActivityReplyData_SaveActivityReply_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveActivityReplyData_SaveActivityReply_user object,
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
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSaveActivityReplyData_SaveActivityReply_user_avatar)));
    }
    return result;
  }

  @override
  GSaveActivityReplyData_SaveActivityReply_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveActivityReplyData_SaveActivityReply_userBuilder();

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
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveActivityReplyData_SaveActivityReply_user_avatar))!
              as GSaveActivityReplyData_SaveActivityReply_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveActivityReplyData_SaveActivityReply_user_avatarSerializer
    implements
        StructuredSerializer<
            GSaveActivityReplyData_SaveActivityReply_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GSaveActivityReplyData_SaveActivityReply_user_avatar,
    _$GSaveActivityReplyData_SaveActivityReply_user_avatar
  ];
  @override
  final String wireName =
      'GSaveActivityReplyData_SaveActivityReply_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveActivityReplyData_SaveActivityReply_user_avatar object,
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
  GSaveActivityReplyData_SaveActivityReply_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder();

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

class _$GSaveMessageActivityDataSerializer
    implements StructuredSerializer<GSaveMessageActivityData> {
  @override
  final Iterable<Type> types = const [
    GSaveMessageActivityData,
    _$GSaveMessageActivityData
  ];
  @override
  final String wireName = 'GSaveMessageActivityData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveMessageActivityData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.SaveMessageActivity;
    if (value != null) {
      result
        ..add('SaveMessageActivity')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSaveMessageActivityData_SaveMessageActivity)));
    }
    return result;
  }

  @override
  GSaveMessageActivityData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveMessageActivityDataBuilder();

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
        case 'SaveMessageActivity':
          result.SaveMessageActivity.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveMessageActivityData_SaveMessageActivity))!
              as GSaveMessageActivityData_SaveMessageActivity);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveMessageActivityData_SaveMessageActivitySerializer
    implements
        StructuredSerializer<GSaveMessageActivityData_SaveMessageActivity> {
  @override
  final Iterable<Type> types = const [
    GSaveMessageActivityData_SaveMessageActivity,
    _$GSaveMessageActivityData_SaveMessageActivity
  ];
  @override
  final String wireName = 'GSaveMessageActivityData_SaveMessageActivity';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveMessageActivityData_SaveMessageActivity object,
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
            specifiedType: const FullType(_i4.GActivityType)));
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
                GSaveMessageActivityData_SaveMessageActivity_messenger)));
    }
    return result;
  }

  @override
  GSaveMessageActivityData_SaveMessageActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveMessageActivityData_SaveMessageActivityBuilder();

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
                  specifiedType: const FullType(_i4.GActivityType))
              as _i4.GActivityType?;
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
                      GSaveMessageActivityData_SaveMessageActivity_messenger))!
              as GSaveMessageActivityData_SaveMessageActivity_messenger);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveMessageActivityData_SaveMessageActivity_messengerSerializer
    implements
        StructuredSerializer<
            GSaveMessageActivityData_SaveMessageActivity_messenger> {
  @override
  final Iterable<Type> types = const [
    GSaveMessageActivityData_SaveMessageActivity_messenger,
    _$GSaveMessageActivityData_SaveMessageActivity_messenger
  ];
  @override
  final String wireName =
      'GSaveMessageActivityData_SaveMessageActivity_messenger';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveMessageActivityData_SaveMessageActivity_messenger object,
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
            specifiedType: const FullType(
                GSaveMessageActivityData_SaveMessageActivity_messenger_avatar)));
    }
    return result;
  }

  @override
  GSaveMessageActivityData_SaveMessageActivity_messenger deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveMessageActivityData_SaveMessageActivity_messengerBuilder();

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
                  specifiedType: const FullType(
                      GSaveMessageActivityData_SaveMessageActivity_messenger_avatar))!
              as GSaveMessageActivityData_SaveMessageActivity_messenger_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveMessageActivityData_SaveMessageActivity_messenger_avatarSerializer
    implements
        StructuredSerializer<
            GSaveMessageActivityData_SaveMessageActivity_messenger_avatar> {
  @override
  final Iterable<Type> types = const [
    GSaveMessageActivityData_SaveMessageActivity_messenger_avatar,
    _$GSaveMessageActivityData_SaveMessageActivity_messenger_avatar
  ];
  @override
  final String wireName =
      'GSaveMessageActivityData_SaveMessageActivity_messenger_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveMessageActivityData_SaveMessageActivity_messenger_avatar object,
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
  GSaveMessageActivityData_SaveMessageActivity_messenger_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder();

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

class _$GToggleActivitySubscriptionDataSerializer
    implements StructuredSerializer<GToggleActivitySubscriptionData> {
  @override
  final Iterable<Type> types = const [
    GToggleActivitySubscriptionData,
    _$GToggleActivitySubscriptionData
  ];
  @override
  final String wireName = 'GToggleActivitySubscriptionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleActivitySubscriptionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ToggleActivitySubscription;
    if (value != null) {
      result
        ..add('ToggleActivitySubscription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GToggleActivitySubscriptionData_ToggleActivitySubscription)));
    }
    return result;
  }

  @override
  GToggleActivitySubscriptionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleActivitySubscriptionDataBuilder();

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
        case 'ToggleActivitySubscription':
          result.ToggleActivitySubscription = serializers.deserialize(value,
                  specifiedType: const FullType(
                      GToggleActivitySubscriptionData_ToggleActivitySubscription))
              as GToggleActivitySubscriptionData_ToggleActivitySubscription?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleActivitySubscriptionData_ToggleActivitySubscription__baseSerializer
    implements
        StructuredSerializer<
            GToggleActivitySubscriptionData_ToggleActivitySubscription__base> {
  @override
  final Iterable<Type> types = const [
    GToggleActivitySubscriptionData_ToggleActivitySubscription__base,
    _$GToggleActivitySubscriptionData_ToggleActivitySubscription__base
  ];
  @override
  final String wireName =
      'GToggleActivitySubscriptionData_ToggleActivitySubscription__base';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleActivitySubscriptionData_ToggleActivitySubscription__base object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__base deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder();

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

class _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivitySerializer
    implements
        StructuredSerializer<
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity> {
  @override
  final Iterable<Type> types = const [
    GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity,
    _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
  ];
  @override
  final String wireName =
      'GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.isSubscribed;
    if (value != null) {
      result
        ..add('isSubscribed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder();

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
        case 'isSubscribed':
          result.isSubscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivitySerializer
    implements
        StructuredSerializer<
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity> {
  @override
  final Iterable<Type> types = const [
    GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity,
    _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
  ];
  @override
  final String wireName =
      'GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.isSubscribed;
    if (value != null) {
      result
        ..add('isSubscribed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder();

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
        case 'isSubscribed':
          result.isSubscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivitySerializer
    implements
        StructuredSerializer<
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity> {
  @override
  final Iterable<Type> types = const [
    GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity,
    _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
  ];
  @override
  final String wireName =
      'GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.isSubscribed;
    if (value != null) {
      result
        ..add('isSubscribed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder();

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
        case 'isSubscribed':
          result.isSubscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteActivityReplyDataSerializer
    implements StructuredSerializer<GDeleteActivityReplyData> {
  @override
  final Iterable<Type> types = const [
    GDeleteActivityReplyData,
    _$GDeleteActivityReplyData
  ];
  @override
  final String wireName = 'GDeleteActivityReplyData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteActivityReplyData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.DeleteActivityReply;
    if (value != null) {
      result
        ..add('DeleteActivityReply')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GDeleteActivityReplyData_DeleteActivityReply)));
    }
    return result;
  }

  @override
  GDeleteActivityReplyData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteActivityReplyDataBuilder();

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
        case 'DeleteActivityReply':
          result.DeleteActivityReply.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GDeleteActivityReplyData_DeleteActivityReply))!
              as GDeleteActivityReplyData_DeleteActivityReply);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteActivityReplyData_DeleteActivityReplySerializer
    implements
        StructuredSerializer<GDeleteActivityReplyData_DeleteActivityReply> {
  @override
  final Iterable<Type> types = const [
    GDeleteActivityReplyData_DeleteActivityReply,
    _$GDeleteActivityReplyData_DeleteActivityReply
  ];
  @override
  final String wireName = 'GDeleteActivityReplyData_DeleteActivityReply';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GDeleteActivityReplyData_DeleteActivityReply object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deleted;
    if (value != null) {
      result
        ..add('deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GDeleteActivityReplyData_DeleteActivityReply deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteActivityReplyData_DeleteActivityReplyBuilder();

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
        case 'deleted':
          result.deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteActivityDataSerializer
    implements StructuredSerializer<GDeleteActivityData> {
  @override
  final Iterable<Type> types = const [
    GDeleteActivityData,
    _$GDeleteActivityData
  ];
  @override
  final String wireName = 'GDeleteActivityData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteActivityData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.DeleteActivity;
    if (value != null) {
      result
        ..add('DeleteActivity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDeleteActivityData_DeleteActivity)));
    }
    return result;
  }

  @override
  GDeleteActivityData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteActivityDataBuilder();

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
        case 'DeleteActivity':
          result.DeleteActivity.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GDeleteActivityData_DeleteActivity))!
              as GDeleteActivityData_DeleteActivity);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteActivityData_DeleteActivitySerializer
    implements StructuredSerializer<GDeleteActivityData_DeleteActivity> {
  @override
  final Iterable<Type> types = const [
    GDeleteActivityData_DeleteActivity,
    _$GDeleteActivityData_DeleteActivity
  ];
  @override
  final String wireName = 'GDeleteActivityData_DeleteActivity';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteActivityData_DeleteActivity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deleted;
    if (value != null) {
      result
        ..add('deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GDeleteActivityData_DeleteActivity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteActivityData_DeleteActivityBuilder();

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
        case 'deleted':
          result.deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GActivityData extends GActivityData {
  @override
  final String G__typename;
  @override
  final GActivityData_activity? activity;
  @override
  final GActivityData_replies? replies;

  factory _$GActivityData([void Function(GActivityDataBuilder)? updates]) =>
      (new GActivityDataBuilder()..update(updates))._build();

  _$GActivityData._({required this.G__typename, this.activity, this.replies})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GActivityData', 'G__typename');
  }

  @override
  GActivityData rebuild(void Function(GActivityDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityDataBuilder toBuilder() => new GActivityDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData &&
        G__typename == other.G__typename &&
        activity == other.activity &&
        replies == other.replies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, activity.hashCode);
    _$hash = $jc(_$hash, replies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GActivityData')
          ..add('G__typename', G__typename)
          ..add('activity', activity)
          ..add('replies', replies))
        .toString();
  }
}

class GActivityDataBuilder
    implements Builder<GActivityData, GActivityDataBuilder> {
  _$GActivityData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GActivityData_activity? _activity;
  GActivityData_activity? get activity => _$this._activity;
  set activity(GActivityData_activity? activity) => _$this._activity = activity;

  GActivityData_repliesBuilder? _replies;
  GActivityData_repliesBuilder get replies =>
      _$this._replies ??= new GActivityData_repliesBuilder();
  set replies(GActivityData_repliesBuilder? replies) =>
      _$this._replies = replies;

  GActivityDataBuilder() {
    GActivityData._initializeBuilder(this);
  }

  GActivityDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _activity = $v.activity;
      _replies = $v.replies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivityData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData;
  }

  @override
  void update(void Function(GActivityDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData build() => _build();

  _$GActivityData _build() {
    _$GActivityData _$result;
    try {
      _$result = _$v ??
          new _$GActivityData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GActivityData', 'G__typename'),
              activity: activity,
              replies: _replies?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replies';
        _replies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GActivityData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_activity__base extends GActivityData_activity__base {
  @override
  final String G__typename;

  factory _$GActivityData_activity__base(
          [void Function(GActivityData_activity__baseBuilder)? updates]) =>
      (new GActivityData_activity__baseBuilder()..update(updates))._build();

  _$GActivityData_activity__base._({required this.G__typename}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GActivityData_activity__base', 'G__typename');
  }

  @override
  GActivityData_activity__base rebuild(
          void Function(GActivityData_activity__baseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_activity__baseBuilder toBuilder() =>
      new GActivityData_activity__baseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_activity__base &&
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
    return (newBuiltValueToStringHelper(r'GActivityData_activity__base')
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GActivityData_activity__baseBuilder
    implements
        Builder<GActivityData_activity__base,
            GActivityData_activity__baseBuilder> {
  _$GActivityData_activity__base? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GActivityData_activity__baseBuilder() {
    GActivityData_activity__base._initializeBuilder(this);
  }

  GActivityData_activity__baseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivityData_activity__base other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_activity__base;
  }

  @override
  void update(void Function(GActivityData_activity__baseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_activity__base build() => _build();

  _$GActivityData_activity__base _build() {
    final _$result = _$v ??
        new _$GActivityData_activity__base._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GActivityData_activity__base', 'G__typename'));
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_activity__asTextActivity
    extends GActivityData_activity__asTextActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? userId;
  @override
  final _i4.GActivityType? type;
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
  final GActivityData_activity__asTextActivity_user? user;

  factory _$GActivityData_activity__asTextActivity(
          [void Function(GActivityData_activity__asTextActivityBuilder)?
              updates]) =>
      (new GActivityData_activity__asTextActivityBuilder()..update(updates))
          ._build();

  _$GActivityData_activity__asTextActivity._(
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
        G__typename, r'GActivityData_activity__asTextActivity', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivityData_activity__asTextActivity', 'id');
    BuiltValueNullFieldError.checkNotNull(
        replyCount, r'GActivityData_activity__asTextActivity', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GActivityData_activity__asTextActivity', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GActivityData_activity__asTextActivity', 'createdAt');
  }

  @override
  GActivityData_activity__asTextActivity rebuild(
          void Function(GActivityData_activity__asTextActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_activity__asTextActivityBuilder toBuilder() =>
      new GActivityData_activity__asTextActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_activity__asTextActivity &&
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
            r'GActivityData_activity__asTextActivity')
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

class GActivityData_activity__asTextActivityBuilder
    implements
        Builder<GActivityData_activity__asTextActivity,
            GActivityData_activity__asTextActivityBuilder> {
  _$GActivityData_activity__asTextActivity? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  _i4.GActivityType? _type;
  _i4.GActivityType? get type => _$this._type;
  set type(_i4.GActivityType? type) => _$this._type = type;

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

  GActivityData_activity__asTextActivity_userBuilder? _user;
  GActivityData_activity__asTextActivity_userBuilder get user =>
      _$this._user ??= new GActivityData_activity__asTextActivity_userBuilder();
  set user(GActivityData_activity__asTextActivity_userBuilder? user) =>
      _$this._user = user;

  GActivityData_activity__asTextActivityBuilder() {
    GActivityData_activity__asTextActivity._initializeBuilder(this);
  }

  GActivityData_activity__asTextActivityBuilder get _$this {
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
  void replace(GActivityData_activity__asTextActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_activity__asTextActivity;
  }

  @override
  void update(
      void Function(GActivityData_activity__asTextActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_activity__asTextActivity build() => _build();

  _$GActivityData_activity__asTextActivity _build() {
    _$GActivityData_activity__asTextActivity _$result;
    try {
      _$result = _$v ??
          new _$GActivityData_activity__asTextActivity._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GActivityData_activity__asTextActivity', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GActivityData_activity__asTextActivity', 'id'),
              userId: userId,
              type: type,
              replyCount: BuiltValueNullFieldError.checkNotNull(replyCount,
                  r'GActivityData_activity__asTextActivity', 'replyCount'),
              text: text,
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                  r'GActivityData_activity__asTextActivity', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
                  r'GActivityData_activity__asTextActivity', 'createdAt'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GActivityData_activity__asTextActivity',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_activity__asTextActivity_user
    extends GActivityData_activity__asTextActivity_user {
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
  final GActivityData_activity__asTextActivity_user_avatar? avatar;

  factory _$GActivityData_activity__asTextActivity_user(
          [void Function(GActivityData_activity__asTextActivity_userBuilder)?
              updates]) =>
      (new GActivityData_activity__asTextActivity_userBuilder()
            ..update(updates))
          ._build();

  _$GActivityData_activity__asTextActivity_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivityData_activity__asTextActivity_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivityData_activity__asTextActivity_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GActivityData_activity__asTextActivity_user', 'name');
  }

  @override
  GActivityData_activity__asTextActivity_user rebuild(
          void Function(GActivityData_activity__asTextActivity_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_activity__asTextActivity_userBuilder toBuilder() =>
      new GActivityData_activity__asTextActivity_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_activity__asTextActivity_user &&
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
            r'GActivityData_activity__asTextActivity_user')
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

class GActivityData_activity__asTextActivity_userBuilder
    implements
        Builder<GActivityData_activity__asTextActivity_user,
            GActivityData_activity__asTextActivity_userBuilder> {
  _$GActivityData_activity__asTextActivity_user? _$v;

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

  GActivityData_activity__asTextActivity_user_avatarBuilder? _avatar;
  GActivityData_activity__asTextActivity_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GActivityData_activity__asTextActivity_user_avatarBuilder();
  set avatar(
          GActivityData_activity__asTextActivity_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GActivityData_activity__asTextActivity_userBuilder() {
    GActivityData_activity__asTextActivity_user._initializeBuilder(this);
  }

  GActivityData_activity__asTextActivity_userBuilder get _$this {
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
  void replace(GActivityData_activity__asTextActivity_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_activity__asTextActivity_user;
  }

  @override
  void update(
      void Function(GActivityData_activity__asTextActivity_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_activity__asTextActivity_user build() => _build();

  _$GActivityData_activity__asTextActivity_user _build() {
    _$GActivityData_activity__asTextActivity_user _$result;
    try {
      _$result = _$v ??
          new _$GActivityData_activity__asTextActivity_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GActivityData_activity__asTextActivity_user',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GActivityData_activity__asTextActivity_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GActivityData_activity__asTextActivity_user', 'name'),
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
            r'GActivityData_activity__asTextActivity_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_activity__asTextActivity_user_avatar
    extends GActivityData_activity__asTextActivity_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GActivityData_activity__asTextActivity_user_avatar(
          [void Function(
                  GActivityData_activity__asTextActivity_user_avatarBuilder)?
              updates]) =>
      (new GActivityData_activity__asTextActivity_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GActivityData_activity__asTextActivity_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivityData_activity__asTextActivity_user_avatar', 'G__typename');
  }

  @override
  GActivityData_activity__asTextActivity_user_avatar rebuild(
          void Function(
                  GActivityData_activity__asTextActivity_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_activity__asTextActivity_user_avatarBuilder toBuilder() =>
      new GActivityData_activity__asTextActivity_user_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_activity__asTextActivity_user_avatar &&
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
            r'GActivityData_activity__asTextActivity_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GActivityData_activity__asTextActivity_user_avatarBuilder
    implements
        Builder<GActivityData_activity__asTextActivity_user_avatar,
            GActivityData_activity__asTextActivity_user_avatarBuilder> {
  _$GActivityData_activity__asTextActivity_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GActivityData_activity__asTextActivity_user_avatarBuilder() {
    GActivityData_activity__asTextActivity_user_avatar._initializeBuilder(this);
  }

  GActivityData_activity__asTextActivity_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivityData_activity__asTextActivity_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_activity__asTextActivity_user_avatar;
  }

  @override
  void update(
      void Function(GActivityData_activity__asTextActivity_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_activity__asTextActivity_user_avatar build() => _build();

  _$GActivityData_activity__asTextActivity_user_avatar _build() {
    final _$result = _$v ??
        new _$GActivityData_activity__asTextActivity_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GActivityData_activity__asTextActivity_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_activity__asListActivity
    extends GActivityData_activity__asListActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? userId;
  @override
  final _i4.GActivityType? type;
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
  final GActivityData_activity__asListActivity_user? user;
  @override
  final GActivityData_activity__asListActivity_media? media;

  factory _$GActivityData_activity__asListActivity(
          [void Function(GActivityData_activity__asListActivityBuilder)?
              updates]) =>
      (new GActivityData_activity__asListActivityBuilder()..update(updates))
          ._build();

  _$GActivityData_activity__asListActivity._(
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
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GActivityData_activity__asListActivity', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivityData_activity__asListActivity', 'id');
    BuiltValueNullFieldError.checkNotNull(
        replyCount, r'GActivityData_activity__asListActivity', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GActivityData_activity__asListActivity', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GActivityData_activity__asListActivity', 'createdAt');
  }

  @override
  GActivityData_activity__asListActivity rebuild(
          void Function(GActivityData_activity__asListActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_activity__asListActivityBuilder toBuilder() =>
      new GActivityData_activity__asListActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_activity__asListActivity &&
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
            r'GActivityData_activity__asListActivity')
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

class GActivityData_activity__asListActivityBuilder
    implements
        Builder<GActivityData_activity__asListActivity,
            GActivityData_activity__asListActivityBuilder> {
  _$GActivityData_activity__asListActivity? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  _i4.GActivityType? _type;
  _i4.GActivityType? get type => _$this._type;
  set type(_i4.GActivityType? type) => _$this._type = type;

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

  GActivityData_activity__asListActivity_userBuilder? _user;
  GActivityData_activity__asListActivity_userBuilder get user =>
      _$this._user ??= new GActivityData_activity__asListActivity_userBuilder();
  set user(GActivityData_activity__asListActivity_userBuilder? user) =>
      _$this._user = user;

  GActivityData_activity__asListActivity_mediaBuilder? _media;
  GActivityData_activity__asListActivity_mediaBuilder get media =>
      _$this._media ??=
          new GActivityData_activity__asListActivity_mediaBuilder();
  set media(GActivityData_activity__asListActivity_mediaBuilder? media) =>
      _$this._media = media;

  GActivityData_activity__asListActivityBuilder() {
    GActivityData_activity__asListActivity._initializeBuilder(this);
  }

  GActivityData_activity__asListActivityBuilder get _$this {
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
  void replace(GActivityData_activity__asListActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_activity__asListActivity;
  }

  @override
  void update(
      void Function(GActivityData_activity__asListActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_activity__asListActivity build() => _build();

  _$GActivityData_activity__asListActivity _build() {
    _$GActivityData_activity__asListActivity _$result;
    try {
      _$result = _$v ??
          new _$GActivityData_activity__asListActivity._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GActivityData_activity__asListActivity', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GActivityData_activity__asListActivity', 'id'),
              userId: userId,
              type: type,
              status: status,
              progress: progress,
              replyCount: BuiltValueNullFieldError.checkNotNull(replyCount,
                  r'GActivityData_activity__asListActivity', 'replyCount'),
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                  r'GActivityData_activity__asListActivity', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
                  r'GActivityData_activity__asListActivity', 'createdAt'),
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
            r'GActivityData_activity__asListActivity',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_activity__asListActivity_user
    extends GActivityData_activity__asListActivity_user {
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
  final GActivityData_activity__asListActivity_user_avatar? avatar;

  factory _$GActivityData_activity__asListActivity_user(
          [void Function(GActivityData_activity__asListActivity_userBuilder)?
              updates]) =>
      (new GActivityData_activity__asListActivity_userBuilder()
            ..update(updates))
          ._build();

  _$GActivityData_activity__asListActivity_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivityData_activity__asListActivity_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivityData_activity__asListActivity_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GActivityData_activity__asListActivity_user', 'name');
  }

  @override
  GActivityData_activity__asListActivity_user rebuild(
          void Function(GActivityData_activity__asListActivity_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_activity__asListActivity_userBuilder toBuilder() =>
      new GActivityData_activity__asListActivity_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_activity__asListActivity_user &&
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
            r'GActivityData_activity__asListActivity_user')
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

class GActivityData_activity__asListActivity_userBuilder
    implements
        Builder<GActivityData_activity__asListActivity_user,
            GActivityData_activity__asListActivity_userBuilder> {
  _$GActivityData_activity__asListActivity_user? _$v;

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

  GActivityData_activity__asListActivity_user_avatarBuilder? _avatar;
  GActivityData_activity__asListActivity_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GActivityData_activity__asListActivity_user_avatarBuilder();
  set avatar(
          GActivityData_activity__asListActivity_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GActivityData_activity__asListActivity_userBuilder() {
    GActivityData_activity__asListActivity_user._initializeBuilder(this);
  }

  GActivityData_activity__asListActivity_userBuilder get _$this {
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
  void replace(GActivityData_activity__asListActivity_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_activity__asListActivity_user;
  }

  @override
  void update(
      void Function(GActivityData_activity__asListActivity_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_activity__asListActivity_user build() => _build();

  _$GActivityData_activity__asListActivity_user _build() {
    _$GActivityData_activity__asListActivity_user _$result;
    try {
      _$result = _$v ??
          new _$GActivityData_activity__asListActivity_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GActivityData_activity__asListActivity_user',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GActivityData_activity__asListActivity_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GActivityData_activity__asListActivity_user', 'name'),
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
            r'GActivityData_activity__asListActivity_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_activity__asListActivity_user_avatar
    extends GActivityData_activity__asListActivity_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GActivityData_activity__asListActivity_user_avatar(
          [void Function(
                  GActivityData_activity__asListActivity_user_avatarBuilder)?
              updates]) =>
      (new GActivityData_activity__asListActivity_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GActivityData_activity__asListActivity_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivityData_activity__asListActivity_user_avatar', 'G__typename');
  }

  @override
  GActivityData_activity__asListActivity_user_avatar rebuild(
          void Function(
                  GActivityData_activity__asListActivity_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_activity__asListActivity_user_avatarBuilder toBuilder() =>
      new GActivityData_activity__asListActivity_user_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_activity__asListActivity_user_avatar &&
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
            r'GActivityData_activity__asListActivity_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GActivityData_activity__asListActivity_user_avatarBuilder
    implements
        Builder<GActivityData_activity__asListActivity_user_avatar,
            GActivityData_activity__asListActivity_user_avatarBuilder> {
  _$GActivityData_activity__asListActivity_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GActivityData_activity__asListActivity_user_avatarBuilder() {
    GActivityData_activity__asListActivity_user_avatar._initializeBuilder(this);
  }

  GActivityData_activity__asListActivity_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivityData_activity__asListActivity_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_activity__asListActivity_user_avatar;
  }

  @override
  void update(
      void Function(GActivityData_activity__asListActivity_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_activity__asListActivity_user_avatar build() => _build();

  _$GActivityData_activity__asListActivity_user_avatar _build() {
    final _$result = _$v ??
        new _$GActivityData_activity__asListActivity_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GActivityData_activity__asListActivity_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_activity__asListActivity_media
    extends GActivityData_activity__asListActivity_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i4.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i4.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GActivityData_activity__asListActivity_media_title? title;
  @override
  final GActivityData_activity__asListActivity_media_coverImage? coverImage;

  factory _$GActivityData_activity__asListActivity_media(
          [void Function(GActivityData_activity__asListActivity_mediaBuilder)?
              updates]) =>
      (new GActivityData_activity__asListActivity_mediaBuilder()
            ..update(updates))
          ._build();

  _$GActivityData_activity__asListActivity_media._(
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
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivityData_activity__asListActivity_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivityData_activity__asListActivity_media', 'id');
  }

  @override
  GActivityData_activity__asListActivity_media rebuild(
          void Function(GActivityData_activity__asListActivity_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_activity__asListActivity_mediaBuilder toBuilder() =>
      new GActivityData_activity__asListActivity_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_activity__asListActivity_media &&
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
            r'GActivityData_activity__asListActivity_media')
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

class GActivityData_activity__asListActivity_mediaBuilder
    implements
        Builder<GActivityData_activity__asListActivity_media,
            GActivityData_activity__asListActivity_mediaBuilder> {
  _$GActivityData_activity__asListActivity_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i4.GMediaType? _type;
  _i4.GMediaType? get type => _$this._type;
  set type(_i4.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i4.GMediaFormat? _format;
  _i4.GMediaFormat? get format => _$this._format;
  set format(_i4.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GActivityData_activity__asListActivity_media_titleBuilder? _title;
  GActivityData_activity__asListActivity_media_titleBuilder get title =>
      _$this._title ??=
          new GActivityData_activity__asListActivity_media_titleBuilder();
  set title(GActivityData_activity__asListActivity_media_titleBuilder? title) =>
      _$this._title = title;

  GActivityData_activity__asListActivity_media_coverImageBuilder? _coverImage;
  GActivityData_activity__asListActivity_media_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GActivityData_activity__asListActivity_media_coverImageBuilder();
  set coverImage(
          GActivityData_activity__asListActivity_media_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GActivityData_activity__asListActivity_mediaBuilder() {
    GActivityData_activity__asListActivity_media._initializeBuilder(this);
  }

  GActivityData_activity__asListActivity_mediaBuilder get _$this {
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
  void replace(GActivityData_activity__asListActivity_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_activity__asListActivity_media;
  }

  @override
  void update(
      void Function(GActivityData_activity__asListActivity_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_activity__asListActivity_media build() => _build();

  _$GActivityData_activity__asListActivity_media _build() {
    _$GActivityData_activity__asListActivity_media _$result;
    try {
      _$result = _$v ??
          new _$GActivityData_activity__asListActivity_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GActivityData_activity__asListActivity_media',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GActivityData_activity__asListActivity_media', 'id'),
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
            r'GActivityData_activity__asListActivity_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_activity__asListActivity_media_title
    extends GActivityData_activity__asListActivity_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GActivityData_activity__asListActivity_media_title(
          [void Function(
                  GActivityData_activity__asListActivity_media_titleBuilder)?
              updates]) =>
      (new GActivityData_activity__asListActivity_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GActivityData_activity__asListActivity_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivityData_activity__asListActivity_media_title', 'G__typename');
  }

  @override
  GActivityData_activity__asListActivity_media_title rebuild(
          void Function(
                  GActivityData_activity__asListActivity_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_activity__asListActivity_media_titleBuilder toBuilder() =>
      new GActivityData_activity__asListActivity_media_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_activity__asListActivity_media_title &&
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
            r'GActivityData_activity__asListActivity_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GActivityData_activity__asListActivity_media_titleBuilder
    implements
        Builder<GActivityData_activity__asListActivity_media_title,
            GActivityData_activity__asListActivity_media_titleBuilder> {
  _$GActivityData_activity__asListActivity_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GActivityData_activity__asListActivity_media_titleBuilder() {
    GActivityData_activity__asListActivity_media_title._initializeBuilder(this);
  }

  GActivityData_activity__asListActivity_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivityData_activity__asListActivity_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_activity__asListActivity_media_title;
  }

  @override
  void update(
      void Function(GActivityData_activity__asListActivity_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_activity__asListActivity_media_title build() => _build();

  _$GActivityData_activity__asListActivity_media_title _build() {
    final _$result = _$v ??
        new _$GActivityData_activity__asListActivity_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GActivityData_activity__asListActivity_media_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_activity__asListActivity_media_coverImage
    extends GActivityData_activity__asListActivity_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GActivityData_activity__asListActivity_media_coverImage(
          [void Function(
                  GActivityData_activity__asListActivity_media_coverImageBuilder)?
              updates]) =>
      (new GActivityData_activity__asListActivity_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GActivityData_activity__asListActivity_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GActivityData_activity__asListActivity_media_coverImage',
        'G__typename');
  }

  @override
  GActivityData_activity__asListActivity_media_coverImage rebuild(
          void Function(
                  GActivityData_activity__asListActivity_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_activity__asListActivity_media_coverImageBuilder toBuilder() =>
      new GActivityData_activity__asListActivity_media_coverImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_activity__asListActivity_media_coverImage &&
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
            r'GActivityData_activity__asListActivity_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GActivityData_activity__asListActivity_media_coverImageBuilder
    implements
        Builder<GActivityData_activity__asListActivity_media_coverImage,
            GActivityData_activity__asListActivity_media_coverImageBuilder> {
  _$GActivityData_activity__asListActivity_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GActivityData_activity__asListActivity_media_coverImageBuilder() {
    GActivityData_activity__asListActivity_media_coverImage._initializeBuilder(
        this);
  }

  GActivityData_activity__asListActivity_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivityData_activity__asListActivity_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_activity__asListActivity_media_coverImage;
  }

  @override
  void update(
      void Function(
              GActivityData_activity__asListActivity_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_activity__asListActivity_media_coverImage build() => _build();

  _$GActivityData_activity__asListActivity_media_coverImage _build() {
    final _$result = _$v ??
        new _$GActivityData_activity__asListActivity_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GActivityData_activity__asListActivity_media_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_activity__asMessageActivity
    extends GActivityData_activity__asMessageActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i4.GActivityType? type;
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
  final GActivityData_activity__asMessageActivity_messenger? messenger;

  factory _$GActivityData_activity__asMessageActivity(
          [void Function(GActivityData_activity__asMessageActivityBuilder)?
              updates]) =>
      (new GActivityData_activity__asMessageActivityBuilder()..update(updates))
          ._build();

  _$GActivityData_activity__asMessageActivity._(
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
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivityData_activity__asMessageActivity', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivityData_activity__asMessageActivity', 'id');
    BuiltValueNullFieldError.checkNotNull(
        replyCount, r'GActivityData_activity__asMessageActivity', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GActivityData_activity__asMessageActivity', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GActivityData_activity__asMessageActivity', 'createdAt');
  }

  @override
  GActivityData_activity__asMessageActivity rebuild(
          void Function(GActivityData_activity__asMessageActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_activity__asMessageActivityBuilder toBuilder() =>
      new GActivityData_activity__asMessageActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_activity__asMessageActivity &&
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
            r'GActivityData_activity__asMessageActivity')
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

class GActivityData_activity__asMessageActivityBuilder
    implements
        Builder<GActivityData_activity__asMessageActivity,
            GActivityData_activity__asMessageActivityBuilder> {
  _$GActivityData_activity__asMessageActivity? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i4.GActivityType? _type;
  _i4.GActivityType? get type => _$this._type;
  set type(_i4.GActivityType? type) => _$this._type = type;

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

  GActivityData_activity__asMessageActivity_messengerBuilder? _messenger;
  GActivityData_activity__asMessageActivity_messengerBuilder get messenger =>
      _$this._messenger ??=
          new GActivityData_activity__asMessageActivity_messengerBuilder();
  set messenger(
          GActivityData_activity__asMessageActivity_messengerBuilder?
              messenger) =>
      _$this._messenger = messenger;

  GActivityData_activity__asMessageActivityBuilder() {
    GActivityData_activity__asMessageActivity._initializeBuilder(this);
  }

  GActivityData_activity__asMessageActivityBuilder get _$this {
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
  void replace(GActivityData_activity__asMessageActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_activity__asMessageActivity;
  }

  @override
  void update(
      void Function(GActivityData_activity__asMessageActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_activity__asMessageActivity build() => _build();

  _$GActivityData_activity__asMessageActivity _build() {
    _$GActivityData_activity__asMessageActivity _$result;
    try {
      _$result = _$v ??
          new _$GActivityData_activity__asMessageActivity._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GActivityData_activity__asMessageActivity', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GActivityData_activity__asMessageActivity', 'id'),
              type: type,
              message: message,
              replyCount: BuiltValueNullFieldError.checkNotNull(replyCount,
                  r'GActivityData_activity__asMessageActivity', 'replyCount'),
              isPrivate: isPrivate,
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                  r'GActivityData_activity__asMessageActivity', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
                  r'GActivityData_activity__asMessageActivity', 'createdAt'),
              userId: userId,
              messenger: _messenger?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messenger';
        _messenger?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GActivityData_activity__asMessageActivity',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_activity__asMessageActivity_messenger
    extends GActivityData_activity__asMessageActivity_messenger {
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
  final GActivityData_activity__asMessageActivity_messenger_avatar? avatar;

  factory _$GActivityData_activity__asMessageActivity_messenger(
          [void Function(
                  GActivityData_activity__asMessageActivity_messengerBuilder)?
              updates]) =>
      (new GActivityData_activity__asMessageActivity_messengerBuilder()
            ..update(updates))
          ._build();

  _$GActivityData_activity__asMessageActivity_messenger._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivityData_activity__asMessageActivity_messenger', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivityData_activity__asMessageActivity_messenger', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GActivityData_activity__asMessageActivity_messenger', 'name');
  }

  @override
  GActivityData_activity__asMessageActivity_messenger rebuild(
          void Function(
                  GActivityData_activity__asMessageActivity_messengerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_activity__asMessageActivity_messengerBuilder toBuilder() =>
      new GActivityData_activity__asMessageActivity_messengerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_activity__asMessageActivity_messenger &&
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
            r'GActivityData_activity__asMessageActivity_messenger')
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

class GActivityData_activity__asMessageActivity_messengerBuilder
    implements
        Builder<GActivityData_activity__asMessageActivity_messenger,
            GActivityData_activity__asMessageActivity_messengerBuilder> {
  _$GActivityData_activity__asMessageActivity_messenger? _$v;

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

  GActivityData_activity__asMessageActivity_messenger_avatarBuilder? _avatar;
  GActivityData_activity__asMessageActivity_messenger_avatarBuilder
      get avatar => _$this._avatar ??=
          new GActivityData_activity__asMessageActivity_messenger_avatarBuilder();
  set avatar(
          GActivityData_activity__asMessageActivity_messenger_avatarBuilder?
              avatar) =>
      _$this._avatar = avatar;

  GActivityData_activity__asMessageActivity_messengerBuilder() {
    GActivityData_activity__asMessageActivity_messenger._initializeBuilder(
        this);
  }

  GActivityData_activity__asMessageActivity_messengerBuilder get _$this {
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
  void replace(GActivityData_activity__asMessageActivity_messenger other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_activity__asMessageActivity_messenger;
  }

  @override
  void update(
      void Function(GActivityData_activity__asMessageActivity_messengerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_activity__asMessageActivity_messenger build() => _build();

  _$GActivityData_activity__asMessageActivity_messenger _build() {
    _$GActivityData_activity__asMessageActivity_messenger _$result;
    try {
      _$result = _$v ??
          new _$GActivityData_activity__asMessageActivity_messenger._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GActivityData_activity__asMessageActivity_messenger',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GActivityData_activity__asMessageActivity_messenger', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'GActivityData_activity__asMessageActivity_messenger',
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
            r'GActivityData_activity__asMessageActivity_messenger',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_activity__asMessageActivity_messenger_avatar
    extends GActivityData_activity__asMessageActivity_messenger_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GActivityData_activity__asMessageActivity_messenger_avatar(
          [void Function(
                  GActivityData_activity__asMessageActivity_messenger_avatarBuilder)?
              updates]) =>
      (new GActivityData_activity__asMessageActivity_messenger_avatarBuilder()
            ..update(updates))
          ._build();

  _$GActivityData_activity__asMessageActivity_messenger_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GActivityData_activity__asMessageActivity_messenger_avatar',
        'G__typename');
  }

  @override
  GActivityData_activity__asMessageActivity_messenger_avatar rebuild(
          void Function(
                  GActivityData_activity__asMessageActivity_messenger_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_activity__asMessageActivity_messenger_avatarBuilder
      toBuilder() =>
          new GActivityData_activity__asMessageActivity_messenger_avatarBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GActivityData_activity__asMessageActivity_messenger_avatar &&
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
            r'GActivityData_activity__asMessageActivity_messenger_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GActivityData_activity__asMessageActivity_messenger_avatarBuilder
    implements
        Builder<GActivityData_activity__asMessageActivity_messenger_avatar,
            GActivityData_activity__asMessageActivity_messenger_avatarBuilder> {
  _$GActivityData_activity__asMessageActivity_messenger_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GActivityData_activity__asMessageActivity_messenger_avatarBuilder() {
    GActivityData_activity__asMessageActivity_messenger_avatar
        ._initializeBuilder(this);
  }

  GActivityData_activity__asMessageActivity_messenger_avatarBuilder get _$this {
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
      GActivityData_activity__asMessageActivity_messenger_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_activity__asMessageActivity_messenger_avatar;
  }

  @override
  void update(
      void Function(
              GActivityData_activity__asMessageActivity_messenger_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_activity__asMessageActivity_messenger_avatar build() =>
      _build();

  _$GActivityData_activity__asMessageActivity_messenger_avatar _build() {
    final _$result = _$v ??
        new _$GActivityData_activity__asMessageActivity_messenger_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GActivityData_activity__asMessageActivity_messenger_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_replies extends GActivityData_replies {
  @override
  final String G__typename;
  @override
  final GActivityData_replies_pageInfo? pageInfo;
  @override
  final BuiltList<GActivityData_replies_activityReplies?>? activityReplies;

  factory _$GActivityData_replies(
          [void Function(GActivityData_repliesBuilder)? updates]) =>
      (new GActivityData_repliesBuilder()..update(updates))._build();

  _$GActivityData_replies._(
      {required this.G__typename, this.pageInfo, this.activityReplies})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GActivityData_replies', 'G__typename');
  }

  @override
  GActivityData_replies rebuild(
          void Function(GActivityData_repliesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_repliesBuilder toBuilder() =>
      new GActivityData_repliesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_replies &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        activityReplies == other.activityReplies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, activityReplies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GActivityData_replies')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('activityReplies', activityReplies))
        .toString();
  }
}

class GActivityData_repliesBuilder
    implements Builder<GActivityData_replies, GActivityData_repliesBuilder> {
  _$GActivityData_replies? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GActivityData_replies_pageInfoBuilder? _pageInfo;
  GActivityData_replies_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GActivityData_replies_pageInfoBuilder();
  set pageInfo(GActivityData_replies_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GActivityData_replies_activityReplies?>? _activityReplies;
  ListBuilder<GActivityData_replies_activityReplies?> get activityReplies =>
      _$this._activityReplies ??=
          new ListBuilder<GActivityData_replies_activityReplies?>();
  set activityReplies(
          ListBuilder<GActivityData_replies_activityReplies?>?
              activityReplies) =>
      _$this._activityReplies = activityReplies;

  GActivityData_repliesBuilder() {
    GActivityData_replies._initializeBuilder(this);
  }

  GActivityData_repliesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _activityReplies = $v.activityReplies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivityData_replies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_replies;
  }

  @override
  void update(void Function(GActivityData_repliesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_replies build() => _build();

  _$GActivityData_replies _build() {
    _$GActivityData_replies _$result;
    try {
      _$result = _$v ??
          new _$GActivityData_replies._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GActivityData_replies', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              activityReplies: _activityReplies?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'activityReplies';
        _activityReplies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GActivityData_replies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_replies_pageInfo extends GActivityData_replies_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GActivityData_replies_pageInfo(
          [void Function(GActivityData_replies_pageInfoBuilder)? updates]) =>
      (new GActivityData_replies_pageInfoBuilder()..update(updates))._build();

  _$GActivityData_replies_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GActivityData_replies_pageInfo', 'G__typename');
  }

  @override
  GActivityData_replies_pageInfo rebuild(
          void Function(GActivityData_replies_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_replies_pageInfoBuilder toBuilder() =>
      new GActivityData_replies_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_replies_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GActivityData_replies_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GActivityData_replies_pageInfoBuilder
    implements
        Builder<GActivityData_replies_pageInfo,
            GActivityData_replies_pageInfoBuilder> {
  _$GActivityData_replies_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GActivityData_replies_pageInfoBuilder() {
    GActivityData_replies_pageInfo._initializeBuilder(this);
  }

  GActivityData_replies_pageInfoBuilder get _$this {
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
  void replace(GActivityData_replies_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_replies_pageInfo;
  }

  @override
  void update(void Function(GActivityData_replies_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_replies_pageInfo build() => _build();

  _$GActivityData_replies_pageInfo _build() {
    final _$result = _$v ??
        new _$GActivityData_replies_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GActivityData_replies_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_replies_activityReplies
    extends GActivityData_replies_activityReplies {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? userId;
  @override
  final String? text;
  @override
  final int createdAt;
  @override
  final int? activityId;
  @override
  final bool? isLiked;
  @override
  final int likeCount;
  @override
  final GActivityData_replies_activityReplies_user? user;

  factory _$GActivityData_replies_activityReplies(
          [void Function(GActivityData_replies_activityRepliesBuilder)?
              updates]) =>
      (new GActivityData_replies_activityRepliesBuilder()..update(updates))
          ._build();

  _$GActivityData_replies_activityReplies._(
      {required this.G__typename,
      required this.id,
      this.userId,
      this.text,
      required this.createdAt,
      this.activityId,
      this.isLiked,
      required this.likeCount,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GActivityData_replies_activityReplies', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivityData_replies_activityReplies', 'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GActivityData_replies_activityReplies', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GActivityData_replies_activityReplies', 'likeCount');
  }

  @override
  GActivityData_replies_activityReplies rebuild(
          void Function(GActivityData_replies_activityRepliesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_replies_activityRepliesBuilder toBuilder() =>
      new GActivityData_replies_activityRepliesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_replies_activityReplies &&
        G__typename == other.G__typename &&
        id == other.id &&
        userId == other.userId &&
        text == other.text &&
        createdAt == other.createdAt &&
        activityId == other.activityId &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, activityId.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GActivityData_replies_activityReplies')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('userId', userId)
          ..add('text', text)
          ..add('createdAt', createdAt)
          ..add('activityId', activityId)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount)
          ..add('user', user))
        .toString();
  }
}

class GActivityData_replies_activityRepliesBuilder
    implements
        Builder<GActivityData_replies_activityReplies,
            GActivityData_replies_activityRepliesBuilder> {
  _$GActivityData_replies_activityReplies? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  int? _activityId;
  int? get activityId => _$this._activityId;
  set activityId(int? activityId) => _$this._activityId = activityId;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  GActivityData_replies_activityReplies_userBuilder? _user;
  GActivityData_replies_activityReplies_userBuilder get user =>
      _$this._user ??= new GActivityData_replies_activityReplies_userBuilder();
  set user(GActivityData_replies_activityReplies_userBuilder? user) =>
      _$this._user = user;

  GActivityData_replies_activityRepliesBuilder() {
    GActivityData_replies_activityReplies._initializeBuilder(this);
  }

  GActivityData_replies_activityRepliesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _userId = $v.userId;
      _text = $v.text;
      _createdAt = $v.createdAt;
      _activityId = $v.activityId;
      _isLiked = $v.isLiked;
      _likeCount = $v.likeCount;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivityData_replies_activityReplies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_replies_activityReplies;
  }

  @override
  void update(
      void Function(GActivityData_replies_activityRepliesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_replies_activityReplies build() => _build();

  _$GActivityData_replies_activityReplies _build() {
    _$GActivityData_replies_activityReplies _$result;
    try {
      _$result = _$v ??
          new _$GActivityData_replies_activityReplies._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GActivityData_replies_activityReplies', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GActivityData_replies_activityReplies', 'id'),
              userId: userId,
              text: text,
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
                  r'GActivityData_replies_activityReplies', 'createdAt'),
              activityId: activityId,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                  r'GActivityData_replies_activityReplies', 'likeCount'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GActivityData_replies_activityReplies',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_replies_activityReplies_user
    extends GActivityData_replies_activityReplies_user {
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
  final GActivityData_replies_activityReplies_user_avatar? avatar;

  factory _$GActivityData_replies_activityReplies_user(
          [void Function(GActivityData_replies_activityReplies_userBuilder)?
              updates]) =>
      (new GActivityData_replies_activityReplies_userBuilder()..update(updates))
          ._build();

  _$GActivityData_replies_activityReplies_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivityData_replies_activityReplies_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GActivityData_replies_activityReplies_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GActivityData_replies_activityReplies_user', 'name');
  }

  @override
  GActivityData_replies_activityReplies_user rebuild(
          void Function(GActivityData_replies_activityReplies_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_replies_activityReplies_userBuilder toBuilder() =>
      new GActivityData_replies_activityReplies_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_replies_activityReplies_user &&
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
            r'GActivityData_replies_activityReplies_user')
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

class GActivityData_replies_activityReplies_userBuilder
    implements
        Builder<GActivityData_replies_activityReplies_user,
            GActivityData_replies_activityReplies_userBuilder> {
  _$GActivityData_replies_activityReplies_user? _$v;

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

  GActivityData_replies_activityReplies_user_avatarBuilder? _avatar;
  GActivityData_replies_activityReplies_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GActivityData_replies_activityReplies_user_avatarBuilder();
  set avatar(
          GActivityData_replies_activityReplies_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GActivityData_replies_activityReplies_userBuilder() {
    GActivityData_replies_activityReplies_user._initializeBuilder(this);
  }

  GActivityData_replies_activityReplies_userBuilder get _$this {
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
  void replace(GActivityData_replies_activityReplies_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_replies_activityReplies_user;
  }

  @override
  void update(
      void Function(GActivityData_replies_activityReplies_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_replies_activityReplies_user build() => _build();

  _$GActivityData_replies_activityReplies_user _build() {
    _$GActivityData_replies_activityReplies_user _$result;
    try {
      _$result = _$v ??
          new _$GActivityData_replies_activityReplies_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GActivityData_replies_activityReplies_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GActivityData_replies_activityReplies_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GActivityData_replies_activityReplies_user', 'name'),
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
            r'GActivityData_replies_activityReplies_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GActivityData_replies_activityReplies_user_avatar
    extends GActivityData_replies_activityReplies_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GActivityData_replies_activityReplies_user_avatar(
          [void Function(
                  GActivityData_replies_activityReplies_user_avatarBuilder)?
              updates]) =>
      (new GActivityData_replies_activityReplies_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GActivityData_replies_activityReplies_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GActivityData_replies_activityReplies_user_avatar', 'G__typename');
  }

  @override
  GActivityData_replies_activityReplies_user_avatar rebuild(
          void Function(
                  GActivityData_replies_activityReplies_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GActivityData_replies_activityReplies_user_avatarBuilder toBuilder() =>
      new GActivityData_replies_activityReplies_user_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GActivityData_replies_activityReplies_user_avatar &&
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
            r'GActivityData_replies_activityReplies_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GActivityData_replies_activityReplies_user_avatarBuilder
    implements
        Builder<GActivityData_replies_activityReplies_user_avatar,
            GActivityData_replies_activityReplies_user_avatarBuilder> {
  _$GActivityData_replies_activityReplies_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GActivityData_replies_activityReplies_user_avatarBuilder() {
    GActivityData_replies_activityReplies_user_avatar._initializeBuilder(this);
  }

  GActivityData_replies_activityReplies_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GActivityData_replies_activityReplies_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GActivityData_replies_activityReplies_user_avatar;
  }

  @override
  void update(
      void Function(GActivityData_replies_activityReplies_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GActivityData_replies_activityReplies_user_avatar build() => _build();

  _$GActivityData_replies_activityReplies_user_avatar _build() {
    final _$result = _$v ??
        new _$GActivityData_replies_activityReplies_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GActivityData_replies_activityReplies_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveActivityReplyData extends GSaveActivityReplyData {
  @override
  final String G__typename;
  @override
  final GSaveActivityReplyData_SaveActivityReply? SaveActivityReply;

  factory _$GSaveActivityReplyData(
          [void Function(GSaveActivityReplyDataBuilder)? updates]) =>
      (new GSaveActivityReplyDataBuilder()..update(updates))._build();

  _$GSaveActivityReplyData._(
      {required this.G__typename, this.SaveActivityReply})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaveActivityReplyData', 'G__typename');
  }

  @override
  GSaveActivityReplyData rebuild(
          void Function(GSaveActivityReplyDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveActivityReplyDataBuilder toBuilder() =>
      new GSaveActivityReplyDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveActivityReplyData &&
        G__typename == other.G__typename &&
        SaveActivityReply == other.SaveActivityReply;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, SaveActivityReply.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveActivityReplyData')
          ..add('G__typename', G__typename)
          ..add('SaveActivityReply', SaveActivityReply))
        .toString();
  }
}

class GSaveActivityReplyDataBuilder
    implements Builder<GSaveActivityReplyData, GSaveActivityReplyDataBuilder> {
  _$GSaveActivityReplyData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSaveActivityReplyData_SaveActivityReplyBuilder? _SaveActivityReply;
  GSaveActivityReplyData_SaveActivityReplyBuilder get SaveActivityReply =>
      _$this._SaveActivityReply ??=
          new GSaveActivityReplyData_SaveActivityReplyBuilder();
  set SaveActivityReply(
          GSaveActivityReplyData_SaveActivityReplyBuilder? SaveActivityReply) =>
      _$this._SaveActivityReply = SaveActivityReply;

  GSaveActivityReplyDataBuilder() {
    GSaveActivityReplyData._initializeBuilder(this);
  }

  GSaveActivityReplyDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _SaveActivityReply = $v.SaveActivityReply?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveActivityReplyData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveActivityReplyData;
  }

  @override
  void update(void Function(GSaveActivityReplyDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveActivityReplyData build() => _build();

  _$GSaveActivityReplyData _build() {
    _$GSaveActivityReplyData _$result;
    try {
      _$result = _$v ??
          new _$GSaveActivityReplyData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSaveActivityReplyData', 'G__typename'),
              SaveActivityReply: _SaveActivityReply?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'SaveActivityReply';
        _SaveActivityReply?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveActivityReplyData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveActivityReplyData_SaveActivityReply
    extends GSaveActivityReplyData_SaveActivityReply {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? activityId;
  @override
  final String? text;
  @override
  final int likeCount;
  @override
  final int createdAt;
  @override
  final GSaveActivityReplyData_SaveActivityReply_user? user;

  factory _$GSaveActivityReplyData_SaveActivityReply(
          [void Function(GSaveActivityReplyData_SaveActivityReplyBuilder)?
              updates]) =>
      (new GSaveActivityReplyData_SaveActivityReplyBuilder()..update(updates))
          ._build();

  _$GSaveActivityReplyData_SaveActivityReply._(
      {required this.G__typename,
      required this.id,
      this.activityId,
      this.text,
      required this.likeCount,
      required this.createdAt,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSaveActivityReplyData_SaveActivityReply', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSaveActivityReplyData_SaveActivityReply', 'id');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GSaveActivityReplyData_SaveActivityReply', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GSaveActivityReplyData_SaveActivityReply', 'createdAt');
  }

  @override
  GSaveActivityReplyData_SaveActivityReply rebuild(
          void Function(GSaveActivityReplyData_SaveActivityReplyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveActivityReplyData_SaveActivityReplyBuilder toBuilder() =>
      new GSaveActivityReplyData_SaveActivityReplyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveActivityReplyData_SaveActivityReply &&
        G__typename == other.G__typename &&
        id == other.id &&
        activityId == other.activityId &&
        text == other.text &&
        likeCount == other.likeCount &&
        createdAt == other.createdAt &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, activityId.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSaveActivityReplyData_SaveActivityReply')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('activityId', activityId)
          ..add('text', text)
          ..add('likeCount', likeCount)
          ..add('createdAt', createdAt)
          ..add('user', user))
        .toString();
  }
}

class GSaveActivityReplyData_SaveActivityReplyBuilder
    implements
        Builder<GSaveActivityReplyData_SaveActivityReply,
            GSaveActivityReplyData_SaveActivityReplyBuilder> {
  _$GSaveActivityReplyData_SaveActivityReply? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _activityId;
  int? get activityId => _$this._activityId;
  set activityId(int? activityId) => _$this._activityId = activityId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  GSaveActivityReplyData_SaveActivityReply_userBuilder? _user;
  GSaveActivityReplyData_SaveActivityReply_userBuilder get user =>
      _$this._user ??=
          new GSaveActivityReplyData_SaveActivityReply_userBuilder();
  set user(GSaveActivityReplyData_SaveActivityReply_userBuilder? user) =>
      _$this._user = user;

  GSaveActivityReplyData_SaveActivityReplyBuilder() {
    GSaveActivityReplyData_SaveActivityReply._initializeBuilder(this);
  }

  GSaveActivityReplyData_SaveActivityReplyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _activityId = $v.activityId;
      _text = $v.text;
      _likeCount = $v.likeCount;
      _createdAt = $v.createdAt;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveActivityReplyData_SaveActivityReply other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveActivityReplyData_SaveActivityReply;
  }

  @override
  void update(
      void Function(GSaveActivityReplyData_SaveActivityReplyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveActivityReplyData_SaveActivityReply build() => _build();

  _$GSaveActivityReplyData_SaveActivityReply _build() {
    _$GSaveActivityReplyData_SaveActivityReply _$result;
    try {
      _$result = _$v ??
          new _$GSaveActivityReplyData_SaveActivityReply._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSaveActivityReplyData_SaveActivityReply', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSaveActivityReplyData_SaveActivityReply', 'id'),
              activityId: activityId,
              text: text,
              likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                  r'GSaveActivityReplyData_SaveActivityReply', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
                  r'GSaveActivityReplyData_SaveActivityReply', 'createdAt'),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveActivityReplyData_SaveActivityReply',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveActivityReplyData_SaveActivityReply_user
    extends GSaveActivityReplyData_SaveActivityReply_user {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final GSaveActivityReplyData_SaveActivityReply_user_avatar? avatar;

  factory _$GSaveActivityReplyData_SaveActivityReply_user(
          [void Function(GSaveActivityReplyData_SaveActivityReply_userBuilder)?
              updates]) =>
      (new GSaveActivityReplyData_SaveActivityReply_userBuilder()
            ..update(updates))
          ._build();

  _$GSaveActivityReplyData_SaveActivityReply_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSaveActivityReplyData_SaveActivityReply_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSaveActivityReplyData_SaveActivityReply_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GSaveActivityReplyData_SaveActivityReply_user', 'name');
  }

  @override
  GSaveActivityReplyData_SaveActivityReply_user rebuild(
          void Function(GSaveActivityReplyData_SaveActivityReply_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveActivityReplyData_SaveActivityReply_userBuilder toBuilder() =>
      new GSaveActivityReplyData_SaveActivityReply_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveActivityReplyData_SaveActivityReply_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GSaveActivityReplyData_SaveActivityReply_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('avatar', avatar))
        .toString();
  }
}

class GSaveActivityReplyData_SaveActivityReply_userBuilder
    implements
        Builder<GSaveActivityReplyData_SaveActivityReply_user,
            GSaveActivityReplyData_SaveActivityReply_userBuilder> {
  _$GSaveActivityReplyData_SaveActivityReply_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder? _avatar;
  GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder();
  set avatar(
          GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder?
              avatar) =>
      _$this._avatar = avatar;

  GSaveActivityReplyData_SaveActivityReply_userBuilder() {
    GSaveActivityReplyData_SaveActivityReply_user._initializeBuilder(this);
  }

  GSaveActivityReplyData_SaveActivityReply_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _avatar = $v.avatar?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveActivityReplyData_SaveActivityReply_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveActivityReplyData_SaveActivityReply_user;
  }

  @override
  void update(
      void Function(GSaveActivityReplyData_SaveActivityReply_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveActivityReplyData_SaveActivityReply_user build() => _build();

  _$GSaveActivityReplyData_SaveActivityReply_user _build() {
    _$GSaveActivityReplyData_SaveActivityReply_user _$result;
    try {
      _$result = _$v ??
          new _$GSaveActivityReplyData_SaveActivityReply_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSaveActivityReplyData_SaveActivityReply_user',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSaveActivityReplyData_SaveActivityReply_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(name,
                  r'GSaveActivityReplyData_SaveActivityReply_user', 'name'),
              avatar: _avatar?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveActivityReplyData_SaveActivityReply_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveActivityReplyData_SaveActivityReply_user_avatar
    extends GSaveActivityReplyData_SaveActivityReply_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GSaveActivityReplyData_SaveActivityReply_user_avatar(
          [void Function(
                  GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder)?
              updates]) =>
      (new GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GSaveActivityReplyData_SaveActivityReply_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSaveActivityReplyData_SaveActivityReply_user_avatar', 'G__typename');
  }

  @override
  GSaveActivityReplyData_SaveActivityReply_user_avatar rebuild(
          void Function(
                  GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder toBuilder() =>
      new GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveActivityReplyData_SaveActivityReply_user_avatar &&
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
            r'GSaveActivityReplyData_SaveActivityReply_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder
    implements
        Builder<GSaveActivityReplyData_SaveActivityReply_user_avatar,
            GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder> {
  _$GSaveActivityReplyData_SaveActivityReply_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder() {
    GSaveActivityReplyData_SaveActivityReply_user_avatar._initializeBuilder(
        this);
  }

  GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveActivityReplyData_SaveActivityReply_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveActivityReplyData_SaveActivityReply_user_avatar;
  }

  @override
  void update(
      void Function(
              GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveActivityReplyData_SaveActivityReply_user_avatar build() => _build();

  _$GSaveActivityReplyData_SaveActivityReply_user_avatar _build() {
    final _$result = _$v ??
        new _$GSaveActivityReplyData_SaveActivityReply_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSaveActivityReplyData_SaveActivityReply_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMessageActivityData extends GSaveMessageActivityData {
  @override
  final String G__typename;
  @override
  final GSaveMessageActivityData_SaveMessageActivity? SaveMessageActivity;

  factory _$GSaveMessageActivityData(
          [void Function(GSaveMessageActivityDataBuilder)? updates]) =>
      (new GSaveMessageActivityDataBuilder()..update(updates))._build();

  _$GSaveMessageActivityData._(
      {required this.G__typename, this.SaveMessageActivity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaveMessageActivityData', 'G__typename');
  }

  @override
  GSaveMessageActivityData rebuild(
          void Function(GSaveMessageActivityDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMessageActivityDataBuilder toBuilder() =>
      new GSaveMessageActivityDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveMessageActivityData &&
        G__typename == other.G__typename &&
        SaveMessageActivity == other.SaveMessageActivity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, SaveMessageActivity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveMessageActivityData')
          ..add('G__typename', G__typename)
          ..add('SaveMessageActivity', SaveMessageActivity))
        .toString();
  }
}

class GSaveMessageActivityDataBuilder
    implements
        Builder<GSaveMessageActivityData, GSaveMessageActivityDataBuilder> {
  _$GSaveMessageActivityData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSaveMessageActivityData_SaveMessageActivityBuilder? _SaveMessageActivity;
  GSaveMessageActivityData_SaveMessageActivityBuilder get SaveMessageActivity =>
      _$this._SaveMessageActivity ??=
          new GSaveMessageActivityData_SaveMessageActivityBuilder();
  set SaveMessageActivity(
          GSaveMessageActivityData_SaveMessageActivityBuilder?
              SaveMessageActivity) =>
      _$this._SaveMessageActivity = SaveMessageActivity;

  GSaveMessageActivityDataBuilder() {
    GSaveMessageActivityData._initializeBuilder(this);
  }

  GSaveMessageActivityDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _SaveMessageActivity = $v.SaveMessageActivity?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveMessageActivityData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveMessageActivityData;
  }

  @override
  void update(void Function(GSaveMessageActivityDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMessageActivityData build() => _build();

  _$GSaveMessageActivityData _build() {
    _$GSaveMessageActivityData _$result;
    try {
      _$result = _$v ??
          new _$GSaveMessageActivityData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSaveMessageActivityData', 'G__typename'),
              SaveMessageActivity: _SaveMessageActivity?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'SaveMessageActivity';
        _SaveMessageActivity?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveMessageActivityData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMessageActivityData_SaveMessageActivity
    extends GSaveMessageActivityData_SaveMessageActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i4.GActivityType? type;
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
  final GSaveMessageActivityData_SaveMessageActivity_messenger? messenger;

  factory _$GSaveMessageActivityData_SaveMessageActivity(
          [void Function(GSaveMessageActivityData_SaveMessageActivityBuilder)?
              updates]) =>
      (new GSaveMessageActivityData_SaveMessageActivityBuilder()
            ..update(updates))
          ._build();

  _$GSaveMessageActivityData_SaveMessageActivity._(
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
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSaveMessageActivityData_SaveMessageActivity', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSaveMessageActivityData_SaveMessageActivity', 'id');
    BuiltValueNullFieldError.checkNotNull(replyCount,
        r'GSaveMessageActivityData_SaveMessageActivity', 'replyCount');
    BuiltValueNullFieldError.checkNotNull(likeCount,
        r'GSaveMessageActivityData_SaveMessageActivity', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(createdAt,
        r'GSaveMessageActivityData_SaveMessageActivity', 'createdAt');
  }

  @override
  GSaveMessageActivityData_SaveMessageActivity rebuild(
          void Function(GSaveMessageActivityData_SaveMessageActivityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMessageActivityData_SaveMessageActivityBuilder toBuilder() =>
      new GSaveMessageActivityData_SaveMessageActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveMessageActivityData_SaveMessageActivity &&
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
            r'GSaveMessageActivityData_SaveMessageActivity')
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

class GSaveMessageActivityData_SaveMessageActivityBuilder
    implements
        Builder<GSaveMessageActivityData_SaveMessageActivity,
            GSaveMessageActivityData_SaveMessageActivityBuilder> {
  _$GSaveMessageActivityData_SaveMessageActivity? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i4.GActivityType? _type;
  _i4.GActivityType? get type => _$this._type;
  set type(_i4.GActivityType? type) => _$this._type = type;

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

  GSaveMessageActivityData_SaveMessageActivity_messengerBuilder? _messenger;
  GSaveMessageActivityData_SaveMessageActivity_messengerBuilder get messenger =>
      _$this._messenger ??=
          new GSaveMessageActivityData_SaveMessageActivity_messengerBuilder();
  set messenger(
          GSaveMessageActivityData_SaveMessageActivity_messengerBuilder?
              messenger) =>
      _$this._messenger = messenger;

  GSaveMessageActivityData_SaveMessageActivityBuilder() {
    GSaveMessageActivityData_SaveMessageActivity._initializeBuilder(this);
  }

  GSaveMessageActivityData_SaveMessageActivityBuilder get _$this {
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
  void replace(GSaveMessageActivityData_SaveMessageActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveMessageActivityData_SaveMessageActivity;
  }

  @override
  void update(
      void Function(GSaveMessageActivityData_SaveMessageActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMessageActivityData_SaveMessageActivity build() => _build();

  _$GSaveMessageActivityData_SaveMessageActivity _build() {
    _$GSaveMessageActivityData_SaveMessageActivity _$result;
    try {
      _$result = _$v ??
          new _$GSaveMessageActivityData_SaveMessageActivity._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSaveMessageActivityData_SaveMessageActivity',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSaveMessageActivityData_SaveMessageActivity', 'id'),
              type: type,
              message: message,
              replyCount: BuiltValueNullFieldError.checkNotNull(
                  replyCount,
                  r'GSaveMessageActivityData_SaveMessageActivity',
                  'replyCount'),
              isPrivate: isPrivate,
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                  r'GSaveMessageActivityData_SaveMessageActivity', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
                  r'GSaveMessageActivityData_SaveMessageActivity', 'createdAt'),
              userId: userId,
              messenger: _messenger?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messenger';
        _messenger?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveMessageActivityData_SaveMessageActivity',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMessageActivityData_SaveMessageActivity_messenger
    extends GSaveMessageActivityData_SaveMessageActivity_messenger {
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
  final GSaveMessageActivityData_SaveMessageActivity_messenger_avatar? avatar;

  factory _$GSaveMessageActivityData_SaveMessageActivity_messenger(
          [void Function(
                  GSaveMessageActivityData_SaveMessageActivity_messengerBuilder)?
              updates]) =>
      (new GSaveMessageActivityData_SaveMessageActivity_messengerBuilder()
            ..update(updates))
          ._build();

  _$GSaveMessageActivityData_SaveMessageActivity_messenger._(
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
        r'GSaveMessageActivityData_SaveMessageActivity_messenger',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSaveMessageActivityData_SaveMessageActivity_messenger', 'id');
    BuiltValueNullFieldError.checkNotNull(name,
        r'GSaveMessageActivityData_SaveMessageActivity_messenger', 'name');
  }

  @override
  GSaveMessageActivityData_SaveMessageActivity_messenger rebuild(
          void Function(
                  GSaveMessageActivityData_SaveMessageActivity_messengerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMessageActivityData_SaveMessageActivity_messengerBuilder toBuilder() =>
      new GSaveMessageActivityData_SaveMessageActivity_messengerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveMessageActivityData_SaveMessageActivity_messenger &&
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
            r'GSaveMessageActivityData_SaveMessageActivity_messenger')
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

class GSaveMessageActivityData_SaveMessageActivity_messengerBuilder
    implements
        Builder<GSaveMessageActivityData_SaveMessageActivity_messenger,
            GSaveMessageActivityData_SaveMessageActivity_messengerBuilder> {
  _$GSaveMessageActivityData_SaveMessageActivity_messenger? _$v;

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

  GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder? _avatar;
  GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder
      get avatar => _$this._avatar ??=
          new GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder();
  set avatar(
          GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder?
              avatar) =>
      _$this._avatar = avatar;

  GSaveMessageActivityData_SaveMessageActivity_messengerBuilder() {
    GSaveMessageActivityData_SaveMessageActivity_messenger._initializeBuilder(
        this);
  }

  GSaveMessageActivityData_SaveMessageActivity_messengerBuilder get _$this {
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
  void replace(GSaveMessageActivityData_SaveMessageActivity_messenger other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveMessageActivityData_SaveMessageActivity_messenger;
  }

  @override
  void update(
      void Function(
              GSaveMessageActivityData_SaveMessageActivity_messengerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMessageActivityData_SaveMessageActivity_messenger build() => _build();

  _$GSaveMessageActivityData_SaveMessageActivity_messenger _build() {
    _$GSaveMessageActivityData_SaveMessageActivity_messenger _$result;
    try {
      _$result = _$v ??
          new _$GSaveMessageActivityData_SaveMessageActivity_messenger._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSaveMessageActivityData_SaveMessageActivity_messenger',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GSaveMessageActivityData_SaveMessageActivity_messenger',
                  'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'GSaveMessageActivityData_SaveMessageActivity_messenger',
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
            r'GSaveMessageActivityData_SaveMessageActivity_messenger',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMessageActivityData_SaveMessageActivity_messenger_avatar
    extends GSaveMessageActivityData_SaveMessageActivity_messenger_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GSaveMessageActivityData_SaveMessageActivity_messenger_avatar(
          [void Function(
                  GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder)?
              updates]) =>
      (new GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder()
            ..update(updates))
          ._build();

  _$GSaveMessageActivityData_SaveMessageActivity_messenger_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSaveMessageActivityData_SaveMessageActivity_messenger_avatar',
        'G__typename');
  }

  @override
  GSaveMessageActivityData_SaveMessageActivity_messenger_avatar rebuild(
          void Function(
                  GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder
      toBuilder() =>
          new GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GSaveMessageActivityData_SaveMessageActivity_messenger_avatar &&
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
            r'GSaveMessageActivityData_SaveMessageActivity_messenger_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder
    implements
        Builder<GSaveMessageActivityData_SaveMessageActivity_messenger_avatar,
            GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder> {
  _$GSaveMessageActivityData_SaveMessageActivity_messenger_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder() {
    GSaveMessageActivityData_SaveMessageActivity_messenger_avatar
        ._initializeBuilder(this);
  }

  GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder
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
      GSaveMessageActivityData_SaveMessageActivity_messenger_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GSaveMessageActivityData_SaveMessageActivity_messenger_avatar;
  }

  @override
  void update(
      void Function(
              GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMessageActivityData_SaveMessageActivity_messenger_avatar build() =>
      _build();

  _$GSaveMessageActivityData_SaveMessageActivity_messenger_avatar _build() {
    final _$result = _$v ??
        new _$GSaveMessageActivityData_SaveMessageActivity_messenger_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSaveMessageActivityData_SaveMessageActivity_messenger_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleActivitySubscriptionData
    extends GToggleActivitySubscriptionData {
  @override
  final String G__typename;
  @override
  final GToggleActivitySubscriptionData_ToggleActivitySubscription?
      ToggleActivitySubscription;

  factory _$GToggleActivitySubscriptionData(
          [void Function(GToggleActivitySubscriptionDataBuilder)? updates]) =>
      (new GToggleActivitySubscriptionDataBuilder()..update(updates))._build();

  _$GToggleActivitySubscriptionData._(
      {required this.G__typename, this.ToggleActivitySubscription})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GToggleActivitySubscriptionData', 'G__typename');
  }

  @override
  GToggleActivitySubscriptionData rebuild(
          void Function(GToggleActivitySubscriptionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleActivitySubscriptionDataBuilder toBuilder() =>
      new GToggleActivitySubscriptionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleActivitySubscriptionData &&
        G__typename == other.G__typename &&
        ToggleActivitySubscription == other.ToggleActivitySubscription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ToggleActivitySubscription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToggleActivitySubscriptionData')
          ..add('G__typename', G__typename)
          ..add('ToggleActivitySubscription', ToggleActivitySubscription))
        .toString();
  }
}

class GToggleActivitySubscriptionDataBuilder
    implements
        Builder<GToggleActivitySubscriptionData,
            GToggleActivitySubscriptionDataBuilder> {
  _$GToggleActivitySubscriptionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleActivitySubscriptionData_ToggleActivitySubscription?
      _ToggleActivitySubscription;
  GToggleActivitySubscriptionData_ToggleActivitySubscription?
      get ToggleActivitySubscription => _$this._ToggleActivitySubscription;
  set ToggleActivitySubscription(
          GToggleActivitySubscriptionData_ToggleActivitySubscription?
              ToggleActivitySubscription) =>
      _$this._ToggleActivitySubscription = ToggleActivitySubscription;

  GToggleActivitySubscriptionDataBuilder() {
    GToggleActivitySubscriptionData._initializeBuilder(this);
  }

  GToggleActivitySubscriptionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ToggleActivitySubscription = $v.ToggleActivitySubscription;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleActivitySubscriptionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleActivitySubscriptionData;
  }

  @override
  void update(void Function(GToggleActivitySubscriptionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleActivitySubscriptionData build() => _build();

  _$GToggleActivitySubscriptionData _build() {
    final _$result = _$v ??
        new _$GToggleActivitySubscriptionData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GToggleActivitySubscriptionData', 'G__typename'),
            ToggleActivitySubscription: ToggleActivitySubscription);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleActivitySubscriptionData_ToggleActivitySubscription__base
    extends GToggleActivitySubscriptionData_ToggleActivitySubscription__base {
  @override
  final String G__typename;

  factory _$GToggleActivitySubscriptionData_ToggleActivitySubscription__base(
          [void Function(
                  GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder)?
              updates]) =>
      (new GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder()
            ..update(updates))
          ._build();

  _$GToggleActivitySubscriptionData_ToggleActivitySubscription__base._(
      {required this.G__typename})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GToggleActivitySubscriptionData_ToggleActivitySubscription__base',
        'G__typename');
  }

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__base rebuild(
          void Function(
                  GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder
      toBuilder() =>
          new GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GToggleActivitySubscriptionData_ToggleActivitySubscription__base &&
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
            r'GToggleActivitySubscriptionData_ToggleActivitySubscription__base')
          ..add('G__typename', G__typename))
        .toString();
  }
}

class GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder
    implements
        Builder<
            GToggleActivitySubscriptionData_ToggleActivitySubscription__base,
            GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder> {
  _$GToggleActivitySubscriptionData_ToggleActivitySubscription__base? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder() {
    GToggleActivitySubscriptionData_ToggleActivitySubscription__base
        ._initializeBuilder(this);
  }

  GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GToggleActivitySubscriptionData_ToggleActivitySubscription__base other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GToggleActivitySubscriptionData_ToggleActivitySubscription__base;
  }

  @override
  void update(
      void Function(
              GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__base build() =>
      _build();

  _$GToggleActivitySubscriptionData_ToggleActivitySubscription__base _build() {
    final _$result = _$v ??
        new _$GToggleActivitySubscriptionData_ToggleActivitySubscription__base
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleActivitySubscriptionData_ToggleActivitySubscription__base',
                'G__typename'));
    replace(_$result);
    return _$result;
  }
}

class _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
    extends GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final bool? isSubscribed;

  factory _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity(
          [void Function(
                  GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder)?
              updates]) =>
      (new GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder()
            ..update(updates))
          ._build();

  _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity._(
      {required this.G__typename, required this.id, this.isSubscribed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity',
        'id');
  }

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
      rebuild(
              void Function(
                      GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder
      toBuilder() =>
          new GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity &&
        G__typename == other.G__typename &&
        id == other.id &&
        isSubscribed == other.isSubscribed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isSubscribed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isSubscribed', isSubscribed))
        .toString();
  }
}

class GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder
    implements
        Builder<
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity,
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder> {
  _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isSubscribed;
  bool? get isSubscribed => _$this._isSubscribed;
  set isSubscribed(bool? isSubscribed) => _$this._isSubscribed = isSubscribed;

  GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder() {
    GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
        ._initializeBuilder(this);
  }

  GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _isSubscribed = $v.isSubscribed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity;
  }

  @override
  void update(
      void Function(
              GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
      build() => _build();

  _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
      _build() {
    final _$result = _$v ??
        new _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity',
                'id'),
            isSubscribed: isSubscribed);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
    extends GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final bool? isSubscribed;

  factory _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity(
          [void Function(
                  GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder)?
              updates]) =>
      (new GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder()
            ..update(updates))
          ._build();

  _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity._(
      {required this.G__typename, required this.id, this.isSubscribed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity',
        'id');
  }

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
      rebuild(
              void Function(
                      GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder
      toBuilder() =>
          new GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity &&
        G__typename == other.G__typename &&
        id == other.id &&
        isSubscribed == other.isSubscribed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isSubscribed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isSubscribed', isSubscribed))
        .toString();
  }
}

class GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder
    implements
        Builder<
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity,
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder> {
  _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isSubscribed;
  bool? get isSubscribed => _$this._isSubscribed;
  set isSubscribed(bool? isSubscribed) => _$this._isSubscribed = isSubscribed;

  GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder() {
    GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
        ._initializeBuilder(this);
  }

  GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _isSubscribed = $v.isSubscribed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity;
  }

  @override
  void update(
      void Function(
              GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
      build() => _build();

  _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
      _build() {
    final _$result = _$v ??
        new _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity',
                'id'),
            isSubscribed: isSubscribed);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
    extends GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final bool? isSubscribed;

  factory _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity(
          [void Function(
                  GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder)?
              updates]) =>
      (new GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder()
            ..update(updates))
          ._build();

  _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity._(
      {required this.G__typename, required this.id, this.isSubscribed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity',
        'id');
  }

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
      rebuild(
              void Function(
                      GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder
      toBuilder() =>
          new GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity &&
        G__typename == other.G__typename &&
        id == other.id &&
        isSubscribed == other.isSubscribed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isSubscribed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isSubscribed', isSubscribed))
        .toString();
  }
}

class GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder
    implements
        Builder<
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity,
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder> {
  _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isSubscribed;
  bool? get isSubscribed => _$this._isSubscribed;
  set isSubscribed(bool? isSubscribed) => _$this._isSubscribed = isSubscribed;

  GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder() {
    GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
        ._initializeBuilder(this);
  }

  GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _isSubscribed = $v.isSubscribed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity;
  }

  @override
  void update(
      void Function(
              GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
      build() => _build();

  _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
      _build() {
    final _$result = _$v ??
        new _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity',
                'id'),
            isSubscribed: isSubscribed);
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteActivityReplyData extends GDeleteActivityReplyData {
  @override
  final String G__typename;
  @override
  final GDeleteActivityReplyData_DeleteActivityReply? DeleteActivityReply;

  factory _$GDeleteActivityReplyData(
          [void Function(GDeleteActivityReplyDataBuilder)? updates]) =>
      (new GDeleteActivityReplyDataBuilder()..update(updates))._build();

  _$GDeleteActivityReplyData._(
      {required this.G__typename, this.DeleteActivityReply})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeleteActivityReplyData', 'G__typename');
  }

  @override
  GDeleteActivityReplyData rebuild(
          void Function(GDeleteActivityReplyDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteActivityReplyDataBuilder toBuilder() =>
      new GDeleteActivityReplyDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteActivityReplyData &&
        G__typename == other.G__typename &&
        DeleteActivityReply == other.DeleteActivityReply;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, DeleteActivityReply.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteActivityReplyData')
          ..add('G__typename', G__typename)
          ..add('DeleteActivityReply', DeleteActivityReply))
        .toString();
  }
}

class GDeleteActivityReplyDataBuilder
    implements
        Builder<GDeleteActivityReplyData, GDeleteActivityReplyDataBuilder> {
  _$GDeleteActivityReplyData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDeleteActivityReplyData_DeleteActivityReplyBuilder? _DeleteActivityReply;
  GDeleteActivityReplyData_DeleteActivityReplyBuilder get DeleteActivityReply =>
      _$this._DeleteActivityReply ??=
          new GDeleteActivityReplyData_DeleteActivityReplyBuilder();
  set DeleteActivityReply(
          GDeleteActivityReplyData_DeleteActivityReplyBuilder?
              DeleteActivityReply) =>
      _$this._DeleteActivityReply = DeleteActivityReply;

  GDeleteActivityReplyDataBuilder() {
    GDeleteActivityReplyData._initializeBuilder(this);
  }

  GDeleteActivityReplyDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _DeleteActivityReply = $v.DeleteActivityReply?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteActivityReplyData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteActivityReplyData;
  }

  @override
  void update(void Function(GDeleteActivityReplyDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteActivityReplyData build() => _build();

  _$GDeleteActivityReplyData _build() {
    _$GDeleteActivityReplyData _$result;
    try {
      _$result = _$v ??
          new _$GDeleteActivityReplyData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GDeleteActivityReplyData', 'G__typename'),
              DeleteActivityReply: _DeleteActivityReply?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'DeleteActivityReply';
        _DeleteActivityReply?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDeleteActivityReplyData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteActivityReplyData_DeleteActivityReply
    extends GDeleteActivityReplyData_DeleteActivityReply {
  @override
  final String G__typename;
  @override
  final bool? deleted;

  factory _$GDeleteActivityReplyData_DeleteActivityReply(
          [void Function(GDeleteActivityReplyData_DeleteActivityReplyBuilder)?
              updates]) =>
      (new GDeleteActivityReplyData_DeleteActivityReplyBuilder()
            ..update(updates))
          ._build();

  _$GDeleteActivityReplyData_DeleteActivityReply._(
      {required this.G__typename, this.deleted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GDeleteActivityReplyData_DeleteActivityReply', 'G__typename');
  }

  @override
  GDeleteActivityReplyData_DeleteActivityReply rebuild(
          void Function(GDeleteActivityReplyData_DeleteActivityReplyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteActivityReplyData_DeleteActivityReplyBuilder toBuilder() =>
      new GDeleteActivityReplyData_DeleteActivityReplyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteActivityReplyData_DeleteActivityReply &&
        G__typename == other.G__typename &&
        deleted == other.deleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDeleteActivityReplyData_DeleteActivityReply')
          ..add('G__typename', G__typename)
          ..add('deleted', deleted))
        .toString();
  }
}

class GDeleteActivityReplyData_DeleteActivityReplyBuilder
    implements
        Builder<GDeleteActivityReplyData_DeleteActivityReply,
            GDeleteActivityReplyData_DeleteActivityReplyBuilder> {
  _$GDeleteActivityReplyData_DeleteActivityReply? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _deleted;
  bool? get deleted => _$this._deleted;
  set deleted(bool? deleted) => _$this._deleted = deleted;

  GDeleteActivityReplyData_DeleteActivityReplyBuilder() {
    GDeleteActivityReplyData_DeleteActivityReply._initializeBuilder(this);
  }

  GDeleteActivityReplyData_DeleteActivityReplyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleted = $v.deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteActivityReplyData_DeleteActivityReply other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteActivityReplyData_DeleteActivityReply;
  }

  @override
  void update(
      void Function(GDeleteActivityReplyData_DeleteActivityReplyBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteActivityReplyData_DeleteActivityReply build() => _build();

  _$GDeleteActivityReplyData_DeleteActivityReply _build() {
    final _$result = _$v ??
        new _$GDeleteActivityReplyData_DeleteActivityReply._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GDeleteActivityReplyData_DeleteActivityReply', 'G__typename'),
            deleted: deleted);
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteActivityData extends GDeleteActivityData {
  @override
  final String G__typename;
  @override
  final GDeleteActivityData_DeleteActivity? DeleteActivity;

  factory _$GDeleteActivityData(
          [void Function(GDeleteActivityDataBuilder)? updates]) =>
      (new GDeleteActivityDataBuilder()..update(updates))._build();

  _$GDeleteActivityData._({required this.G__typename, this.DeleteActivity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeleteActivityData', 'G__typename');
  }

  @override
  GDeleteActivityData rebuild(
          void Function(GDeleteActivityDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteActivityDataBuilder toBuilder() =>
      new GDeleteActivityDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteActivityData &&
        G__typename == other.G__typename &&
        DeleteActivity == other.DeleteActivity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, DeleteActivity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteActivityData')
          ..add('G__typename', G__typename)
          ..add('DeleteActivity', DeleteActivity))
        .toString();
  }
}

class GDeleteActivityDataBuilder
    implements Builder<GDeleteActivityData, GDeleteActivityDataBuilder> {
  _$GDeleteActivityData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDeleteActivityData_DeleteActivityBuilder? _DeleteActivity;
  GDeleteActivityData_DeleteActivityBuilder get DeleteActivity =>
      _$this._DeleteActivity ??=
          new GDeleteActivityData_DeleteActivityBuilder();
  set DeleteActivity(
          GDeleteActivityData_DeleteActivityBuilder? DeleteActivity) =>
      _$this._DeleteActivity = DeleteActivity;

  GDeleteActivityDataBuilder() {
    GDeleteActivityData._initializeBuilder(this);
  }

  GDeleteActivityDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _DeleteActivity = $v.DeleteActivity?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteActivityData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteActivityData;
  }

  @override
  void update(void Function(GDeleteActivityDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteActivityData build() => _build();

  _$GDeleteActivityData _build() {
    _$GDeleteActivityData _$result;
    try {
      _$result = _$v ??
          new _$GDeleteActivityData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GDeleteActivityData', 'G__typename'),
              DeleteActivity: _DeleteActivity?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'DeleteActivity';
        _DeleteActivity?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDeleteActivityData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteActivityData_DeleteActivity
    extends GDeleteActivityData_DeleteActivity {
  @override
  final String G__typename;
  @override
  final bool? deleted;

  factory _$GDeleteActivityData_DeleteActivity(
          [void Function(GDeleteActivityData_DeleteActivityBuilder)?
              updates]) =>
      (new GDeleteActivityData_DeleteActivityBuilder()..update(updates))
          ._build();

  _$GDeleteActivityData_DeleteActivity._(
      {required this.G__typename, this.deleted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeleteActivityData_DeleteActivity', 'G__typename');
  }

  @override
  GDeleteActivityData_DeleteActivity rebuild(
          void Function(GDeleteActivityData_DeleteActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteActivityData_DeleteActivityBuilder toBuilder() =>
      new GDeleteActivityData_DeleteActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteActivityData_DeleteActivity &&
        G__typename == other.G__typename &&
        deleted == other.deleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteActivityData_DeleteActivity')
          ..add('G__typename', G__typename)
          ..add('deleted', deleted))
        .toString();
  }
}

class GDeleteActivityData_DeleteActivityBuilder
    implements
        Builder<GDeleteActivityData_DeleteActivity,
            GDeleteActivityData_DeleteActivityBuilder> {
  _$GDeleteActivityData_DeleteActivity? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _deleted;
  bool? get deleted => _$this._deleted;
  set deleted(bool? deleted) => _$this._deleted = deleted;

  GDeleteActivityData_DeleteActivityBuilder() {
    GDeleteActivityData_DeleteActivity._initializeBuilder(this);
  }

  GDeleteActivityData_DeleteActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleted = $v.deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteActivityData_DeleteActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteActivityData_DeleteActivity;
  }

  @override
  void update(
      void Function(GDeleteActivityData_DeleteActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteActivityData_DeleteActivity build() => _build();

  _$GDeleteActivityData_DeleteActivity _build() {
    final _$result = _$v ??
        new _$GDeleteActivityData_DeleteActivity._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GDeleteActivityData_DeleteActivity', 'G__typename'),
            deleted: deleted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
