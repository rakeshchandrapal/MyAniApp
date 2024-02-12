// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GThreadFragmentData> _$gThreadFragmentDataSerializer =
    new _$GThreadFragmentDataSerializer();
Serializer<GThreadFragmentData_mediaCategories>
    _$gThreadFragmentDataMediaCategoriesSerializer =
    new _$GThreadFragmentData_mediaCategoriesSerializer();
Serializer<GThreadFragmentData_mediaCategories_title>
    _$gThreadFragmentDataMediaCategoriesTitleSerializer =
    new _$GThreadFragmentData_mediaCategories_titleSerializer();
Serializer<GThreadFragmentData_mediaCategories_coverImage>
    _$gThreadFragmentDataMediaCategoriesCoverImageSerializer =
    new _$GThreadFragmentData_mediaCategories_coverImageSerializer();
Serializer<GThreadFragmentData_categories>
    _$gThreadFragmentDataCategoriesSerializer =
    new _$GThreadFragmentData_categoriesSerializer();
Serializer<GThreadFragmentData_user> _$gThreadFragmentDataUserSerializer =
    new _$GThreadFragmentData_userSerializer();
Serializer<GThreadFragmentData_user_avatar>
    _$gThreadFragmentDataUserAvatarSerializer =
    new _$GThreadFragmentData_user_avatarSerializer();
Serializer<GThreadFragmentData_replyUser>
    _$gThreadFragmentDataReplyUserSerializer =
    new _$GThreadFragmentData_replyUserSerializer();
Serializer<GThreadFragmentData_replyUser_avatar>
    _$gThreadFragmentDataReplyUserAvatarSerializer =
    new _$GThreadFragmentData_replyUser_avatarSerializer();

class _$GThreadFragmentDataSerializer
    implements StructuredSerializer<GThreadFragmentData> {
  @override
  final Iterable<Type> types = const [
    GThreadFragmentData,
    _$GThreadFragmentData
  ];
  @override
  final String wireName = 'GThreadFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadFragmentData object,
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
              const FullType.nullable(GThreadFragmentData_mediaCategories)
            ])));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GThreadFragmentData_categories)
            ])));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GThreadFragmentData_user)));
    }
    value = object.replyUser;
    if (value != null) {
      result
        ..add('replyUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GThreadFragmentData_replyUser)));
    }
    return result;
  }

  @override
  GThreadFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadFragmentDataBuilder();

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
                const FullType.nullable(GThreadFragmentData_mediaCategories)
              ]))! as BuiltList<Object?>);
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GThreadFragmentData_categories)
              ]))! as BuiltList<Object?>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GThreadFragmentData_user))!
              as GThreadFragmentData_user);
          break;
        case 'replyUser':
          result.replyUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GThreadFragmentData_replyUser))!
              as GThreadFragmentData_replyUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadFragmentData_mediaCategoriesSerializer
    implements StructuredSerializer<GThreadFragmentData_mediaCategories> {
  @override
  final Iterable<Type> types = const [
    GThreadFragmentData_mediaCategories,
    _$GThreadFragmentData_mediaCategories
  ];
  @override
  final String wireName = 'GThreadFragmentData_mediaCategories';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadFragmentData_mediaCategories object,
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
            specifiedType: const FullType(_i2.GMediaType)));
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
            specifiedType: const FullType(_i2.GMediaFormat)));
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
                const FullType(GThreadFragmentData_mediaCategories_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GThreadFragmentData_mediaCategories_coverImage)));
    }
    return result;
  }

  @override
  GThreadFragmentData_mediaCategories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadFragmentData_mediaCategoriesBuilder();

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
              specifiedType: const FullType(_i2.GMediaType)) as _i2.GMediaType?;
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
                  specifiedType: const FullType(_i2.GMediaFormat))
              as _i2.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GThreadFragmentData_mediaCategories_title))!
              as GThreadFragmentData_mediaCategories_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GThreadFragmentData_mediaCategories_coverImage))!
              as GThreadFragmentData_mediaCategories_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadFragmentData_mediaCategories_titleSerializer
    implements StructuredSerializer<GThreadFragmentData_mediaCategories_title> {
  @override
  final Iterable<Type> types = const [
    GThreadFragmentData_mediaCategories_title,
    _$GThreadFragmentData_mediaCategories_title
  ];
  @override
  final String wireName = 'GThreadFragmentData_mediaCategories_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadFragmentData_mediaCategories_title object,
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
  GThreadFragmentData_mediaCategories_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadFragmentData_mediaCategories_titleBuilder();

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

class _$GThreadFragmentData_mediaCategories_coverImageSerializer
    implements
        StructuredSerializer<GThreadFragmentData_mediaCategories_coverImage> {
  @override
  final Iterable<Type> types = const [
    GThreadFragmentData_mediaCategories_coverImage,
    _$GThreadFragmentData_mediaCategories_coverImage
  ];
  @override
  final String wireName = 'GThreadFragmentData_mediaCategories_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GThreadFragmentData_mediaCategories_coverImage object,
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
  GThreadFragmentData_mediaCategories_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadFragmentData_mediaCategories_coverImageBuilder();

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

class _$GThreadFragmentData_categoriesSerializer
    implements StructuredSerializer<GThreadFragmentData_categories> {
  @override
  final Iterable<Type> types = const [
    GThreadFragmentData_categories,
    _$GThreadFragmentData_categories
  ];
  @override
  final String wireName = 'GThreadFragmentData_categories';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadFragmentData_categories object,
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
  GThreadFragmentData_categories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadFragmentData_categoriesBuilder();

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

class _$GThreadFragmentData_userSerializer
    implements StructuredSerializer<GThreadFragmentData_user> {
  @override
  final Iterable<Type> types = const [
    GThreadFragmentData_user,
    _$GThreadFragmentData_user
  ];
  @override
  final String wireName = 'GThreadFragmentData_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadFragmentData_user object,
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
                BuiltList, const [const FullType.nullable(_i2.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GThreadFragmentData_user_avatar)));
    }
    return result;
  }

  @override
  GThreadFragmentData_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadFragmentData_userBuilder();

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
                const FullType.nullable(_i2.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GThreadFragmentData_user_avatar))!
              as GThreadFragmentData_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadFragmentData_user_avatarSerializer
    implements StructuredSerializer<GThreadFragmentData_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GThreadFragmentData_user_avatar,
    _$GThreadFragmentData_user_avatar
  ];
  @override
  final String wireName = 'GThreadFragmentData_user_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadFragmentData_user_avatar object,
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
  GThreadFragmentData_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadFragmentData_user_avatarBuilder();

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

class _$GThreadFragmentData_replyUserSerializer
    implements StructuredSerializer<GThreadFragmentData_replyUser> {
  @override
  final Iterable<Type> types = const [
    GThreadFragmentData_replyUser,
    _$GThreadFragmentData_replyUser
  ];
  @override
  final String wireName = 'GThreadFragmentData_replyUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadFragmentData_replyUser object,
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
                BuiltList, const [const FullType.nullable(_i2.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GThreadFragmentData_replyUser_avatar)));
    }
    return result;
  }

  @override
  GThreadFragmentData_replyUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadFragmentData_replyUserBuilder();

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
                const FullType.nullable(_i2.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GThreadFragmentData_replyUser_avatar))!
              as GThreadFragmentData_replyUser_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadFragmentData_replyUser_avatarSerializer
    implements StructuredSerializer<GThreadFragmentData_replyUser_avatar> {
  @override
  final Iterable<Type> types = const [
    GThreadFragmentData_replyUser_avatar,
    _$GThreadFragmentData_replyUser_avatar
  ];
  @override
  final String wireName = 'GThreadFragmentData_replyUser_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadFragmentData_replyUser_avatar object,
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
  GThreadFragmentData_replyUser_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadFragmentData_replyUser_avatarBuilder();

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

class _$GThreadFragmentData extends GThreadFragmentData {
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
  final BuiltList<GThreadFragmentData_mediaCategories?>? mediaCategories;
  @override
  final BuiltList<GThreadFragmentData_categories?>? categories;
  @override
  final GThreadFragmentData_user? user;
  @override
  final GThreadFragmentData_replyUser? replyUser;

  factory _$GThreadFragmentData(
          [void Function(GThreadFragmentDataBuilder)? updates]) =>
      (new GThreadFragmentDataBuilder()..update(updates))._build();

  _$GThreadFragmentData._(
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
        G__typename, r'GThreadFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GThreadFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GThreadFragmentData', 'createdAt');
  }

  @override
  GThreadFragmentData rebuild(
          void Function(GThreadFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadFragmentDataBuilder toBuilder() =>
      new GThreadFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadFragmentData &&
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
    return (newBuiltValueToStringHelper(r'GThreadFragmentData')
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

class GThreadFragmentDataBuilder
    implements Builder<GThreadFragmentData, GThreadFragmentDataBuilder> {
  _$GThreadFragmentData? _$v;

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

  ListBuilder<GThreadFragmentData_mediaCategories?>? _mediaCategories;
  ListBuilder<GThreadFragmentData_mediaCategories?> get mediaCategories =>
      _$this._mediaCategories ??=
          new ListBuilder<GThreadFragmentData_mediaCategories?>();
  set mediaCategories(
          ListBuilder<GThreadFragmentData_mediaCategories?>? mediaCategories) =>
      _$this._mediaCategories = mediaCategories;

  ListBuilder<GThreadFragmentData_categories?>? _categories;
  ListBuilder<GThreadFragmentData_categories?> get categories =>
      _$this._categories ??= new ListBuilder<GThreadFragmentData_categories?>();
  set categories(ListBuilder<GThreadFragmentData_categories?>? categories) =>
      _$this._categories = categories;

  GThreadFragmentData_userBuilder? _user;
  GThreadFragmentData_userBuilder get user =>
      _$this._user ??= new GThreadFragmentData_userBuilder();
  set user(GThreadFragmentData_userBuilder? user) => _$this._user = user;

  GThreadFragmentData_replyUserBuilder? _replyUser;
  GThreadFragmentData_replyUserBuilder get replyUser =>
      _$this._replyUser ??= new GThreadFragmentData_replyUserBuilder();
  set replyUser(GThreadFragmentData_replyUserBuilder? replyUser) =>
      _$this._replyUser = replyUser;

  GThreadFragmentDataBuilder() {
    GThreadFragmentData._initializeBuilder(this);
  }

  GThreadFragmentDataBuilder get _$this {
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
  void replace(GThreadFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadFragmentData;
  }

  @override
  void update(void Function(GThreadFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadFragmentData build() => _build();

  _$GThreadFragmentData _build() {
    _$GThreadFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GThreadFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GThreadFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GThreadFragmentData', 'id'),
              title: title,
              replyCount: replyCount,
              viewCount: viewCount,
              replyCommentId: replyCommentId,
              repliedAt: repliedAt,
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GThreadFragmentData', 'createdAt'),
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
            r'GThreadFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadFragmentData_mediaCategories
    extends GThreadFragmentData_mediaCategories {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i2.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i2.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GThreadFragmentData_mediaCategories_title? title;
  @override
  final GThreadFragmentData_mediaCategories_coverImage? coverImage;

  factory _$GThreadFragmentData_mediaCategories(
          [void Function(GThreadFragmentData_mediaCategoriesBuilder)?
              updates]) =>
      (new GThreadFragmentData_mediaCategoriesBuilder()..update(updates))
          ._build();

  _$GThreadFragmentData_mediaCategories._(
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
        G__typename, r'GThreadFragmentData_mediaCategories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GThreadFragmentData_mediaCategories', 'id');
  }

  @override
  GThreadFragmentData_mediaCategories rebuild(
          void Function(GThreadFragmentData_mediaCategoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadFragmentData_mediaCategoriesBuilder toBuilder() =>
      new GThreadFragmentData_mediaCategoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadFragmentData_mediaCategories &&
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
    return (newBuiltValueToStringHelper(r'GThreadFragmentData_mediaCategories')
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

class GThreadFragmentData_mediaCategoriesBuilder
    implements
        Builder<GThreadFragmentData_mediaCategories,
            GThreadFragmentData_mediaCategoriesBuilder> {
  _$GThreadFragmentData_mediaCategories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i2.GMediaType? _type;
  _i2.GMediaType? get type => _$this._type;
  set type(_i2.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i2.GMediaFormat? _format;
  _i2.GMediaFormat? get format => _$this._format;
  set format(_i2.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GThreadFragmentData_mediaCategories_titleBuilder? _title;
  GThreadFragmentData_mediaCategories_titleBuilder get title =>
      _$this._title ??= new GThreadFragmentData_mediaCategories_titleBuilder();
  set title(GThreadFragmentData_mediaCategories_titleBuilder? title) =>
      _$this._title = title;

  GThreadFragmentData_mediaCategories_coverImageBuilder? _coverImage;
  GThreadFragmentData_mediaCategories_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GThreadFragmentData_mediaCategories_coverImageBuilder();
  set coverImage(
          GThreadFragmentData_mediaCategories_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GThreadFragmentData_mediaCategoriesBuilder() {
    GThreadFragmentData_mediaCategories._initializeBuilder(this);
  }

  GThreadFragmentData_mediaCategoriesBuilder get _$this {
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
  void replace(GThreadFragmentData_mediaCategories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadFragmentData_mediaCategories;
  }

  @override
  void update(
      void Function(GThreadFragmentData_mediaCategoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadFragmentData_mediaCategories build() => _build();

  _$GThreadFragmentData_mediaCategories _build() {
    _$GThreadFragmentData_mediaCategories _$result;
    try {
      _$result = _$v ??
          new _$GThreadFragmentData_mediaCategories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GThreadFragmentData_mediaCategories', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GThreadFragmentData_mediaCategories', 'id'),
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
            r'GThreadFragmentData_mediaCategories',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadFragmentData_mediaCategories_title
    extends GThreadFragmentData_mediaCategories_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GThreadFragmentData_mediaCategories_title(
          [void Function(GThreadFragmentData_mediaCategories_titleBuilder)?
              updates]) =>
      (new GThreadFragmentData_mediaCategories_titleBuilder()..update(updates))
          ._build();

  _$GThreadFragmentData_mediaCategories_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GThreadFragmentData_mediaCategories_title', 'G__typename');
  }

  @override
  GThreadFragmentData_mediaCategories_title rebuild(
          void Function(GThreadFragmentData_mediaCategories_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadFragmentData_mediaCategories_titleBuilder toBuilder() =>
      new GThreadFragmentData_mediaCategories_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadFragmentData_mediaCategories_title &&
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
            r'GThreadFragmentData_mediaCategories_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GThreadFragmentData_mediaCategories_titleBuilder
    implements
        Builder<GThreadFragmentData_mediaCategories_title,
            GThreadFragmentData_mediaCategories_titleBuilder> {
  _$GThreadFragmentData_mediaCategories_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GThreadFragmentData_mediaCategories_titleBuilder() {
    GThreadFragmentData_mediaCategories_title._initializeBuilder(this);
  }

  GThreadFragmentData_mediaCategories_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadFragmentData_mediaCategories_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadFragmentData_mediaCategories_title;
  }

  @override
  void update(
      void Function(GThreadFragmentData_mediaCategories_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadFragmentData_mediaCategories_title build() => _build();

  _$GThreadFragmentData_mediaCategories_title _build() {
    final _$result = _$v ??
        new _$GThreadFragmentData_mediaCategories_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GThreadFragmentData_mediaCategories_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GThreadFragmentData_mediaCategories_coverImage
    extends GThreadFragmentData_mediaCategories_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GThreadFragmentData_mediaCategories_coverImage(
          [void Function(GThreadFragmentData_mediaCategories_coverImageBuilder)?
              updates]) =>
      (new GThreadFragmentData_mediaCategories_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GThreadFragmentData_mediaCategories_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GThreadFragmentData_mediaCategories_coverImage', 'G__typename');
  }

  @override
  GThreadFragmentData_mediaCategories_coverImage rebuild(
          void Function(GThreadFragmentData_mediaCategories_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadFragmentData_mediaCategories_coverImageBuilder toBuilder() =>
      new GThreadFragmentData_mediaCategories_coverImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadFragmentData_mediaCategories_coverImage &&
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
            r'GThreadFragmentData_mediaCategories_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GThreadFragmentData_mediaCategories_coverImageBuilder
    implements
        Builder<GThreadFragmentData_mediaCategories_coverImage,
            GThreadFragmentData_mediaCategories_coverImageBuilder> {
  _$GThreadFragmentData_mediaCategories_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GThreadFragmentData_mediaCategories_coverImageBuilder() {
    GThreadFragmentData_mediaCategories_coverImage._initializeBuilder(this);
  }

  GThreadFragmentData_mediaCategories_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadFragmentData_mediaCategories_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadFragmentData_mediaCategories_coverImage;
  }

  @override
  void update(
      void Function(GThreadFragmentData_mediaCategories_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadFragmentData_mediaCategories_coverImage build() => _build();

  _$GThreadFragmentData_mediaCategories_coverImage _build() {
    final _$result = _$v ??
        new _$GThreadFragmentData_mediaCategories_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GThreadFragmentData_mediaCategories_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GThreadFragmentData_categories extends GThreadFragmentData_categories {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;

  factory _$GThreadFragmentData_categories(
          [void Function(GThreadFragmentData_categoriesBuilder)? updates]) =>
      (new GThreadFragmentData_categoriesBuilder()..update(updates))._build();

  _$GThreadFragmentData_categories._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadFragmentData_categories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GThreadFragmentData_categories', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GThreadFragmentData_categories', 'name');
  }

  @override
  GThreadFragmentData_categories rebuild(
          void Function(GThreadFragmentData_categoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadFragmentData_categoriesBuilder toBuilder() =>
      new GThreadFragmentData_categoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadFragmentData_categories &&
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
    return (newBuiltValueToStringHelper(r'GThreadFragmentData_categories')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GThreadFragmentData_categoriesBuilder
    implements
        Builder<GThreadFragmentData_categories,
            GThreadFragmentData_categoriesBuilder> {
  _$GThreadFragmentData_categories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GThreadFragmentData_categoriesBuilder() {
    GThreadFragmentData_categories._initializeBuilder(this);
  }

  GThreadFragmentData_categoriesBuilder get _$this {
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
  void replace(GThreadFragmentData_categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadFragmentData_categories;
  }

  @override
  void update(void Function(GThreadFragmentData_categoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadFragmentData_categories build() => _build();

  _$GThreadFragmentData_categories _build() {
    final _$result = _$v ??
        new _$GThreadFragmentData_categories._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GThreadFragmentData_categories', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GThreadFragmentData_categories', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GThreadFragmentData_categories', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GThreadFragmentData_user extends GThreadFragmentData_user {
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
  final BuiltList<_i2.GModRole?>? moderatorRoles;
  @override
  final GThreadFragmentData_user_avatar? avatar;

  factory _$GThreadFragmentData_user(
          [void Function(GThreadFragmentData_userBuilder)? updates]) =>
      (new GThreadFragmentData_userBuilder()..update(updates))._build();

  _$GThreadFragmentData_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadFragmentData_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GThreadFragmentData_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GThreadFragmentData_user', 'name');
  }

  @override
  GThreadFragmentData_user rebuild(
          void Function(GThreadFragmentData_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadFragmentData_userBuilder toBuilder() =>
      new GThreadFragmentData_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadFragmentData_user &&
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
    return (newBuiltValueToStringHelper(r'GThreadFragmentData_user')
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

class GThreadFragmentData_userBuilder
    implements
        Builder<GThreadFragmentData_user, GThreadFragmentData_userBuilder> {
  _$GThreadFragmentData_user? _$v;

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

  ListBuilder<_i2.GModRole?>? _moderatorRoles;
  ListBuilder<_i2.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i2.GModRole?>();
  set moderatorRoles(ListBuilder<_i2.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GThreadFragmentData_user_avatarBuilder? _avatar;
  GThreadFragmentData_user_avatarBuilder get avatar =>
      _$this._avatar ??= new GThreadFragmentData_user_avatarBuilder();
  set avatar(GThreadFragmentData_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GThreadFragmentData_userBuilder() {
    GThreadFragmentData_user._initializeBuilder(this);
  }

  GThreadFragmentData_userBuilder get _$this {
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
  void replace(GThreadFragmentData_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadFragmentData_user;
  }

  @override
  void update(void Function(GThreadFragmentData_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadFragmentData_user build() => _build();

  _$GThreadFragmentData_user _build() {
    _$GThreadFragmentData_user _$result;
    try {
      _$result = _$v ??
          new _$GThreadFragmentData_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GThreadFragmentData_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GThreadFragmentData_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GThreadFragmentData_user', 'name'),
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
            r'GThreadFragmentData_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadFragmentData_user_avatar
    extends GThreadFragmentData_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GThreadFragmentData_user_avatar(
          [void Function(GThreadFragmentData_user_avatarBuilder)? updates]) =>
      (new GThreadFragmentData_user_avatarBuilder()..update(updates))._build();

  _$GThreadFragmentData_user_avatar._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadFragmentData_user_avatar', 'G__typename');
  }

  @override
  GThreadFragmentData_user_avatar rebuild(
          void Function(GThreadFragmentData_user_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadFragmentData_user_avatarBuilder toBuilder() =>
      new GThreadFragmentData_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadFragmentData_user_avatar &&
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
    return (newBuiltValueToStringHelper(r'GThreadFragmentData_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GThreadFragmentData_user_avatarBuilder
    implements
        Builder<GThreadFragmentData_user_avatar,
            GThreadFragmentData_user_avatarBuilder> {
  _$GThreadFragmentData_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GThreadFragmentData_user_avatarBuilder() {
    GThreadFragmentData_user_avatar._initializeBuilder(this);
  }

  GThreadFragmentData_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadFragmentData_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadFragmentData_user_avatar;
  }

  @override
  void update(void Function(GThreadFragmentData_user_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadFragmentData_user_avatar build() => _build();

  _$GThreadFragmentData_user_avatar _build() {
    final _$result = _$v ??
        new _$GThreadFragmentData_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GThreadFragmentData_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GThreadFragmentData_replyUser extends GThreadFragmentData_replyUser {
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
  final BuiltList<_i2.GModRole?>? moderatorRoles;
  @override
  final GThreadFragmentData_replyUser_avatar? avatar;

  factory _$GThreadFragmentData_replyUser(
          [void Function(GThreadFragmentData_replyUserBuilder)? updates]) =>
      (new GThreadFragmentData_replyUserBuilder()..update(updates))._build();

  _$GThreadFragmentData_replyUser._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadFragmentData_replyUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GThreadFragmentData_replyUser', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GThreadFragmentData_replyUser', 'name');
  }

  @override
  GThreadFragmentData_replyUser rebuild(
          void Function(GThreadFragmentData_replyUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadFragmentData_replyUserBuilder toBuilder() =>
      new GThreadFragmentData_replyUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadFragmentData_replyUser &&
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
    return (newBuiltValueToStringHelper(r'GThreadFragmentData_replyUser')
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

class GThreadFragmentData_replyUserBuilder
    implements
        Builder<GThreadFragmentData_replyUser,
            GThreadFragmentData_replyUserBuilder> {
  _$GThreadFragmentData_replyUser? _$v;

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

  ListBuilder<_i2.GModRole?>? _moderatorRoles;
  ListBuilder<_i2.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i2.GModRole?>();
  set moderatorRoles(ListBuilder<_i2.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GThreadFragmentData_replyUser_avatarBuilder? _avatar;
  GThreadFragmentData_replyUser_avatarBuilder get avatar =>
      _$this._avatar ??= new GThreadFragmentData_replyUser_avatarBuilder();
  set avatar(GThreadFragmentData_replyUser_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GThreadFragmentData_replyUserBuilder() {
    GThreadFragmentData_replyUser._initializeBuilder(this);
  }

  GThreadFragmentData_replyUserBuilder get _$this {
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
  void replace(GThreadFragmentData_replyUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadFragmentData_replyUser;
  }

  @override
  void update(void Function(GThreadFragmentData_replyUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadFragmentData_replyUser build() => _build();

  _$GThreadFragmentData_replyUser _build() {
    _$GThreadFragmentData_replyUser _$result;
    try {
      _$result = _$v ??
          new _$GThreadFragmentData_replyUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GThreadFragmentData_replyUser', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GThreadFragmentData_replyUser', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GThreadFragmentData_replyUser', 'name'),
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
            r'GThreadFragmentData_replyUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThreadFragmentData_replyUser_avatar
    extends GThreadFragmentData_replyUser_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GThreadFragmentData_replyUser_avatar(
          [void Function(GThreadFragmentData_replyUser_avatarBuilder)?
              updates]) =>
      (new GThreadFragmentData_replyUser_avatarBuilder()..update(updates))
          ._build();

  _$GThreadFragmentData_replyUser_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThreadFragmentData_replyUser_avatar', 'G__typename');
  }

  @override
  GThreadFragmentData_replyUser_avatar rebuild(
          void Function(GThreadFragmentData_replyUser_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadFragmentData_replyUser_avatarBuilder toBuilder() =>
      new GThreadFragmentData_replyUser_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadFragmentData_replyUser_avatar &&
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
    return (newBuiltValueToStringHelper(r'GThreadFragmentData_replyUser_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GThreadFragmentData_replyUser_avatarBuilder
    implements
        Builder<GThreadFragmentData_replyUser_avatar,
            GThreadFragmentData_replyUser_avatarBuilder> {
  _$GThreadFragmentData_replyUser_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GThreadFragmentData_replyUser_avatarBuilder() {
    GThreadFragmentData_replyUser_avatar._initializeBuilder(this);
  }

  GThreadFragmentData_replyUser_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadFragmentData_replyUser_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadFragmentData_replyUser_avatar;
  }

  @override
  void update(
      void Function(GThreadFragmentData_replyUser_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadFragmentData_replyUser_avatar build() => _build();

  _$GThreadFragmentData_replyUser_avatar _build() {
    final _$result = _$v ??
        new _$GThreadFragmentData_replyUser_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GThreadFragmentData_replyUser_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
