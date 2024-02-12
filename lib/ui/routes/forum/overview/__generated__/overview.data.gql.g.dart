// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GForumOverviewData> _$gForumOverviewDataSerializer =
    new _$GForumOverviewDataSerializer();
Serializer<GForumOverviewData_recent> _$gForumOverviewDataRecentSerializer =
    new _$GForumOverviewData_recentSerializer();
Serializer<GForumOverviewData_recent_threads>
    _$gForumOverviewDataRecentThreadsSerializer =
    new _$GForumOverviewData_recent_threadsSerializer();
Serializer<GForumOverviewData_recent_threads_mediaCategories>
    _$gForumOverviewDataRecentThreadsMediaCategoriesSerializer =
    new _$GForumOverviewData_recent_threads_mediaCategoriesSerializer();
Serializer<GForumOverviewData_recent_threads_mediaCategories_title>
    _$gForumOverviewDataRecentThreadsMediaCategoriesTitleSerializer =
    new _$GForumOverviewData_recent_threads_mediaCategories_titleSerializer();
Serializer<GForumOverviewData_recent_threads_mediaCategories_coverImage>
    _$gForumOverviewDataRecentThreadsMediaCategoriesCoverImageSerializer =
    new _$GForumOverviewData_recent_threads_mediaCategories_coverImageSerializer();
Serializer<GForumOverviewData_recent_threads_categories>
    _$gForumOverviewDataRecentThreadsCategoriesSerializer =
    new _$GForumOverviewData_recent_threads_categoriesSerializer();
Serializer<GForumOverviewData_recent_threads_user>
    _$gForumOverviewDataRecentThreadsUserSerializer =
    new _$GForumOverviewData_recent_threads_userSerializer();
Serializer<GForumOverviewData_recent_threads_user_avatar>
    _$gForumOverviewDataRecentThreadsUserAvatarSerializer =
    new _$GForumOverviewData_recent_threads_user_avatarSerializer();
Serializer<GForumOverviewData_recent_threads_replyUser>
    _$gForumOverviewDataRecentThreadsReplyUserSerializer =
    new _$GForumOverviewData_recent_threads_replyUserSerializer();
Serializer<GForumOverviewData_recent_threads_replyUser_avatar>
    _$gForumOverviewDataRecentThreadsReplyUserAvatarSerializer =
    new _$GForumOverviewData_recent_threads_replyUser_avatarSerializer();
Serializer<GForumOverviewData_new> _$gForumOverviewDataNewSerializer =
    new _$GForumOverviewData_newSerializer();
Serializer<GForumOverviewData_new_threads>
    _$gForumOverviewDataNewThreadsSerializer =
    new _$GForumOverviewData_new_threadsSerializer();
Serializer<GForumOverviewData_new_threads_mediaCategories>
    _$gForumOverviewDataNewThreadsMediaCategoriesSerializer =
    new _$GForumOverviewData_new_threads_mediaCategoriesSerializer();
Serializer<GForumOverviewData_new_threads_mediaCategories_title>
    _$gForumOverviewDataNewThreadsMediaCategoriesTitleSerializer =
    new _$GForumOverviewData_new_threads_mediaCategories_titleSerializer();
Serializer<GForumOverviewData_new_threads_mediaCategories_coverImage>
    _$gForumOverviewDataNewThreadsMediaCategoriesCoverImageSerializer =
    new _$GForumOverviewData_new_threads_mediaCategories_coverImageSerializer();
Serializer<GForumOverviewData_new_threads_categories>
    _$gForumOverviewDataNewThreadsCategoriesSerializer =
    new _$GForumOverviewData_new_threads_categoriesSerializer();
Serializer<GForumOverviewData_new_threads_user>
    _$gForumOverviewDataNewThreadsUserSerializer =
    new _$GForumOverviewData_new_threads_userSerializer();
Serializer<GForumOverviewData_new_threads_user_avatar>
    _$gForumOverviewDataNewThreadsUserAvatarSerializer =
    new _$GForumOverviewData_new_threads_user_avatarSerializer();
Serializer<GForumOverviewData_new_threads_replyUser>
    _$gForumOverviewDataNewThreadsReplyUserSerializer =
    new _$GForumOverviewData_new_threads_replyUserSerializer();
Serializer<GForumOverviewData_new_threads_replyUser_avatar>
    _$gForumOverviewDataNewThreadsReplyUserAvatarSerializer =
    new _$GForumOverviewData_new_threads_replyUser_avatarSerializer();
Serializer<GForumOverviewData_release> _$gForumOverviewDataReleaseSerializer =
    new _$GForumOverviewData_releaseSerializer();
Serializer<GForumOverviewData_release_threads>
    _$gForumOverviewDataReleaseThreadsSerializer =
    new _$GForumOverviewData_release_threadsSerializer();
Serializer<GForumOverviewData_release_threads_mediaCategories>
    _$gForumOverviewDataReleaseThreadsMediaCategoriesSerializer =
    new _$GForumOverviewData_release_threads_mediaCategoriesSerializer();
Serializer<GForumOverviewData_release_threads_mediaCategories_title>
    _$gForumOverviewDataReleaseThreadsMediaCategoriesTitleSerializer =
    new _$GForumOverviewData_release_threads_mediaCategories_titleSerializer();
Serializer<GForumOverviewData_release_threads_mediaCategories_coverImage>
    _$gForumOverviewDataReleaseThreadsMediaCategoriesCoverImageSerializer =
    new _$GForumOverviewData_release_threads_mediaCategories_coverImageSerializer();
Serializer<GForumOverviewData_release_threads_categories>
    _$gForumOverviewDataReleaseThreadsCategoriesSerializer =
    new _$GForumOverviewData_release_threads_categoriesSerializer();
Serializer<GForumOverviewData_release_threads_user>
    _$gForumOverviewDataReleaseThreadsUserSerializer =
    new _$GForumOverviewData_release_threads_userSerializer();
Serializer<GForumOverviewData_release_threads_user_avatar>
    _$gForumOverviewDataReleaseThreadsUserAvatarSerializer =
    new _$GForumOverviewData_release_threads_user_avatarSerializer();
Serializer<GForumOverviewData_release_threads_replyUser>
    _$gForumOverviewDataReleaseThreadsReplyUserSerializer =
    new _$GForumOverviewData_release_threads_replyUserSerializer();
Serializer<GForumOverviewData_release_threads_replyUser_avatar>
    _$gForumOverviewDataReleaseThreadsReplyUserAvatarSerializer =
    new _$GForumOverviewData_release_threads_replyUser_avatarSerializer();

class _$GForumOverviewDataSerializer
    implements StructuredSerializer<GForumOverviewData> {
  @override
  final Iterable<Type> types = const [GForumOverviewData, _$GForumOverviewData];
  @override
  final String wireName = 'GForumOverviewData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForumOverviewData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.recent;
    if (value != null) {
      result
        ..add('recent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GForumOverviewData_recent)));
    }
    value = object.Gnew;
    if (value != null) {
      result
        ..add('new')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GForumOverviewData_new)));
    }
    value = object.release;
    if (value != null) {
      result
        ..add('release')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GForumOverviewData_release)));
    }
    return result;
  }

  @override
  GForumOverviewData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewDataBuilder();

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
        case 'recent':
          result.recent.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GForumOverviewData_recent))!
              as GForumOverviewData_recent);
          break;
        case 'new':
          result.Gnew.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GForumOverviewData_new))!
              as GForumOverviewData_new);
          break;
        case 'release':
          result.release.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GForumOverviewData_release))!
              as GForumOverviewData_release);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_recentSerializer
    implements StructuredSerializer<GForumOverviewData_recent> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_recent,
    _$GForumOverviewData_recent
  ];
  @override
  final String wireName = 'GForumOverviewData_recent';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForumOverviewData_recent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.threads;
    if (value != null) {
      result
        ..add('threads')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GForumOverviewData_recent_threads)
            ])));
    }
    return result;
  }

  @override
  GForumOverviewData_recent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_recentBuilder();

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
        case 'threads':
          result.threads.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GForumOverviewData_recent_threads)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_recent_threadsSerializer
    implements StructuredSerializer<GForumOverviewData_recent_threads> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_recent_threads,
    _$GForumOverviewData_recent_threads
  ];
  @override
  final String wireName = 'GForumOverviewData_recent_threads';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForumOverviewData_recent_threads object,
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
                  GForumOverviewData_recent_threads_mediaCategories)
            ])));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GForumOverviewData_recent_threads_categories)
            ])));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GForumOverviewData_recent_threads_user)));
    }
    value = object.replyUser;
    if (value != null) {
      result
        ..add('replyUser')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GForumOverviewData_recent_threads_replyUser)));
    }
    return result;
  }

  @override
  GForumOverviewData_recent_threads deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_recent_threadsBuilder();

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
                    GForumOverviewData_recent_threads_mediaCategories)
              ]))! as BuiltList<Object?>);
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GForumOverviewData_recent_threads_categories)
              ]))! as BuiltList<Object?>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GForumOverviewData_recent_threads_user))!
              as GForumOverviewData_recent_threads_user);
          break;
        case 'replyUser':
          result.replyUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GForumOverviewData_recent_threads_replyUser))!
              as GForumOverviewData_recent_threads_replyUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_recent_threads_mediaCategoriesSerializer
    implements
        StructuredSerializer<
            GForumOverviewData_recent_threads_mediaCategories> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_recent_threads_mediaCategories,
    _$GForumOverviewData_recent_threads_mediaCategories
  ];
  @override
  final String wireName = 'GForumOverviewData_recent_threads_mediaCategories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_recent_threads_mediaCategories object,
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
                GForumOverviewData_recent_threads_mediaCategories_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GForumOverviewData_recent_threads_mediaCategories_coverImage)));
    }
    return result;
  }

  @override
  GForumOverviewData_recent_threads_mediaCategories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GForumOverviewData_recent_threads_mediaCategoriesBuilder();

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
                      GForumOverviewData_recent_threads_mediaCategories_title))!
              as GForumOverviewData_recent_threads_mediaCategories_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GForumOverviewData_recent_threads_mediaCategories_coverImage))!
              as GForumOverviewData_recent_threads_mediaCategories_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_recent_threads_mediaCategories_titleSerializer
    implements
        StructuredSerializer<
            GForumOverviewData_recent_threads_mediaCategories_title> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_recent_threads_mediaCategories_title,
    _$GForumOverviewData_recent_threads_mediaCategories_title
  ];
  @override
  final String wireName =
      'GForumOverviewData_recent_threads_mediaCategories_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_recent_threads_mediaCategories_title object,
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
  GForumOverviewData_recent_threads_mediaCategories_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GForumOverviewData_recent_threads_mediaCategories_titleBuilder();

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

class _$GForumOverviewData_recent_threads_mediaCategories_coverImageSerializer
    implements
        StructuredSerializer<
            GForumOverviewData_recent_threads_mediaCategories_coverImage> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_recent_threads_mediaCategories_coverImage,
    _$GForumOverviewData_recent_threads_mediaCategories_coverImage
  ];
  @override
  final String wireName =
      'GForumOverviewData_recent_threads_mediaCategories_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_recent_threads_mediaCategories_coverImage object,
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
  GForumOverviewData_recent_threads_mediaCategories_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder();

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

class _$GForumOverviewData_recent_threads_categoriesSerializer
    implements
        StructuredSerializer<GForumOverviewData_recent_threads_categories> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_recent_threads_categories,
    _$GForumOverviewData_recent_threads_categories
  ];
  @override
  final String wireName = 'GForumOverviewData_recent_threads_categories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_recent_threads_categories object,
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
  GForumOverviewData_recent_threads_categories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_recent_threads_categoriesBuilder();

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

class _$GForumOverviewData_recent_threads_userSerializer
    implements StructuredSerializer<GForumOverviewData_recent_threads_user> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_recent_threads_user,
    _$GForumOverviewData_recent_threads_user
  ];
  @override
  final String wireName = 'GForumOverviewData_recent_threads_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForumOverviewData_recent_threads_user object,
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
                const FullType(GForumOverviewData_recent_threads_user_avatar)));
    }
    return result;
  }

  @override
  GForumOverviewData_recent_threads_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_recent_threads_userBuilder();

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
                      GForumOverviewData_recent_threads_user_avatar))!
              as GForumOverviewData_recent_threads_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_recent_threads_user_avatarSerializer
    implements
        StructuredSerializer<GForumOverviewData_recent_threads_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_recent_threads_user_avatar,
    _$GForumOverviewData_recent_threads_user_avatar
  ];
  @override
  final String wireName = 'GForumOverviewData_recent_threads_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_recent_threads_user_avatar object,
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
  GForumOverviewData_recent_threads_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_recent_threads_user_avatarBuilder();

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

class _$GForumOverviewData_recent_threads_replyUserSerializer
    implements
        StructuredSerializer<GForumOverviewData_recent_threads_replyUser> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_recent_threads_replyUser,
    _$GForumOverviewData_recent_threads_replyUser
  ];
  @override
  final String wireName = 'GForumOverviewData_recent_threads_replyUser';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_recent_threads_replyUser object,
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
                GForumOverviewData_recent_threads_replyUser_avatar)));
    }
    return result;
  }

  @override
  GForumOverviewData_recent_threads_replyUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_recent_threads_replyUserBuilder();

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
                      GForumOverviewData_recent_threads_replyUser_avatar))!
              as GForumOverviewData_recent_threads_replyUser_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_recent_threads_replyUser_avatarSerializer
    implements
        StructuredSerializer<
            GForumOverviewData_recent_threads_replyUser_avatar> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_recent_threads_replyUser_avatar,
    _$GForumOverviewData_recent_threads_replyUser_avatar
  ];
  @override
  final String wireName = 'GForumOverviewData_recent_threads_replyUser_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_recent_threads_replyUser_avatar object,
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
  GForumOverviewData_recent_threads_replyUser_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GForumOverviewData_recent_threads_replyUser_avatarBuilder();

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

class _$GForumOverviewData_newSerializer
    implements StructuredSerializer<GForumOverviewData_new> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_new,
    _$GForumOverviewData_new
  ];
  @override
  final String wireName = 'GForumOverviewData_new';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForumOverviewData_new object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.threads;
    if (value != null) {
      result
        ..add('threads')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GForumOverviewData_new_threads)
            ])));
    }
    return result;
  }

  @override
  GForumOverviewData_new deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_newBuilder();

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
        case 'threads':
          result.threads.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GForumOverviewData_new_threads)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_new_threadsSerializer
    implements StructuredSerializer<GForumOverviewData_new_threads> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_new_threads,
    _$GForumOverviewData_new_threads
  ];
  @override
  final String wireName = 'GForumOverviewData_new_threads';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForumOverviewData_new_threads object,
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
                  GForumOverviewData_new_threads_mediaCategories)
            ])));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GForumOverviewData_new_threads_categories)
            ])));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GForumOverviewData_new_threads_user)));
    }
    value = object.replyUser;
    if (value != null) {
      result
        ..add('replyUser')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GForumOverviewData_new_threads_replyUser)));
    }
    return result;
  }

  @override
  GForumOverviewData_new_threads deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_new_threadsBuilder();

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
                    GForumOverviewData_new_threads_mediaCategories)
              ]))! as BuiltList<Object?>);
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GForumOverviewData_new_threads_categories)
              ]))! as BuiltList<Object?>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GForumOverviewData_new_threads_user))!
              as GForumOverviewData_new_threads_user);
          break;
        case 'replyUser':
          result.replyUser.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GForumOverviewData_new_threads_replyUser))!
              as GForumOverviewData_new_threads_replyUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_new_threads_mediaCategoriesSerializer
    implements
        StructuredSerializer<GForumOverviewData_new_threads_mediaCategories> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_new_threads_mediaCategories,
    _$GForumOverviewData_new_threads_mediaCategories
  ];
  @override
  final String wireName = 'GForumOverviewData_new_threads_mediaCategories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_new_threads_mediaCategories object,
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
                GForumOverviewData_new_threads_mediaCategories_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GForumOverviewData_new_threads_mediaCategories_coverImage)));
    }
    return result;
  }

  @override
  GForumOverviewData_new_threads_mediaCategories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_new_threads_mediaCategoriesBuilder();

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
                      GForumOverviewData_new_threads_mediaCategories_title))!
              as GForumOverviewData_new_threads_mediaCategories_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GForumOverviewData_new_threads_mediaCategories_coverImage))!
              as GForumOverviewData_new_threads_mediaCategories_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_new_threads_mediaCategories_titleSerializer
    implements
        StructuredSerializer<
            GForumOverviewData_new_threads_mediaCategories_title> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_new_threads_mediaCategories_title,
    _$GForumOverviewData_new_threads_mediaCategories_title
  ];
  @override
  final String wireName =
      'GForumOverviewData_new_threads_mediaCategories_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_new_threads_mediaCategories_title object,
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
  GForumOverviewData_new_threads_mediaCategories_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GForumOverviewData_new_threads_mediaCategories_titleBuilder();

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

class _$GForumOverviewData_new_threads_mediaCategories_coverImageSerializer
    implements
        StructuredSerializer<
            GForumOverviewData_new_threads_mediaCategories_coverImage> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_new_threads_mediaCategories_coverImage,
    _$GForumOverviewData_new_threads_mediaCategories_coverImage
  ];
  @override
  final String wireName =
      'GForumOverviewData_new_threads_mediaCategories_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_new_threads_mediaCategories_coverImage object,
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
  GForumOverviewData_new_threads_mediaCategories_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GForumOverviewData_new_threads_mediaCategories_coverImageBuilder();

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

class _$GForumOverviewData_new_threads_categoriesSerializer
    implements StructuredSerializer<GForumOverviewData_new_threads_categories> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_new_threads_categories,
    _$GForumOverviewData_new_threads_categories
  ];
  @override
  final String wireName = 'GForumOverviewData_new_threads_categories';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForumOverviewData_new_threads_categories object,
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
  GForumOverviewData_new_threads_categories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_new_threads_categoriesBuilder();

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

class _$GForumOverviewData_new_threads_userSerializer
    implements StructuredSerializer<GForumOverviewData_new_threads_user> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_new_threads_user,
    _$GForumOverviewData_new_threads_user
  ];
  @override
  final String wireName = 'GForumOverviewData_new_threads_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForumOverviewData_new_threads_user object,
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
                const FullType(GForumOverviewData_new_threads_user_avatar)));
    }
    return result;
  }

  @override
  GForumOverviewData_new_threads_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_new_threads_userBuilder();

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
                      GForumOverviewData_new_threads_user_avatar))!
              as GForumOverviewData_new_threads_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_new_threads_user_avatarSerializer
    implements
        StructuredSerializer<GForumOverviewData_new_threads_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_new_threads_user_avatar,
    _$GForumOverviewData_new_threads_user_avatar
  ];
  @override
  final String wireName = 'GForumOverviewData_new_threads_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_new_threads_user_avatar object,
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
  GForumOverviewData_new_threads_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_new_threads_user_avatarBuilder();

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

class _$GForumOverviewData_new_threads_replyUserSerializer
    implements StructuredSerializer<GForumOverviewData_new_threads_replyUser> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_new_threads_replyUser,
    _$GForumOverviewData_new_threads_replyUser
  ];
  @override
  final String wireName = 'GForumOverviewData_new_threads_replyUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForumOverviewData_new_threads_replyUser object,
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
                GForumOverviewData_new_threads_replyUser_avatar)));
    }
    return result;
  }

  @override
  GForumOverviewData_new_threads_replyUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_new_threads_replyUserBuilder();

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
                      GForumOverviewData_new_threads_replyUser_avatar))!
              as GForumOverviewData_new_threads_replyUser_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_new_threads_replyUser_avatarSerializer
    implements
        StructuredSerializer<GForumOverviewData_new_threads_replyUser_avatar> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_new_threads_replyUser_avatar,
    _$GForumOverviewData_new_threads_replyUser_avatar
  ];
  @override
  final String wireName = 'GForumOverviewData_new_threads_replyUser_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_new_threads_replyUser_avatar object,
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
  GForumOverviewData_new_threads_replyUser_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_new_threads_replyUser_avatarBuilder();

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

class _$GForumOverviewData_releaseSerializer
    implements StructuredSerializer<GForumOverviewData_release> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_release,
    _$GForumOverviewData_release
  ];
  @override
  final String wireName = 'GForumOverviewData_release';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForumOverviewData_release object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.threads;
    if (value != null) {
      result
        ..add('threads')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GForumOverviewData_release_threads)
            ])));
    }
    return result;
  }

  @override
  GForumOverviewData_release deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_releaseBuilder();

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
        case 'threads':
          result.threads.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GForumOverviewData_release_threads)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_release_threadsSerializer
    implements StructuredSerializer<GForumOverviewData_release_threads> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_release_threads,
    _$GForumOverviewData_release_threads
  ];
  @override
  final String wireName = 'GForumOverviewData_release_threads';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForumOverviewData_release_threads object,
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
                  GForumOverviewData_release_threads_mediaCategories)
            ])));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GForumOverviewData_release_threads_categories)
            ])));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GForumOverviewData_release_threads_user)));
    }
    value = object.replyUser;
    if (value != null) {
      result
        ..add('replyUser')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GForumOverviewData_release_threads_replyUser)));
    }
    return result;
  }

  @override
  GForumOverviewData_release_threads deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_release_threadsBuilder();

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
                    GForumOverviewData_release_threads_mediaCategories)
              ]))! as BuiltList<Object?>);
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GForumOverviewData_release_threads_categories)
              ]))! as BuiltList<Object?>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GForumOverviewData_release_threads_user))!
              as GForumOverviewData_release_threads_user);
          break;
        case 'replyUser':
          result.replyUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GForumOverviewData_release_threads_replyUser))!
              as GForumOverviewData_release_threads_replyUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_release_threads_mediaCategoriesSerializer
    implements
        StructuredSerializer<
            GForumOverviewData_release_threads_mediaCategories> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_release_threads_mediaCategories,
    _$GForumOverviewData_release_threads_mediaCategories
  ];
  @override
  final String wireName = 'GForumOverviewData_release_threads_mediaCategories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_release_threads_mediaCategories object,
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
                GForumOverviewData_release_threads_mediaCategories_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GForumOverviewData_release_threads_mediaCategories_coverImage)));
    }
    return result;
  }

  @override
  GForumOverviewData_release_threads_mediaCategories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GForumOverviewData_release_threads_mediaCategoriesBuilder();

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
                      GForumOverviewData_release_threads_mediaCategories_title))!
              as GForumOverviewData_release_threads_mediaCategories_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GForumOverviewData_release_threads_mediaCategories_coverImage))!
              as GForumOverviewData_release_threads_mediaCategories_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_release_threads_mediaCategories_titleSerializer
    implements
        StructuredSerializer<
            GForumOverviewData_release_threads_mediaCategories_title> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_release_threads_mediaCategories_title,
    _$GForumOverviewData_release_threads_mediaCategories_title
  ];
  @override
  final String wireName =
      'GForumOverviewData_release_threads_mediaCategories_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_release_threads_mediaCategories_title object,
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
  GForumOverviewData_release_threads_mediaCategories_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GForumOverviewData_release_threads_mediaCategories_titleBuilder();

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

class _$GForumOverviewData_release_threads_mediaCategories_coverImageSerializer
    implements
        StructuredSerializer<
            GForumOverviewData_release_threads_mediaCategories_coverImage> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_release_threads_mediaCategories_coverImage,
    _$GForumOverviewData_release_threads_mediaCategories_coverImage
  ];
  @override
  final String wireName =
      'GForumOverviewData_release_threads_mediaCategories_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_release_threads_mediaCategories_coverImage object,
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
  GForumOverviewData_release_threads_mediaCategories_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GForumOverviewData_release_threads_mediaCategories_coverImageBuilder();

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

class _$GForumOverviewData_release_threads_categoriesSerializer
    implements
        StructuredSerializer<GForumOverviewData_release_threads_categories> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_release_threads_categories,
    _$GForumOverviewData_release_threads_categories
  ];
  @override
  final String wireName = 'GForumOverviewData_release_threads_categories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_release_threads_categories object,
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
  GForumOverviewData_release_threads_categories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_release_threads_categoriesBuilder();

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

class _$GForumOverviewData_release_threads_userSerializer
    implements StructuredSerializer<GForumOverviewData_release_threads_user> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_release_threads_user,
    _$GForumOverviewData_release_threads_user
  ];
  @override
  final String wireName = 'GForumOverviewData_release_threads_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GForumOverviewData_release_threads_user object,
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
                GForumOverviewData_release_threads_user_avatar)));
    }
    return result;
  }

  @override
  GForumOverviewData_release_threads_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_release_threads_userBuilder();

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
                      GForumOverviewData_release_threads_user_avatar))!
              as GForumOverviewData_release_threads_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_release_threads_user_avatarSerializer
    implements
        StructuredSerializer<GForumOverviewData_release_threads_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_release_threads_user_avatar,
    _$GForumOverviewData_release_threads_user_avatar
  ];
  @override
  final String wireName = 'GForumOverviewData_release_threads_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_release_threads_user_avatar object,
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
  GForumOverviewData_release_threads_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_release_threads_user_avatarBuilder();

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

class _$GForumOverviewData_release_threads_replyUserSerializer
    implements
        StructuredSerializer<GForumOverviewData_release_threads_replyUser> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_release_threads_replyUser,
    _$GForumOverviewData_release_threads_replyUser
  ];
  @override
  final String wireName = 'GForumOverviewData_release_threads_replyUser';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_release_threads_replyUser object,
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
                GForumOverviewData_release_threads_replyUser_avatar)));
    }
    return result;
  }

  @override
  GForumOverviewData_release_threads_replyUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GForumOverviewData_release_threads_replyUserBuilder();

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
                      GForumOverviewData_release_threads_replyUser_avatar))!
              as GForumOverviewData_release_threads_replyUser_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GForumOverviewData_release_threads_replyUser_avatarSerializer
    implements
        StructuredSerializer<
            GForumOverviewData_release_threads_replyUser_avatar> {
  @override
  final Iterable<Type> types = const [
    GForumOverviewData_release_threads_replyUser_avatar,
    _$GForumOverviewData_release_threads_replyUser_avatar
  ];
  @override
  final String wireName = 'GForumOverviewData_release_threads_replyUser_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GForumOverviewData_release_threads_replyUser_avatar object,
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
  GForumOverviewData_release_threads_replyUser_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GForumOverviewData_release_threads_replyUser_avatarBuilder();

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

class _$GForumOverviewData extends GForumOverviewData {
  @override
  final String G__typename;
  @override
  final GForumOverviewData_recent? recent;
  @override
  final GForumOverviewData_new? Gnew;
  @override
  final GForumOverviewData_release? release;

  factory _$GForumOverviewData(
          [void Function(GForumOverviewDataBuilder)? updates]) =>
      (new GForumOverviewDataBuilder()..update(updates))._build();

  _$GForumOverviewData._(
      {required this.G__typename, this.recent, this.Gnew, this.release})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GForumOverviewData', 'G__typename');
  }

  @override
  GForumOverviewData rebuild(
          void Function(GForumOverviewDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewDataBuilder toBuilder() =>
      new GForumOverviewDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData &&
        G__typename == other.G__typename &&
        recent == other.recent &&
        Gnew == other.Gnew &&
        release == other.release;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, recent.hashCode);
    _$hash = $jc(_$hash, Gnew.hashCode);
    _$hash = $jc(_$hash, release.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GForumOverviewData')
          ..add('G__typename', G__typename)
          ..add('recent', recent)
          ..add('Gnew', Gnew)
          ..add('release', release))
        .toString();
  }
}

class GForumOverviewDataBuilder
    implements Builder<GForumOverviewData, GForumOverviewDataBuilder> {
  _$GForumOverviewData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GForumOverviewData_recentBuilder? _recent;
  GForumOverviewData_recentBuilder get recent =>
      _$this._recent ??= new GForumOverviewData_recentBuilder();
  set recent(GForumOverviewData_recentBuilder? recent) =>
      _$this._recent = recent;

  GForumOverviewData_newBuilder? _Gnew;
  GForumOverviewData_newBuilder get Gnew =>
      _$this._Gnew ??= new GForumOverviewData_newBuilder();
  set Gnew(GForumOverviewData_newBuilder? Gnew) => _$this._Gnew = Gnew;

  GForumOverviewData_releaseBuilder? _release;
  GForumOverviewData_releaseBuilder get release =>
      _$this._release ??= new GForumOverviewData_releaseBuilder();
  set release(GForumOverviewData_releaseBuilder? release) =>
      _$this._release = release;

  GForumOverviewDataBuilder() {
    GForumOverviewData._initializeBuilder(this);
  }

  GForumOverviewDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _recent = $v.recent?.toBuilder();
      _Gnew = $v.Gnew?.toBuilder();
      _release = $v.release?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumOverviewData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData;
  }

  @override
  void update(void Function(GForumOverviewDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData build() => _build();

  _$GForumOverviewData _build() {
    _$GForumOverviewData _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GForumOverviewData', 'G__typename'),
              recent: _recent?.build(),
              Gnew: _Gnew?.build(),
              release: _release?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recent';
        _recent?.build();
        _$failedField = 'Gnew';
        _Gnew?.build();
        _$failedField = 'release';
        _release?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GForumOverviewData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_recent extends GForumOverviewData_recent {
  @override
  final String G__typename;
  @override
  final BuiltList<GForumOverviewData_recent_threads?>? threads;

  factory _$GForumOverviewData_recent(
          [void Function(GForumOverviewData_recentBuilder)? updates]) =>
      (new GForumOverviewData_recentBuilder()..update(updates))._build();

  _$GForumOverviewData_recent._({required this.G__typename, this.threads})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GForumOverviewData_recent', 'G__typename');
  }

  @override
  GForumOverviewData_recent rebuild(
          void Function(GForumOverviewData_recentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_recentBuilder toBuilder() =>
      new GForumOverviewData_recentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_recent &&
        G__typename == other.G__typename &&
        threads == other.threads;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, threads.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GForumOverviewData_recent')
          ..add('G__typename', G__typename)
          ..add('threads', threads))
        .toString();
  }
}

class GForumOverviewData_recentBuilder
    implements
        Builder<GForumOverviewData_recent, GForumOverviewData_recentBuilder> {
  _$GForumOverviewData_recent? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GForumOverviewData_recent_threads?>? _threads;
  ListBuilder<GForumOverviewData_recent_threads?> get threads =>
      _$this._threads ??= new ListBuilder<GForumOverviewData_recent_threads?>();
  set threads(ListBuilder<GForumOverviewData_recent_threads?>? threads) =>
      _$this._threads = threads;

  GForumOverviewData_recentBuilder() {
    GForumOverviewData_recent._initializeBuilder(this);
  }

  GForumOverviewData_recentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _threads = $v.threads?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumOverviewData_recent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_recent;
  }

  @override
  void update(void Function(GForumOverviewData_recentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_recent build() => _build();

  _$GForumOverviewData_recent _build() {
    _$GForumOverviewData_recent _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_recent._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GForumOverviewData_recent', 'G__typename'),
              threads: _threads?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'threads';
        _threads?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GForumOverviewData_recent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_recent_threads
    extends GForumOverviewData_recent_threads {
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
  final BuiltList<GForumOverviewData_recent_threads_mediaCategories?>?
      mediaCategories;
  @override
  final BuiltList<GForumOverviewData_recent_threads_categories?>? categories;
  @override
  final GForumOverviewData_recent_threads_user? user;
  @override
  final GForumOverviewData_recent_threads_replyUser? replyUser;

  factory _$GForumOverviewData_recent_threads(
          [void Function(GForumOverviewData_recent_threadsBuilder)? updates]) =>
      (new GForumOverviewData_recent_threadsBuilder()..update(updates))
          ._build();

  _$GForumOverviewData_recent_threads._(
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
        G__typename, r'GForumOverviewData_recent_threads', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_recent_threads', 'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GForumOverviewData_recent_threads', 'createdAt');
  }

  @override
  GForumOverviewData_recent_threads rebuild(
          void Function(GForumOverviewData_recent_threadsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_recent_threadsBuilder toBuilder() =>
      new GForumOverviewData_recent_threadsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_recent_threads &&
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
    return (newBuiltValueToStringHelper(r'GForumOverviewData_recent_threads')
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

class GForumOverviewData_recent_threadsBuilder
    implements
        Builder<GForumOverviewData_recent_threads,
            GForumOverviewData_recent_threadsBuilder> {
  _$GForumOverviewData_recent_threads? _$v;

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

  ListBuilder<GForumOverviewData_recent_threads_mediaCategories?>?
      _mediaCategories;
  ListBuilder<GForumOverviewData_recent_threads_mediaCategories?>
      get mediaCategories => _$this._mediaCategories ??=
          new ListBuilder<GForumOverviewData_recent_threads_mediaCategories?>();
  set mediaCategories(
          ListBuilder<GForumOverviewData_recent_threads_mediaCategories?>?
              mediaCategories) =>
      _$this._mediaCategories = mediaCategories;

  ListBuilder<GForumOverviewData_recent_threads_categories?>? _categories;
  ListBuilder<GForumOverviewData_recent_threads_categories?> get categories =>
      _$this._categories ??=
          new ListBuilder<GForumOverviewData_recent_threads_categories?>();
  set categories(
          ListBuilder<GForumOverviewData_recent_threads_categories?>?
              categories) =>
      _$this._categories = categories;

  GForumOverviewData_recent_threads_userBuilder? _user;
  GForumOverviewData_recent_threads_userBuilder get user =>
      _$this._user ??= new GForumOverviewData_recent_threads_userBuilder();
  set user(GForumOverviewData_recent_threads_userBuilder? user) =>
      _$this._user = user;

  GForumOverviewData_recent_threads_replyUserBuilder? _replyUser;
  GForumOverviewData_recent_threads_replyUserBuilder get replyUser =>
      _$this._replyUser ??=
          new GForumOverviewData_recent_threads_replyUserBuilder();
  set replyUser(
          GForumOverviewData_recent_threads_replyUserBuilder? replyUser) =>
      _$this._replyUser = replyUser;

  GForumOverviewData_recent_threadsBuilder() {
    GForumOverviewData_recent_threads._initializeBuilder(this);
  }

  GForumOverviewData_recent_threadsBuilder get _$this {
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
  void replace(GForumOverviewData_recent_threads other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_recent_threads;
  }

  @override
  void update(
      void Function(GForumOverviewData_recent_threadsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_recent_threads build() => _build();

  _$GForumOverviewData_recent_threads _build() {
    _$GForumOverviewData_recent_threads _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_recent_threads._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GForumOverviewData_recent_threads', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GForumOverviewData_recent_threads', 'id'),
              title: title,
              replyCount: replyCount,
              viewCount: viewCount,
              replyCommentId: replyCommentId,
              repliedAt: repliedAt,
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GForumOverviewData_recent_threads', 'createdAt'),
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
            r'GForumOverviewData_recent_threads', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_recent_threads_mediaCategories
    extends GForumOverviewData_recent_threads_mediaCategories {
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
  final GForumOverviewData_recent_threads_mediaCategories_title? title;
  @override
  final GForumOverviewData_recent_threads_mediaCategories_coverImage?
      coverImage;

  factory _$GForumOverviewData_recent_threads_mediaCategories(
          [void Function(
                  GForumOverviewData_recent_threads_mediaCategoriesBuilder)?
              updates]) =>
      (new GForumOverviewData_recent_threads_mediaCategoriesBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_recent_threads_mediaCategories._(
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
        r'GForumOverviewData_recent_threads_mediaCategories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_recent_threads_mediaCategories', 'id');
  }

  @override
  GForumOverviewData_recent_threads_mediaCategories rebuild(
          void Function(
                  GForumOverviewData_recent_threads_mediaCategoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_recent_threads_mediaCategoriesBuilder toBuilder() =>
      new GForumOverviewData_recent_threads_mediaCategoriesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_recent_threads_mediaCategories &&
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
            r'GForumOverviewData_recent_threads_mediaCategories')
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

class GForumOverviewData_recent_threads_mediaCategoriesBuilder
    implements
        Builder<GForumOverviewData_recent_threads_mediaCategories,
            GForumOverviewData_recent_threads_mediaCategoriesBuilder> {
  _$GForumOverviewData_recent_threads_mediaCategories? _$v;

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

  GForumOverviewData_recent_threads_mediaCategories_titleBuilder? _title;
  GForumOverviewData_recent_threads_mediaCategories_titleBuilder get title =>
      _$this._title ??=
          new GForumOverviewData_recent_threads_mediaCategories_titleBuilder();
  set title(
          GForumOverviewData_recent_threads_mediaCategories_titleBuilder?
              title) =>
      _$this._title = title;

  GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder?
      _coverImage;
  GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder();
  set coverImage(
          GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GForumOverviewData_recent_threads_mediaCategoriesBuilder() {
    GForumOverviewData_recent_threads_mediaCategories._initializeBuilder(this);
  }

  GForumOverviewData_recent_threads_mediaCategoriesBuilder get _$this {
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
  void replace(GForumOverviewData_recent_threads_mediaCategories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_recent_threads_mediaCategories;
  }

  @override
  void update(
      void Function(GForumOverviewData_recent_threads_mediaCategoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_recent_threads_mediaCategories build() => _build();

  _$GForumOverviewData_recent_threads_mediaCategories _build() {
    _$GForumOverviewData_recent_threads_mediaCategories _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_recent_threads_mediaCategories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GForumOverviewData_recent_threads_mediaCategories',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GForumOverviewData_recent_threads_mediaCategories', 'id'),
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
            r'GForumOverviewData_recent_threads_mediaCategories',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_recent_threads_mediaCategories_title
    extends GForumOverviewData_recent_threads_mediaCategories_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GForumOverviewData_recent_threads_mediaCategories_title(
          [void Function(
                  GForumOverviewData_recent_threads_mediaCategories_titleBuilder)?
              updates]) =>
      (new GForumOverviewData_recent_threads_mediaCategories_titleBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_recent_threads_mediaCategories_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GForumOverviewData_recent_threads_mediaCategories_title',
        'G__typename');
  }

  @override
  GForumOverviewData_recent_threads_mediaCategories_title rebuild(
          void Function(
                  GForumOverviewData_recent_threads_mediaCategories_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_recent_threads_mediaCategories_titleBuilder toBuilder() =>
      new GForumOverviewData_recent_threads_mediaCategories_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_recent_threads_mediaCategories_title &&
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
            r'GForumOverviewData_recent_threads_mediaCategories_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GForumOverviewData_recent_threads_mediaCategories_titleBuilder
    implements
        Builder<GForumOverviewData_recent_threads_mediaCategories_title,
            GForumOverviewData_recent_threads_mediaCategories_titleBuilder> {
  _$GForumOverviewData_recent_threads_mediaCategories_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GForumOverviewData_recent_threads_mediaCategories_titleBuilder() {
    GForumOverviewData_recent_threads_mediaCategories_title._initializeBuilder(
        this);
  }

  GForumOverviewData_recent_threads_mediaCategories_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumOverviewData_recent_threads_mediaCategories_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_recent_threads_mediaCategories_title;
  }

  @override
  void update(
      void Function(
              GForumOverviewData_recent_threads_mediaCategories_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_recent_threads_mediaCategories_title build() => _build();

  _$GForumOverviewData_recent_threads_mediaCategories_title _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_recent_threads_mediaCategories_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GForumOverviewData_recent_threads_mediaCategories_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_recent_threads_mediaCategories_coverImage
    extends GForumOverviewData_recent_threads_mediaCategories_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GForumOverviewData_recent_threads_mediaCategories_coverImage(
          [void Function(
                  GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder)?
              updates]) =>
      (new GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_recent_threads_mediaCategories_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GForumOverviewData_recent_threads_mediaCategories_coverImage',
        'G__typename');
  }

  @override
  GForumOverviewData_recent_threads_mediaCategories_coverImage rebuild(
          void Function(
                  GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder
      toBuilder() =>
          new GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GForumOverviewData_recent_threads_mediaCategories_coverImage &&
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
            r'GForumOverviewData_recent_threads_mediaCategories_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder
    implements
        Builder<GForumOverviewData_recent_threads_mediaCategories_coverImage,
            GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder> {
  _$GForumOverviewData_recent_threads_mediaCategories_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder() {
    GForumOverviewData_recent_threads_mediaCategories_coverImage
        ._initializeBuilder(this);
  }

  GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder
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
      GForumOverviewData_recent_threads_mediaCategories_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GForumOverviewData_recent_threads_mediaCategories_coverImage;
  }

  @override
  void update(
      void Function(
              GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_recent_threads_mediaCategories_coverImage build() =>
      _build();

  _$GForumOverviewData_recent_threads_mediaCategories_coverImage _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_recent_threads_mediaCategories_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GForumOverviewData_recent_threads_mediaCategories_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_recent_threads_categories
    extends GForumOverviewData_recent_threads_categories {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;

  factory _$GForumOverviewData_recent_threads_categories(
          [void Function(GForumOverviewData_recent_threads_categoriesBuilder)?
              updates]) =>
      (new GForumOverviewData_recent_threads_categoriesBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_recent_threads_categories._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForumOverviewData_recent_threads_categories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_recent_threads_categories', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GForumOverviewData_recent_threads_categories', 'name');
  }

  @override
  GForumOverviewData_recent_threads_categories rebuild(
          void Function(GForumOverviewData_recent_threads_categoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_recent_threads_categoriesBuilder toBuilder() =>
      new GForumOverviewData_recent_threads_categoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_recent_threads_categories &&
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
            r'GForumOverviewData_recent_threads_categories')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GForumOverviewData_recent_threads_categoriesBuilder
    implements
        Builder<GForumOverviewData_recent_threads_categories,
            GForumOverviewData_recent_threads_categoriesBuilder> {
  _$GForumOverviewData_recent_threads_categories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GForumOverviewData_recent_threads_categoriesBuilder() {
    GForumOverviewData_recent_threads_categories._initializeBuilder(this);
  }

  GForumOverviewData_recent_threads_categoriesBuilder get _$this {
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
  void replace(GForumOverviewData_recent_threads_categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_recent_threads_categories;
  }

  @override
  void update(
      void Function(GForumOverviewData_recent_threads_categoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_recent_threads_categories build() => _build();

  _$GForumOverviewData_recent_threads_categories _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_recent_threads_categories._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GForumOverviewData_recent_threads_categories', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GForumOverviewData_recent_threads_categories', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GForumOverviewData_recent_threads_categories', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_recent_threads_user
    extends GForumOverviewData_recent_threads_user {
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
  final GForumOverviewData_recent_threads_user_avatar? avatar;

  factory _$GForumOverviewData_recent_threads_user(
          [void Function(GForumOverviewData_recent_threads_userBuilder)?
              updates]) =>
      (new GForumOverviewData_recent_threads_userBuilder()..update(updates))
          ._build();

  _$GForumOverviewData_recent_threads_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GForumOverviewData_recent_threads_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_recent_threads_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GForumOverviewData_recent_threads_user', 'name');
  }

  @override
  GForumOverviewData_recent_threads_user rebuild(
          void Function(GForumOverviewData_recent_threads_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_recent_threads_userBuilder toBuilder() =>
      new GForumOverviewData_recent_threads_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_recent_threads_user &&
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
            r'GForumOverviewData_recent_threads_user')
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

class GForumOverviewData_recent_threads_userBuilder
    implements
        Builder<GForumOverviewData_recent_threads_user,
            GForumOverviewData_recent_threads_userBuilder> {
  _$GForumOverviewData_recent_threads_user? _$v;

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

  GForumOverviewData_recent_threads_user_avatarBuilder? _avatar;
  GForumOverviewData_recent_threads_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GForumOverviewData_recent_threads_user_avatarBuilder();
  set avatar(GForumOverviewData_recent_threads_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GForumOverviewData_recent_threads_userBuilder() {
    GForumOverviewData_recent_threads_user._initializeBuilder(this);
  }

  GForumOverviewData_recent_threads_userBuilder get _$this {
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
  void replace(GForumOverviewData_recent_threads_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_recent_threads_user;
  }

  @override
  void update(
      void Function(GForumOverviewData_recent_threads_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_recent_threads_user build() => _build();

  _$GForumOverviewData_recent_threads_user _build() {
    _$GForumOverviewData_recent_threads_user _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_recent_threads_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GForumOverviewData_recent_threads_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GForumOverviewData_recent_threads_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GForumOverviewData_recent_threads_user', 'name'),
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
            r'GForumOverviewData_recent_threads_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_recent_threads_user_avatar
    extends GForumOverviewData_recent_threads_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GForumOverviewData_recent_threads_user_avatar(
          [void Function(GForumOverviewData_recent_threads_user_avatarBuilder)?
              updates]) =>
      (new GForumOverviewData_recent_threads_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_recent_threads_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForumOverviewData_recent_threads_user_avatar', 'G__typename');
  }

  @override
  GForumOverviewData_recent_threads_user_avatar rebuild(
          void Function(GForumOverviewData_recent_threads_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_recent_threads_user_avatarBuilder toBuilder() =>
      new GForumOverviewData_recent_threads_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_recent_threads_user_avatar &&
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
            r'GForumOverviewData_recent_threads_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GForumOverviewData_recent_threads_user_avatarBuilder
    implements
        Builder<GForumOverviewData_recent_threads_user_avatar,
            GForumOverviewData_recent_threads_user_avatarBuilder> {
  _$GForumOverviewData_recent_threads_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GForumOverviewData_recent_threads_user_avatarBuilder() {
    GForumOverviewData_recent_threads_user_avatar._initializeBuilder(this);
  }

  GForumOverviewData_recent_threads_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumOverviewData_recent_threads_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_recent_threads_user_avatar;
  }

  @override
  void update(
      void Function(GForumOverviewData_recent_threads_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_recent_threads_user_avatar build() => _build();

  _$GForumOverviewData_recent_threads_user_avatar _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_recent_threads_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GForumOverviewData_recent_threads_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_recent_threads_replyUser
    extends GForumOverviewData_recent_threads_replyUser {
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
  final GForumOverviewData_recent_threads_replyUser_avatar? avatar;

  factory _$GForumOverviewData_recent_threads_replyUser(
          [void Function(GForumOverviewData_recent_threads_replyUserBuilder)?
              updates]) =>
      (new GForumOverviewData_recent_threads_replyUserBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_recent_threads_replyUser._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForumOverviewData_recent_threads_replyUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_recent_threads_replyUser', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GForumOverviewData_recent_threads_replyUser', 'name');
  }

  @override
  GForumOverviewData_recent_threads_replyUser rebuild(
          void Function(GForumOverviewData_recent_threads_replyUserBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_recent_threads_replyUserBuilder toBuilder() =>
      new GForumOverviewData_recent_threads_replyUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_recent_threads_replyUser &&
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
            r'GForumOverviewData_recent_threads_replyUser')
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

class GForumOverviewData_recent_threads_replyUserBuilder
    implements
        Builder<GForumOverviewData_recent_threads_replyUser,
            GForumOverviewData_recent_threads_replyUserBuilder> {
  _$GForumOverviewData_recent_threads_replyUser? _$v;

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

  GForumOverviewData_recent_threads_replyUser_avatarBuilder? _avatar;
  GForumOverviewData_recent_threads_replyUser_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GForumOverviewData_recent_threads_replyUser_avatarBuilder();
  set avatar(
          GForumOverviewData_recent_threads_replyUser_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GForumOverviewData_recent_threads_replyUserBuilder() {
    GForumOverviewData_recent_threads_replyUser._initializeBuilder(this);
  }

  GForumOverviewData_recent_threads_replyUserBuilder get _$this {
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
  void replace(GForumOverviewData_recent_threads_replyUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_recent_threads_replyUser;
  }

  @override
  void update(
      void Function(GForumOverviewData_recent_threads_replyUserBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_recent_threads_replyUser build() => _build();

  _$GForumOverviewData_recent_threads_replyUser _build() {
    _$GForumOverviewData_recent_threads_replyUser _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_recent_threads_replyUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GForumOverviewData_recent_threads_replyUser',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GForumOverviewData_recent_threads_replyUser', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GForumOverviewData_recent_threads_replyUser', 'name'),
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
            r'GForumOverviewData_recent_threads_replyUser',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_recent_threads_replyUser_avatar
    extends GForumOverviewData_recent_threads_replyUser_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GForumOverviewData_recent_threads_replyUser_avatar(
          [void Function(
                  GForumOverviewData_recent_threads_replyUser_avatarBuilder)?
              updates]) =>
      (new GForumOverviewData_recent_threads_replyUser_avatarBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_recent_threads_replyUser_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForumOverviewData_recent_threads_replyUser_avatar', 'G__typename');
  }

  @override
  GForumOverviewData_recent_threads_replyUser_avatar rebuild(
          void Function(
                  GForumOverviewData_recent_threads_replyUser_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_recent_threads_replyUser_avatarBuilder toBuilder() =>
      new GForumOverviewData_recent_threads_replyUser_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_recent_threads_replyUser_avatar &&
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
            r'GForumOverviewData_recent_threads_replyUser_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GForumOverviewData_recent_threads_replyUser_avatarBuilder
    implements
        Builder<GForumOverviewData_recent_threads_replyUser_avatar,
            GForumOverviewData_recent_threads_replyUser_avatarBuilder> {
  _$GForumOverviewData_recent_threads_replyUser_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GForumOverviewData_recent_threads_replyUser_avatarBuilder() {
    GForumOverviewData_recent_threads_replyUser_avatar._initializeBuilder(this);
  }

  GForumOverviewData_recent_threads_replyUser_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumOverviewData_recent_threads_replyUser_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_recent_threads_replyUser_avatar;
  }

  @override
  void update(
      void Function(GForumOverviewData_recent_threads_replyUser_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_recent_threads_replyUser_avatar build() => _build();

  _$GForumOverviewData_recent_threads_replyUser_avatar _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_recent_threads_replyUser_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GForumOverviewData_recent_threads_replyUser_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_new extends GForumOverviewData_new {
  @override
  final String G__typename;
  @override
  final BuiltList<GForumOverviewData_new_threads?>? threads;

  factory _$GForumOverviewData_new(
          [void Function(GForumOverviewData_newBuilder)? updates]) =>
      (new GForumOverviewData_newBuilder()..update(updates))._build();

  _$GForumOverviewData_new._({required this.G__typename, this.threads})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GForumOverviewData_new', 'G__typename');
  }

  @override
  GForumOverviewData_new rebuild(
          void Function(GForumOverviewData_newBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_newBuilder toBuilder() =>
      new GForumOverviewData_newBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_new &&
        G__typename == other.G__typename &&
        threads == other.threads;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, threads.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GForumOverviewData_new')
          ..add('G__typename', G__typename)
          ..add('threads', threads))
        .toString();
  }
}

class GForumOverviewData_newBuilder
    implements Builder<GForumOverviewData_new, GForumOverviewData_newBuilder> {
  _$GForumOverviewData_new? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GForumOverviewData_new_threads?>? _threads;
  ListBuilder<GForumOverviewData_new_threads?> get threads =>
      _$this._threads ??= new ListBuilder<GForumOverviewData_new_threads?>();
  set threads(ListBuilder<GForumOverviewData_new_threads?>? threads) =>
      _$this._threads = threads;

  GForumOverviewData_newBuilder() {
    GForumOverviewData_new._initializeBuilder(this);
  }

  GForumOverviewData_newBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _threads = $v.threads?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumOverviewData_new other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_new;
  }

  @override
  void update(void Function(GForumOverviewData_newBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_new build() => _build();

  _$GForumOverviewData_new _build() {
    _$GForumOverviewData_new _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_new._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GForumOverviewData_new', 'G__typename'),
              threads: _threads?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'threads';
        _threads?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GForumOverviewData_new', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_new_threads extends GForumOverviewData_new_threads {
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
  final BuiltList<GForumOverviewData_new_threads_mediaCategories?>?
      mediaCategories;
  @override
  final BuiltList<GForumOverviewData_new_threads_categories?>? categories;
  @override
  final GForumOverviewData_new_threads_user? user;
  @override
  final GForumOverviewData_new_threads_replyUser? replyUser;

  factory _$GForumOverviewData_new_threads(
          [void Function(GForumOverviewData_new_threadsBuilder)? updates]) =>
      (new GForumOverviewData_new_threadsBuilder()..update(updates))._build();

  _$GForumOverviewData_new_threads._(
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
        G__typename, r'GForumOverviewData_new_threads', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_new_threads', 'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GForumOverviewData_new_threads', 'createdAt');
  }

  @override
  GForumOverviewData_new_threads rebuild(
          void Function(GForumOverviewData_new_threadsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_new_threadsBuilder toBuilder() =>
      new GForumOverviewData_new_threadsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_new_threads &&
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
    return (newBuiltValueToStringHelper(r'GForumOverviewData_new_threads')
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

class GForumOverviewData_new_threadsBuilder
    implements
        Builder<GForumOverviewData_new_threads,
            GForumOverviewData_new_threadsBuilder> {
  _$GForumOverviewData_new_threads? _$v;

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

  ListBuilder<GForumOverviewData_new_threads_mediaCategories?>?
      _mediaCategories;
  ListBuilder<GForumOverviewData_new_threads_mediaCategories?>
      get mediaCategories => _$this._mediaCategories ??=
          new ListBuilder<GForumOverviewData_new_threads_mediaCategories?>();
  set mediaCategories(
          ListBuilder<GForumOverviewData_new_threads_mediaCategories?>?
              mediaCategories) =>
      _$this._mediaCategories = mediaCategories;

  ListBuilder<GForumOverviewData_new_threads_categories?>? _categories;
  ListBuilder<GForumOverviewData_new_threads_categories?> get categories =>
      _$this._categories ??=
          new ListBuilder<GForumOverviewData_new_threads_categories?>();
  set categories(
          ListBuilder<GForumOverviewData_new_threads_categories?>?
              categories) =>
      _$this._categories = categories;

  GForumOverviewData_new_threads_userBuilder? _user;
  GForumOverviewData_new_threads_userBuilder get user =>
      _$this._user ??= new GForumOverviewData_new_threads_userBuilder();
  set user(GForumOverviewData_new_threads_userBuilder? user) =>
      _$this._user = user;

  GForumOverviewData_new_threads_replyUserBuilder? _replyUser;
  GForumOverviewData_new_threads_replyUserBuilder get replyUser =>
      _$this._replyUser ??=
          new GForumOverviewData_new_threads_replyUserBuilder();
  set replyUser(GForumOverviewData_new_threads_replyUserBuilder? replyUser) =>
      _$this._replyUser = replyUser;

  GForumOverviewData_new_threadsBuilder() {
    GForumOverviewData_new_threads._initializeBuilder(this);
  }

  GForumOverviewData_new_threadsBuilder get _$this {
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
  void replace(GForumOverviewData_new_threads other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_new_threads;
  }

  @override
  void update(void Function(GForumOverviewData_new_threadsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_new_threads build() => _build();

  _$GForumOverviewData_new_threads _build() {
    _$GForumOverviewData_new_threads _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_new_threads._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GForumOverviewData_new_threads', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GForumOverviewData_new_threads', 'id'),
              title: title,
              replyCount: replyCount,
              viewCount: viewCount,
              replyCommentId: replyCommentId,
              repliedAt: repliedAt,
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GForumOverviewData_new_threads', 'createdAt'),
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
            r'GForumOverviewData_new_threads', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_new_threads_mediaCategories
    extends GForumOverviewData_new_threads_mediaCategories {
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
  final GForumOverviewData_new_threads_mediaCategories_title? title;
  @override
  final GForumOverviewData_new_threads_mediaCategories_coverImage? coverImage;

  factory _$GForumOverviewData_new_threads_mediaCategories(
          [void Function(GForumOverviewData_new_threads_mediaCategoriesBuilder)?
              updates]) =>
      (new GForumOverviewData_new_threads_mediaCategoriesBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_new_threads_mediaCategories._(
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
        r'GForumOverviewData_new_threads_mediaCategories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_new_threads_mediaCategories', 'id');
  }

  @override
  GForumOverviewData_new_threads_mediaCategories rebuild(
          void Function(GForumOverviewData_new_threads_mediaCategoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_new_threads_mediaCategoriesBuilder toBuilder() =>
      new GForumOverviewData_new_threads_mediaCategoriesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_new_threads_mediaCategories &&
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
            r'GForumOverviewData_new_threads_mediaCategories')
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

class GForumOverviewData_new_threads_mediaCategoriesBuilder
    implements
        Builder<GForumOverviewData_new_threads_mediaCategories,
            GForumOverviewData_new_threads_mediaCategoriesBuilder> {
  _$GForumOverviewData_new_threads_mediaCategories? _$v;

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

  GForumOverviewData_new_threads_mediaCategories_titleBuilder? _title;
  GForumOverviewData_new_threads_mediaCategories_titleBuilder get title =>
      _$this._title ??=
          new GForumOverviewData_new_threads_mediaCategories_titleBuilder();
  set title(
          GForumOverviewData_new_threads_mediaCategories_titleBuilder? title) =>
      _$this._title = title;

  GForumOverviewData_new_threads_mediaCategories_coverImageBuilder? _coverImage;
  GForumOverviewData_new_threads_mediaCategories_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GForumOverviewData_new_threads_mediaCategories_coverImageBuilder();
  set coverImage(
          GForumOverviewData_new_threads_mediaCategories_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GForumOverviewData_new_threads_mediaCategoriesBuilder() {
    GForumOverviewData_new_threads_mediaCategories._initializeBuilder(this);
  }

  GForumOverviewData_new_threads_mediaCategoriesBuilder get _$this {
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
  void replace(GForumOverviewData_new_threads_mediaCategories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_new_threads_mediaCategories;
  }

  @override
  void update(
      void Function(GForumOverviewData_new_threads_mediaCategoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_new_threads_mediaCategories build() => _build();

  _$GForumOverviewData_new_threads_mediaCategories _build() {
    _$GForumOverviewData_new_threads_mediaCategories _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_new_threads_mediaCategories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GForumOverviewData_new_threads_mediaCategories',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GForumOverviewData_new_threads_mediaCategories', 'id'),
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
            r'GForumOverviewData_new_threads_mediaCategories',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_new_threads_mediaCategories_title
    extends GForumOverviewData_new_threads_mediaCategories_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GForumOverviewData_new_threads_mediaCategories_title(
          [void Function(
                  GForumOverviewData_new_threads_mediaCategories_titleBuilder)?
              updates]) =>
      (new GForumOverviewData_new_threads_mediaCategories_titleBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_new_threads_mediaCategories_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForumOverviewData_new_threads_mediaCategories_title', 'G__typename');
  }

  @override
  GForumOverviewData_new_threads_mediaCategories_title rebuild(
          void Function(
                  GForumOverviewData_new_threads_mediaCategories_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_new_threads_mediaCategories_titleBuilder toBuilder() =>
      new GForumOverviewData_new_threads_mediaCategories_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_new_threads_mediaCategories_title &&
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
            r'GForumOverviewData_new_threads_mediaCategories_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GForumOverviewData_new_threads_mediaCategories_titleBuilder
    implements
        Builder<GForumOverviewData_new_threads_mediaCategories_title,
            GForumOverviewData_new_threads_mediaCategories_titleBuilder> {
  _$GForumOverviewData_new_threads_mediaCategories_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GForumOverviewData_new_threads_mediaCategories_titleBuilder() {
    GForumOverviewData_new_threads_mediaCategories_title._initializeBuilder(
        this);
  }

  GForumOverviewData_new_threads_mediaCategories_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumOverviewData_new_threads_mediaCategories_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_new_threads_mediaCategories_title;
  }

  @override
  void update(
      void Function(
              GForumOverviewData_new_threads_mediaCategories_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_new_threads_mediaCategories_title build() => _build();

  _$GForumOverviewData_new_threads_mediaCategories_title _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_new_threads_mediaCategories_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GForumOverviewData_new_threads_mediaCategories_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_new_threads_mediaCategories_coverImage
    extends GForumOverviewData_new_threads_mediaCategories_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GForumOverviewData_new_threads_mediaCategories_coverImage(
          [void Function(
                  GForumOverviewData_new_threads_mediaCategories_coverImageBuilder)?
              updates]) =>
      (new GForumOverviewData_new_threads_mediaCategories_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_new_threads_mediaCategories_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GForumOverviewData_new_threads_mediaCategories_coverImage',
        'G__typename');
  }

  @override
  GForumOverviewData_new_threads_mediaCategories_coverImage rebuild(
          void Function(
                  GForumOverviewData_new_threads_mediaCategories_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_new_threads_mediaCategories_coverImageBuilder
      toBuilder() =>
          new GForumOverviewData_new_threads_mediaCategories_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_new_threads_mediaCategories_coverImage &&
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
            r'GForumOverviewData_new_threads_mediaCategories_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GForumOverviewData_new_threads_mediaCategories_coverImageBuilder
    implements
        Builder<GForumOverviewData_new_threads_mediaCategories_coverImage,
            GForumOverviewData_new_threads_mediaCategories_coverImageBuilder> {
  _$GForumOverviewData_new_threads_mediaCategories_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GForumOverviewData_new_threads_mediaCategories_coverImageBuilder() {
    GForumOverviewData_new_threads_mediaCategories_coverImage
        ._initializeBuilder(this);
  }

  GForumOverviewData_new_threads_mediaCategories_coverImageBuilder get _$this {
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
      GForumOverviewData_new_threads_mediaCategories_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_new_threads_mediaCategories_coverImage;
  }

  @override
  void update(
      void Function(
              GForumOverviewData_new_threads_mediaCategories_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_new_threads_mediaCategories_coverImage build() => _build();

  _$GForumOverviewData_new_threads_mediaCategories_coverImage _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_new_threads_mediaCategories_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GForumOverviewData_new_threads_mediaCategories_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_new_threads_categories
    extends GForumOverviewData_new_threads_categories {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;

  factory _$GForumOverviewData_new_threads_categories(
          [void Function(GForumOverviewData_new_threads_categoriesBuilder)?
              updates]) =>
      (new GForumOverviewData_new_threads_categoriesBuilder()..update(updates))
          ._build();

  _$GForumOverviewData_new_threads_categories._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForumOverviewData_new_threads_categories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_new_threads_categories', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GForumOverviewData_new_threads_categories', 'name');
  }

  @override
  GForumOverviewData_new_threads_categories rebuild(
          void Function(GForumOverviewData_new_threads_categoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_new_threads_categoriesBuilder toBuilder() =>
      new GForumOverviewData_new_threads_categoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_new_threads_categories &&
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
            r'GForumOverviewData_new_threads_categories')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GForumOverviewData_new_threads_categoriesBuilder
    implements
        Builder<GForumOverviewData_new_threads_categories,
            GForumOverviewData_new_threads_categoriesBuilder> {
  _$GForumOverviewData_new_threads_categories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GForumOverviewData_new_threads_categoriesBuilder() {
    GForumOverviewData_new_threads_categories._initializeBuilder(this);
  }

  GForumOverviewData_new_threads_categoriesBuilder get _$this {
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
  void replace(GForumOverviewData_new_threads_categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_new_threads_categories;
  }

  @override
  void update(
      void Function(GForumOverviewData_new_threads_categoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_new_threads_categories build() => _build();

  _$GForumOverviewData_new_threads_categories _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_new_threads_categories._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GForumOverviewData_new_threads_categories', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GForumOverviewData_new_threads_categories', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GForumOverviewData_new_threads_categories', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_new_threads_user
    extends GForumOverviewData_new_threads_user {
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
  final GForumOverviewData_new_threads_user_avatar? avatar;

  factory _$GForumOverviewData_new_threads_user(
          [void Function(GForumOverviewData_new_threads_userBuilder)?
              updates]) =>
      (new GForumOverviewData_new_threads_userBuilder()..update(updates))
          ._build();

  _$GForumOverviewData_new_threads_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GForumOverviewData_new_threads_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_new_threads_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GForumOverviewData_new_threads_user', 'name');
  }

  @override
  GForumOverviewData_new_threads_user rebuild(
          void Function(GForumOverviewData_new_threads_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_new_threads_userBuilder toBuilder() =>
      new GForumOverviewData_new_threads_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_new_threads_user &&
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
    return (newBuiltValueToStringHelper(r'GForumOverviewData_new_threads_user')
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

class GForumOverviewData_new_threads_userBuilder
    implements
        Builder<GForumOverviewData_new_threads_user,
            GForumOverviewData_new_threads_userBuilder> {
  _$GForumOverviewData_new_threads_user? _$v;

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

  GForumOverviewData_new_threads_user_avatarBuilder? _avatar;
  GForumOverviewData_new_threads_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GForumOverviewData_new_threads_user_avatarBuilder();
  set avatar(GForumOverviewData_new_threads_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GForumOverviewData_new_threads_userBuilder() {
    GForumOverviewData_new_threads_user._initializeBuilder(this);
  }

  GForumOverviewData_new_threads_userBuilder get _$this {
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
  void replace(GForumOverviewData_new_threads_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_new_threads_user;
  }

  @override
  void update(
      void Function(GForumOverviewData_new_threads_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_new_threads_user build() => _build();

  _$GForumOverviewData_new_threads_user _build() {
    _$GForumOverviewData_new_threads_user _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_new_threads_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GForumOverviewData_new_threads_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GForumOverviewData_new_threads_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GForumOverviewData_new_threads_user', 'name'),
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
            r'GForumOverviewData_new_threads_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_new_threads_user_avatar
    extends GForumOverviewData_new_threads_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GForumOverviewData_new_threads_user_avatar(
          [void Function(GForumOverviewData_new_threads_user_avatarBuilder)?
              updates]) =>
      (new GForumOverviewData_new_threads_user_avatarBuilder()..update(updates))
          ._build();

  _$GForumOverviewData_new_threads_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForumOverviewData_new_threads_user_avatar', 'G__typename');
  }

  @override
  GForumOverviewData_new_threads_user_avatar rebuild(
          void Function(GForumOverviewData_new_threads_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_new_threads_user_avatarBuilder toBuilder() =>
      new GForumOverviewData_new_threads_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_new_threads_user_avatar &&
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
            r'GForumOverviewData_new_threads_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GForumOverviewData_new_threads_user_avatarBuilder
    implements
        Builder<GForumOverviewData_new_threads_user_avatar,
            GForumOverviewData_new_threads_user_avatarBuilder> {
  _$GForumOverviewData_new_threads_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GForumOverviewData_new_threads_user_avatarBuilder() {
    GForumOverviewData_new_threads_user_avatar._initializeBuilder(this);
  }

  GForumOverviewData_new_threads_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumOverviewData_new_threads_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_new_threads_user_avatar;
  }

  @override
  void update(
      void Function(GForumOverviewData_new_threads_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_new_threads_user_avatar build() => _build();

  _$GForumOverviewData_new_threads_user_avatar _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_new_threads_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GForumOverviewData_new_threads_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_new_threads_replyUser
    extends GForumOverviewData_new_threads_replyUser {
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
  final GForumOverviewData_new_threads_replyUser_avatar? avatar;

  factory _$GForumOverviewData_new_threads_replyUser(
          [void Function(GForumOverviewData_new_threads_replyUserBuilder)?
              updates]) =>
      (new GForumOverviewData_new_threads_replyUserBuilder()..update(updates))
          ._build();

  _$GForumOverviewData_new_threads_replyUser._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForumOverviewData_new_threads_replyUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_new_threads_replyUser', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GForumOverviewData_new_threads_replyUser', 'name');
  }

  @override
  GForumOverviewData_new_threads_replyUser rebuild(
          void Function(GForumOverviewData_new_threads_replyUserBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_new_threads_replyUserBuilder toBuilder() =>
      new GForumOverviewData_new_threads_replyUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_new_threads_replyUser &&
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
            r'GForumOverviewData_new_threads_replyUser')
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

class GForumOverviewData_new_threads_replyUserBuilder
    implements
        Builder<GForumOverviewData_new_threads_replyUser,
            GForumOverviewData_new_threads_replyUserBuilder> {
  _$GForumOverviewData_new_threads_replyUser? _$v;

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

  GForumOverviewData_new_threads_replyUser_avatarBuilder? _avatar;
  GForumOverviewData_new_threads_replyUser_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GForumOverviewData_new_threads_replyUser_avatarBuilder();
  set avatar(GForumOverviewData_new_threads_replyUser_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GForumOverviewData_new_threads_replyUserBuilder() {
    GForumOverviewData_new_threads_replyUser._initializeBuilder(this);
  }

  GForumOverviewData_new_threads_replyUserBuilder get _$this {
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
  void replace(GForumOverviewData_new_threads_replyUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_new_threads_replyUser;
  }

  @override
  void update(
      void Function(GForumOverviewData_new_threads_replyUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_new_threads_replyUser build() => _build();

  _$GForumOverviewData_new_threads_replyUser _build() {
    _$GForumOverviewData_new_threads_replyUser _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_new_threads_replyUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GForumOverviewData_new_threads_replyUser', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GForumOverviewData_new_threads_replyUser', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GForumOverviewData_new_threads_replyUser', 'name'),
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
            r'GForumOverviewData_new_threads_replyUser',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_new_threads_replyUser_avatar
    extends GForumOverviewData_new_threads_replyUser_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GForumOverviewData_new_threads_replyUser_avatar(
          [void Function(
                  GForumOverviewData_new_threads_replyUser_avatarBuilder)?
              updates]) =>
      (new GForumOverviewData_new_threads_replyUser_avatarBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_new_threads_replyUser_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForumOverviewData_new_threads_replyUser_avatar', 'G__typename');
  }

  @override
  GForumOverviewData_new_threads_replyUser_avatar rebuild(
          void Function(GForumOverviewData_new_threads_replyUser_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_new_threads_replyUser_avatarBuilder toBuilder() =>
      new GForumOverviewData_new_threads_replyUser_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_new_threads_replyUser_avatar &&
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
            r'GForumOverviewData_new_threads_replyUser_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GForumOverviewData_new_threads_replyUser_avatarBuilder
    implements
        Builder<GForumOverviewData_new_threads_replyUser_avatar,
            GForumOverviewData_new_threads_replyUser_avatarBuilder> {
  _$GForumOverviewData_new_threads_replyUser_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GForumOverviewData_new_threads_replyUser_avatarBuilder() {
    GForumOverviewData_new_threads_replyUser_avatar._initializeBuilder(this);
  }

  GForumOverviewData_new_threads_replyUser_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumOverviewData_new_threads_replyUser_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_new_threads_replyUser_avatar;
  }

  @override
  void update(
      void Function(GForumOverviewData_new_threads_replyUser_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_new_threads_replyUser_avatar build() => _build();

  _$GForumOverviewData_new_threads_replyUser_avatar _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_new_threads_replyUser_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GForumOverviewData_new_threads_replyUser_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_release extends GForumOverviewData_release {
  @override
  final String G__typename;
  @override
  final BuiltList<GForumOverviewData_release_threads?>? threads;

  factory _$GForumOverviewData_release(
          [void Function(GForumOverviewData_releaseBuilder)? updates]) =>
      (new GForumOverviewData_releaseBuilder()..update(updates))._build();

  _$GForumOverviewData_release._({required this.G__typename, this.threads})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GForumOverviewData_release', 'G__typename');
  }

  @override
  GForumOverviewData_release rebuild(
          void Function(GForumOverviewData_releaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_releaseBuilder toBuilder() =>
      new GForumOverviewData_releaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_release &&
        G__typename == other.G__typename &&
        threads == other.threads;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, threads.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GForumOverviewData_release')
          ..add('G__typename', G__typename)
          ..add('threads', threads))
        .toString();
  }
}

class GForumOverviewData_releaseBuilder
    implements
        Builder<GForumOverviewData_release, GForumOverviewData_releaseBuilder> {
  _$GForumOverviewData_release? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GForumOverviewData_release_threads?>? _threads;
  ListBuilder<GForumOverviewData_release_threads?> get threads =>
      _$this._threads ??=
          new ListBuilder<GForumOverviewData_release_threads?>();
  set threads(ListBuilder<GForumOverviewData_release_threads?>? threads) =>
      _$this._threads = threads;

  GForumOverviewData_releaseBuilder() {
    GForumOverviewData_release._initializeBuilder(this);
  }

  GForumOverviewData_releaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _threads = $v.threads?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumOverviewData_release other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_release;
  }

  @override
  void update(void Function(GForumOverviewData_releaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_release build() => _build();

  _$GForumOverviewData_release _build() {
    _$GForumOverviewData_release _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_release._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GForumOverviewData_release', 'G__typename'),
              threads: _threads?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'threads';
        _threads?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GForumOverviewData_release', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_release_threads
    extends GForumOverviewData_release_threads {
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
  final BuiltList<GForumOverviewData_release_threads_mediaCategories?>?
      mediaCategories;
  @override
  final BuiltList<GForumOverviewData_release_threads_categories?>? categories;
  @override
  final GForumOverviewData_release_threads_user? user;
  @override
  final GForumOverviewData_release_threads_replyUser? replyUser;

  factory _$GForumOverviewData_release_threads(
          [void Function(GForumOverviewData_release_threadsBuilder)?
              updates]) =>
      (new GForumOverviewData_release_threadsBuilder()..update(updates))
          ._build();

  _$GForumOverviewData_release_threads._(
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
        G__typename, r'GForumOverviewData_release_threads', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_release_threads', 'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GForumOverviewData_release_threads', 'createdAt');
  }

  @override
  GForumOverviewData_release_threads rebuild(
          void Function(GForumOverviewData_release_threadsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_release_threadsBuilder toBuilder() =>
      new GForumOverviewData_release_threadsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_release_threads &&
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
    return (newBuiltValueToStringHelper(r'GForumOverviewData_release_threads')
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

class GForumOverviewData_release_threadsBuilder
    implements
        Builder<GForumOverviewData_release_threads,
            GForumOverviewData_release_threadsBuilder> {
  _$GForumOverviewData_release_threads? _$v;

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

  ListBuilder<GForumOverviewData_release_threads_mediaCategories?>?
      _mediaCategories;
  ListBuilder<GForumOverviewData_release_threads_mediaCategories?>
      get mediaCategories => _$this._mediaCategories ??= new ListBuilder<
          GForumOverviewData_release_threads_mediaCategories?>();
  set mediaCategories(
          ListBuilder<GForumOverviewData_release_threads_mediaCategories?>?
              mediaCategories) =>
      _$this._mediaCategories = mediaCategories;

  ListBuilder<GForumOverviewData_release_threads_categories?>? _categories;
  ListBuilder<GForumOverviewData_release_threads_categories?> get categories =>
      _$this._categories ??=
          new ListBuilder<GForumOverviewData_release_threads_categories?>();
  set categories(
          ListBuilder<GForumOverviewData_release_threads_categories?>?
              categories) =>
      _$this._categories = categories;

  GForumOverviewData_release_threads_userBuilder? _user;
  GForumOverviewData_release_threads_userBuilder get user =>
      _$this._user ??= new GForumOverviewData_release_threads_userBuilder();
  set user(GForumOverviewData_release_threads_userBuilder? user) =>
      _$this._user = user;

  GForumOverviewData_release_threads_replyUserBuilder? _replyUser;
  GForumOverviewData_release_threads_replyUserBuilder get replyUser =>
      _$this._replyUser ??=
          new GForumOverviewData_release_threads_replyUserBuilder();
  set replyUser(
          GForumOverviewData_release_threads_replyUserBuilder? replyUser) =>
      _$this._replyUser = replyUser;

  GForumOverviewData_release_threadsBuilder() {
    GForumOverviewData_release_threads._initializeBuilder(this);
  }

  GForumOverviewData_release_threadsBuilder get _$this {
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
  void replace(GForumOverviewData_release_threads other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_release_threads;
  }

  @override
  void update(
      void Function(GForumOverviewData_release_threadsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_release_threads build() => _build();

  _$GForumOverviewData_release_threads _build() {
    _$GForumOverviewData_release_threads _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_release_threads._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GForumOverviewData_release_threads', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GForumOverviewData_release_threads', 'id'),
              title: title,
              replyCount: replyCount,
              viewCount: viewCount,
              replyCommentId: replyCommentId,
              repliedAt: repliedAt,
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
                  r'GForumOverviewData_release_threads', 'createdAt'),
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
            r'GForumOverviewData_release_threads', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_release_threads_mediaCategories
    extends GForumOverviewData_release_threads_mediaCategories {
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
  final GForumOverviewData_release_threads_mediaCategories_title? title;
  @override
  final GForumOverviewData_release_threads_mediaCategories_coverImage?
      coverImage;

  factory _$GForumOverviewData_release_threads_mediaCategories(
          [void Function(
                  GForumOverviewData_release_threads_mediaCategoriesBuilder)?
              updates]) =>
      (new GForumOverviewData_release_threads_mediaCategoriesBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_release_threads_mediaCategories._(
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
        r'GForumOverviewData_release_threads_mediaCategories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_release_threads_mediaCategories', 'id');
  }

  @override
  GForumOverviewData_release_threads_mediaCategories rebuild(
          void Function(
                  GForumOverviewData_release_threads_mediaCategoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_release_threads_mediaCategoriesBuilder toBuilder() =>
      new GForumOverviewData_release_threads_mediaCategoriesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_release_threads_mediaCategories &&
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
            r'GForumOverviewData_release_threads_mediaCategories')
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

class GForumOverviewData_release_threads_mediaCategoriesBuilder
    implements
        Builder<GForumOverviewData_release_threads_mediaCategories,
            GForumOverviewData_release_threads_mediaCategoriesBuilder> {
  _$GForumOverviewData_release_threads_mediaCategories? _$v;

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

  GForumOverviewData_release_threads_mediaCategories_titleBuilder? _title;
  GForumOverviewData_release_threads_mediaCategories_titleBuilder get title =>
      _$this._title ??=
          new GForumOverviewData_release_threads_mediaCategories_titleBuilder();
  set title(
          GForumOverviewData_release_threads_mediaCategories_titleBuilder?
              title) =>
      _$this._title = title;

  GForumOverviewData_release_threads_mediaCategories_coverImageBuilder?
      _coverImage;
  GForumOverviewData_release_threads_mediaCategories_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GForumOverviewData_release_threads_mediaCategories_coverImageBuilder();
  set coverImage(
          GForumOverviewData_release_threads_mediaCategories_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GForumOverviewData_release_threads_mediaCategoriesBuilder() {
    GForumOverviewData_release_threads_mediaCategories._initializeBuilder(this);
  }

  GForumOverviewData_release_threads_mediaCategoriesBuilder get _$this {
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
  void replace(GForumOverviewData_release_threads_mediaCategories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_release_threads_mediaCategories;
  }

  @override
  void update(
      void Function(GForumOverviewData_release_threads_mediaCategoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_release_threads_mediaCategories build() => _build();

  _$GForumOverviewData_release_threads_mediaCategories _build() {
    _$GForumOverviewData_release_threads_mediaCategories _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_release_threads_mediaCategories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GForumOverviewData_release_threads_mediaCategories',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GForumOverviewData_release_threads_mediaCategories', 'id'),
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
            r'GForumOverviewData_release_threads_mediaCategories',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_release_threads_mediaCategories_title
    extends GForumOverviewData_release_threads_mediaCategories_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GForumOverviewData_release_threads_mediaCategories_title(
          [void Function(
                  GForumOverviewData_release_threads_mediaCategories_titleBuilder)?
              updates]) =>
      (new GForumOverviewData_release_threads_mediaCategories_titleBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_release_threads_mediaCategories_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GForumOverviewData_release_threads_mediaCategories_title',
        'G__typename');
  }

  @override
  GForumOverviewData_release_threads_mediaCategories_title rebuild(
          void Function(
                  GForumOverviewData_release_threads_mediaCategories_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_release_threads_mediaCategories_titleBuilder toBuilder() =>
      new GForumOverviewData_release_threads_mediaCategories_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_release_threads_mediaCategories_title &&
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
            r'GForumOverviewData_release_threads_mediaCategories_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GForumOverviewData_release_threads_mediaCategories_titleBuilder
    implements
        Builder<GForumOverviewData_release_threads_mediaCategories_title,
            GForumOverviewData_release_threads_mediaCategories_titleBuilder> {
  _$GForumOverviewData_release_threads_mediaCategories_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GForumOverviewData_release_threads_mediaCategories_titleBuilder() {
    GForumOverviewData_release_threads_mediaCategories_title._initializeBuilder(
        this);
  }

  GForumOverviewData_release_threads_mediaCategories_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumOverviewData_release_threads_mediaCategories_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_release_threads_mediaCategories_title;
  }

  @override
  void update(
      void Function(
              GForumOverviewData_release_threads_mediaCategories_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_release_threads_mediaCategories_title build() => _build();

  _$GForumOverviewData_release_threads_mediaCategories_title _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_release_threads_mediaCategories_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GForumOverviewData_release_threads_mediaCategories_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_release_threads_mediaCategories_coverImage
    extends GForumOverviewData_release_threads_mediaCategories_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GForumOverviewData_release_threads_mediaCategories_coverImage(
          [void Function(
                  GForumOverviewData_release_threads_mediaCategories_coverImageBuilder)?
              updates]) =>
      (new GForumOverviewData_release_threads_mediaCategories_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_release_threads_mediaCategories_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GForumOverviewData_release_threads_mediaCategories_coverImage',
        'G__typename');
  }

  @override
  GForumOverviewData_release_threads_mediaCategories_coverImage rebuild(
          void Function(
                  GForumOverviewData_release_threads_mediaCategories_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_release_threads_mediaCategories_coverImageBuilder
      toBuilder() =>
          new GForumOverviewData_release_threads_mediaCategories_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GForumOverviewData_release_threads_mediaCategories_coverImage &&
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
            r'GForumOverviewData_release_threads_mediaCategories_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GForumOverviewData_release_threads_mediaCategories_coverImageBuilder
    implements
        Builder<GForumOverviewData_release_threads_mediaCategories_coverImage,
            GForumOverviewData_release_threads_mediaCategories_coverImageBuilder> {
  _$GForumOverviewData_release_threads_mediaCategories_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GForumOverviewData_release_threads_mediaCategories_coverImageBuilder() {
    GForumOverviewData_release_threads_mediaCategories_coverImage
        ._initializeBuilder(this);
  }

  GForumOverviewData_release_threads_mediaCategories_coverImageBuilder
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
      GForumOverviewData_release_threads_mediaCategories_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GForumOverviewData_release_threads_mediaCategories_coverImage;
  }

  @override
  void update(
      void Function(
              GForumOverviewData_release_threads_mediaCategories_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_release_threads_mediaCategories_coverImage build() =>
      _build();

  _$GForumOverviewData_release_threads_mediaCategories_coverImage _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_release_threads_mediaCategories_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GForumOverviewData_release_threads_mediaCategories_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_release_threads_categories
    extends GForumOverviewData_release_threads_categories {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;

  factory _$GForumOverviewData_release_threads_categories(
          [void Function(GForumOverviewData_release_threads_categoriesBuilder)?
              updates]) =>
      (new GForumOverviewData_release_threads_categoriesBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_release_threads_categories._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForumOverviewData_release_threads_categories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_release_threads_categories', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GForumOverviewData_release_threads_categories', 'name');
  }

  @override
  GForumOverviewData_release_threads_categories rebuild(
          void Function(GForumOverviewData_release_threads_categoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_release_threads_categoriesBuilder toBuilder() =>
      new GForumOverviewData_release_threads_categoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_release_threads_categories &&
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
            r'GForumOverviewData_release_threads_categories')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GForumOverviewData_release_threads_categoriesBuilder
    implements
        Builder<GForumOverviewData_release_threads_categories,
            GForumOverviewData_release_threads_categoriesBuilder> {
  _$GForumOverviewData_release_threads_categories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GForumOverviewData_release_threads_categoriesBuilder() {
    GForumOverviewData_release_threads_categories._initializeBuilder(this);
  }

  GForumOverviewData_release_threads_categoriesBuilder get _$this {
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
  void replace(GForumOverviewData_release_threads_categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_release_threads_categories;
  }

  @override
  void update(
      void Function(GForumOverviewData_release_threads_categoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_release_threads_categories build() => _build();

  _$GForumOverviewData_release_threads_categories _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_release_threads_categories._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GForumOverviewData_release_threads_categories',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GForumOverviewData_release_threads_categories', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                r'GForumOverviewData_release_threads_categories', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_release_threads_user
    extends GForumOverviewData_release_threads_user {
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
  final GForumOverviewData_release_threads_user_avatar? avatar;

  factory _$GForumOverviewData_release_threads_user(
          [void Function(GForumOverviewData_release_threads_userBuilder)?
              updates]) =>
      (new GForumOverviewData_release_threads_userBuilder()..update(updates))
          ._build();

  _$GForumOverviewData_release_threads_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GForumOverviewData_release_threads_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_release_threads_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GForumOverviewData_release_threads_user', 'name');
  }

  @override
  GForumOverviewData_release_threads_user rebuild(
          void Function(GForumOverviewData_release_threads_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_release_threads_userBuilder toBuilder() =>
      new GForumOverviewData_release_threads_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_release_threads_user &&
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
            r'GForumOverviewData_release_threads_user')
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

class GForumOverviewData_release_threads_userBuilder
    implements
        Builder<GForumOverviewData_release_threads_user,
            GForumOverviewData_release_threads_userBuilder> {
  _$GForumOverviewData_release_threads_user? _$v;

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

  GForumOverviewData_release_threads_user_avatarBuilder? _avatar;
  GForumOverviewData_release_threads_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GForumOverviewData_release_threads_user_avatarBuilder();
  set avatar(GForumOverviewData_release_threads_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GForumOverviewData_release_threads_userBuilder() {
    GForumOverviewData_release_threads_user._initializeBuilder(this);
  }

  GForumOverviewData_release_threads_userBuilder get _$this {
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
  void replace(GForumOverviewData_release_threads_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_release_threads_user;
  }

  @override
  void update(
      void Function(GForumOverviewData_release_threads_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_release_threads_user build() => _build();

  _$GForumOverviewData_release_threads_user _build() {
    _$GForumOverviewData_release_threads_user _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_release_threads_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GForumOverviewData_release_threads_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GForumOverviewData_release_threads_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GForumOverviewData_release_threads_user', 'name'),
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
            r'GForumOverviewData_release_threads_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_release_threads_user_avatar
    extends GForumOverviewData_release_threads_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GForumOverviewData_release_threads_user_avatar(
          [void Function(GForumOverviewData_release_threads_user_avatarBuilder)?
              updates]) =>
      (new GForumOverviewData_release_threads_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_release_threads_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForumOverviewData_release_threads_user_avatar', 'G__typename');
  }

  @override
  GForumOverviewData_release_threads_user_avatar rebuild(
          void Function(GForumOverviewData_release_threads_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_release_threads_user_avatarBuilder toBuilder() =>
      new GForumOverviewData_release_threads_user_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_release_threads_user_avatar &&
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
            r'GForumOverviewData_release_threads_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GForumOverviewData_release_threads_user_avatarBuilder
    implements
        Builder<GForumOverviewData_release_threads_user_avatar,
            GForumOverviewData_release_threads_user_avatarBuilder> {
  _$GForumOverviewData_release_threads_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GForumOverviewData_release_threads_user_avatarBuilder() {
    GForumOverviewData_release_threads_user_avatar._initializeBuilder(this);
  }

  GForumOverviewData_release_threads_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumOverviewData_release_threads_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_release_threads_user_avatar;
  }

  @override
  void update(
      void Function(GForumOverviewData_release_threads_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_release_threads_user_avatar build() => _build();

  _$GForumOverviewData_release_threads_user_avatar _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_release_threads_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GForumOverviewData_release_threads_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_release_threads_replyUser
    extends GForumOverviewData_release_threads_replyUser {
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
  final GForumOverviewData_release_threads_replyUser_avatar? avatar;

  factory _$GForumOverviewData_release_threads_replyUser(
          [void Function(GForumOverviewData_release_threads_replyUserBuilder)?
              updates]) =>
      (new GForumOverviewData_release_threads_replyUserBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_release_threads_replyUser._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForumOverviewData_release_threads_replyUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GForumOverviewData_release_threads_replyUser', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GForumOverviewData_release_threads_replyUser', 'name');
  }

  @override
  GForumOverviewData_release_threads_replyUser rebuild(
          void Function(GForumOverviewData_release_threads_replyUserBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_release_threads_replyUserBuilder toBuilder() =>
      new GForumOverviewData_release_threads_replyUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_release_threads_replyUser &&
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
            r'GForumOverviewData_release_threads_replyUser')
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

class GForumOverviewData_release_threads_replyUserBuilder
    implements
        Builder<GForumOverviewData_release_threads_replyUser,
            GForumOverviewData_release_threads_replyUserBuilder> {
  _$GForumOverviewData_release_threads_replyUser? _$v;

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

  GForumOverviewData_release_threads_replyUser_avatarBuilder? _avatar;
  GForumOverviewData_release_threads_replyUser_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GForumOverviewData_release_threads_replyUser_avatarBuilder();
  set avatar(
          GForumOverviewData_release_threads_replyUser_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GForumOverviewData_release_threads_replyUserBuilder() {
    GForumOverviewData_release_threads_replyUser._initializeBuilder(this);
  }

  GForumOverviewData_release_threads_replyUserBuilder get _$this {
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
  void replace(GForumOverviewData_release_threads_replyUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_release_threads_replyUser;
  }

  @override
  void update(
      void Function(GForumOverviewData_release_threads_replyUserBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_release_threads_replyUser build() => _build();

  _$GForumOverviewData_release_threads_replyUser _build() {
    _$GForumOverviewData_release_threads_replyUser _$result;
    try {
      _$result = _$v ??
          new _$GForumOverviewData_release_threads_replyUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GForumOverviewData_release_threads_replyUser',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GForumOverviewData_release_threads_replyUser', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(name,
                  r'GForumOverviewData_release_threads_replyUser', 'name'),
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
            r'GForumOverviewData_release_threads_replyUser',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GForumOverviewData_release_threads_replyUser_avatar
    extends GForumOverviewData_release_threads_replyUser_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GForumOverviewData_release_threads_replyUser_avatar(
          [void Function(
                  GForumOverviewData_release_threads_replyUser_avatarBuilder)?
              updates]) =>
      (new GForumOverviewData_release_threads_replyUser_avatarBuilder()
            ..update(updates))
          ._build();

  _$GForumOverviewData_release_threads_replyUser_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GForumOverviewData_release_threads_replyUser_avatar', 'G__typename');
  }

  @override
  GForumOverviewData_release_threads_replyUser_avatar rebuild(
          void Function(
                  GForumOverviewData_release_threads_replyUser_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GForumOverviewData_release_threads_replyUser_avatarBuilder toBuilder() =>
      new GForumOverviewData_release_threads_replyUser_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GForumOverviewData_release_threads_replyUser_avatar &&
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
            r'GForumOverviewData_release_threads_replyUser_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GForumOverviewData_release_threads_replyUser_avatarBuilder
    implements
        Builder<GForumOverviewData_release_threads_replyUser_avatar,
            GForumOverviewData_release_threads_replyUser_avatarBuilder> {
  _$GForumOverviewData_release_threads_replyUser_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GForumOverviewData_release_threads_replyUser_avatarBuilder() {
    GForumOverviewData_release_threads_replyUser_avatar._initializeBuilder(
        this);
  }

  GForumOverviewData_release_threads_replyUser_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GForumOverviewData_release_threads_replyUser_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GForumOverviewData_release_threads_replyUser_avatar;
  }

  @override
  void update(
      void Function(GForumOverviewData_release_threads_replyUser_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GForumOverviewData_release_threads_replyUser_avatar build() => _build();

  _$GForumOverviewData_release_threads_replyUser_avatar _build() {
    final _$result = _$v ??
        new _$GForumOverviewData_release_threads_replyUser_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GForumOverviewData_release_threads_replyUser_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
