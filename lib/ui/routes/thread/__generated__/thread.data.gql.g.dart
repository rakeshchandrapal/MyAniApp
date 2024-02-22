// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GThreadData> _$gThreadDataSerializer = new _$GThreadDataSerializer();
Serializer<GThreadData_thread> _$gThreadDataThreadSerializer =
    new _$GThreadData_threadSerializer();
Serializer<GThreadData_thread_mediaCategories>
    _$gThreadDataThreadMediaCategoriesSerializer =
    new _$GThreadData_thread_mediaCategoriesSerializer();
Serializer<GThreadData_thread_mediaCategories_title>
    _$gThreadDataThreadMediaCategoriesTitleSerializer =
    new _$GThreadData_thread_mediaCategories_titleSerializer();
Serializer<GThreadData_thread_mediaCategories_coverImage>
    _$gThreadDataThreadMediaCategoriesCoverImageSerializer =
    new _$GThreadData_thread_mediaCategories_coverImageSerializer();
Serializer<GThreadData_thread_categories>
    _$gThreadDataThreadCategoriesSerializer =
    new _$GThreadData_thread_categoriesSerializer();
Serializer<GThreadData_thread_user> _$gThreadDataThreadUserSerializer =
    new _$GThreadData_thread_userSerializer();
Serializer<GThreadData_thread_user_avatar>
    _$gThreadDataThreadUserAvatarSerializer =
    new _$GThreadData_thread_user_avatarSerializer();
Serializer<GThreadData_thread_replyUser>
    _$gThreadDataThreadReplyUserSerializer =
    new _$GThreadData_thread_replyUserSerializer();
Serializer<GThreadData_thread_replyUser_avatar>
    _$gThreadDataThreadReplyUserAvatarSerializer =
    new _$GThreadData_thread_replyUser_avatarSerializer();
Serializer<GThreadData_comments> _$gThreadDataCommentsSerializer =
    new _$GThreadData_commentsSerializer();
Serializer<GThreadData_comments_pageInfo>
    _$gThreadDataCommentsPageInfoSerializer =
    new _$GThreadData_comments_pageInfoSerializer();
Serializer<GThreadData_comments_threadComments>
    _$gThreadDataCommentsThreadCommentsSerializer =
    new _$GThreadData_comments_threadCommentsSerializer();
Serializer<GThreadData_comments_threadComments_user>
    _$gThreadDataCommentsThreadCommentsUserSerializer =
    new _$GThreadData_comments_threadComments_userSerializer();
Serializer<GThreadData_comments_threadComments_user_avatar>
    _$gThreadDataCommentsThreadCommentsUserAvatarSerializer =
    new _$GThreadData_comments_threadComments_user_avatarSerializer();
Serializer<GSaveCommentData> _$gSaveCommentDataSerializer =
    new _$GSaveCommentDataSerializer();
Serializer<GSaveCommentData_SaveThreadComment>
    _$gSaveCommentDataSaveThreadCommentSerializer =
    new _$GSaveCommentData_SaveThreadCommentSerializer();
Serializer<GSaveCommentData_SaveThreadComment_user>
    _$gSaveCommentDataSaveThreadCommentUserSerializer =
    new _$GSaveCommentData_SaveThreadComment_userSerializer();
Serializer<GSaveCommentData_SaveThreadComment_user_avatar>
    _$gSaveCommentDataSaveThreadCommentUserAvatarSerializer =
    new _$GSaveCommentData_SaveThreadComment_user_avatarSerializer();
Serializer<GDeleteCommentData> _$gDeleteCommentDataSerializer =
    new _$GDeleteCommentDataSerializer();
Serializer<GDeleteCommentData_DeleteThreadComment>
    _$gDeleteCommentDataDeleteThreadCommentSerializer =
    new _$GDeleteCommentData_DeleteThreadCommentSerializer();
Serializer<GToggleThreadSubscriptionData>
    _$gToggleThreadSubscriptionDataSerializer =
    new _$GToggleThreadSubscriptionDataSerializer();
Serializer<GToggleThreadSubscriptionData_ToggleThreadSubscription>
    _$gToggleThreadSubscriptionDataToggleThreadSubscriptionSerializer =
    new _$GToggleThreadSubscriptionData_ToggleThreadSubscriptionSerializer();

class _$GThreadDataSerializer implements StructuredSerializer<GThreadData> {
  @override
  final Iterable<Type> types = const [GThreadData, _$GThreadData];
  @override
  final String wireName = 'GThreadData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GThreadData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.thread;
    if (value != null) {
      result
        ..add('thread')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GThreadData_thread)));
    }
    value = object.comments;
    if (value != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GThreadData_comments)));
    }
    return result;
  }

  @override
  GThreadData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadDataBuilder();

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
        case 'thread':
          result.thread.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GThreadData_thread))!
              as GThreadData_thread);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GThreadData_comments))!
              as GThreadData_comments);
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadData_threadSerializer
    implements StructuredSerializer<GThreadData_thread> {
  @override
  final Iterable<Type> types = const [GThreadData_thread, _$GThreadData_thread];
  @override
  final String wireName = 'GThreadData_thread';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadData_thread object,
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
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'likeCount',
      serializers.serialize(object.likeCount,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.replyCount;
    if (value != null) {
      result
        ..add('replyCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.viewCount;
    if (value != null) {
      result
        ..add('viewCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.replyCommentId;
    if (value != null) {
      result
        ..add('replyCommentId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.repliedAt;
    if (value != null) {
      result
        ..add('repliedAt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isSticky;
    if (value != null) {
      result
        ..add('isSticky')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.mediaCategories;
    if (value != null) {
      result
        ..add('mediaCategories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GThreadData_thread_mediaCategories)
            ])));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GThreadData_thread_categories)
            ])));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GThreadData_thread_user)));
    }
    value = object.replyUser;
    if (value != null) {
      result
        ..add('replyUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GThreadData_thread_replyUser)));
    }
    value = object.body;
    if (value != null) {
      result
        ..add('body')
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
    return result;
  }

  @override
  GThreadData_thread deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_threadBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'replyCount':
          result.replyCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'viewCount':
          result.viewCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'replyCommentId':
          result.replyCommentId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'repliedAt':
          result.repliedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'isSticky':
          result.isSticky = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'mediaCategories':
          result.mediaCategories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GThreadData_thread_mediaCategories)
              ]))! as BuiltList<Object?>);
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GThreadData_thread_categories)
              ]))! as BuiltList<Object?>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GThreadData_thread_user))!
              as GThreadData_thread_user);
          break;
        case 'replyUser':
          result.replyUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GThreadData_thread_replyUser))!
              as GThreadData_thread_replyUser);
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$GThreadData_thread_mediaCategoriesSerializer
    implements StructuredSerializer<GThreadData_thread_mediaCategories> {
  @override
  final Iterable<Type> types = const [
    GThreadData_thread_mediaCategories,
    _$GThreadData_thread_mediaCategories
  ];
  @override
  final String wireName = 'GThreadData_thread_mediaCategories';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadData_thread_mediaCategories object,
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
            specifiedType:
                const FullType(GThreadData_thread_mediaCategories_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GThreadData_thread_mediaCategories_coverImage)));
    }
    return result;
  }

  @override
  GThreadData_thread_mediaCategories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_thread_mediaCategoriesBuilder();

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
                  specifiedType:
                      const FullType(GThreadData_thread_mediaCategories_title))!
              as GThreadData_thread_mediaCategories_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GThreadData_thread_mediaCategories_coverImage))!
              as GThreadData_thread_mediaCategories_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadData_thread_mediaCategories_titleSerializer
    implements StructuredSerializer<GThreadData_thread_mediaCategories_title> {
  @override
  final Iterable<Type> types = const [
    GThreadData_thread_mediaCategories_title,
    _$GThreadData_thread_mediaCategories_title
  ];
  @override
  final String wireName = 'GThreadData_thread_mediaCategories_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadData_thread_mediaCategories_title object,
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
  GThreadData_thread_mediaCategories_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_thread_mediaCategories_titleBuilder();

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

class _$GThreadData_thread_mediaCategories_coverImageSerializer
    implements
        StructuredSerializer<GThreadData_thread_mediaCategories_coverImage> {
  @override
  final Iterable<Type> types = const [
    GThreadData_thread_mediaCategories_coverImage,
    _$GThreadData_thread_mediaCategories_coverImage
  ];
  @override
  final String wireName = 'GThreadData_thread_mediaCategories_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GThreadData_thread_mediaCategories_coverImage object,
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
  GThreadData_thread_mediaCategories_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_thread_mediaCategories_coverImageBuilder();

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

class _$GThreadData_thread_categoriesSerializer
    implements StructuredSerializer<GThreadData_thread_categories> {
  @override
  final Iterable<Type> types = const [
    GThreadData_thread_categories,
    _$GThreadData_thread_categories
  ];
  @override
  final String wireName = 'GThreadData_thread_categories';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadData_thread_categories object,
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

    return result;
  }

  @override
  GThreadData_thread_categories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_thread_categoriesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GThreadData_thread_userSerializer
    implements StructuredSerializer<GThreadData_thread_user> {
  @override
  final Iterable<Type> types = const [
    GThreadData_thread_user,
    _$GThreadData_thread_user
  ];
  @override
  final String wireName = 'GThreadData_thread_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadData_thread_user object,
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
            specifiedType: const FullType(GThreadData_thread_user_avatar)));
    }
    return result;
  }

  @override
  GThreadData_thread_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_thread_userBuilder();

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
                      const FullType(GThreadData_thread_user_avatar))!
              as GThreadData_thread_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadData_thread_user_avatarSerializer
    implements StructuredSerializer<GThreadData_thread_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GThreadData_thread_user_avatar,
    _$GThreadData_thread_user_avatar
  ];
  @override
  final String wireName = 'GThreadData_thread_user_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadData_thread_user_avatar object,
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
  GThreadData_thread_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_thread_user_avatarBuilder();

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

class _$GThreadData_thread_replyUserSerializer
    implements StructuredSerializer<GThreadData_thread_replyUser> {
  @override
  final Iterable<Type> types = const [
    GThreadData_thread_replyUser,
    _$GThreadData_thread_replyUser
  ];
  @override
  final String wireName = 'GThreadData_thread_replyUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadData_thread_replyUser object,
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
                const FullType(GThreadData_thread_replyUser_avatar)));
    }
    return result;
  }

  @override
  GThreadData_thread_replyUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_thread_replyUserBuilder();

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
                      const FullType(GThreadData_thread_replyUser_avatar))!
              as GThreadData_thread_replyUser_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadData_thread_replyUser_avatarSerializer
    implements StructuredSerializer<GThreadData_thread_replyUser_avatar> {
  @override
  final Iterable<Type> types = const [
    GThreadData_thread_replyUser_avatar,
    _$GThreadData_thread_replyUser_avatar
  ];
  @override
  final String wireName = 'GThreadData_thread_replyUser_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadData_thread_replyUser_avatar object,
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
  GThreadData_thread_replyUser_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_thread_replyUser_avatarBuilder();

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

class _$GThreadData_commentsSerializer
    implements StructuredSerializer<GThreadData_comments> {
  @override
  final Iterable<Type> types = const [
    GThreadData_comments,
    _$GThreadData_comments
  ];
  @override
  final String wireName = 'GThreadData_comments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadData_comments object,
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
            specifiedType: const FullType(GThreadData_comments_pageInfo)));
    }
    value = object.threadComments;
    if (value != null) {
      result
        ..add('threadComments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GThreadData_comments_threadComments)
            ])));
    }
    return result;
  }

  @override
  GThreadData_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_commentsBuilder();

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
                  specifiedType: const FullType(GThreadData_comments_pageInfo))!
              as GThreadData_comments_pageInfo);
          break;
        case 'threadComments':
          result.threadComments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GThreadData_comments_threadComments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadData_comments_pageInfoSerializer
    implements StructuredSerializer<GThreadData_comments_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GThreadData_comments_pageInfo,
    _$GThreadData_comments_pageInfo
  ];
  @override
  final String wireName = 'GThreadData_comments_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadData_comments_pageInfo object,
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
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastPage;
    if (value != null) {
      result
        ..add('lastPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GThreadData_comments_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_comments_pageInfoBuilder();

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
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'lastPage':
          result.lastPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadData_comments_threadCommentsSerializer
    implements StructuredSerializer<GThreadData_comments_threadComments> {
  @override
  final Iterable<Type> types = const [
    GThreadData_comments_threadComments,
    _$GThreadData_comments_threadComments
  ];
  @override
  final String wireName = 'GThreadData_comments_threadComments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadData_comments_threadComments object,
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
    value = object.threadId;
    if (value != null) {
      result
        ..add('threadId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
                const FullType(GThreadData_comments_threadComments_user)));
    }
    value = object.childComments;
    if (value != null) {
      result
        ..add('childComments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i7.JsonObject)));
    }
    value = object.isLocked;
    if (value != null) {
      result
        ..add('isLocked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GThreadData_comments_threadComments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_comments_threadCommentsBuilder();

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
        case 'threadId':
          result.threadId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
                  specifiedType:
                      const FullType(GThreadData_comments_threadComments_user))!
              as GThreadData_comments_threadComments_user);
          break;
        case 'childComments':
          result.childComments = serializers.deserialize(value,
              specifiedType: const FullType(_i7.JsonObject)) as _i7.JsonObject?;
          break;
        case 'isLocked':
          result.isLocked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadData_comments_threadComments_userSerializer
    implements StructuredSerializer<GThreadData_comments_threadComments_user> {
  @override
  final Iterable<Type> types = const [
    GThreadData_comments_threadComments_user,
    _$GThreadData_comments_threadComments_user
  ];
  @override
  final String wireName = 'GThreadData_comments_threadComments_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadData_comments_threadComments_user object,
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
                GThreadData_comments_threadComments_user_avatar)));
    }
    return result;
  }

  @override
  GThreadData_comments_threadComments_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_comments_threadComments_userBuilder();

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
                      GThreadData_comments_threadComments_user_avatar))!
              as GThreadData_comments_threadComments_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadData_comments_threadComments_user_avatarSerializer
    implements
        StructuredSerializer<GThreadData_comments_threadComments_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GThreadData_comments_threadComments_user_avatar,
    _$GThreadData_comments_threadComments_user_avatar
  ];
  @override
  final String wireName = 'GThreadData_comments_threadComments_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GThreadData_comments_threadComments_user_avatar object,
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
  GThreadData_comments_threadComments_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadData_comments_threadComments_user_avatarBuilder();

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

class _$GSaveCommentDataSerializer
    implements StructuredSerializer<GSaveCommentData> {
  @override
  final Iterable<Type> types = const [GSaveCommentData, _$GSaveCommentData];
  @override
  final String wireName = 'GSaveCommentData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSaveCommentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.SaveThreadComment;
    if (value != null) {
      result
        ..add('SaveThreadComment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GSaveCommentData_SaveThreadComment)));
    }
    return result;
  }

  @override
  GSaveCommentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveCommentDataBuilder();

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
        case 'SaveThreadComment':
          result.SaveThreadComment.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSaveCommentData_SaveThreadComment))!
              as GSaveCommentData_SaveThreadComment);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveCommentData_SaveThreadCommentSerializer
    implements StructuredSerializer<GSaveCommentData_SaveThreadComment> {
  @override
  final Iterable<Type> types = const [
    GSaveCommentData_SaveThreadComment,
    _$GSaveCommentData_SaveThreadComment
  ];
  @override
  final String wireName = 'GSaveCommentData_SaveThreadComment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveCommentData_SaveThreadComment object,
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
    value = object.threadId;
    if (value != null) {
      result
        ..add('threadId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
                const FullType(GSaveCommentData_SaveThreadComment_user)));
    }
    value = object.childComments;
    if (value != null) {
      result
        ..add('childComments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i7.JsonObject)));
    }
    value = object.isLocked;
    if (value != null) {
      result
        ..add('isLocked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GSaveCommentData_SaveThreadComment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveCommentData_SaveThreadCommentBuilder();

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
        case 'threadId':
          result.threadId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
                  specifiedType:
                      const FullType(GSaveCommentData_SaveThreadComment_user))!
              as GSaveCommentData_SaveThreadComment_user);
          break;
        case 'childComments':
          result.childComments = serializers.deserialize(value,
              specifiedType: const FullType(_i7.JsonObject)) as _i7.JsonObject?;
          break;
        case 'isLocked':
          result.isLocked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveCommentData_SaveThreadComment_userSerializer
    implements StructuredSerializer<GSaveCommentData_SaveThreadComment_user> {
  @override
  final Iterable<Type> types = const [
    GSaveCommentData_SaveThreadComment_user,
    _$GSaveCommentData_SaveThreadComment_user
  ];
  @override
  final String wireName = 'GSaveCommentData_SaveThreadComment_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveCommentData_SaveThreadComment_user object,
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
                GSaveCommentData_SaveThreadComment_user_avatar)));
    }
    return result;
  }

  @override
  GSaveCommentData_SaveThreadComment_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveCommentData_SaveThreadComment_userBuilder();

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
                      GSaveCommentData_SaveThreadComment_user_avatar))!
              as GSaveCommentData_SaveThreadComment_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveCommentData_SaveThreadComment_user_avatarSerializer
    implements
        StructuredSerializer<GSaveCommentData_SaveThreadComment_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GSaveCommentData_SaveThreadComment_user_avatar,
    _$GSaveCommentData_SaveThreadComment_user_avatar
  ];
  @override
  final String wireName = 'GSaveCommentData_SaveThreadComment_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveCommentData_SaveThreadComment_user_avatar object,
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
  GSaveCommentData_SaveThreadComment_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveCommentData_SaveThreadComment_user_avatarBuilder();

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

class _$GDeleteCommentDataSerializer
    implements StructuredSerializer<GDeleteCommentData> {
  @override
  final Iterable<Type> types = const [GDeleteCommentData, _$GDeleteCommentData];
  @override
  final String wireName = 'GDeleteCommentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteCommentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.DeleteThreadComment;
    if (value != null) {
      result
        ..add('DeleteThreadComment')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GDeleteCommentData_DeleteThreadComment)));
    }
    return result;
  }

  @override
  GDeleteCommentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteCommentDataBuilder();

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
        case 'DeleteThreadComment':
          result.DeleteThreadComment.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GDeleteCommentData_DeleteThreadComment))!
              as GDeleteCommentData_DeleteThreadComment);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteCommentData_DeleteThreadCommentSerializer
    implements StructuredSerializer<GDeleteCommentData_DeleteThreadComment> {
  @override
  final Iterable<Type> types = const [
    GDeleteCommentData_DeleteThreadComment,
    _$GDeleteCommentData_DeleteThreadComment
  ];
  @override
  final String wireName = 'GDeleteCommentData_DeleteThreadComment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteCommentData_DeleteThreadComment object,
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
  GDeleteCommentData_DeleteThreadComment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteCommentData_DeleteThreadCommentBuilder();

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

class _$GToggleThreadSubscriptionDataSerializer
    implements StructuredSerializer<GToggleThreadSubscriptionData> {
  @override
  final Iterable<Type> types = const [
    GToggleThreadSubscriptionData,
    _$GToggleThreadSubscriptionData
  ];
  @override
  final String wireName = 'GToggleThreadSubscriptionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GToggleThreadSubscriptionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.ToggleThreadSubscription;
    if (value != null) {
      result
        ..add('ToggleThreadSubscription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GToggleThreadSubscriptionData_ToggleThreadSubscription)));
    }
    return result;
  }

  @override
  GToggleThreadSubscriptionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GToggleThreadSubscriptionDataBuilder();

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
        case 'ToggleThreadSubscription':
          result.ToggleThreadSubscription.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GToggleThreadSubscriptionData_ToggleThreadSubscription))!
              as GToggleThreadSubscriptionData_ToggleThreadSubscription);
          break;
      }
    }

    return result.build();
  }
}

class _$GToggleThreadSubscriptionData_ToggleThreadSubscriptionSerializer
    implements
        StructuredSerializer<
            GToggleThreadSubscriptionData_ToggleThreadSubscription> {
  @override
  final Iterable<Type> types = const [
    GToggleThreadSubscriptionData_ToggleThreadSubscription,
    _$GToggleThreadSubscriptionData_ToggleThreadSubscription
  ];
  @override
  final String wireName =
      'GToggleThreadSubscriptionData_ToggleThreadSubscription';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GToggleThreadSubscriptionData_ToggleThreadSubscription object,
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
  GToggleThreadSubscriptionData_ToggleThreadSubscription deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder();

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

class _$GThreadData extends GThreadData {
  @override
  final String G__typename;
  @override
  final GThreadData_thread? thread;
  @override
  final GThreadData_comments? comments;

  factory _$GThreadData([void Function(GThreadDataBuilder)? updates]) =>
      (new GThreadDataBuilder()..update(updates))._build();

  _$GThreadData._({required this.G__typename, this.thread, this.comments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadData', 'G__typename');
  }

  @override
  GThreadData rebuild(void Function(GThreadDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadDataBuilder toBuilder() => new GThreadDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData &&
        G__typename == other.G__typename &&
        thread == other.thread &&
        comments == other.comments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, thread.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GThreadData')
          ..add('G__typename', G__typename)
          ..add('thread', thread)
          ..add('comments', comments))
        .toString();
  }
}

class GThreadDataBuilder implements Builder<GThreadData, GThreadDataBuilder> {
  _$GThreadData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GThreadData_threadBuilder? _thread;
  GThreadData_threadBuilder get thread =>
      _$this._thread ??= new GThreadData_threadBuilder();
  set thread(GThreadData_threadBuilder? thread) => _$this._thread = thread;

  GThreadData_commentsBuilder? _comments;
  GThreadData_commentsBuilder get comments =>
      _$this._comments ??= new GThreadData_commentsBuilder();
  set comments(GThreadData_commentsBuilder? comments) =>
      _$this._comments = comments;

  GThreadDataBuilder() {
    GThreadData._initializeBuilder(this);
  }

  GThreadDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _thread = $v.thread?.toBuilder();
      _comments = $v.comments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData;
  }

  @override
  void update(void Function(GThreadDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData build() => _build();

  _$GThreadData _build() {
    _$GThreadData _$result;
    try {
      _$result = _$v ??
          new _$GThreadData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GThreadData', 'G__typename'),
              thread: _thread?.build(),
              comments: _comments?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'thread';
        _thread?.build();
        _$failedField = 'comments';
        _comments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GThreadData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_thread extends GThreadData_thread {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String? title;
  @override
  final int? replyCount;
  @override
  final int? viewCount;
  @override
  final int? replyCommentId;
  @override
  final int? repliedAt;
  @override
  final int createdAt;
  @override
  final bool? isSticky;
  @override
  final BuiltList<GThreadData_thread_mediaCategories?>? mediaCategories;
  @override
  final BuiltList<GThreadData_thread_categories?>? categories;
  @override
  final GThreadData_thread_user? user;
  @override
  final GThreadData_thread_replyUser? replyUser;
  @override
  final String? body;
  @override
  final int userId;
  @override
  final bool? isLocked;
  @override
  final bool? isSubscribed;
  @override
  final bool? isLiked;
  @override
  final int likeCount;

  factory _$GThreadData_thread(
          [void Function(GThreadData_threadBuilder)? updates]) =>
      (new GThreadData_threadBuilder()..update(updates))._build();

  _$GThreadData_thread._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.replyCount,
      this.viewCount,
      this.replyCommentId,
      this.repliedAt,
      required this.createdAt,
      this.isSticky,
      this.mediaCategories,
      this.categories,
      this.user,
      this.replyUser,
      this.body,
      required this.userId,
      this.isLocked,
      this.isSubscribed,
      this.isLiked,
      required this.likeCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadData_thread', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GThreadData_thread', 'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GThreadData_thread', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GThreadData_thread', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GThreadData_thread', 'likeCount');
  }

  @override
  GThreadData_thread rebuild(
          void Function(GThreadData_threadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_threadBuilder toBuilder() =>
      new GThreadData_threadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_thread &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        replyCount == other.replyCount &&
        viewCount == other.viewCount &&
        replyCommentId == other.replyCommentId &&
        repliedAt == other.repliedAt &&
        createdAt == other.createdAt &&
        isSticky == other.isSticky &&
        mediaCategories == other.mediaCategories &&
        categories == other.categories &&
        user == other.user &&
        replyUser == other.replyUser &&
        body == other.body &&
        userId == other.userId &&
        isLocked == other.isLocked &&
        isSubscribed == other.isSubscribed &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, replyCount.hashCode);
    _$hash = $jc(_$hash, viewCount.hashCode);
    _$hash = $jc(_$hash, replyCommentId.hashCode);
    _$hash = $jc(_$hash, repliedAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, isSticky.hashCode);
    _$hash = $jc(_$hash, mediaCategories.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, replyUser.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jc(_$hash, isSubscribed.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GThreadData_thread')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('replyCount', replyCount)
          ..add('viewCount', viewCount)
          ..add('replyCommentId', replyCommentId)
          ..add('repliedAt', repliedAt)
          ..add('createdAt', createdAt)
          ..add('isSticky', isSticky)
          ..add('mediaCategories', mediaCategories)
          ..add('categories', categories)
          ..add('user', user)
          ..add('replyUser', replyUser)
          ..add('body', body)
          ..add('userId', userId)
          ..add('isLocked', isLocked)
          ..add('isSubscribed', isSubscribed)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount))
        .toString();
  }
}

class GThreadData_threadBuilder
    implements Builder<GThreadData_thread, GThreadData_threadBuilder> {
  _$GThreadData_thread? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _replyCount;
  int? get replyCount => _$this._replyCount;
  set replyCount(int? replyCount) => _$this._replyCount = replyCount;

  int? _viewCount;
  int? get viewCount => _$this._viewCount;
  set viewCount(int? viewCount) => _$this._viewCount = viewCount;

  int? _replyCommentId;
  int? get replyCommentId => _$this._replyCommentId;
  set replyCommentId(int? replyCommentId) =>
      _$this._replyCommentId = replyCommentId;

  int? _repliedAt;
  int? get repliedAt => _$this._repliedAt;
  set repliedAt(int? repliedAt) => _$this._repliedAt = repliedAt;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  bool? _isSticky;
  bool? get isSticky => _$this._isSticky;
  set isSticky(bool? isSticky) => _$this._isSticky = isSticky;

  ListBuilder<GThreadData_thread_mediaCategories?>? _mediaCategories;
  ListBuilder<GThreadData_thread_mediaCategories?> get mediaCategories =>
      _$this._mediaCategories ??=
          new ListBuilder<GThreadData_thread_mediaCategories?>();
  set mediaCategories(
          ListBuilder<GThreadData_thread_mediaCategories?>? mediaCategories) =>
      _$this._mediaCategories = mediaCategories;

  ListBuilder<GThreadData_thread_categories?>? _categories;
  ListBuilder<GThreadData_thread_categories?> get categories =>
      _$this._categories ??= new ListBuilder<GThreadData_thread_categories?>();
  set categories(ListBuilder<GThreadData_thread_categories?>? categories) =>
      _$this._categories = categories;

  GThreadData_thread_userBuilder? _user;
  GThreadData_thread_userBuilder get user =>
      _$this._user ??= new GThreadData_thread_userBuilder();
  set user(GThreadData_thread_userBuilder? user) => _$this._user = user;

  GThreadData_thread_replyUserBuilder? _replyUser;
  GThreadData_thread_replyUserBuilder get replyUser =>
      _$this._replyUser ??= new GThreadData_thread_replyUserBuilder();
  set replyUser(GThreadData_thread_replyUserBuilder? replyUser) =>
      _$this._replyUser = replyUser;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

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

  GThreadData_threadBuilder() {
    GThreadData_thread._initializeBuilder(this);
  }

  GThreadData_threadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _replyCount = $v.replyCount;
      _viewCount = $v.viewCount;
      _replyCommentId = $v.replyCommentId;
      _repliedAt = $v.repliedAt;
      _createdAt = $v.createdAt;
      _isSticky = $v.isSticky;
      _mediaCategories = $v.mediaCategories?.toBuilder();
      _categories = $v.categories?.toBuilder();
      _user = $v.user?.toBuilder();
      _replyUser = $v.replyUser?.toBuilder();
      _body = $v.body;
      _userId = $v.userId;
      _isLocked = $v.isLocked;
      _isSubscribed = $v.isSubscribed;
      _isLiked = $v.isLiked;
      _likeCount = $v.likeCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadData_thread other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_thread;
  }

  @override
  void update(void Function(GThreadData_threadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_thread build() => _build();

  _$GThreadData_thread _build() {
    _$GThreadData_thread _$result;
    try {
      _$result = _$v ??
          new _$GThreadData_thread._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GThreadData_thread', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GThreadData_thread', 'id'),
              title: title,
              replyCount: replyCount,
              viewCount: viewCount,
              replyCommentId: replyCommentId,
              repliedAt: repliedAt,
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GThreadData_thread', 'createdAt'),
              isSticky: isSticky,
              mediaCategories: _mediaCategories?.build(),
              categories: _categories?.build(),
              user: _user?.build(),
              replyUser: _replyUser?.build(),
              body: body,
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'GThreadData_thread', 'userId'),
              isLocked: isLocked,
              isSubscribed: isSubscribed,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(
                  likeCount, r'GThreadData_thread', 'likeCount'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaCategories';
        _mediaCategories?.build();
        _$failedField = 'categories';
        _categories?.build();
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'replyUser';
        _replyUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GThreadData_thread', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_thread_mediaCategories
    extends GThreadData_thread_mediaCategories {
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
  final GThreadData_thread_mediaCategories_title? title;
  @override
  final GThreadData_thread_mediaCategories_coverImage? coverImage;

  factory _$GThreadData_thread_mediaCategories(
          [void Function(GThreadData_thread_mediaCategoriesBuilder)?
              updates]) =>
      (new GThreadData_thread_mediaCategoriesBuilder()..update(updates))
          ._build();

  _$GThreadData_thread_mediaCategories._(
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
        G__typename, r'GThreadData_thread_mediaCategories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GThreadData_thread_mediaCategories', 'id');
  }

  @override
  GThreadData_thread_mediaCategories rebuild(
          void Function(GThreadData_thread_mediaCategoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_thread_mediaCategoriesBuilder toBuilder() =>
      new GThreadData_thread_mediaCategoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_thread_mediaCategories &&
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
    return (newBuiltValueToStringHelper(r'GThreadData_thread_mediaCategories')
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

class GThreadData_thread_mediaCategoriesBuilder
    implements
        Builder<GThreadData_thread_mediaCategories,
            GThreadData_thread_mediaCategoriesBuilder> {
  _$GThreadData_thread_mediaCategories? _$v;

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

  GThreadData_thread_mediaCategories_titleBuilder? _title;
  GThreadData_thread_mediaCategories_titleBuilder get title =>
      _$this._title ??= new GThreadData_thread_mediaCategories_titleBuilder();
  set title(GThreadData_thread_mediaCategories_titleBuilder? title) =>
      _$this._title = title;

  GThreadData_thread_mediaCategories_coverImageBuilder? _coverImage;
  GThreadData_thread_mediaCategories_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GThreadData_thread_mediaCategories_coverImageBuilder();
  set coverImage(
          GThreadData_thread_mediaCategories_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GThreadData_thread_mediaCategoriesBuilder() {
    GThreadData_thread_mediaCategories._initializeBuilder(this);
  }

  GThreadData_thread_mediaCategoriesBuilder get _$this {
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
  void replace(GThreadData_thread_mediaCategories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_thread_mediaCategories;
  }

  @override
  void update(
      void Function(GThreadData_thread_mediaCategoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_thread_mediaCategories build() => _build();

  _$GThreadData_thread_mediaCategories _build() {
    _$GThreadData_thread_mediaCategories _$result;
    try {
      _$result = _$v ??
          new _$GThreadData_thread_mediaCategories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GThreadData_thread_mediaCategories', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GThreadData_thread_mediaCategories', 'id'),
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
            r'GThreadData_thread_mediaCategories', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_thread_mediaCategories_title
    extends GThreadData_thread_mediaCategories_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GThreadData_thread_mediaCategories_title(
          [void Function(GThreadData_thread_mediaCategories_titleBuilder)?
              updates]) =>
      (new GThreadData_thread_mediaCategories_titleBuilder()..update(updates))
          ._build();

  _$GThreadData_thread_mediaCategories_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GThreadData_thread_mediaCategories_title', 'G__typename');
  }

  @override
  GThreadData_thread_mediaCategories_title rebuild(
          void Function(GThreadData_thread_mediaCategories_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_thread_mediaCategories_titleBuilder toBuilder() =>
      new GThreadData_thread_mediaCategories_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_thread_mediaCategories_title &&
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
            r'GThreadData_thread_mediaCategories_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GThreadData_thread_mediaCategories_titleBuilder
    implements
        Builder<GThreadData_thread_mediaCategories_title,
            GThreadData_thread_mediaCategories_titleBuilder> {
  _$GThreadData_thread_mediaCategories_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GThreadData_thread_mediaCategories_titleBuilder() {
    GThreadData_thread_mediaCategories_title._initializeBuilder(this);
  }

  GThreadData_thread_mediaCategories_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadData_thread_mediaCategories_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_thread_mediaCategories_title;
  }

  @override
  void update(
      void Function(GThreadData_thread_mediaCategories_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_thread_mediaCategories_title build() => _build();

  _$GThreadData_thread_mediaCategories_title _build() {
    final _$result = _$v ??
        new _$GThreadData_thread_mediaCategories_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GThreadData_thread_mediaCategories_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_thread_mediaCategories_coverImage
    extends GThreadData_thread_mediaCategories_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GThreadData_thread_mediaCategories_coverImage(
          [void Function(GThreadData_thread_mediaCategories_coverImageBuilder)?
              updates]) =>
      (new GThreadData_thread_mediaCategories_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GThreadData_thread_mediaCategories_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GThreadData_thread_mediaCategories_coverImage', 'G__typename');
  }

  @override
  GThreadData_thread_mediaCategories_coverImage rebuild(
          void Function(GThreadData_thread_mediaCategories_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_thread_mediaCategories_coverImageBuilder toBuilder() =>
      new GThreadData_thread_mediaCategories_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_thread_mediaCategories_coverImage &&
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
            r'GThreadData_thread_mediaCategories_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GThreadData_thread_mediaCategories_coverImageBuilder
    implements
        Builder<GThreadData_thread_mediaCategories_coverImage,
            GThreadData_thread_mediaCategories_coverImageBuilder> {
  _$GThreadData_thread_mediaCategories_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GThreadData_thread_mediaCategories_coverImageBuilder() {
    GThreadData_thread_mediaCategories_coverImage._initializeBuilder(this);
  }

  GThreadData_thread_mediaCategories_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadData_thread_mediaCategories_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_thread_mediaCategories_coverImage;
  }

  @override
  void update(
      void Function(GThreadData_thread_mediaCategories_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_thread_mediaCategories_coverImage build() => _build();

  _$GThreadData_thread_mediaCategories_coverImage _build() {
    final _$result = _$v ??
        new _$GThreadData_thread_mediaCategories_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GThreadData_thread_mediaCategories_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_thread_categories extends GThreadData_thread_categories {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;

  factory _$GThreadData_thread_categories(
          [void Function(GThreadData_thread_categoriesBuilder)? updates]) =>
      (new GThreadData_thread_categoriesBuilder()..update(updates))._build();

  _$GThreadData_thread_categories._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadData_thread_categories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GThreadData_thread_categories', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GThreadData_thread_categories', 'name');
  }

  @override
  GThreadData_thread_categories rebuild(
          void Function(GThreadData_thread_categoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_thread_categoriesBuilder toBuilder() =>
      new GThreadData_thread_categoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_thread_categories &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GThreadData_thread_categories')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GThreadData_thread_categoriesBuilder
    implements
        Builder<GThreadData_thread_categories,
            GThreadData_thread_categoriesBuilder> {
  _$GThreadData_thread_categories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GThreadData_thread_categoriesBuilder() {
    GThreadData_thread_categories._initializeBuilder(this);
  }

  GThreadData_thread_categoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadData_thread_categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_thread_categories;
  }

  @override
  void update(void Function(GThreadData_thread_categoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_thread_categories build() => _build();

  _$GThreadData_thread_categories _build() {
    final _$result = _$v ??
        new _$GThreadData_thread_categories._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GThreadData_thread_categories', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GThreadData_thread_categories', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GThreadData_thread_categories', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_thread_user extends GThreadData_thread_user {
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
  final GThreadData_thread_user_avatar? avatar;

  factory _$GThreadData_thread_user(
          [void Function(GThreadData_thread_userBuilder)? updates]) =>
      (new GThreadData_thread_userBuilder()..update(updates))._build();

  _$GThreadData_thread_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadData_thread_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GThreadData_thread_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GThreadData_thread_user', 'name');
  }

  @override
  GThreadData_thread_user rebuild(
          void Function(GThreadData_thread_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_thread_userBuilder toBuilder() =>
      new GThreadData_thread_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_thread_user &&
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
    return (newBuiltValueToStringHelper(r'GThreadData_thread_user')
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

class GThreadData_thread_userBuilder
    implements
        Builder<GThreadData_thread_user, GThreadData_thread_userBuilder> {
  _$GThreadData_thread_user? _$v;

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

  GThreadData_thread_user_avatarBuilder? _avatar;
  GThreadData_thread_user_avatarBuilder get avatar =>
      _$this._avatar ??= new GThreadData_thread_user_avatarBuilder();
  set avatar(GThreadData_thread_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GThreadData_thread_userBuilder() {
    GThreadData_thread_user._initializeBuilder(this);
  }

  GThreadData_thread_userBuilder get _$this {
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
  void replace(GThreadData_thread_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_thread_user;
  }

  @override
  void update(void Function(GThreadData_thread_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_thread_user build() => _build();

  _$GThreadData_thread_user _build() {
    _$GThreadData_thread_user _$result;
    try {
      _$result = _$v ??
          new _$GThreadData_thread_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GThreadData_thread_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GThreadData_thread_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GThreadData_thread_user', 'name'),
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
            r'GThreadData_thread_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_thread_user_avatar extends GThreadData_thread_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GThreadData_thread_user_avatar(
          [void Function(GThreadData_thread_user_avatarBuilder)? updates]) =>
      (new GThreadData_thread_user_avatarBuilder()..update(updates))._build();

  _$GThreadData_thread_user_avatar._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadData_thread_user_avatar', 'G__typename');
  }

  @override
  GThreadData_thread_user_avatar rebuild(
          void Function(GThreadData_thread_user_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_thread_user_avatarBuilder toBuilder() =>
      new GThreadData_thread_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_thread_user_avatar &&
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
    return (newBuiltValueToStringHelper(r'GThreadData_thread_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GThreadData_thread_user_avatarBuilder
    implements
        Builder<GThreadData_thread_user_avatar,
            GThreadData_thread_user_avatarBuilder> {
  _$GThreadData_thread_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GThreadData_thread_user_avatarBuilder() {
    GThreadData_thread_user_avatar._initializeBuilder(this);
  }

  GThreadData_thread_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadData_thread_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_thread_user_avatar;
  }

  @override
  void update(void Function(GThreadData_thread_user_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_thread_user_avatar build() => _build();

  _$GThreadData_thread_user_avatar _build() {
    final _$result = _$v ??
        new _$GThreadData_thread_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GThreadData_thread_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_thread_replyUser extends GThreadData_thread_replyUser {
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
  final GThreadData_thread_replyUser_avatar? avatar;

  factory _$GThreadData_thread_replyUser(
          [void Function(GThreadData_thread_replyUserBuilder)? updates]) =>
      (new GThreadData_thread_replyUserBuilder()..update(updates))._build();

  _$GThreadData_thread_replyUser._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadData_thread_replyUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GThreadData_thread_replyUser', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GThreadData_thread_replyUser', 'name');
  }

  @override
  GThreadData_thread_replyUser rebuild(
          void Function(GThreadData_thread_replyUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_thread_replyUserBuilder toBuilder() =>
      new GThreadData_thread_replyUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_thread_replyUser &&
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
    return (newBuiltValueToStringHelper(r'GThreadData_thread_replyUser')
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

class GThreadData_thread_replyUserBuilder
    implements
        Builder<GThreadData_thread_replyUser,
            GThreadData_thread_replyUserBuilder> {
  _$GThreadData_thread_replyUser? _$v;

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

  GThreadData_thread_replyUser_avatarBuilder? _avatar;
  GThreadData_thread_replyUser_avatarBuilder get avatar =>
      _$this._avatar ??= new GThreadData_thread_replyUser_avatarBuilder();
  set avatar(GThreadData_thread_replyUser_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GThreadData_thread_replyUserBuilder() {
    GThreadData_thread_replyUser._initializeBuilder(this);
  }

  GThreadData_thread_replyUserBuilder get _$this {
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
  void replace(GThreadData_thread_replyUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_thread_replyUser;
  }

  @override
  void update(void Function(GThreadData_thread_replyUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_thread_replyUser build() => _build();

  _$GThreadData_thread_replyUser _build() {
    _$GThreadData_thread_replyUser _$result;
    try {
      _$result = _$v ??
          new _$GThreadData_thread_replyUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GThreadData_thread_replyUser', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GThreadData_thread_replyUser', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GThreadData_thread_replyUser', 'name'),
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
            r'GThreadData_thread_replyUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_thread_replyUser_avatar
    extends GThreadData_thread_replyUser_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GThreadData_thread_replyUser_avatar(
          [void Function(GThreadData_thread_replyUser_avatarBuilder)?
              updates]) =>
      (new GThreadData_thread_replyUser_avatarBuilder()..update(updates))
          ._build();

  _$GThreadData_thread_replyUser_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadData_thread_replyUser_avatar', 'G__typename');
  }

  @override
  GThreadData_thread_replyUser_avatar rebuild(
          void Function(GThreadData_thread_replyUser_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_thread_replyUser_avatarBuilder toBuilder() =>
      new GThreadData_thread_replyUser_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_thread_replyUser_avatar &&
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
    return (newBuiltValueToStringHelper(r'GThreadData_thread_replyUser_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GThreadData_thread_replyUser_avatarBuilder
    implements
        Builder<GThreadData_thread_replyUser_avatar,
            GThreadData_thread_replyUser_avatarBuilder> {
  _$GThreadData_thread_replyUser_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GThreadData_thread_replyUser_avatarBuilder() {
    GThreadData_thread_replyUser_avatar._initializeBuilder(this);
  }

  GThreadData_thread_replyUser_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadData_thread_replyUser_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_thread_replyUser_avatar;
  }

  @override
  void update(
      void Function(GThreadData_thread_replyUser_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_thread_replyUser_avatar build() => _build();

  _$GThreadData_thread_replyUser_avatar _build() {
    final _$result = _$v ??
        new _$GThreadData_thread_replyUser_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GThreadData_thread_replyUser_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_comments extends GThreadData_comments {
  @override
  final String G__typename;
  @override
  final GThreadData_comments_pageInfo? pageInfo;
  @override
  final BuiltList<GThreadData_comments_threadComments?>? threadComments;

  factory _$GThreadData_comments(
          [void Function(GThreadData_commentsBuilder)? updates]) =>
      (new GThreadData_commentsBuilder()..update(updates))._build();

  _$GThreadData_comments._(
      {required this.G__typename, this.pageInfo, this.threadComments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadData_comments', 'G__typename');
  }

  @override
  GThreadData_comments rebuild(
          void Function(GThreadData_commentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_commentsBuilder toBuilder() =>
      new GThreadData_commentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_comments &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        threadComments == other.threadComments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, threadComments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GThreadData_comments')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('threadComments', threadComments))
        .toString();
  }
}

class GThreadData_commentsBuilder
    implements Builder<GThreadData_comments, GThreadData_commentsBuilder> {
  _$GThreadData_comments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GThreadData_comments_pageInfoBuilder? _pageInfo;
  GThreadData_comments_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GThreadData_comments_pageInfoBuilder();
  set pageInfo(GThreadData_comments_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GThreadData_comments_threadComments?>? _threadComments;
  ListBuilder<GThreadData_comments_threadComments?> get threadComments =>
      _$this._threadComments ??=
          new ListBuilder<GThreadData_comments_threadComments?>();
  set threadComments(
          ListBuilder<GThreadData_comments_threadComments?>? threadComments) =>
      _$this._threadComments = threadComments;

  GThreadData_commentsBuilder() {
    GThreadData_comments._initializeBuilder(this);
  }

  GThreadData_commentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _threadComments = $v.threadComments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadData_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_comments;
  }

  @override
  void update(void Function(GThreadData_commentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_comments build() => _build();

  _$GThreadData_comments _build() {
    _$GThreadData_comments _$result;
    try {
      _$result = _$v ??
          new _$GThreadData_comments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GThreadData_comments', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              threadComments: _threadComments?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'threadComments';
        _threadComments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GThreadData_comments', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_comments_pageInfo extends GThreadData_comments_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;
  @override
  final int? total;
  @override
  final int? lastPage;

  factory _$GThreadData_comments_pageInfo(
          [void Function(GThreadData_comments_pageInfoBuilder)? updates]) =>
      (new GThreadData_comments_pageInfoBuilder()..update(updates))._build();

  _$GThreadData_comments_pageInfo._(
      {required this.G__typename,
      this.currentPage,
      this.hasNextPage,
      this.total,
      this.lastPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadData_comments_pageInfo', 'G__typename');
  }

  @override
  GThreadData_comments_pageInfo rebuild(
          void Function(GThreadData_comments_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_comments_pageInfoBuilder toBuilder() =>
      new GThreadData_comments_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_comments_pageInfo &&
        G__typename == other.G__typename &&
        currentPage == other.currentPage &&
        hasNextPage == other.hasNextPage &&
        total == other.total &&
        lastPage == other.lastPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, lastPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GThreadData_comments_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage)
          ..add('total', total)
          ..add('lastPage', lastPage))
        .toString();
  }
}

class GThreadData_comments_pageInfoBuilder
    implements
        Builder<GThreadData_comments_pageInfo,
            GThreadData_comments_pageInfoBuilder> {
  _$GThreadData_comments_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _lastPage;
  int? get lastPage => _$this._lastPage;
  set lastPage(int? lastPage) => _$this._lastPage = lastPage;

  GThreadData_comments_pageInfoBuilder() {
    GThreadData_comments_pageInfo._initializeBuilder(this);
  }

  GThreadData_comments_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _currentPage = $v.currentPage;
      _hasNextPage = $v.hasNextPage;
      _total = $v.total;
      _lastPage = $v.lastPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadData_comments_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_comments_pageInfo;
  }

  @override
  void update(void Function(GThreadData_comments_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_comments_pageInfo build() => _build();

  _$GThreadData_comments_pageInfo _build() {
    final _$result = _$v ??
        new _$GThreadData_comments_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GThreadData_comments_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage,
            total: total,
            lastPage: lastPage);
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_comments_threadComments
    extends GThreadData_comments_threadComments {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? threadId;
  @override
  final String? comment;
  @override
  final bool? isLiked;
  @override
  final int likeCount;
  @override
  final int createdAt;
  @override
  final GThreadData_comments_threadComments_user? user;
  @override
  final _i7.JsonObject? childComments;
  @override
  final bool? isLocked;

  factory _$GThreadData_comments_threadComments(
          [void Function(GThreadData_comments_threadCommentsBuilder)?
              updates]) =>
      (new GThreadData_comments_threadCommentsBuilder()..update(updates))
          ._build();

  _$GThreadData_comments_threadComments._(
      {required this.G__typename,
      required this.id,
      this.threadId,
      this.comment,
      this.isLiked,
      required this.likeCount,
      required this.createdAt,
      this.user,
      this.childComments,
      this.isLocked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadData_comments_threadComments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GThreadData_comments_threadComments', 'id');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GThreadData_comments_threadComments', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GThreadData_comments_threadComments', 'createdAt');
  }

  @override
  GThreadData_comments_threadComments rebuild(
          void Function(GThreadData_comments_threadCommentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_comments_threadCommentsBuilder toBuilder() =>
      new GThreadData_comments_threadCommentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_comments_threadComments &&
        G__typename == other.G__typename &&
        id == other.id &&
        threadId == other.threadId &&
        comment == other.comment &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount &&
        createdAt == other.createdAt &&
        user == other.user &&
        childComments == other.childComments &&
        isLocked == other.isLocked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, childComments.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GThreadData_comments_threadComments')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('threadId', threadId)
          ..add('comment', comment)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount)
          ..add('createdAt', createdAt)
          ..add('user', user)
          ..add('childComments', childComments)
          ..add('isLocked', isLocked))
        .toString();
  }
}

class GThreadData_comments_threadCommentsBuilder
    implements
        Builder<GThreadData_comments_threadComments,
            GThreadData_comments_threadCommentsBuilder> {
  _$GThreadData_comments_threadComments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _threadId;
  int? get threadId => _$this._threadId;
  set threadId(int? threadId) => _$this._threadId = threadId;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  GThreadData_comments_threadComments_userBuilder? _user;
  GThreadData_comments_threadComments_userBuilder get user =>
      _$this._user ??= new GThreadData_comments_threadComments_userBuilder();
  set user(GThreadData_comments_threadComments_userBuilder? user) =>
      _$this._user = user;

  _i7.JsonObject? _childComments;
  _i7.JsonObject? get childComments => _$this._childComments;
  set childComments(_i7.JsonObject? childComments) =>
      _$this._childComments = childComments;

  bool? _isLocked;
  bool? get isLocked => _$this._isLocked;
  set isLocked(bool? isLocked) => _$this._isLocked = isLocked;

  GThreadData_comments_threadCommentsBuilder() {
    GThreadData_comments_threadComments._initializeBuilder(this);
  }

  GThreadData_comments_threadCommentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _threadId = $v.threadId;
      _comment = $v.comment;
      _isLiked = $v.isLiked;
      _likeCount = $v.likeCount;
      _createdAt = $v.createdAt;
      _user = $v.user?.toBuilder();
      _childComments = $v.childComments;
      _isLocked = $v.isLocked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadData_comments_threadComments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_comments_threadComments;
  }

  @override
  void update(
      void Function(GThreadData_comments_threadCommentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_comments_threadComments build() => _build();

  _$GThreadData_comments_threadComments _build() {
    _$GThreadData_comments_threadComments _$result;
    try {
      _$result = _$v ??
          new _$GThreadData_comments_threadComments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GThreadData_comments_threadComments', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GThreadData_comments_threadComments', 'id'),
              threadId: threadId,
              comment: comment,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                  r'GThreadData_comments_threadComments', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
                  r'GThreadData_comments_threadComments', 'createdAt'),
              user: _user?.build(),
              childComments: childComments,
              isLocked: isLocked);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GThreadData_comments_threadComments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_comments_threadComments_user
    extends GThreadData_comments_threadComments_user {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final GThreadData_comments_threadComments_user_avatar? avatar;

  factory _$GThreadData_comments_threadComments_user(
          [void Function(GThreadData_comments_threadComments_userBuilder)?
              updates]) =>
      (new GThreadData_comments_threadComments_userBuilder()..update(updates))
          ._build();

  _$GThreadData_comments_threadComments_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GThreadData_comments_threadComments_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GThreadData_comments_threadComments_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GThreadData_comments_threadComments_user', 'name');
  }

  @override
  GThreadData_comments_threadComments_user rebuild(
          void Function(GThreadData_comments_threadComments_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_comments_threadComments_userBuilder toBuilder() =>
      new GThreadData_comments_threadComments_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_comments_threadComments_user &&
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
            r'GThreadData_comments_threadComments_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('avatar', avatar))
        .toString();
  }
}

class GThreadData_comments_threadComments_userBuilder
    implements
        Builder<GThreadData_comments_threadComments_user,
            GThreadData_comments_threadComments_userBuilder> {
  _$GThreadData_comments_threadComments_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GThreadData_comments_threadComments_user_avatarBuilder? _avatar;
  GThreadData_comments_threadComments_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GThreadData_comments_threadComments_user_avatarBuilder();
  set avatar(GThreadData_comments_threadComments_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GThreadData_comments_threadComments_userBuilder() {
    GThreadData_comments_threadComments_user._initializeBuilder(this);
  }

  GThreadData_comments_threadComments_userBuilder get _$this {
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
  void replace(GThreadData_comments_threadComments_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_comments_threadComments_user;
  }

  @override
  void update(
      void Function(GThreadData_comments_threadComments_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_comments_threadComments_user build() => _build();

  _$GThreadData_comments_threadComments_user _build() {
    _$GThreadData_comments_threadComments_user _$result;
    try {
      _$result = _$v ??
          new _$GThreadData_comments_threadComments_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GThreadData_comments_threadComments_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GThreadData_comments_threadComments_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GThreadData_comments_threadComments_user', 'name'),
              avatar: _avatar?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GThreadData_comments_threadComments_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadData_comments_threadComments_user_avatar
    extends GThreadData_comments_threadComments_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GThreadData_comments_threadComments_user_avatar(
          [void Function(
                  GThreadData_comments_threadComments_user_avatarBuilder)?
              updates]) =>
      (new GThreadData_comments_threadComments_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GThreadData_comments_threadComments_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GThreadData_comments_threadComments_user_avatar', 'G__typename');
  }

  @override
  GThreadData_comments_threadComments_user_avatar rebuild(
          void Function(GThreadData_comments_threadComments_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadData_comments_threadComments_user_avatarBuilder toBuilder() =>
      new GThreadData_comments_threadComments_user_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadData_comments_threadComments_user_avatar &&
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
            r'GThreadData_comments_threadComments_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GThreadData_comments_threadComments_user_avatarBuilder
    implements
        Builder<GThreadData_comments_threadComments_user_avatar,
            GThreadData_comments_threadComments_user_avatarBuilder> {
  _$GThreadData_comments_threadComments_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GThreadData_comments_threadComments_user_avatarBuilder() {
    GThreadData_comments_threadComments_user_avatar._initializeBuilder(this);
  }

  GThreadData_comments_threadComments_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadData_comments_threadComments_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadData_comments_threadComments_user_avatar;
  }

  @override
  void update(
      void Function(GThreadData_comments_threadComments_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadData_comments_threadComments_user_avatar build() => _build();

  _$GThreadData_comments_threadComments_user_avatar _build() {
    final _$result = _$v ??
        new _$GThreadData_comments_threadComments_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GThreadData_comments_threadComments_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveCommentData extends GSaveCommentData {
  @override
  final String G__typename;
  @override
  final GSaveCommentData_SaveThreadComment? SaveThreadComment;

  factory _$GSaveCommentData(
          [void Function(GSaveCommentDataBuilder)? updates]) =>
      (new GSaveCommentDataBuilder()..update(updates))._build();

  _$GSaveCommentData._({required this.G__typename, this.SaveThreadComment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaveCommentData', 'G__typename');
  }

  @override
  GSaveCommentData rebuild(void Function(GSaveCommentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveCommentDataBuilder toBuilder() =>
      new GSaveCommentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveCommentData &&
        G__typename == other.G__typename &&
        SaveThreadComment == other.SaveThreadComment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, SaveThreadComment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveCommentData')
          ..add('G__typename', G__typename)
          ..add('SaveThreadComment', SaveThreadComment))
        .toString();
  }
}

class GSaveCommentDataBuilder
    implements Builder<GSaveCommentData, GSaveCommentDataBuilder> {
  _$GSaveCommentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSaveCommentData_SaveThreadCommentBuilder? _SaveThreadComment;
  GSaveCommentData_SaveThreadCommentBuilder get SaveThreadComment =>
      _$this._SaveThreadComment ??=
          new GSaveCommentData_SaveThreadCommentBuilder();
  set SaveThreadComment(
          GSaveCommentData_SaveThreadCommentBuilder? SaveThreadComment) =>
      _$this._SaveThreadComment = SaveThreadComment;

  GSaveCommentDataBuilder() {
    GSaveCommentData._initializeBuilder(this);
  }

  GSaveCommentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _SaveThreadComment = $v.SaveThreadComment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveCommentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveCommentData;
  }

  @override
  void update(void Function(GSaveCommentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveCommentData build() => _build();

  _$GSaveCommentData _build() {
    _$GSaveCommentData _$result;
    try {
      _$result = _$v ??
          new _$GSaveCommentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSaveCommentData', 'G__typename'),
              SaveThreadComment: _SaveThreadComment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'SaveThreadComment';
        _SaveThreadComment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveCommentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveCommentData_SaveThreadComment
    extends GSaveCommentData_SaveThreadComment {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? threadId;
  @override
  final String? comment;
  @override
  final bool? isLiked;
  @override
  final int likeCount;
  @override
  final int createdAt;
  @override
  final GSaveCommentData_SaveThreadComment_user? user;
  @override
  final _i7.JsonObject? childComments;
  @override
  final bool? isLocked;

  factory _$GSaveCommentData_SaveThreadComment(
          [void Function(GSaveCommentData_SaveThreadCommentBuilder)?
              updates]) =>
      (new GSaveCommentData_SaveThreadCommentBuilder()..update(updates))
          ._build();

  _$GSaveCommentData_SaveThreadComment._(
      {required this.G__typename,
      required this.id,
      this.threadId,
      this.comment,
      this.isLiked,
      required this.likeCount,
      required this.createdAt,
      this.user,
      this.childComments,
      this.isLocked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaveCommentData_SaveThreadComment', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSaveCommentData_SaveThreadComment', 'id');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GSaveCommentData_SaveThreadComment', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GSaveCommentData_SaveThreadComment', 'createdAt');
  }

  @override
  GSaveCommentData_SaveThreadComment rebuild(
          void Function(GSaveCommentData_SaveThreadCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveCommentData_SaveThreadCommentBuilder toBuilder() =>
      new GSaveCommentData_SaveThreadCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveCommentData_SaveThreadComment &&
        G__typename == other.G__typename &&
        id == other.id &&
        threadId == other.threadId &&
        comment == other.comment &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount &&
        createdAt == other.createdAt &&
        user == other.user &&
        childComments == other.childComments &&
        isLocked == other.isLocked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, threadId.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jc(_$hash, likeCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, childComments.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveCommentData_SaveThreadComment')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('threadId', threadId)
          ..add('comment', comment)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount)
          ..add('createdAt', createdAt)
          ..add('user', user)
          ..add('childComments', childComments)
          ..add('isLocked', isLocked))
        .toString();
  }
}

class GSaveCommentData_SaveThreadCommentBuilder
    implements
        Builder<GSaveCommentData_SaveThreadComment,
            GSaveCommentData_SaveThreadCommentBuilder> {
  _$GSaveCommentData_SaveThreadComment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _threadId;
  int? get threadId => _$this._threadId;
  set threadId(int? threadId) => _$this._threadId = threadId;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  int? _likeCount;
  int? get likeCount => _$this._likeCount;
  set likeCount(int? likeCount) => _$this._likeCount = likeCount;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  GSaveCommentData_SaveThreadComment_userBuilder? _user;
  GSaveCommentData_SaveThreadComment_userBuilder get user =>
      _$this._user ??= new GSaveCommentData_SaveThreadComment_userBuilder();
  set user(GSaveCommentData_SaveThreadComment_userBuilder? user) =>
      _$this._user = user;

  _i7.JsonObject? _childComments;
  _i7.JsonObject? get childComments => _$this._childComments;
  set childComments(_i7.JsonObject? childComments) =>
      _$this._childComments = childComments;

  bool? _isLocked;
  bool? get isLocked => _$this._isLocked;
  set isLocked(bool? isLocked) => _$this._isLocked = isLocked;

  GSaveCommentData_SaveThreadCommentBuilder() {
    GSaveCommentData_SaveThreadComment._initializeBuilder(this);
  }

  GSaveCommentData_SaveThreadCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _threadId = $v.threadId;
      _comment = $v.comment;
      _isLiked = $v.isLiked;
      _likeCount = $v.likeCount;
      _createdAt = $v.createdAt;
      _user = $v.user?.toBuilder();
      _childComments = $v.childComments;
      _isLocked = $v.isLocked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveCommentData_SaveThreadComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveCommentData_SaveThreadComment;
  }

  @override
  void update(
      void Function(GSaveCommentData_SaveThreadCommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveCommentData_SaveThreadComment build() => _build();

  _$GSaveCommentData_SaveThreadComment _build() {
    _$GSaveCommentData_SaveThreadComment _$result;
    try {
      _$result = _$v ??
          new _$GSaveCommentData_SaveThreadComment._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSaveCommentData_SaveThreadComment', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSaveCommentData_SaveThreadComment', 'id'),
              threadId: threadId,
              comment: comment,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                  r'GSaveCommentData_SaveThreadComment', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
                  r'GSaveCommentData_SaveThreadComment', 'createdAt'),
              user: _user?.build(),
              childComments: childComments,
              isLocked: isLocked);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveCommentData_SaveThreadComment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveCommentData_SaveThreadComment_user
    extends GSaveCommentData_SaveThreadComment_user {
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
  final GSaveCommentData_SaveThreadComment_user_avatar? avatar;

  factory _$GSaveCommentData_SaveThreadComment_user(
          [void Function(GSaveCommentData_SaveThreadComment_userBuilder)?
              updates]) =>
      (new GSaveCommentData_SaveThreadComment_userBuilder()..update(updates))
          ._build();

  _$GSaveCommentData_SaveThreadComment_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaveCommentData_SaveThreadComment_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSaveCommentData_SaveThreadComment_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GSaveCommentData_SaveThreadComment_user', 'name');
  }

  @override
  GSaveCommentData_SaveThreadComment_user rebuild(
          void Function(GSaveCommentData_SaveThreadComment_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveCommentData_SaveThreadComment_userBuilder toBuilder() =>
      new GSaveCommentData_SaveThreadComment_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveCommentData_SaveThreadComment_user &&
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
            r'GSaveCommentData_SaveThreadComment_user')
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

class GSaveCommentData_SaveThreadComment_userBuilder
    implements
        Builder<GSaveCommentData_SaveThreadComment_user,
            GSaveCommentData_SaveThreadComment_userBuilder> {
  _$GSaveCommentData_SaveThreadComment_user? _$v;

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

  GSaveCommentData_SaveThreadComment_user_avatarBuilder? _avatar;
  GSaveCommentData_SaveThreadComment_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GSaveCommentData_SaveThreadComment_user_avatarBuilder();
  set avatar(GSaveCommentData_SaveThreadComment_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GSaveCommentData_SaveThreadComment_userBuilder() {
    GSaveCommentData_SaveThreadComment_user._initializeBuilder(this);
  }

  GSaveCommentData_SaveThreadComment_userBuilder get _$this {
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
  void replace(GSaveCommentData_SaveThreadComment_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveCommentData_SaveThreadComment_user;
  }

  @override
  void update(
      void Function(GSaveCommentData_SaveThreadComment_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveCommentData_SaveThreadComment_user build() => _build();

  _$GSaveCommentData_SaveThreadComment_user _build() {
    _$GSaveCommentData_SaveThreadComment_user _$result;
    try {
      _$result = _$v ??
          new _$GSaveCommentData_SaveThreadComment_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSaveCommentData_SaveThreadComment_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSaveCommentData_SaveThreadComment_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GSaveCommentData_SaveThreadComment_user', 'name'),
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
            r'GSaveCommentData_SaveThreadComment_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveCommentData_SaveThreadComment_user_avatar
    extends GSaveCommentData_SaveThreadComment_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GSaveCommentData_SaveThreadComment_user_avatar(
          [void Function(GSaveCommentData_SaveThreadComment_user_avatarBuilder)?
              updates]) =>
      (new GSaveCommentData_SaveThreadComment_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GSaveCommentData_SaveThreadComment_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSaveCommentData_SaveThreadComment_user_avatar', 'G__typename');
  }

  @override
  GSaveCommentData_SaveThreadComment_user_avatar rebuild(
          void Function(GSaveCommentData_SaveThreadComment_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveCommentData_SaveThreadComment_user_avatarBuilder toBuilder() =>
      new GSaveCommentData_SaveThreadComment_user_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveCommentData_SaveThreadComment_user_avatar &&
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
            r'GSaveCommentData_SaveThreadComment_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GSaveCommentData_SaveThreadComment_user_avatarBuilder
    implements
        Builder<GSaveCommentData_SaveThreadComment_user_avatar,
            GSaveCommentData_SaveThreadComment_user_avatarBuilder> {
  _$GSaveCommentData_SaveThreadComment_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GSaveCommentData_SaveThreadComment_user_avatarBuilder() {
    GSaveCommentData_SaveThreadComment_user_avatar._initializeBuilder(this);
  }

  GSaveCommentData_SaveThreadComment_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveCommentData_SaveThreadComment_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveCommentData_SaveThreadComment_user_avatar;
  }

  @override
  void update(
      void Function(GSaveCommentData_SaveThreadComment_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveCommentData_SaveThreadComment_user_avatar build() => _build();

  _$GSaveCommentData_SaveThreadComment_user_avatar _build() {
    final _$result = _$v ??
        new _$GSaveCommentData_SaveThreadComment_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSaveCommentData_SaveThreadComment_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteCommentData extends GDeleteCommentData {
  @override
  final String G__typename;
  @override
  final GDeleteCommentData_DeleteThreadComment? DeleteThreadComment;

  factory _$GDeleteCommentData(
          [void Function(GDeleteCommentDataBuilder)? updates]) =>
      (new GDeleteCommentDataBuilder()..update(updates))._build();

  _$GDeleteCommentData._({required this.G__typename, this.DeleteThreadComment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeleteCommentData', 'G__typename');
  }

  @override
  GDeleteCommentData rebuild(
          void Function(GDeleteCommentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteCommentDataBuilder toBuilder() =>
      new GDeleteCommentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteCommentData &&
        G__typename == other.G__typename &&
        DeleteThreadComment == other.DeleteThreadComment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, DeleteThreadComment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteCommentData')
          ..add('G__typename', G__typename)
          ..add('DeleteThreadComment', DeleteThreadComment))
        .toString();
  }
}

class GDeleteCommentDataBuilder
    implements Builder<GDeleteCommentData, GDeleteCommentDataBuilder> {
  _$GDeleteCommentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDeleteCommentData_DeleteThreadCommentBuilder? _DeleteThreadComment;
  GDeleteCommentData_DeleteThreadCommentBuilder get DeleteThreadComment =>
      _$this._DeleteThreadComment ??=
          new GDeleteCommentData_DeleteThreadCommentBuilder();
  set DeleteThreadComment(
          GDeleteCommentData_DeleteThreadCommentBuilder? DeleteThreadComment) =>
      _$this._DeleteThreadComment = DeleteThreadComment;

  GDeleteCommentDataBuilder() {
    GDeleteCommentData._initializeBuilder(this);
  }

  GDeleteCommentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _DeleteThreadComment = $v.DeleteThreadComment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteCommentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteCommentData;
  }

  @override
  void update(void Function(GDeleteCommentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteCommentData build() => _build();

  _$GDeleteCommentData _build() {
    _$GDeleteCommentData _$result;
    try {
      _$result = _$v ??
          new _$GDeleteCommentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GDeleteCommentData', 'G__typename'),
              DeleteThreadComment: _DeleteThreadComment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'DeleteThreadComment';
        _DeleteThreadComment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDeleteCommentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteCommentData_DeleteThreadComment
    extends GDeleteCommentData_DeleteThreadComment {
  @override
  final String G__typename;
  @override
  final bool? deleted;

  factory _$GDeleteCommentData_DeleteThreadComment(
          [void Function(GDeleteCommentData_DeleteThreadCommentBuilder)?
              updates]) =>
      (new GDeleteCommentData_DeleteThreadCommentBuilder()..update(updates))
          ._build();

  _$GDeleteCommentData_DeleteThreadComment._(
      {required this.G__typename, this.deleted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeleteCommentData_DeleteThreadComment', 'G__typename');
  }

  @override
  GDeleteCommentData_DeleteThreadComment rebuild(
          void Function(GDeleteCommentData_DeleteThreadCommentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteCommentData_DeleteThreadCommentBuilder toBuilder() =>
      new GDeleteCommentData_DeleteThreadCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteCommentData_DeleteThreadComment &&
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
            r'GDeleteCommentData_DeleteThreadComment')
          ..add('G__typename', G__typename)
          ..add('deleted', deleted))
        .toString();
  }
}

class GDeleteCommentData_DeleteThreadCommentBuilder
    implements
        Builder<GDeleteCommentData_DeleteThreadComment,
            GDeleteCommentData_DeleteThreadCommentBuilder> {
  _$GDeleteCommentData_DeleteThreadComment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _deleted;
  bool? get deleted => _$this._deleted;
  set deleted(bool? deleted) => _$this._deleted = deleted;

  GDeleteCommentData_DeleteThreadCommentBuilder() {
    GDeleteCommentData_DeleteThreadComment._initializeBuilder(this);
  }

  GDeleteCommentData_DeleteThreadCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleted = $v.deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteCommentData_DeleteThreadComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteCommentData_DeleteThreadComment;
  }

  @override
  void update(
      void Function(GDeleteCommentData_DeleteThreadCommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteCommentData_DeleteThreadComment build() => _build();

  _$GDeleteCommentData_DeleteThreadComment _build() {
    final _$result = _$v ??
        new _$GDeleteCommentData_DeleteThreadComment._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GDeleteCommentData_DeleteThreadComment', 'G__typename'),
            deleted: deleted);
    replace(_$result);
    return _$result;
  }
}

class _$GToggleThreadSubscriptionData extends GToggleThreadSubscriptionData {
  @override
  final String G__typename;
  @override
  final GToggleThreadSubscriptionData_ToggleThreadSubscription?
      ToggleThreadSubscription;

  factory _$GToggleThreadSubscriptionData(
          [void Function(GToggleThreadSubscriptionDataBuilder)? updates]) =>
      (new GToggleThreadSubscriptionDataBuilder()..update(updates))._build();

  _$GToggleThreadSubscriptionData._(
      {required this.G__typename, this.ToggleThreadSubscription})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GToggleThreadSubscriptionData', 'G__typename');
  }

  @override
  GToggleThreadSubscriptionData rebuild(
          void Function(GToggleThreadSubscriptionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleThreadSubscriptionDataBuilder toBuilder() =>
      new GToggleThreadSubscriptionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleThreadSubscriptionData &&
        G__typename == other.G__typename &&
        ToggleThreadSubscription == other.ToggleThreadSubscription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ToggleThreadSubscription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GToggleThreadSubscriptionData')
          ..add('G__typename', G__typename)
          ..add('ToggleThreadSubscription', ToggleThreadSubscription))
        .toString();
  }
}

class GToggleThreadSubscriptionDataBuilder
    implements
        Builder<GToggleThreadSubscriptionData,
            GToggleThreadSubscriptionDataBuilder> {
  _$GToggleThreadSubscriptionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder?
      _ToggleThreadSubscription;
  GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder
      get ToggleThreadSubscription => _$this._ToggleThreadSubscription ??=
          new GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder();
  set ToggleThreadSubscription(
          GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder?
              ToggleThreadSubscription) =>
      _$this._ToggleThreadSubscription = ToggleThreadSubscription;

  GToggleThreadSubscriptionDataBuilder() {
    GToggleThreadSubscriptionData._initializeBuilder(this);
  }

  GToggleThreadSubscriptionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ToggleThreadSubscription = $v.ToggleThreadSubscription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GToggleThreadSubscriptionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleThreadSubscriptionData;
  }

  @override
  void update(void Function(GToggleThreadSubscriptionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleThreadSubscriptionData build() => _build();

  _$GToggleThreadSubscriptionData _build() {
    _$GToggleThreadSubscriptionData _$result;
    try {
      _$result = _$v ??
          new _$GToggleThreadSubscriptionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GToggleThreadSubscriptionData', 'G__typename'),
              ToggleThreadSubscription: _ToggleThreadSubscription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ToggleThreadSubscription';
        _ToggleThreadSubscription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GToggleThreadSubscriptionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GToggleThreadSubscriptionData_ToggleThreadSubscription
    extends GToggleThreadSubscriptionData_ToggleThreadSubscription {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final bool? isSubscribed;

  factory _$GToggleThreadSubscriptionData_ToggleThreadSubscription(
          [void Function(
                  GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder)?
              updates]) =>
      (new GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder()
            ..update(updates))
          ._build();

  _$GToggleThreadSubscriptionData_ToggleThreadSubscription._(
      {required this.G__typename, required this.id, this.isSubscribed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GToggleThreadSubscriptionData_ToggleThreadSubscription',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GToggleThreadSubscriptionData_ToggleThreadSubscription', 'id');
  }

  @override
  GToggleThreadSubscriptionData_ToggleThreadSubscription rebuild(
          void Function(
                  GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder toBuilder() =>
      new GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GToggleThreadSubscriptionData_ToggleThreadSubscription &&
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
            r'GToggleThreadSubscriptionData_ToggleThreadSubscription')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('isSubscribed', isSubscribed))
        .toString();
  }
}

class GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder
    implements
        Builder<GToggleThreadSubscriptionData_ToggleThreadSubscription,
            GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder> {
  _$GToggleThreadSubscriptionData_ToggleThreadSubscription? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _isSubscribed;
  bool? get isSubscribed => _$this._isSubscribed;
  set isSubscribed(bool? isSubscribed) => _$this._isSubscribed = isSubscribed;

  GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder() {
    GToggleThreadSubscriptionData_ToggleThreadSubscription._initializeBuilder(
        this);
  }

  GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder get _$this {
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
  void replace(GToggleThreadSubscriptionData_ToggleThreadSubscription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GToggleThreadSubscriptionData_ToggleThreadSubscription;
  }

  @override
  void update(
      void Function(
              GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GToggleThreadSubscriptionData_ToggleThreadSubscription build() => _build();

  _$GToggleThreadSubscriptionData_ToggleThreadSubscription _build() {
    final _$result = _$v ??
        new _$GToggleThreadSubscriptionData_ToggleThreadSubscription._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GToggleThreadSubscriptionData_ToggleThreadSubscription',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GToggleThreadSubscriptionData_ToggleThreadSubscription',
                'id'),
            isSubscribed: isSubscribed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
