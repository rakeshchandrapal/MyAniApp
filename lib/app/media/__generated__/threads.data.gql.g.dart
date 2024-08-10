// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'threads.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaThreadsData> _$gMediaThreadsDataSerializer =
    new _$GMediaThreadsDataSerializer();
Serializer<GMediaThreadsData_Page> _$gMediaThreadsDataPageSerializer =
    new _$GMediaThreadsData_PageSerializer();
Serializer<GMediaThreadsData_Page_pageInfo>
    _$gMediaThreadsDataPagePageInfoSerializer =
    new _$GMediaThreadsData_Page_pageInfoSerializer();
Serializer<GMediaThreadsData_Page_threads>
    _$gMediaThreadsDataPageThreadsSerializer =
    new _$GMediaThreadsData_Page_threadsSerializer();
Serializer<GMediaThreadsData_Page_threads_mediaCategories>
    _$gMediaThreadsDataPageThreadsMediaCategoriesSerializer =
    new _$GMediaThreadsData_Page_threads_mediaCategoriesSerializer();
Serializer<GMediaThreadsData_Page_threads_mediaCategories_title>
    _$gMediaThreadsDataPageThreadsMediaCategoriesTitleSerializer =
    new _$GMediaThreadsData_Page_threads_mediaCategories_titleSerializer();
Serializer<GMediaThreadsData_Page_threads_mediaCategories_coverImage>
    _$gMediaThreadsDataPageThreadsMediaCategoriesCoverImageSerializer =
    new _$GMediaThreadsData_Page_threads_mediaCategories_coverImageSerializer();
Serializer<GMediaThreadsData_Page_threads_categories>
    _$gMediaThreadsDataPageThreadsCategoriesSerializer =
    new _$GMediaThreadsData_Page_threads_categoriesSerializer();
Serializer<GMediaThreadsData_Page_threads_user>
    _$gMediaThreadsDataPageThreadsUserSerializer =
    new _$GMediaThreadsData_Page_threads_userSerializer();
Serializer<GMediaThreadsData_Page_threads_user_avatar>
    _$gMediaThreadsDataPageThreadsUserAvatarSerializer =
    new _$GMediaThreadsData_Page_threads_user_avatarSerializer();
Serializer<GMediaThreadsData_Page_threads_replyUser>
    _$gMediaThreadsDataPageThreadsReplyUserSerializer =
    new _$GMediaThreadsData_Page_threads_replyUserSerializer();
Serializer<GMediaThreadsData_Page_threads_replyUser_avatar>
    _$gMediaThreadsDataPageThreadsReplyUserAvatarSerializer =
    new _$GMediaThreadsData_Page_threads_replyUser_avatarSerializer();

class _$GMediaThreadsDataSerializer
    implements StructuredSerializer<GMediaThreadsData> {
  @override
  final Iterable<Type> types = const [GMediaThreadsData, _$GMediaThreadsData];
  @override
  final String wireName = 'GMediaThreadsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaThreadsData object,
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
            specifiedType: const FullType(GMediaThreadsData_Page)));
    }
    return result;
  }

  @override
  GMediaThreadsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaThreadsDataBuilder();

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
                  specifiedType: const FullType(GMediaThreadsData_Page))!
              as GMediaThreadsData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaThreadsData_PageSerializer
    implements StructuredSerializer<GMediaThreadsData_Page> {
  @override
  final Iterable<Type> types = const [
    GMediaThreadsData_Page,
    _$GMediaThreadsData_Page
  ];
  @override
  final String wireName = 'GMediaThreadsData_Page';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaThreadsData_Page object,
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
            specifiedType: const FullType(GMediaThreadsData_Page_pageInfo)));
    }
    value = object.threads;
    if (value != null) {
      result
        ..add('threads')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GMediaThreadsData_Page_threads)
            ])));
    }
    return result;
  }

  @override
  GMediaThreadsData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaThreadsData_PageBuilder();

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
                      const FullType(GMediaThreadsData_Page_pageInfo))!
              as GMediaThreadsData_Page_pageInfo);
          break;
        case 'threads':
          result.threads.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GMediaThreadsData_Page_threads)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaThreadsData_Page_pageInfoSerializer
    implements StructuredSerializer<GMediaThreadsData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GMediaThreadsData_Page_pageInfo,
    _$GMediaThreadsData_Page_pageInfo
  ];
  @override
  final String wireName = 'GMediaThreadsData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaThreadsData_Page_pageInfo object,
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
  GMediaThreadsData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaThreadsData_Page_pageInfoBuilder();

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

class _$GMediaThreadsData_Page_threadsSerializer
    implements StructuredSerializer<GMediaThreadsData_Page_threads> {
  @override
  final Iterable<Type> types = const [
    GMediaThreadsData_Page_threads,
    _$GMediaThreadsData_Page_threads
  ];
  @override
  final String wireName = 'GMediaThreadsData_Page_threads';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaThreadsData_Page_threads object,
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
                  GMediaThreadsData_Page_threads_mediaCategories)
            ])));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GMediaThreadsData_Page_threads_categories)
            ])));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaThreadsData_Page_threads_user)));
    }
    value = object.replyUser;
    if (value != null) {
      result
        ..add('replyUser')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaThreadsData_Page_threads_replyUser)));
    }
    return result;
  }

  @override
  GMediaThreadsData_Page_threads deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaThreadsData_Page_threadsBuilder();

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
                    GMediaThreadsData_Page_threads_mediaCategories)
              ]))! as BuiltList<Object?>);
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GMediaThreadsData_Page_threads_categories)
              ]))! as BuiltList<Object?>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaThreadsData_Page_threads_user))!
              as GMediaThreadsData_Page_threads_user);
          break;
        case 'replyUser':
          result.replyUser.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaThreadsData_Page_threads_replyUser))!
              as GMediaThreadsData_Page_threads_replyUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaThreadsData_Page_threads_mediaCategoriesSerializer
    implements
        StructuredSerializer<GMediaThreadsData_Page_threads_mediaCategories> {
  @override
  final Iterable<Type> types = const [
    GMediaThreadsData_Page_threads_mediaCategories,
    _$GMediaThreadsData_Page_threads_mediaCategories
  ];
  @override
  final String wireName = 'GMediaThreadsData_Page_threads_mediaCategories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaThreadsData_Page_threads_mediaCategories object,
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
                GMediaThreadsData_Page_threads_mediaCategories_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaThreadsData_Page_threads_mediaCategories_coverImage)));
    }
    return result;
  }

  @override
  GMediaThreadsData_Page_threads_mediaCategories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaThreadsData_Page_threads_mediaCategoriesBuilder();

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
                      GMediaThreadsData_Page_threads_mediaCategories_title))!
              as GMediaThreadsData_Page_threads_mediaCategories_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaThreadsData_Page_threads_mediaCategories_coverImage))!
              as GMediaThreadsData_Page_threads_mediaCategories_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaThreadsData_Page_threads_mediaCategories_titleSerializer
    implements
        StructuredSerializer<
            GMediaThreadsData_Page_threads_mediaCategories_title> {
  @override
  final Iterable<Type> types = const [
    GMediaThreadsData_Page_threads_mediaCategories_title,
    _$GMediaThreadsData_Page_threads_mediaCategories_title
  ];
  @override
  final String wireName =
      'GMediaThreadsData_Page_threads_mediaCategories_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaThreadsData_Page_threads_mediaCategories_title object,
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
  GMediaThreadsData_Page_threads_mediaCategories_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaThreadsData_Page_threads_mediaCategories_titleBuilder();

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

class _$GMediaThreadsData_Page_threads_mediaCategories_coverImageSerializer
    implements
        StructuredSerializer<
            GMediaThreadsData_Page_threads_mediaCategories_coverImage> {
  @override
  final Iterable<Type> types = const [
    GMediaThreadsData_Page_threads_mediaCategories_coverImage,
    _$GMediaThreadsData_Page_threads_mediaCategories_coverImage
  ];
  @override
  final String wireName =
      'GMediaThreadsData_Page_threads_mediaCategories_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaThreadsData_Page_threads_mediaCategories_coverImage object,
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
  GMediaThreadsData_Page_threads_mediaCategories_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder();

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

class _$GMediaThreadsData_Page_threads_categoriesSerializer
    implements StructuredSerializer<GMediaThreadsData_Page_threads_categories> {
  @override
  final Iterable<Type> types = const [
    GMediaThreadsData_Page_threads_categories,
    _$GMediaThreadsData_Page_threads_categories
  ];
  @override
  final String wireName = 'GMediaThreadsData_Page_threads_categories';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaThreadsData_Page_threads_categories object,
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
  GMediaThreadsData_Page_threads_categories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaThreadsData_Page_threads_categoriesBuilder();

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

class _$GMediaThreadsData_Page_threads_userSerializer
    implements StructuredSerializer<GMediaThreadsData_Page_threads_user> {
  @override
  final Iterable<Type> types = const [
    GMediaThreadsData_Page_threads_user,
    _$GMediaThreadsData_Page_threads_user
  ];
  @override
  final String wireName = 'GMediaThreadsData_Page_threads_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaThreadsData_Page_threads_user object,
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
                const FullType(GMediaThreadsData_Page_threads_user_avatar)));
    }
    return result;
  }

  @override
  GMediaThreadsData_Page_threads_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaThreadsData_Page_threads_userBuilder();

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
                      GMediaThreadsData_Page_threads_user_avatar))!
              as GMediaThreadsData_Page_threads_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaThreadsData_Page_threads_user_avatarSerializer
    implements
        StructuredSerializer<GMediaThreadsData_Page_threads_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GMediaThreadsData_Page_threads_user_avatar,
    _$GMediaThreadsData_Page_threads_user_avatar
  ];
  @override
  final String wireName = 'GMediaThreadsData_Page_threads_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaThreadsData_Page_threads_user_avatar object,
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
  GMediaThreadsData_Page_threads_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaThreadsData_Page_threads_user_avatarBuilder();

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

class _$GMediaThreadsData_Page_threads_replyUserSerializer
    implements StructuredSerializer<GMediaThreadsData_Page_threads_replyUser> {
  @override
  final Iterable<Type> types = const [
    GMediaThreadsData_Page_threads_replyUser,
    _$GMediaThreadsData_Page_threads_replyUser
  ];
  @override
  final String wireName = 'GMediaThreadsData_Page_threads_replyUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaThreadsData_Page_threads_replyUser object,
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
                GMediaThreadsData_Page_threads_replyUser_avatar)));
    }
    return result;
  }

  @override
  GMediaThreadsData_Page_threads_replyUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaThreadsData_Page_threads_replyUserBuilder();

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
                      GMediaThreadsData_Page_threads_replyUser_avatar))!
              as GMediaThreadsData_Page_threads_replyUser_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaThreadsData_Page_threads_replyUser_avatarSerializer
    implements
        StructuredSerializer<GMediaThreadsData_Page_threads_replyUser_avatar> {
  @override
  final Iterable<Type> types = const [
    GMediaThreadsData_Page_threads_replyUser_avatar,
    _$GMediaThreadsData_Page_threads_replyUser_avatar
  ];
  @override
  final String wireName = 'GMediaThreadsData_Page_threads_replyUser_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaThreadsData_Page_threads_replyUser_avatar object,
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
  GMediaThreadsData_Page_threads_replyUser_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaThreadsData_Page_threads_replyUser_avatarBuilder();

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

class _$GMediaThreadsData extends GMediaThreadsData {
  @override
  final String G__typename;
  @override
  final GMediaThreadsData_Page? Page;

  factory _$GMediaThreadsData(
          [void Function(GMediaThreadsDataBuilder)? updates]) =>
      (new GMediaThreadsDataBuilder()..update(updates))._build();

  _$GMediaThreadsData._({required this.G__typename, this.Page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaThreadsData', 'G__typename');
  }

  @override
  GMediaThreadsData rebuild(void Function(GMediaThreadsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaThreadsDataBuilder toBuilder() =>
      new GMediaThreadsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaThreadsData &&
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
    return (newBuiltValueToStringHelper(r'GMediaThreadsData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GMediaThreadsDataBuilder
    implements Builder<GMediaThreadsData, GMediaThreadsDataBuilder> {
  _$GMediaThreadsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaThreadsData_PageBuilder? _Page;
  GMediaThreadsData_PageBuilder get Page =>
      _$this._Page ??= new GMediaThreadsData_PageBuilder();
  set Page(GMediaThreadsData_PageBuilder? Page) => _$this._Page = Page;

  GMediaThreadsDataBuilder() {
    GMediaThreadsData._initializeBuilder(this);
  }

  GMediaThreadsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaThreadsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaThreadsData;
  }

  @override
  void update(void Function(GMediaThreadsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaThreadsData build() => _build();

  _$GMediaThreadsData _build() {
    _$GMediaThreadsData _$result;
    try {
      _$result = _$v ??
          new _$GMediaThreadsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaThreadsData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaThreadsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaThreadsData_Page extends GMediaThreadsData_Page {
  @override
  final String G__typename;
  @override
  final GMediaThreadsData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GMediaThreadsData_Page_threads?>? threads;

  factory _$GMediaThreadsData_Page(
          [void Function(GMediaThreadsData_PageBuilder)? updates]) =>
      (new GMediaThreadsData_PageBuilder()..update(updates))._build();

  _$GMediaThreadsData_Page._(
      {required this.G__typename, this.pageInfo, this.threads})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaThreadsData_Page', 'G__typename');
  }

  @override
  GMediaThreadsData_Page rebuild(
          void Function(GMediaThreadsData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaThreadsData_PageBuilder toBuilder() =>
      new GMediaThreadsData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaThreadsData_Page &&
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
    return (newBuiltValueToStringHelper(r'GMediaThreadsData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('threads', threads))
        .toString();
  }
}

class GMediaThreadsData_PageBuilder
    implements Builder<GMediaThreadsData_Page, GMediaThreadsData_PageBuilder> {
  _$GMediaThreadsData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaThreadsData_Page_pageInfoBuilder? _pageInfo;
  GMediaThreadsData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GMediaThreadsData_Page_pageInfoBuilder();
  set pageInfo(GMediaThreadsData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GMediaThreadsData_Page_threads?>? _threads;
  ListBuilder<GMediaThreadsData_Page_threads?> get threads =>
      _$this._threads ??= new ListBuilder<GMediaThreadsData_Page_threads?>();
  set threads(ListBuilder<GMediaThreadsData_Page_threads?>? threads) =>
      _$this._threads = threads;

  GMediaThreadsData_PageBuilder() {
    GMediaThreadsData_Page._initializeBuilder(this);
  }

  GMediaThreadsData_PageBuilder get _$this {
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
  void replace(GMediaThreadsData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaThreadsData_Page;
  }

  @override
  void update(void Function(GMediaThreadsData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaThreadsData_Page build() => _build();

  _$GMediaThreadsData_Page _build() {
    _$GMediaThreadsData_Page _$result;
    try {
      _$result = _$v ??
          new _$GMediaThreadsData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaThreadsData_Page', 'G__typename'),
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
            r'GMediaThreadsData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaThreadsData_Page_pageInfo
    extends GMediaThreadsData_Page_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GMediaThreadsData_Page_pageInfo(
          [void Function(GMediaThreadsData_Page_pageInfoBuilder)? updates]) =>
      (new GMediaThreadsData_Page_pageInfoBuilder()..update(updates))._build();

  _$GMediaThreadsData_Page_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaThreadsData_Page_pageInfo', 'G__typename');
  }

  @override
  GMediaThreadsData_Page_pageInfo rebuild(
          void Function(GMediaThreadsData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaThreadsData_Page_pageInfoBuilder toBuilder() =>
      new GMediaThreadsData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaThreadsData_Page_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GMediaThreadsData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GMediaThreadsData_Page_pageInfoBuilder
    implements
        Builder<GMediaThreadsData_Page_pageInfo,
            GMediaThreadsData_Page_pageInfoBuilder> {
  _$GMediaThreadsData_Page_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GMediaThreadsData_Page_pageInfoBuilder() {
    GMediaThreadsData_Page_pageInfo._initializeBuilder(this);
  }

  GMediaThreadsData_Page_pageInfoBuilder get _$this {
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
  void replace(GMediaThreadsData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaThreadsData_Page_pageInfo;
  }

  @override
  void update(void Function(GMediaThreadsData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaThreadsData_Page_pageInfo build() => _build();

  _$GMediaThreadsData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GMediaThreadsData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaThreadsData_Page_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaThreadsData_Page_threads extends GMediaThreadsData_Page_threads {
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
  final BuiltList<GMediaThreadsData_Page_threads_mediaCategories?>?
      mediaCategories;
  @override
  final BuiltList<GMediaThreadsData_Page_threads_categories?>? categories;
  @override
  final GMediaThreadsData_Page_threads_user? user;
  @override
  final GMediaThreadsData_Page_threads_replyUser? replyUser;

  factory _$GMediaThreadsData_Page_threads(
          [void Function(GMediaThreadsData_Page_threadsBuilder)? updates]) =>
      (new GMediaThreadsData_Page_threadsBuilder()..update(updates))._build();

  _$GMediaThreadsData_Page_threads._(
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
        G__typename, r'GMediaThreadsData_Page_threads', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaThreadsData_Page_threads', 'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GMediaThreadsData_Page_threads', 'createdAt');
  }

  @override
  GMediaThreadsData_Page_threads rebuild(
          void Function(GMediaThreadsData_Page_threadsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaThreadsData_Page_threadsBuilder toBuilder() =>
      new GMediaThreadsData_Page_threadsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaThreadsData_Page_threads &&
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
    return (newBuiltValueToStringHelper(r'GMediaThreadsData_Page_threads')
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

class GMediaThreadsData_Page_threadsBuilder
    implements
        Builder<GMediaThreadsData_Page_threads,
            GMediaThreadsData_Page_threadsBuilder> {
  _$GMediaThreadsData_Page_threads? _$v;

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

  ListBuilder<GMediaThreadsData_Page_threads_mediaCategories?>?
      _mediaCategories;
  ListBuilder<GMediaThreadsData_Page_threads_mediaCategories?>
      get mediaCategories => _$this._mediaCategories ??=
          new ListBuilder<GMediaThreadsData_Page_threads_mediaCategories?>();
  set mediaCategories(
          ListBuilder<GMediaThreadsData_Page_threads_mediaCategories?>?
              mediaCategories) =>
      _$this._mediaCategories = mediaCategories;

  ListBuilder<GMediaThreadsData_Page_threads_categories?>? _categories;
  ListBuilder<GMediaThreadsData_Page_threads_categories?> get categories =>
      _$this._categories ??=
          new ListBuilder<GMediaThreadsData_Page_threads_categories?>();
  set categories(
          ListBuilder<GMediaThreadsData_Page_threads_categories?>?
              categories) =>
      _$this._categories = categories;

  GMediaThreadsData_Page_threads_userBuilder? _user;
  GMediaThreadsData_Page_threads_userBuilder get user =>
      _$this._user ??= new GMediaThreadsData_Page_threads_userBuilder();
  set user(GMediaThreadsData_Page_threads_userBuilder? user) =>
      _$this._user = user;

  GMediaThreadsData_Page_threads_replyUserBuilder? _replyUser;
  GMediaThreadsData_Page_threads_replyUserBuilder get replyUser =>
      _$this._replyUser ??=
          new GMediaThreadsData_Page_threads_replyUserBuilder();
  set replyUser(GMediaThreadsData_Page_threads_replyUserBuilder? replyUser) =>
      _$this._replyUser = replyUser;

  GMediaThreadsData_Page_threadsBuilder() {
    GMediaThreadsData_Page_threads._initializeBuilder(this);
  }

  GMediaThreadsData_Page_threadsBuilder get _$this {
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
  void replace(GMediaThreadsData_Page_threads other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaThreadsData_Page_threads;
  }

  @override
  void update(void Function(GMediaThreadsData_Page_threadsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaThreadsData_Page_threads build() => _build();

  _$GMediaThreadsData_Page_threads _build() {
    _$GMediaThreadsData_Page_threads _$result;
    try {
      _$result = _$v ??
          new _$GMediaThreadsData_Page_threads._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaThreadsData_Page_threads', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaThreadsData_Page_threads', 'id'),
              title: title,
              replyCount: replyCount,
              viewCount: viewCount,
              replyCommentId: replyCommentId,
              repliedAt: repliedAt,
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GMediaThreadsData_Page_threads', 'createdAt'),
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
            r'GMediaThreadsData_Page_threads', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaThreadsData_Page_threads_mediaCategories
    extends GMediaThreadsData_Page_threads_mediaCategories {
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
  final GMediaThreadsData_Page_threads_mediaCategories_title? title;
  @override
  final GMediaThreadsData_Page_threads_mediaCategories_coverImage? coverImage;

  factory _$GMediaThreadsData_Page_threads_mediaCategories(
          [void Function(GMediaThreadsData_Page_threads_mediaCategoriesBuilder)?
              updates]) =>
      (new GMediaThreadsData_Page_threads_mediaCategoriesBuilder()
            ..update(updates))
          ._build();

  _$GMediaThreadsData_Page_threads_mediaCategories._(
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
        r'GMediaThreadsData_Page_threads_mediaCategories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaThreadsData_Page_threads_mediaCategories', 'id');
  }

  @override
  GMediaThreadsData_Page_threads_mediaCategories rebuild(
          void Function(GMediaThreadsData_Page_threads_mediaCategoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaThreadsData_Page_threads_mediaCategoriesBuilder toBuilder() =>
      new GMediaThreadsData_Page_threads_mediaCategoriesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaThreadsData_Page_threads_mediaCategories &&
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
            r'GMediaThreadsData_Page_threads_mediaCategories')
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

class GMediaThreadsData_Page_threads_mediaCategoriesBuilder
    implements
        Builder<GMediaThreadsData_Page_threads_mediaCategories,
            GMediaThreadsData_Page_threads_mediaCategoriesBuilder> {
  _$GMediaThreadsData_Page_threads_mediaCategories? _$v;

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

  GMediaThreadsData_Page_threads_mediaCategories_titleBuilder? _title;
  GMediaThreadsData_Page_threads_mediaCategories_titleBuilder get title =>
      _$this._title ??=
          new GMediaThreadsData_Page_threads_mediaCategories_titleBuilder();
  set title(
          GMediaThreadsData_Page_threads_mediaCategories_titleBuilder? title) =>
      _$this._title = title;

  GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder? _coverImage;
  GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder();
  set coverImage(
          GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GMediaThreadsData_Page_threads_mediaCategoriesBuilder() {
    GMediaThreadsData_Page_threads_mediaCategories._initializeBuilder(this);
  }

  GMediaThreadsData_Page_threads_mediaCategoriesBuilder get _$this {
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
  void replace(GMediaThreadsData_Page_threads_mediaCategories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaThreadsData_Page_threads_mediaCategories;
  }

  @override
  void update(
      void Function(GMediaThreadsData_Page_threads_mediaCategoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaThreadsData_Page_threads_mediaCategories build() => _build();

  _$GMediaThreadsData_Page_threads_mediaCategories _build() {
    _$GMediaThreadsData_Page_threads_mediaCategories _$result;
    try {
      _$result = _$v ??
          new _$GMediaThreadsData_Page_threads_mediaCategories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaThreadsData_Page_threads_mediaCategories',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaThreadsData_Page_threads_mediaCategories', 'id'),
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
            r'GMediaThreadsData_Page_threads_mediaCategories',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaThreadsData_Page_threads_mediaCategories_title
    extends GMediaThreadsData_Page_threads_mediaCategories_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GMediaThreadsData_Page_threads_mediaCategories_title(
          [void Function(
                  GMediaThreadsData_Page_threads_mediaCategories_titleBuilder)?
              updates]) =>
      (new GMediaThreadsData_Page_threads_mediaCategories_titleBuilder()
            ..update(updates))
          ._build();

  _$GMediaThreadsData_Page_threads_mediaCategories_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaThreadsData_Page_threads_mediaCategories_title', 'G__typename');
  }

  @override
  GMediaThreadsData_Page_threads_mediaCategories_title rebuild(
          void Function(
                  GMediaThreadsData_Page_threads_mediaCategories_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaThreadsData_Page_threads_mediaCategories_titleBuilder toBuilder() =>
      new GMediaThreadsData_Page_threads_mediaCategories_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaThreadsData_Page_threads_mediaCategories_title &&
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
            r'GMediaThreadsData_Page_threads_mediaCategories_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GMediaThreadsData_Page_threads_mediaCategories_titleBuilder
    implements
        Builder<GMediaThreadsData_Page_threads_mediaCategories_title,
            GMediaThreadsData_Page_threads_mediaCategories_titleBuilder> {
  _$GMediaThreadsData_Page_threads_mediaCategories_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GMediaThreadsData_Page_threads_mediaCategories_titleBuilder() {
    GMediaThreadsData_Page_threads_mediaCategories_title._initializeBuilder(
        this);
  }

  GMediaThreadsData_Page_threads_mediaCategories_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaThreadsData_Page_threads_mediaCategories_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaThreadsData_Page_threads_mediaCategories_title;
  }

  @override
  void update(
      void Function(
              GMediaThreadsData_Page_threads_mediaCategories_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaThreadsData_Page_threads_mediaCategories_title build() => _build();

  _$GMediaThreadsData_Page_threads_mediaCategories_title _build() {
    final _$result = _$v ??
        new _$GMediaThreadsData_Page_threads_mediaCategories_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaThreadsData_Page_threads_mediaCategories_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaThreadsData_Page_threads_mediaCategories_coverImage
    extends GMediaThreadsData_Page_threads_mediaCategories_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GMediaThreadsData_Page_threads_mediaCategories_coverImage(
          [void Function(
                  GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder)?
              updates]) =>
      (new GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GMediaThreadsData_Page_threads_mediaCategories_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaThreadsData_Page_threads_mediaCategories_coverImage',
        'G__typename');
  }

  @override
  GMediaThreadsData_Page_threads_mediaCategories_coverImage rebuild(
          void Function(
                  GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder
      toBuilder() =>
          new GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaThreadsData_Page_threads_mediaCategories_coverImage &&
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
            r'GMediaThreadsData_Page_threads_mediaCategories_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder
    implements
        Builder<GMediaThreadsData_Page_threads_mediaCategories_coverImage,
            GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder> {
  _$GMediaThreadsData_Page_threads_mediaCategories_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder() {
    GMediaThreadsData_Page_threads_mediaCategories_coverImage
        ._initializeBuilder(this);
  }

  GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder get _$this {
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
      GMediaThreadsData_Page_threads_mediaCategories_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaThreadsData_Page_threads_mediaCategories_coverImage;
  }

  @override
  void update(
      void Function(
              GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaThreadsData_Page_threads_mediaCategories_coverImage build() => _build();

  _$GMediaThreadsData_Page_threads_mediaCategories_coverImage _build() {
    final _$result = _$v ??
        new _$GMediaThreadsData_Page_threads_mediaCategories_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaThreadsData_Page_threads_mediaCategories_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaThreadsData_Page_threads_categories
    extends GMediaThreadsData_Page_threads_categories {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;

  factory _$GMediaThreadsData_Page_threads_categories(
          [void Function(GMediaThreadsData_Page_threads_categoriesBuilder)?
              updates]) =>
      (new GMediaThreadsData_Page_threads_categoriesBuilder()..update(updates))
          ._build();

  _$GMediaThreadsData_Page_threads_categories._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaThreadsData_Page_threads_categories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaThreadsData_Page_threads_categories', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GMediaThreadsData_Page_threads_categories', 'name');
  }

  @override
  GMediaThreadsData_Page_threads_categories rebuild(
          void Function(GMediaThreadsData_Page_threads_categoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaThreadsData_Page_threads_categoriesBuilder toBuilder() =>
      new GMediaThreadsData_Page_threads_categoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaThreadsData_Page_threads_categories &&
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
            r'GMediaThreadsData_Page_threads_categories')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GMediaThreadsData_Page_threads_categoriesBuilder
    implements
        Builder<GMediaThreadsData_Page_threads_categories,
            GMediaThreadsData_Page_threads_categoriesBuilder> {
  _$GMediaThreadsData_Page_threads_categories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GMediaThreadsData_Page_threads_categoriesBuilder() {
    GMediaThreadsData_Page_threads_categories._initializeBuilder(this);
  }

  GMediaThreadsData_Page_threads_categoriesBuilder get _$this {
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
  void replace(GMediaThreadsData_Page_threads_categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaThreadsData_Page_threads_categories;
  }

  @override
  void update(
      void Function(GMediaThreadsData_Page_threads_categoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaThreadsData_Page_threads_categories build() => _build();

  _$GMediaThreadsData_Page_threads_categories _build() {
    final _$result = _$v ??
        new _$GMediaThreadsData_Page_threads_categories._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaThreadsData_Page_threads_categories', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GMediaThreadsData_Page_threads_categories', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GMediaThreadsData_Page_threads_categories', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GMediaThreadsData_Page_threads_user
    extends GMediaThreadsData_Page_threads_user {
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
  final GMediaThreadsData_Page_threads_user_avatar? avatar;

  factory _$GMediaThreadsData_Page_threads_user(
          [void Function(GMediaThreadsData_Page_threads_userBuilder)?
              updates]) =>
      (new GMediaThreadsData_Page_threads_userBuilder()..update(updates))
          ._build();

  _$GMediaThreadsData_Page_threads_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaThreadsData_Page_threads_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaThreadsData_Page_threads_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GMediaThreadsData_Page_threads_user', 'name');
  }

  @override
  GMediaThreadsData_Page_threads_user rebuild(
          void Function(GMediaThreadsData_Page_threads_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaThreadsData_Page_threads_userBuilder toBuilder() =>
      new GMediaThreadsData_Page_threads_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaThreadsData_Page_threads_user &&
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
    return (newBuiltValueToStringHelper(r'GMediaThreadsData_Page_threads_user')
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

class GMediaThreadsData_Page_threads_userBuilder
    implements
        Builder<GMediaThreadsData_Page_threads_user,
            GMediaThreadsData_Page_threads_userBuilder> {
  _$GMediaThreadsData_Page_threads_user? _$v;

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

  GMediaThreadsData_Page_threads_user_avatarBuilder? _avatar;
  GMediaThreadsData_Page_threads_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GMediaThreadsData_Page_threads_user_avatarBuilder();
  set avatar(GMediaThreadsData_Page_threads_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GMediaThreadsData_Page_threads_userBuilder() {
    GMediaThreadsData_Page_threads_user._initializeBuilder(this);
  }

  GMediaThreadsData_Page_threads_userBuilder get _$this {
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
  void replace(GMediaThreadsData_Page_threads_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaThreadsData_Page_threads_user;
  }

  @override
  void update(
      void Function(GMediaThreadsData_Page_threads_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaThreadsData_Page_threads_user build() => _build();

  _$GMediaThreadsData_Page_threads_user _build() {
    _$GMediaThreadsData_Page_threads_user _$result;
    try {
      _$result = _$v ??
          new _$GMediaThreadsData_Page_threads_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaThreadsData_Page_threads_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaThreadsData_Page_threads_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GMediaThreadsData_Page_threads_user', 'name'),
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
            r'GMediaThreadsData_Page_threads_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaThreadsData_Page_threads_user_avatar
    extends GMediaThreadsData_Page_threads_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GMediaThreadsData_Page_threads_user_avatar(
          [void Function(GMediaThreadsData_Page_threads_user_avatarBuilder)?
              updates]) =>
      (new GMediaThreadsData_Page_threads_user_avatarBuilder()..update(updates))
          ._build();

  _$GMediaThreadsData_Page_threads_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaThreadsData_Page_threads_user_avatar', 'G__typename');
  }

  @override
  GMediaThreadsData_Page_threads_user_avatar rebuild(
          void Function(GMediaThreadsData_Page_threads_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaThreadsData_Page_threads_user_avatarBuilder toBuilder() =>
      new GMediaThreadsData_Page_threads_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaThreadsData_Page_threads_user_avatar &&
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
            r'GMediaThreadsData_Page_threads_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GMediaThreadsData_Page_threads_user_avatarBuilder
    implements
        Builder<GMediaThreadsData_Page_threads_user_avatar,
            GMediaThreadsData_Page_threads_user_avatarBuilder> {
  _$GMediaThreadsData_Page_threads_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GMediaThreadsData_Page_threads_user_avatarBuilder() {
    GMediaThreadsData_Page_threads_user_avatar._initializeBuilder(this);
  }

  GMediaThreadsData_Page_threads_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaThreadsData_Page_threads_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaThreadsData_Page_threads_user_avatar;
  }

  @override
  void update(
      void Function(GMediaThreadsData_Page_threads_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaThreadsData_Page_threads_user_avatar build() => _build();

  _$GMediaThreadsData_Page_threads_user_avatar _build() {
    final _$result = _$v ??
        new _$GMediaThreadsData_Page_threads_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaThreadsData_Page_threads_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaThreadsData_Page_threads_replyUser
    extends GMediaThreadsData_Page_threads_replyUser {
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
  final GMediaThreadsData_Page_threads_replyUser_avatar? avatar;

  factory _$GMediaThreadsData_Page_threads_replyUser(
          [void Function(GMediaThreadsData_Page_threads_replyUserBuilder)?
              updates]) =>
      (new GMediaThreadsData_Page_threads_replyUserBuilder()..update(updates))
          ._build();

  _$GMediaThreadsData_Page_threads_replyUser._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaThreadsData_Page_threads_replyUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaThreadsData_Page_threads_replyUser', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GMediaThreadsData_Page_threads_replyUser', 'name');
  }

  @override
  GMediaThreadsData_Page_threads_replyUser rebuild(
          void Function(GMediaThreadsData_Page_threads_replyUserBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaThreadsData_Page_threads_replyUserBuilder toBuilder() =>
      new GMediaThreadsData_Page_threads_replyUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaThreadsData_Page_threads_replyUser &&
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
            r'GMediaThreadsData_Page_threads_replyUser')
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

class GMediaThreadsData_Page_threads_replyUserBuilder
    implements
        Builder<GMediaThreadsData_Page_threads_replyUser,
            GMediaThreadsData_Page_threads_replyUserBuilder> {
  _$GMediaThreadsData_Page_threads_replyUser? _$v;

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

  GMediaThreadsData_Page_threads_replyUser_avatarBuilder? _avatar;
  GMediaThreadsData_Page_threads_replyUser_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GMediaThreadsData_Page_threads_replyUser_avatarBuilder();
  set avatar(GMediaThreadsData_Page_threads_replyUser_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GMediaThreadsData_Page_threads_replyUserBuilder() {
    GMediaThreadsData_Page_threads_replyUser._initializeBuilder(this);
  }

  GMediaThreadsData_Page_threads_replyUserBuilder get _$this {
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
  void replace(GMediaThreadsData_Page_threads_replyUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaThreadsData_Page_threads_replyUser;
  }

  @override
  void update(
      void Function(GMediaThreadsData_Page_threads_replyUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaThreadsData_Page_threads_replyUser build() => _build();

  _$GMediaThreadsData_Page_threads_replyUser _build() {
    _$GMediaThreadsData_Page_threads_replyUser _$result;
    try {
      _$result = _$v ??
          new _$GMediaThreadsData_Page_threads_replyUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaThreadsData_Page_threads_replyUser', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaThreadsData_Page_threads_replyUser', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GMediaThreadsData_Page_threads_replyUser', 'name'),
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
            r'GMediaThreadsData_Page_threads_replyUser',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaThreadsData_Page_threads_replyUser_avatar
    extends GMediaThreadsData_Page_threads_replyUser_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GMediaThreadsData_Page_threads_replyUser_avatar(
          [void Function(
                  GMediaThreadsData_Page_threads_replyUser_avatarBuilder)?
              updates]) =>
      (new GMediaThreadsData_Page_threads_replyUser_avatarBuilder()
            ..update(updates))
          ._build();

  _$GMediaThreadsData_Page_threads_replyUser_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaThreadsData_Page_threads_replyUser_avatar', 'G__typename');
  }

  @override
  GMediaThreadsData_Page_threads_replyUser_avatar rebuild(
          void Function(GMediaThreadsData_Page_threads_replyUser_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaThreadsData_Page_threads_replyUser_avatarBuilder toBuilder() =>
      new GMediaThreadsData_Page_threads_replyUser_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaThreadsData_Page_threads_replyUser_avatar &&
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
            r'GMediaThreadsData_Page_threads_replyUser_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GMediaThreadsData_Page_threads_replyUser_avatarBuilder
    implements
        Builder<GMediaThreadsData_Page_threads_replyUser_avatar,
            GMediaThreadsData_Page_threads_replyUser_avatarBuilder> {
  _$GMediaThreadsData_Page_threads_replyUser_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GMediaThreadsData_Page_threads_replyUser_avatarBuilder() {
    GMediaThreadsData_Page_threads_replyUser_avatar._initializeBuilder(this);
  }

  GMediaThreadsData_Page_threads_replyUser_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaThreadsData_Page_threads_replyUser_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaThreadsData_Page_threads_replyUser_avatar;
  }

  @override
  void update(
      void Function(GMediaThreadsData_Page_threads_replyUser_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaThreadsData_Page_threads_replyUser_avatar build() => _build();

  _$GMediaThreadsData_Page_threads_replyUser_avatar _build() {
    final _$result = _$v ??
        new _$GMediaThreadsData_Page_threads_replyUser_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaThreadsData_Page_threads_replyUser_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
