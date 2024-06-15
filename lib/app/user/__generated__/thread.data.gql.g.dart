// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserThreadsData> _$gUserThreadsDataSerializer =
    new _$GUserThreadsDataSerializer();
Serializer<GUserThreadsData_thread> _$gUserThreadsDataThreadSerializer =
    new _$GUserThreadsData_threadSerializer();
Serializer<GUserThreadsData_thread_pageInfo>
    _$gUserThreadsDataThreadPageInfoSerializer =
    new _$GUserThreadsData_thread_pageInfoSerializer();
Serializer<GUserThreadsData_thread_threads>
    _$gUserThreadsDataThreadThreadsSerializer =
    new _$GUserThreadsData_thread_threadsSerializer();
Serializer<GUserThreadsData_thread_threads_mediaCategories>
    _$gUserThreadsDataThreadThreadsMediaCategoriesSerializer =
    new _$GUserThreadsData_thread_threads_mediaCategoriesSerializer();
Serializer<GUserThreadsData_thread_threads_mediaCategories_title>
    _$gUserThreadsDataThreadThreadsMediaCategoriesTitleSerializer =
    new _$GUserThreadsData_thread_threads_mediaCategories_titleSerializer();
Serializer<GUserThreadsData_thread_threads_mediaCategories_coverImage>
    _$gUserThreadsDataThreadThreadsMediaCategoriesCoverImageSerializer =
    new _$GUserThreadsData_thread_threads_mediaCategories_coverImageSerializer();
Serializer<GUserThreadsData_thread_threads_categories>
    _$gUserThreadsDataThreadThreadsCategoriesSerializer =
    new _$GUserThreadsData_thread_threads_categoriesSerializer();
Serializer<GUserThreadsData_thread_threads_user>
    _$gUserThreadsDataThreadThreadsUserSerializer =
    new _$GUserThreadsData_thread_threads_userSerializer();
Serializer<GUserThreadsData_thread_threads_user_avatar>
    _$gUserThreadsDataThreadThreadsUserAvatarSerializer =
    new _$GUserThreadsData_thread_threads_user_avatarSerializer();
Serializer<GUserThreadsData_thread_threads_replyUser>
    _$gUserThreadsDataThreadThreadsReplyUserSerializer =
    new _$GUserThreadsData_thread_threads_replyUserSerializer();
Serializer<GUserThreadsData_thread_threads_replyUser_avatar>
    _$gUserThreadsDataThreadThreadsReplyUserAvatarSerializer =
    new _$GUserThreadsData_thread_threads_replyUser_avatarSerializer();
Serializer<GUserThreadsData_comments> _$gUserThreadsDataCommentsSerializer =
    new _$GUserThreadsData_commentsSerializer();
Serializer<GUserThreadsData_comments_pageInfo>
    _$gUserThreadsDataCommentsPageInfoSerializer =
    new _$GUserThreadsData_comments_pageInfoSerializer();
Serializer<GUserThreadsData_comments_threadComments>
    _$gUserThreadsDataCommentsThreadCommentsSerializer =
    new _$GUserThreadsData_comments_threadCommentsSerializer();
Serializer<GUserThreadsData_comments_threadComments_thread>
    _$gUserThreadsDataCommentsThreadCommentsThreadSerializer =
    new _$GUserThreadsData_comments_threadComments_threadSerializer();
Serializer<GUserThreadsData_comments_threadComments_user>
    _$gUserThreadsDataCommentsThreadCommentsUserSerializer =
    new _$GUserThreadsData_comments_threadComments_userSerializer();
Serializer<GUserThreadsData_comments_threadComments_user_avatar>
    _$gUserThreadsDataCommentsThreadCommentsUserAvatarSerializer =
    new _$GUserThreadsData_comments_threadComments_user_avatarSerializer();

class _$GUserThreadsDataSerializer
    implements StructuredSerializer<GUserThreadsData> {
  @override
  final Iterable<Type> types = const [GUserThreadsData, _$GUserThreadsData];
  @override
  final String wireName = 'GUserThreadsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserThreadsData object,
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
            specifiedType: const FullType(GUserThreadsData_thread)));
    }
    value = object.comments;
    if (value != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserThreadsData_comments)));
    }
    return result;
  }

  @override
  GUserThreadsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsDataBuilder();

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
                  specifiedType: const FullType(GUserThreadsData_thread))!
              as GUserThreadsData_thread);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserThreadsData_comments))!
              as GUserThreadsData_comments);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserThreadsData_threadSerializer
    implements StructuredSerializer<GUserThreadsData_thread> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_thread,
    _$GUserThreadsData_thread
  ];
  @override
  final String wireName = 'GUserThreadsData_thread';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserThreadsData_thread object,
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
            specifiedType: const FullType(GUserThreadsData_thread_pageInfo)));
    }
    value = object.threads;
    if (value != null) {
      result
        ..add('threads')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GUserThreadsData_thread_threads)
            ])));
    }
    return result;
  }

  @override
  GUserThreadsData_thread deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsData_threadBuilder();

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
                      const FullType(GUserThreadsData_thread_pageInfo))!
              as GUserThreadsData_thread_pageInfo);
          break;
        case 'threads':
          result.threads.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GUserThreadsData_thread_threads)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserThreadsData_thread_pageInfoSerializer
    implements StructuredSerializer<GUserThreadsData_thread_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_thread_pageInfo,
    _$GUserThreadsData_thread_pageInfo
  ];
  @override
  final String wireName = 'GUserThreadsData_thread_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserThreadsData_thread_pageInfo object,
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
  GUserThreadsData_thread_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsData_thread_pageInfoBuilder();

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

class _$GUserThreadsData_thread_threadsSerializer
    implements StructuredSerializer<GUserThreadsData_thread_threads> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_thread_threads,
    _$GUserThreadsData_thread_threads
  ];
  @override
  final String wireName = 'GUserThreadsData_thread_threads';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserThreadsData_thread_threads object,
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
              const FullType.nullable(
                  GUserThreadsData_thread_threads_mediaCategories)
            ])));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GUserThreadsData_thread_threads_categories)
            ])));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GUserThreadsData_thread_threads_user)));
    }
    value = object.replyUser;
    if (value != null) {
      result
        ..add('replyUser')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GUserThreadsData_thread_threads_replyUser)));
    }
    return result;
  }

  @override
  GUserThreadsData_thread_threads deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsData_thread_threadsBuilder();

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
                const FullType.nullable(
                    GUserThreadsData_thread_threads_mediaCategories)
              ]))! as BuiltList<Object?>);
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GUserThreadsData_thread_threads_categories)
              ]))! as BuiltList<Object?>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserThreadsData_thread_threads_user))!
              as GUserThreadsData_thread_threads_user);
          break;
        case 'replyUser':
          result.replyUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUserThreadsData_thread_threads_replyUser))!
              as GUserThreadsData_thread_threads_replyUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserThreadsData_thread_threads_mediaCategoriesSerializer
    implements
        StructuredSerializer<GUserThreadsData_thread_threads_mediaCategories> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_thread_threads_mediaCategories,
    _$GUserThreadsData_thread_threads_mediaCategories
  ];
  @override
  final String wireName = 'GUserThreadsData_thread_threads_mediaCategories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserThreadsData_thread_threads_mediaCategories object,
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
                GUserThreadsData_thread_threads_mediaCategories_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GUserThreadsData_thread_threads_mediaCategories_coverImage)));
    }
    return result;
  }

  @override
  GUserThreadsData_thread_threads_mediaCategories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsData_thread_threads_mediaCategoriesBuilder();

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
                      GUserThreadsData_thread_threads_mediaCategories_title))!
              as GUserThreadsData_thread_threads_mediaCategories_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUserThreadsData_thread_threads_mediaCategories_coverImage))!
              as GUserThreadsData_thread_threads_mediaCategories_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserThreadsData_thread_threads_mediaCategories_titleSerializer
    implements
        StructuredSerializer<
            GUserThreadsData_thread_threads_mediaCategories_title> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_thread_threads_mediaCategories_title,
    _$GUserThreadsData_thread_threads_mediaCategories_title
  ];
  @override
  final String wireName =
      'GUserThreadsData_thread_threads_mediaCategories_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserThreadsData_thread_threads_mediaCategories_title object,
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
  GUserThreadsData_thread_threads_mediaCategories_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserThreadsData_thread_threads_mediaCategories_titleBuilder();

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

class _$GUserThreadsData_thread_threads_mediaCategories_coverImageSerializer
    implements
        StructuredSerializer<
            GUserThreadsData_thread_threads_mediaCategories_coverImage> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_thread_threads_mediaCategories_coverImage,
    _$GUserThreadsData_thread_threads_mediaCategories_coverImage
  ];
  @override
  final String wireName =
      'GUserThreadsData_thread_threads_mediaCategories_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserThreadsData_thread_threads_mediaCategories_coverImage object,
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
  GUserThreadsData_thread_threads_mediaCategories_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder();

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

class _$GUserThreadsData_thread_threads_categoriesSerializer
    implements
        StructuredSerializer<GUserThreadsData_thread_threads_categories> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_thread_threads_categories,
    _$GUserThreadsData_thread_threads_categories
  ];
  @override
  final String wireName = 'GUserThreadsData_thread_threads_categories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserThreadsData_thread_threads_categories object,
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
  GUserThreadsData_thread_threads_categories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsData_thread_threads_categoriesBuilder();

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

class _$GUserThreadsData_thread_threads_userSerializer
    implements StructuredSerializer<GUserThreadsData_thread_threads_user> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_thread_threads_user,
    _$GUserThreadsData_thread_threads_user
  ];
  @override
  final String wireName = 'GUserThreadsData_thread_threads_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserThreadsData_thread_threads_user object,
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
            specifiedType:
                const FullType(GUserThreadsData_thread_threads_user_avatar)));
    }
    return result;
  }

  @override
  GUserThreadsData_thread_threads_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsData_thread_threads_userBuilder();

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
                      GUserThreadsData_thread_threads_user_avatar))!
              as GUserThreadsData_thread_threads_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserThreadsData_thread_threads_user_avatarSerializer
    implements
        StructuredSerializer<GUserThreadsData_thread_threads_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_thread_threads_user_avatar,
    _$GUserThreadsData_thread_threads_user_avatar
  ];
  @override
  final String wireName = 'GUserThreadsData_thread_threads_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserThreadsData_thread_threads_user_avatar object,
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
  GUserThreadsData_thread_threads_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsData_thread_threads_user_avatarBuilder();

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

class _$GUserThreadsData_thread_threads_replyUserSerializer
    implements StructuredSerializer<GUserThreadsData_thread_threads_replyUser> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_thread_threads_replyUser,
    _$GUserThreadsData_thread_threads_replyUser
  ];
  @override
  final String wireName = 'GUserThreadsData_thread_threads_replyUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserThreadsData_thread_threads_replyUser object,
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
                GUserThreadsData_thread_threads_replyUser_avatar)));
    }
    return result;
  }

  @override
  GUserThreadsData_thread_threads_replyUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsData_thread_threads_replyUserBuilder();

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
                      GUserThreadsData_thread_threads_replyUser_avatar))!
              as GUserThreadsData_thread_threads_replyUser_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserThreadsData_thread_threads_replyUser_avatarSerializer
    implements
        StructuredSerializer<GUserThreadsData_thread_threads_replyUser_avatar> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_thread_threads_replyUser_avatar,
    _$GUserThreadsData_thread_threads_replyUser_avatar
  ];
  @override
  final String wireName = 'GUserThreadsData_thread_threads_replyUser_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserThreadsData_thread_threads_replyUser_avatar object,
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
  GUserThreadsData_thread_threads_replyUser_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserThreadsData_thread_threads_replyUser_avatarBuilder();

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

class _$GUserThreadsData_commentsSerializer
    implements StructuredSerializer<GUserThreadsData_comments> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_comments,
    _$GUserThreadsData_comments
  ];
  @override
  final String wireName = 'GUserThreadsData_comments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserThreadsData_comments object,
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
            specifiedType: const FullType(GUserThreadsData_comments_pageInfo)));
    }
    value = object.threadComments;
    if (value != null) {
      result
        ..add('threadComments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GUserThreadsData_comments_threadComments)
            ])));
    }
    return result;
  }

  @override
  GUserThreadsData_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsData_commentsBuilder();

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
                      const FullType(GUserThreadsData_comments_pageInfo))!
              as GUserThreadsData_comments_pageInfo);
          break;
        case 'threadComments':
          result.threadComments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GUserThreadsData_comments_threadComments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserThreadsData_comments_pageInfoSerializer
    implements StructuredSerializer<GUserThreadsData_comments_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_comments_pageInfo,
    _$GUserThreadsData_comments_pageInfo
  ];
  @override
  final String wireName = 'GUserThreadsData_comments_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserThreadsData_comments_pageInfo object,
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
  GUserThreadsData_comments_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsData_comments_pageInfoBuilder();

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

class _$GUserThreadsData_comments_threadCommentsSerializer
    implements StructuredSerializer<GUserThreadsData_comments_threadComments> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_comments_threadComments,
    _$GUserThreadsData_comments_threadComments
  ];
  @override
  final String wireName = 'GUserThreadsData_comments_threadComments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserThreadsData_comments_threadComments object,
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
    value = object.thread;
    if (value != null) {
      result
        ..add('thread')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GUserThreadsData_comments_threadComments_thread)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GUserThreadsData_comments_threadComments_user)));
    }
    return result;
  }

  @override
  GUserThreadsData_comments_threadComments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsData_comments_threadCommentsBuilder();

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
        case 'thread':
          result.thread.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUserThreadsData_comments_threadComments_thread))!
              as GUserThreadsData_comments_threadComments_thread);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUserThreadsData_comments_threadComments_user))!
              as GUserThreadsData_comments_threadComments_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserThreadsData_comments_threadComments_threadSerializer
    implements
        StructuredSerializer<GUserThreadsData_comments_threadComments_thread> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_comments_threadComments_thread,
    _$GUserThreadsData_comments_threadComments_thread
  ];
  @override
  final String wireName = 'GUserThreadsData_comments_threadComments_thread';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserThreadsData_comments_threadComments_thread object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserThreadsData_comments_threadComments_thread deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsData_comments_threadComments_threadBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GUserThreadsData_comments_threadComments_userSerializer
    implements
        StructuredSerializer<GUserThreadsData_comments_threadComments_user> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_comments_threadComments_user,
    _$GUserThreadsData_comments_threadComments_user
  ];
  @override
  final String wireName = 'GUserThreadsData_comments_threadComments_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserThreadsData_comments_threadComments_user object,
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
                GUserThreadsData_comments_threadComments_user_avatar)));
    }
    return result;
  }

  @override
  GUserThreadsData_comments_threadComments_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserThreadsData_comments_threadComments_userBuilder();

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
                      GUserThreadsData_comments_threadComments_user_avatar))!
              as GUserThreadsData_comments_threadComments_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserThreadsData_comments_threadComments_user_avatarSerializer
    implements
        StructuredSerializer<
            GUserThreadsData_comments_threadComments_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GUserThreadsData_comments_threadComments_user_avatar,
    _$GUserThreadsData_comments_threadComments_user_avatar
  ];
  @override
  final String wireName =
      'GUserThreadsData_comments_threadComments_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserThreadsData_comments_threadComments_user_avatar object,
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
  GUserThreadsData_comments_threadComments_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserThreadsData_comments_threadComments_user_avatarBuilder();

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

class _$GUserThreadsData extends GUserThreadsData {
  @override
  final String G__typename;
  @override
  final GUserThreadsData_thread? thread;
  @override
  final GUserThreadsData_comments? comments;

  factory _$GUserThreadsData(
          [void Function(GUserThreadsDataBuilder)? updates]) =>
      (new GUserThreadsDataBuilder()..update(updates))._build();

  _$GUserThreadsData._({required this.G__typename, this.thread, this.comments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserThreadsData', 'G__typename');
  }

  @override
  GUserThreadsData rebuild(void Function(GUserThreadsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsDataBuilder toBuilder() =>
      new GUserThreadsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData &&
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
    return (newBuiltValueToStringHelper(r'GUserThreadsData')
          ..add('G__typename', G__typename)
          ..add('thread', thread)
          ..add('comments', comments))
        .toString();
  }
}

class GUserThreadsDataBuilder
    implements Builder<GUserThreadsData, GUserThreadsDataBuilder> {
  _$GUserThreadsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserThreadsData_threadBuilder? _thread;
  GUserThreadsData_threadBuilder get thread =>
      _$this._thread ??= new GUserThreadsData_threadBuilder();
  set thread(GUserThreadsData_threadBuilder? thread) => _$this._thread = thread;

  GUserThreadsData_commentsBuilder? _comments;
  GUserThreadsData_commentsBuilder get comments =>
      _$this._comments ??= new GUserThreadsData_commentsBuilder();
  set comments(GUserThreadsData_commentsBuilder? comments) =>
      _$this._comments = comments;

  GUserThreadsDataBuilder() {
    GUserThreadsData._initializeBuilder(this);
  }

  GUserThreadsDataBuilder get _$this {
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
  void replace(GUserThreadsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData;
  }

  @override
  void update(void Function(GUserThreadsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData build() => _build();

  _$GUserThreadsData _build() {
    _$GUserThreadsData _$result;
    try {
      _$result = _$v ??
          new _$GUserThreadsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserThreadsData', 'G__typename'),
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
            r'GUserThreadsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_thread extends GUserThreadsData_thread {
  @override
  final String G__typename;
  @override
  final GUserThreadsData_thread_pageInfo? pageInfo;
  @override
  final BuiltList<GUserThreadsData_thread_threads?>? threads;

  factory _$GUserThreadsData_thread(
          [void Function(GUserThreadsData_threadBuilder)? updates]) =>
      (new GUserThreadsData_threadBuilder()..update(updates))._build();

  _$GUserThreadsData_thread._(
      {required this.G__typename, this.pageInfo, this.threads})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserThreadsData_thread', 'G__typename');
  }

  @override
  GUserThreadsData_thread rebuild(
          void Function(GUserThreadsData_threadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_threadBuilder toBuilder() =>
      new GUserThreadsData_threadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_thread &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        threads == other.threads;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, threads.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserThreadsData_thread')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('threads', threads))
        .toString();
  }
}

class GUserThreadsData_threadBuilder
    implements
        Builder<GUserThreadsData_thread, GUserThreadsData_threadBuilder> {
  _$GUserThreadsData_thread? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserThreadsData_thread_pageInfoBuilder? _pageInfo;
  GUserThreadsData_thread_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GUserThreadsData_thread_pageInfoBuilder();
  set pageInfo(GUserThreadsData_thread_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GUserThreadsData_thread_threads?>? _threads;
  ListBuilder<GUserThreadsData_thread_threads?> get threads =>
      _$this._threads ??= new ListBuilder<GUserThreadsData_thread_threads?>();
  set threads(ListBuilder<GUserThreadsData_thread_threads?>? threads) =>
      _$this._threads = threads;

  GUserThreadsData_threadBuilder() {
    GUserThreadsData_thread._initializeBuilder(this);
  }

  GUserThreadsData_threadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _threads = $v.threads?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserThreadsData_thread other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_thread;
  }

  @override
  void update(void Function(GUserThreadsData_threadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_thread build() => _build();

  _$GUserThreadsData_thread _build() {
    _$GUserThreadsData_thread _$result;
    try {
      _$result = _$v ??
          new _$GUserThreadsData_thread._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserThreadsData_thread', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              threads: _threads?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'threads';
        _threads?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserThreadsData_thread', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_thread_pageInfo
    extends GUserThreadsData_thread_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GUserThreadsData_thread_pageInfo(
          [void Function(GUserThreadsData_thread_pageInfoBuilder)? updates]) =>
      (new GUserThreadsData_thread_pageInfoBuilder()..update(updates))._build();

  _$GUserThreadsData_thread_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserThreadsData_thread_pageInfo', 'G__typename');
  }

  @override
  GUserThreadsData_thread_pageInfo rebuild(
          void Function(GUserThreadsData_thread_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_thread_pageInfoBuilder toBuilder() =>
      new GUserThreadsData_thread_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_thread_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GUserThreadsData_thread_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GUserThreadsData_thread_pageInfoBuilder
    implements
        Builder<GUserThreadsData_thread_pageInfo,
            GUserThreadsData_thread_pageInfoBuilder> {
  _$GUserThreadsData_thread_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GUserThreadsData_thread_pageInfoBuilder() {
    GUserThreadsData_thread_pageInfo._initializeBuilder(this);
  }

  GUserThreadsData_thread_pageInfoBuilder get _$this {
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
  void replace(GUserThreadsData_thread_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_thread_pageInfo;
  }

  @override
  void update(void Function(GUserThreadsData_thread_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_thread_pageInfo build() => _build();

  _$GUserThreadsData_thread_pageInfo _build() {
    final _$result = _$v ??
        new _$GUserThreadsData_thread_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUserThreadsData_thread_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_thread_threads
    extends GUserThreadsData_thread_threads {
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
  final BuiltList<GUserThreadsData_thread_threads_mediaCategories?>?
      mediaCategories;
  @override
  final BuiltList<GUserThreadsData_thread_threads_categories?>? categories;
  @override
  final GUserThreadsData_thread_threads_user? user;
  @override
  final GUserThreadsData_thread_threads_replyUser? replyUser;

  factory _$GUserThreadsData_thread_threads(
          [void Function(GUserThreadsData_thread_threadsBuilder)? updates]) =>
      (new GUserThreadsData_thread_threadsBuilder()..update(updates))._build();

  _$GUserThreadsData_thread_threads._(
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
      this.replyUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserThreadsData_thread_threads', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserThreadsData_thread_threads', 'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GUserThreadsData_thread_threads', 'createdAt');
  }

  @override
  GUserThreadsData_thread_threads rebuild(
          void Function(GUserThreadsData_thread_threadsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_thread_threadsBuilder toBuilder() =>
      new GUserThreadsData_thread_threadsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_thread_threads &&
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
        replyUser == other.replyUser;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserThreadsData_thread_threads')
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
          ..add('replyUser', replyUser))
        .toString();
  }
}

class GUserThreadsData_thread_threadsBuilder
    implements
        Builder<GUserThreadsData_thread_threads,
            GUserThreadsData_thread_threadsBuilder> {
  _$GUserThreadsData_thread_threads? _$v;

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

  ListBuilder<GUserThreadsData_thread_threads_mediaCategories?>?
      _mediaCategories;
  ListBuilder<GUserThreadsData_thread_threads_mediaCategories?>
      get mediaCategories => _$this._mediaCategories ??=
          new ListBuilder<GUserThreadsData_thread_threads_mediaCategories?>();
  set mediaCategories(
          ListBuilder<GUserThreadsData_thread_threads_mediaCategories?>?
              mediaCategories) =>
      _$this._mediaCategories = mediaCategories;

  ListBuilder<GUserThreadsData_thread_threads_categories?>? _categories;
  ListBuilder<GUserThreadsData_thread_threads_categories?> get categories =>
      _$this._categories ??=
          new ListBuilder<GUserThreadsData_thread_threads_categories?>();
  set categories(
          ListBuilder<GUserThreadsData_thread_threads_categories?>?
              categories) =>
      _$this._categories = categories;

  GUserThreadsData_thread_threads_userBuilder? _user;
  GUserThreadsData_thread_threads_userBuilder get user =>
      _$this._user ??= new GUserThreadsData_thread_threads_userBuilder();
  set user(GUserThreadsData_thread_threads_userBuilder? user) =>
      _$this._user = user;

  GUserThreadsData_thread_threads_replyUserBuilder? _replyUser;
  GUserThreadsData_thread_threads_replyUserBuilder get replyUser =>
      _$this._replyUser ??=
          new GUserThreadsData_thread_threads_replyUserBuilder();
  set replyUser(GUserThreadsData_thread_threads_replyUserBuilder? replyUser) =>
      _$this._replyUser = replyUser;

  GUserThreadsData_thread_threadsBuilder() {
    GUserThreadsData_thread_threads._initializeBuilder(this);
  }

  GUserThreadsData_thread_threadsBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserThreadsData_thread_threads other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_thread_threads;
  }

  @override
  void update(void Function(GUserThreadsData_thread_threadsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_thread_threads build() => _build();

  _$GUserThreadsData_thread_threads _build() {
    _$GUserThreadsData_thread_threads _$result;
    try {
      _$result = _$v ??
          new _$GUserThreadsData_thread_threads._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserThreadsData_thread_threads', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserThreadsData_thread_threads', 'id'),
              title: title,
              replyCount: replyCount,
              viewCount: viewCount,
              replyCommentId: replyCommentId,
              repliedAt: repliedAt,
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GUserThreadsData_thread_threads', 'createdAt'),
              isSticky: isSticky,
              mediaCategories: _mediaCategories?.build(),
              categories: _categories?.build(),
              user: _user?.build(),
              replyUser: _replyUser?.build());
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
            r'GUserThreadsData_thread_threads', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_thread_threads_mediaCategories
    extends GUserThreadsData_thread_threads_mediaCategories {
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
  final GUserThreadsData_thread_threads_mediaCategories_title? title;
  @override
  final GUserThreadsData_thread_threads_mediaCategories_coverImage? coverImage;

  factory _$GUserThreadsData_thread_threads_mediaCategories(
          [void Function(
                  GUserThreadsData_thread_threads_mediaCategoriesBuilder)?
              updates]) =>
      (new GUserThreadsData_thread_threads_mediaCategoriesBuilder()
            ..update(updates))
          ._build();

  _$GUserThreadsData_thread_threads_mediaCategories._(
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
        r'GUserThreadsData_thread_threads_mediaCategories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserThreadsData_thread_threads_mediaCategories', 'id');
  }

  @override
  GUserThreadsData_thread_threads_mediaCategories rebuild(
          void Function(GUserThreadsData_thread_threads_mediaCategoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_thread_threads_mediaCategoriesBuilder toBuilder() =>
      new GUserThreadsData_thread_threads_mediaCategoriesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_thread_threads_mediaCategories &&
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
            r'GUserThreadsData_thread_threads_mediaCategories')
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

class GUserThreadsData_thread_threads_mediaCategoriesBuilder
    implements
        Builder<GUserThreadsData_thread_threads_mediaCategories,
            GUserThreadsData_thread_threads_mediaCategoriesBuilder> {
  _$GUserThreadsData_thread_threads_mediaCategories? _$v;

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

  GUserThreadsData_thread_threads_mediaCategories_titleBuilder? _title;
  GUserThreadsData_thread_threads_mediaCategories_titleBuilder get title =>
      _$this._title ??=
          new GUserThreadsData_thread_threads_mediaCategories_titleBuilder();
  set title(
          GUserThreadsData_thread_threads_mediaCategories_titleBuilder?
              title) =>
      _$this._title = title;

  GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder?
      _coverImage;
  GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder();
  set coverImage(
          GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GUserThreadsData_thread_threads_mediaCategoriesBuilder() {
    GUserThreadsData_thread_threads_mediaCategories._initializeBuilder(this);
  }

  GUserThreadsData_thread_threads_mediaCategoriesBuilder get _$this {
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
  void replace(GUserThreadsData_thread_threads_mediaCategories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_thread_threads_mediaCategories;
  }

  @override
  void update(
      void Function(GUserThreadsData_thread_threads_mediaCategoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_thread_threads_mediaCategories build() => _build();

  _$GUserThreadsData_thread_threads_mediaCategories _build() {
    _$GUserThreadsData_thread_threads_mediaCategories _$result;
    try {
      _$result = _$v ??
          new _$GUserThreadsData_thread_threads_mediaCategories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserThreadsData_thread_threads_mediaCategories',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserThreadsData_thread_threads_mediaCategories', 'id'),
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
            r'GUserThreadsData_thread_threads_mediaCategories',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_thread_threads_mediaCategories_title
    extends GUserThreadsData_thread_threads_mediaCategories_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GUserThreadsData_thread_threads_mediaCategories_title(
          [void Function(
                  GUserThreadsData_thread_threads_mediaCategories_titleBuilder)?
              updates]) =>
      (new GUserThreadsData_thread_threads_mediaCategories_titleBuilder()
            ..update(updates))
          ._build();

  _$GUserThreadsData_thread_threads_mediaCategories_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUserThreadsData_thread_threads_mediaCategories_title',
        'G__typename');
  }

  @override
  GUserThreadsData_thread_threads_mediaCategories_title rebuild(
          void Function(
                  GUserThreadsData_thread_threads_mediaCategories_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_thread_threads_mediaCategories_titleBuilder toBuilder() =>
      new GUserThreadsData_thread_threads_mediaCategories_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_thread_threads_mediaCategories_title &&
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
            r'GUserThreadsData_thread_threads_mediaCategories_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GUserThreadsData_thread_threads_mediaCategories_titleBuilder
    implements
        Builder<GUserThreadsData_thread_threads_mediaCategories_title,
            GUserThreadsData_thread_threads_mediaCategories_titleBuilder> {
  _$GUserThreadsData_thread_threads_mediaCategories_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GUserThreadsData_thread_threads_mediaCategories_titleBuilder() {
    GUserThreadsData_thread_threads_mediaCategories_title._initializeBuilder(
        this);
  }

  GUserThreadsData_thread_threads_mediaCategories_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserThreadsData_thread_threads_mediaCategories_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_thread_threads_mediaCategories_title;
  }

  @override
  void update(
      void Function(
              GUserThreadsData_thread_threads_mediaCategories_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_thread_threads_mediaCategories_title build() => _build();

  _$GUserThreadsData_thread_threads_mediaCategories_title _build() {
    final _$result = _$v ??
        new _$GUserThreadsData_thread_threads_mediaCategories_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUserThreadsData_thread_threads_mediaCategories_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_thread_threads_mediaCategories_coverImage
    extends GUserThreadsData_thread_threads_mediaCategories_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GUserThreadsData_thread_threads_mediaCategories_coverImage(
          [void Function(
                  GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder)?
              updates]) =>
      (new GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GUserThreadsData_thread_threads_mediaCategories_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUserThreadsData_thread_threads_mediaCategories_coverImage',
        'G__typename');
  }

  @override
  GUserThreadsData_thread_threads_mediaCategories_coverImage rebuild(
          void Function(
                  GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder
      toBuilder() =>
          new GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GUserThreadsData_thread_threads_mediaCategories_coverImage &&
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
            r'GUserThreadsData_thread_threads_mediaCategories_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder
    implements
        Builder<GUserThreadsData_thread_threads_mediaCategories_coverImage,
            GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder> {
  _$GUserThreadsData_thread_threads_mediaCategories_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder() {
    GUserThreadsData_thread_threads_mediaCategories_coverImage
        ._initializeBuilder(this);
  }

  GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder get _$this {
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
      GUserThreadsData_thread_threads_mediaCategories_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_thread_threads_mediaCategories_coverImage;
  }

  @override
  void update(
      void Function(
              GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_thread_threads_mediaCategories_coverImage build() =>
      _build();

  _$GUserThreadsData_thread_threads_mediaCategories_coverImage _build() {
    final _$result = _$v ??
        new _$GUserThreadsData_thread_threads_mediaCategories_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUserThreadsData_thread_threads_mediaCategories_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_thread_threads_categories
    extends GUserThreadsData_thread_threads_categories {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;

  factory _$GUserThreadsData_thread_threads_categories(
          [void Function(GUserThreadsData_thread_threads_categoriesBuilder)?
              updates]) =>
      (new GUserThreadsData_thread_threads_categoriesBuilder()..update(updates))
          ._build();

  _$GUserThreadsData_thread_threads_categories._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserThreadsData_thread_threads_categories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserThreadsData_thread_threads_categories', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GUserThreadsData_thread_threads_categories', 'name');
  }

  @override
  GUserThreadsData_thread_threads_categories rebuild(
          void Function(GUserThreadsData_thread_threads_categoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_thread_threads_categoriesBuilder toBuilder() =>
      new GUserThreadsData_thread_threads_categoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_thread_threads_categories &&
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
    return (newBuiltValueToStringHelper(
            r'GUserThreadsData_thread_threads_categories')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GUserThreadsData_thread_threads_categoriesBuilder
    implements
        Builder<GUserThreadsData_thread_threads_categories,
            GUserThreadsData_thread_threads_categoriesBuilder> {
  _$GUserThreadsData_thread_threads_categories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GUserThreadsData_thread_threads_categoriesBuilder() {
    GUserThreadsData_thread_threads_categories._initializeBuilder(this);
  }

  GUserThreadsData_thread_threads_categoriesBuilder get _$this {
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
  void replace(GUserThreadsData_thread_threads_categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_thread_threads_categories;
  }

  @override
  void update(
      void Function(GUserThreadsData_thread_threads_categoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_thread_threads_categories build() => _build();

  _$GUserThreadsData_thread_threads_categories _build() {
    final _$result = _$v ??
        new _$GUserThreadsData_thread_threads_categories._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUserThreadsData_thread_threads_categories', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUserThreadsData_thread_threads_categories', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GUserThreadsData_thread_threads_categories', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_thread_threads_user
    extends GUserThreadsData_thread_threads_user {
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
  final GUserThreadsData_thread_threads_user_avatar? avatar;

  factory _$GUserThreadsData_thread_threads_user(
          [void Function(GUserThreadsData_thread_threads_userBuilder)?
              updates]) =>
      (new GUserThreadsData_thread_threads_userBuilder()..update(updates))
          ._build();

  _$GUserThreadsData_thread_threads_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserThreadsData_thread_threads_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserThreadsData_thread_threads_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GUserThreadsData_thread_threads_user', 'name');
  }

  @override
  GUserThreadsData_thread_threads_user rebuild(
          void Function(GUserThreadsData_thread_threads_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_thread_threads_userBuilder toBuilder() =>
      new GUserThreadsData_thread_threads_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_thread_threads_user &&
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
    return (newBuiltValueToStringHelper(r'GUserThreadsData_thread_threads_user')
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

class GUserThreadsData_thread_threads_userBuilder
    implements
        Builder<GUserThreadsData_thread_threads_user,
            GUserThreadsData_thread_threads_userBuilder> {
  _$GUserThreadsData_thread_threads_user? _$v;

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

  GUserThreadsData_thread_threads_user_avatarBuilder? _avatar;
  GUserThreadsData_thread_threads_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GUserThreadsData_thread_threads_user_avatarBuilder();
  set avatar(GUserThreadsData_thread_threads_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GUserThreadsData_thread_threads_userBuilder() {
    GUserThreadsData_thread_threads_user._initializeBuilder(this);
  }

  GUserThreadsData_thread_threads_userBuilder get _$this {
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
  void replace(GUserThreadsData_thread_threads_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_thread_threads_user;
  }

  @override
  void update(
      void Function(GUserThreadsData_thread_threads_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_thread_threads_user build() => _build();

  _$GUserThreadsData_thread_threads_user _build() {
    _$GUserThreadsData_thread_threads_user _$result;
    try {
      _$result = _$v ??
          new _$GUserThreadsData_thread_threads_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserThreadsData_thread_threads_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserThreadsData_thread_threads_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GUserThreadsData_thread_threads_user', 'name'),
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
            r'GUserThreadsData_thread_threads_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_thread_threads_user_avatar
    extends GUserThreadsData_thread_threads_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GUserThreadsData_thread_threads_user_avatar(
          [void Function(GUserThreadsData_thread_threads_user_avatarBuilder)?
              updates]) =>
      (new GUserThreadsData_thread_threads_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GUserThreadsData_thread_threads_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserThreadsData_thread_threads_user_avatar', 'G__typename');
  }

  @override
  GUserThreadsData_thread_threads_user_avatar rebuild(
          void Function(GUserThreadsData_thread_threads_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_thread_threads_user_avatarBuilder toBuilder() =>
      new GUserThreadsData_thread_threads_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_thread_threads_user_avatar &&
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
            r'GUserThreadsData_thread_threads_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GUserThreadsData_thread_threads_user_avatarBuilder
    implements
        Builder<GUserThreadsData_thread_threads_user_avatar,
            GUserThreadsData_thread_threads_user_avatarBuilder> {
  _$GUserThreadsData_thread_threads_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GUserThreadsData_thread_threads_user_avatarBuilder() {
    GUserThreadsData_thread_threads_user_avatar._initializeBuilder(this);
  }

  GUserThreadsData_thread_threads_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserThreadsData_thread_threads_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_thread_threads_user_avatar;
  }

  @override
  void update(
      void Function(GUserThreadsData_thread_threads_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_thread_threads_user_avatar build() => _build();

  _$GUserThreadsData_thread_threads_user_avatar _build() {
    final _$result = _$v ??
        new _$GUserThreadsData_thread_threads_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUserThreadsData_thread_threads_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_thread_threads_replyUser
    extends GUserThreadsData_thread_threads_replyUser {
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
  final GUserThreadsData_thread_threads_replyUser_avatar? avatar;

  factory _$GUserThreadsData_thread_threads_replyUser(
          [void Function(GUserThreadsData_thread_threads_replyUserBuilder)?
              updates]) =>
      (new GUserThreadsData_thread_threads_replyUserBuilder()..update(updates))
          ._build();

  _$GUserThreadsData_thread_threads_replyUser._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserThreadsData_thread_threads_replyUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserThreadsData_thread_threads_replyUser', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GUserThreadsData_thread_threads_replyUser', 'name');
  }

  @override
  GUserThreadsData_thread_threads_replyUser rebuild(
          void Function(GUserThreadsData_thread_threads_replyUserBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_thread_threads_replyUserBuilder toBuilder() =>
      new GUserThreadsData_thread_threads_replyUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_thread_threads_replyUser &&
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
            r'GUserThreadsData_thread_threads_replyUser')
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

class GUserThreadsData_thread_threads_replyUserBuilder
    implements
        Builder<GUserThreadsData_thread_threads_replyUser,
            GUserThreadsData_thread_threads_replyUserBuilder> {
  _$GUserThreadsData_thread_threads_replyUser? _$v;

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

  GUserThreadsData_thread_threads_replyUser_avatarBuilder? _avatar;
  GUserThreadsData_thread_threads_replyUser_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GUserThreadsData_thread_threads_replyUser_avatarBuilder();
  set avatar(GUserThreadsData_thread_threads_replyUser_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GUserThreadsData_thread_threads_replyUserBuilder() {
    GUserThreadsData_thread_threads_replyUser._initializeBuilder(this);
  }

  GUserThreadsData_thread_threads_replyUserBuilder get _$this {
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
  void replace(GUserThreadsData_thread_threads_replyUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_thread_threads_replyUser;
  }

  @override
  void update(
      void Function(GUserThreadsData_thread_threads_replyUserBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_thread_threads_replyUser build() => _build();

  _$GUserThreadsData_thread_threads_replyUser _build() {
    _$GUserThreadsData_thread_threads_replyUser _$result;
    try {
      _$result = _$v ??
          new _$GUserThreadsData_thread_threads_replyUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserThreadsData_thread_threads_replyUser', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserThreadsData_thread_threads_replyUser', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GUserThreadsData_thread_threads_replyUser', 'name'),
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
            r'GUserThreadsData_thread_threads_replyUser',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_thread_threads_replyUser_avatar
    extends GUserThreadsData_thread_threads_replyUser_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GUserThreadsData_thread_threads_replyUser_avatar(
          [void Function(
                  GUserThreadsData_thread_threads_replyUser_avatarBuilder)?
              updates]) =>
      (new GUserThreadsData_thread_threads_replyUser_avatarBuilder()
            ..update(updates))
          ._build();

  _$GUserThreadsData_thread_threads_replyUser_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserThreadsData_thread_threads_replyUser_avatar', 'G__typename');
  }

  @override
  GUserThreadsData_thread_threads_replyUser_avatar rebuild(
          void Function(GUserThreadsData_thread_threads_replyUser_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_thread_threads_replyUser_avatarBuilder toBuilder() =>
      new GUserThreadsData_thread_threads_replyUser_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_thread_threads_replyUser_avatar &&
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
            r'GUserThreadsData_thread_threads_replyUser_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GUserThreadsData_thread_threads_replyUser_avatarBuilder
    implements
        Builder<GUserThreadsData_thread_threads_replyUser_avatar,
            GUserThreadsData_thread_threads_replyUser_avatarBuilder> {
  _$GUserThreadsData_thread_threads_replyUser_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GUserThreadsData_thread_threads_replyUser_avatarBuilder() {
    GUserThreadsData_thread_threads_replyUser_avatar._initializeBuilder(this);
  }

  GUserThreadsData_thread_threads_replyUser_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserThreadsData_thread_threads_replyUser_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_thread_threads_replyUser_avatar;
  }

  @override
  void update(
      void Function(GUserThreadsData_thread_threads_replyUser_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_thread_threads_replyUser_avatar build() => _build();

  _$GUserThreadsData_thread_threads_replyUser_avatar _build() {
    final _$result = _$v ??
        new _$GUserThreadsData_thread_threads_replyUser_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUserThreadsData_thread_threads_replyUser_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_comments extends GUserThreadsData_comments {
  @override
  final String G__typename;
  @override
  final GUserThreadsData_comments_pageInfo? pageInfo;
  @override
  final BuiltList<GUserThreadsData_comments_threadComments?>? threadComments;

  factory _$GUserThreadsData_comments(
          [void Function(GUserThreadsData_commentsBuilder)? updates]) =>
      (new GUserThreadsData_commentsBuilder()..update(updates))._build();

  _$GUserThreadsData_comments._(
      {required this.G__typename, this.pageInfo, this.threadComments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserThreadsData_comments', 'G__typename');
  }

  @override
  GUserThreadsData_comments rebuild(
          void Function(GUserThreadsData_commentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_commentsBuilder toBuilder() =>
      new GUserThreadsData_commentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_comments &&
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
    return (newBuiltValueToStringHelper(r'GUserThreadsData_comments')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('threadComments', threadComments))
        .toString();
  }
}

class GUserThreadsData_commentsBuilder
    implements
        Builder<GUserThreadsData_comments, GUserThreadsData_commentsBuilder> {
  _$GUserThreadsData_comments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserThreadsData_comments_pageInfoBuilder? _pageInfo;
  GUserThreadsData_comments_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GUserThreadsData_comments_pageInfoBuilder();
  set pageInfo(GUserThreadsData_comments_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GUserThreadsData_comments_threadComments?>? _threadComments;
  ListBuilder<GUserThreadsData_comments_threadComments?> get threadComments =>
      _$this._threadComments ??=
          new ListBuilder<GUserThreadsData_comments_threadComments?>();
  set threadComments(
          ListBuilder<GUserThreadsData_comments_threadComments?>?
              threadComments) =>
      _$this._threadComments = threadComments;

  GUserThreadsData_commentsBuilder() {
    GUserThreadsData_comments._initializeBuilder(this);
  }

  GUserThreadsData_commentsBuilder get _$this {
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
  void replace(GUserThreadsData_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_comments;
  }

  @override
  void update(void Function(GUserThreadsData_commentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_comments build() => _build();

  _$GUserThreadsData_comments _build() {
    _$GUserThreadsData_comments _$result;
    try {
      _$result = _$v ??
          new _$GUserThreadsData_comments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserThreadsData_comments', 'G__typename'),
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
            r'GUserThreadsData_comments', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_comments_pageInfo
    extends GUserThreadsData_comments_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GUserThreadsData_comments_pageInfo(
          [void Function(GUserThreadsData_comments_pageInfoBuilder)?
              updates]) =>
      (new GUserThreadsData_comments_pageInfoBuilder()..update(updates))
          ._build();

  _$GUserThreadsData_comments_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserThreadsData_comments_pageInfo', 'G__typename');
  }

  @override
  GUserThreadsData_comments_pageInfo rebuild(
          void Function(GUserThreadsData_comments_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_comments_pageInfoBuilder toBuilder() =>
      new GUserThreadsData_comments_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_comments_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GUserThreadsData_comments_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GUserThreadsData_comments_pageInfoBuilder
    implements
        Builder<GUserThreadsData_comments_pageInfo,
            GUserThreadsData_comments_pageInfoBuilder> {
  _$GUserThreadsData_comments_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GUserThreadsData_comments_pageInfoBuilder() {
    GUserThreadsData_comments_pageInfo._initializeBuilder(this);
  }

  GUserThreadsData_comments_pageInfoBuilder get _$this {
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
  void replace(GUserThreadsData_comments_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_comments_pageInfo;
  }

  @override
  void update(
      void Function(GUserThreadsData_comments_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_comments_pageInfo build() => _build();

  _$GUserThreadsData_comments_pageInfo _build() {
    final _$result = _$v ??
        new _$GUserThreadsData_comments_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUserThreadsData_comments_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_comments_threadComments
    extends GUserThreadsData_comments_threadComments {
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
  final GUserThreadsData_comments_threadComments_thread? thread;
  @override
  final GUserThreadsData_comments_threadComments_user? user;

  factory _$GUserThreadsData_comments_threadComments(
          [void Function(GUserThreadsData_comments_threadCommentsBuilder)?
              updates]) =>
      (new GUserThreadsData_comments_threadCommentsBuilder()..update(updates))
          ._build();

  _$GUserThreadsData_comments_threadComments._(
      {required this.G__typename,
      required this.id,
      this.threadId,
      this.comment,
      this.isLiked,
      required this.likeCount,
      required this.createdAt,
      this.thread,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserThreadsData_comments_threadComments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserThreadsData_comments_threadComments', 'id');
    BuiltValueNullFieldError.checkNotNull(
        likeCount, r'GUserThreadsData_comments_threadComments', 'likeCount');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GUserThreadsData_comments_threadComments', 'createdAt');
  }

  @override
  GUserThreadsData_comments_threadComments rebuild(
          void Function(GUserThreadsData_comments_threadCommentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_comments_threadCommentsBuilder toBuilder() =>
      new GUserThreadsData_comments_threadCommentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_comments_threadComments &&
        G__typename == other.G__typename &&
        id == other.id &&
        threadId == other.threadId &&
        comment == other.comment &&
        isLiked == other.isLiked &&
        likeCount == other.likeCount &&
        createdAt == other.createdAt &&
        thread == other.thread &&
        user == other.user;
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
    _$hash = $jc(_$hash, thread.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserThreadsData_comments_threadComments')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('threadId', threadId)
          ..add('comment', comment)
          ..add('isLiked', isLiked)
          ..add('likeCount', likeCount)
          ..add('createdAt', createdAt)
          ..add('thread', thread)
          ..add('user', user))
        .toString();
  }
}

class GUserThreadsData_comments_threadCommentsBuilder
    implements
        Builder<GUserThreadsData_comments_threadComments,
            GUserThreadsData_comments_threadCommentsBuilder> {
  _$GUserThreadsData_comments_threadComments? _$v;

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

  GUserThreadsData_comments_threadComments_threadBuilder? _thread;
  GUserThreadsData_comments_threadComments_threadBuilder get thread =>
      _$this._thread ??=
          new GUserThreadsData_comments_threadComments_threadBuilder();
  set thread(GUserThreadsData_comments_threadComments_threadBuilder? thread) =>
      _$this._thread = thread;

  GUserThreadsData_comments_threadComments_userBuilder? _user;
  GUserThreadsData_comments_threadComments_userBuilder get user =>
      _$this._user ??=
          new GUserThreadsData_comments_threadComments_userBuilder();
  set user(GUserThreadsData_comments_threadComments_userBuilder? user) =>
      _$this._user = user;

  GUserThreadsData_comments_threadCommentsBuilder() {
    GUserThreadsData_comments_threadComments._initializeBuilder(this);
  }

  GUserThreadsData_comments_threadCommentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _threadId = $v.threadId;
      _comment = $v.comment;
      _isLiked = $v.isLiked;
      _likeCount = $v.likeCount;
      _createdAt = $v.createdAt;
      _thread = $v.thread?.toBuilder();
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserThreadsData_comments_threadComments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_comments_threadComments;
  }

  @override
  void update(
      void Function(GUserThreadsData_comments_threadCommentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_comments_threadComments build() => _build();

  _$GUserThreadsData_comments_threadComments _build() {
    _$GUserThreadsData_comments_threadComments _$result;
    try {
      _$result = _$v ??
          new _$GUserThreadsData_comments_threadComments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserThreadsData_comments_threadComments', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserThreadsData_comments_threadComments', 'id'),
              threadId: threadId,
              comment: comment,
              isLiked: isLiked,
              likeCount: BuiltValueNullFieldError.checkNotNull(likeCount,
                  r'GUserThreadsData_comments_threadComments', 'likeCount'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
                  r'GUserThreadsData_comments_threadComments', 'createdAt'),
              thread: _thread?.build(),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'thread';
        _thread?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserThreadsData_comments_threadComments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_comments_threadComments_thread
    extends GUserThreadsData_comments_threadComments_thread {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String? title;

  factory _$GUserThreadsData_comments_threadComments_thread(
          [void Function(
                  GUserThreadsData_comments_threadComments_threadBuilder)?
              updates]) =>
      (new GUserThreadsData_comments_threadComments_threadBuilder()
            ..update(updates))
          ._build();

  _$GUserThreadsData_comments_threadComments_thread._(
      {required this.G__typename, required this.id, this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserThreadsData_comments_threadComments_thread', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserThreadsData_comments_threadComments_thread', 'id');
  }

  @override
  GUserThreadsData_comments_threadComments_thread rebuild(
          void Function(GUserThreadsData_comments_threadComments_threadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_comments_threadComments_threadBuilder toBuilder() =>
      new GUserThreadsData_comments_threadComments_threadBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_comments_threadComments_thread &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserThreadsData_comments_threadComments_thread')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class GUserThreadsData_comments_threadComments_threadBuilder
    implements
        Builder<GUserThreadsData_comments_threadComments_thread,
            GUserThreadsData_comments_threadComments_threadBuilder> {
  _$GUserThreadsData_comments_threadComments_thread? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GUserThreadsData_comments_threadComments_threadBuilder() {
    GUserThreadsData_comments_threadComments_thread._initializeBuilder(this);
  }

  GUserThreadsData_comments_threadComments_threadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserThreadsData_comments_threadComments_thread other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_comments_threadComments_thread;
  }

  @override
  void update(
      void Function(GUserThreadsData_comments_threadComments_threadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_comments_threadComments_thread build() => _build();

  _$GUserThreadsData_comments_threadComments_thread _build() {
    final _$result = _$v ??
        new _$GUserThreadsData_comments_threadComments_thread._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUserThreadsData_comments_threadComments_thread',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUserThreadsData_comments_threadComments_thread', 'id'),
            title: title);
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_comments_threadComments_user
    extends GUserThreadsData_comments_threadComments_user {
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
  final GUserThreadsData_comments_threadComments_user_avatar? avatar;

  factory _$GUserThreadsData_comments_threadComments_user(
          [void Function(GUserThreadsData_comments_threadComments_userBuilder)?
              updates]) =>
      (new GUserThreadsData_comments_threadComments_userBuilder()
            ..update(updates))
          ._build();

  _$GUserThreadsData_comments_threadComments_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserThreadsData_comments_threadComments_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserThreadsData_comments_threadComments_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GUserThreadsData_comments_threadComments_user', 'name');
  }

  @override
  GUserThreadsData_comments_threadComments_user rebuild(
          void Function(GUserThreadsData_comments_threadComments_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_comments_threadComments_userBuilder toBuilder() =>
      new GUserThreadsData_comments_threadComments_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_comments_threadComments_user &&
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
            r'GUserThreadsData_comments_threadComments_user')
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

class GUserThreadsData_comments_threadComments_userBuilder
    implements
        Builder<GUserThreadsData_comments_threadComments_user,
            GUserThreadsData_comments_threadComments_userBuilder> {
  _$GUserThreadsData_comments_threadComments_user? _$v;

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

  GUserThreadsData_comments_threadComments_user_avatarBuilder? _avatar;
  GUserThreadsData_comments_threadComments_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GUserThreadsData_comments_threadComments_user_avatarBuilder();
  set avatar(
          GUserThreadsData_comments_threadComments_user_avatarBuilder?
              avatar) =>
      _$this._avatar = avatar;

  GUserThreadsData_comments_threadComments_userBuilder() {
    GUserThreadsData_comments_threadComments_user._initializeBuilder(this);
  }

  GUserThreadsData_comments_threadComments_userBuilder get _$this {
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
  void replace(GUserThreadsData_comments_threadComments_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_comments_threadComments_user;
  }

  @override
  void update(
      void Function(GUserThreadsData_comments_threadComments_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_comments_threadComments_user build() => _build();

  _$GUserThreadsData_comments_threadComments_user _build() {
    _$GUserThreadsData_comments_threadComments_user _$result;
    try {
      _$result = _$v ??
          new _$GUserThreadsData_comments_threadComments_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserThreadsData_comments_threadComments_user',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserThreadsData_comments_threadComments_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(name,
                  r'GUserThreadsData_comments_threadComments_user', 'name'),
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
            r'GUserThreadsData_comments_threadComments_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserThreadsData_comments_threadComments_user_avatar
    extends GUserThreadsData_comments_threadComments_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GUserThreadsData_comments_threadComments_user_avatar(
          [void Function(
                  GUserThreadsData_comments_threadComments_user_avatarBuilder)?
              updates]) =>
      (new GUserThreadsData_comments_threadComments_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GUserThreadsData_comments_threadComments_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserThreadsData_comments_threadComments_user_avatar', 'G__typename');
  }

  @override
  GUserThreadsData_comments_threadComments_user_avatar rebuild(
          void Function(
                  GUserThreadsData_comments_threadComments_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserThreadsData_comments_threadComments_user_avatarBuilder toBuilder() =>
      new GUserThreadsData_comments_threadComments_user_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserThreadsData_comments_threadComments_user_avatar &&
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
            r'GUserThreadsData_comments_threadComments_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GUserThreadsData_comments_threadComments_user_avatarBuilder
    implements
        Builder<GUserThreadsData_comments_threadComments_user_avatar,
            GUserThreadsData_comments_threadComments_user_avatarBuilder> {
  _$GUserThreadsData_comments_threadComments_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GUserThreadsData_comments_threadComments_user_avatarBuilder() {
    GUserThreadsData_comments_threadComments_user_avatar._initializeBuilder(
        this);
  }

  GUserThreadsData_comments_threadComments_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserThreadsData_comments_threadComments_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserThreadsData_comments_threadComments_user_avatar;
  }

  @override
  void update(
      void Function(
              GUserThreadsData_comments_threadComments_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserThreadsData_comments_threadComments_user_avatar build() => _build();

  _$GUserThreadsData_comments_threadComments_user_avatar _build() {
    final _$result = _$v ??
        new _$GUserThreadsData_comments_threadComments_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUserThreadsData_comments_threadComments_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
