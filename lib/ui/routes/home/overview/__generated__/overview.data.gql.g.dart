// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GHomeOverviewData> _$gHomeOverviewDataSerializer =
    new _$GHomeOverviewDataSerializer();
Serializer<GHomeOverviewData_releasing> _$gHomeOverviewDataReleasingSerializer =
    new _$GHomeOverviewData_releasingSerializer();
Serializer<GHomeOverviewData_releasing_media>
    _$gHomeOverviewDataReleasingMediaSerializer =
    new _$GHomeOverviewData_releasing_mediaSerializer();
Serializer<GHomeOverviewData_releasing_media_nextAiringEpisode>
    _$gHomeOverviewDataReleasingMediaNextAiringEpisodeSerializer =
    new _$GHomeOverviewData_releasing_media_nextAiringEpisodeSerializer();
Serializer<GHomeOverviewData_releasing_media_airingSchedule>
    _$gHomeOverviewDataReleasingMediaAiringScheduleSerializer =
    new _$GHomeOverviewData_releasing_media_airingScheduleSerializer();
Serializer<GHomeOverviewData_releasing_media_airingSchedule_edges>
    _$gHomeOverviewDataReleasingMediaAiringScheduleEdgesSerializer =
    new _$GHomeOverviewData_releasing_media_airingSchedule_edgesSerializer();
Serializer<GHomeOverviewData_releasing_media_airingSchedule_edges_node>
    _$gHomeOverviewDataReleasingMediaAiringScheduleEdgesNodeSerializer =
    new _$GHomeOverviewData_releasing_media_airingSchedule_edges_nodeSerializer();
Serializer<GHomeOverviewData_releasing_media_title>
    _$gHomeOverviewDataReleasingMediaTitleSerializer =
    new _$GHomeOverviewData_releasing_media_titleSerializer();
Serializer<GHomeOverviewData_releasing_media_coverImage>
    _$gHomeOverviewDataReleasingMediaCoverImageSerializer =
    new _$GHomeOverviewData_releasing_media_coverImageSerializer();
Serializer<GHomeOverviewData_list> _$gHomeOverviewDataListSerializer =
    new _$GHomeOverviewData_listSerializer();
Serializer<GHomeOverviewData_list_mediaList>
    _$gHomeOverviewDataListMediaListSerializer =
    new _$GHomeOverviewData_list_mediaListSerializer();
Serializer<GHomeOverviewData_list_mediaList_startedAt>
    _$gHomeOverviewDataListMediaListStartedAtSerializer =
    new _$GHomeOverviewData_list_mediaList_startedAtSerializer();
Serializer<GHomeOverviewData_list_mediaList_completedAt>
    _$gHomeOverviewDataListMediaListCompletedAtSerializer =
    new _$GHomeOverviewData_list_mediaList_completedAtSerializer();
Serializer<GHomeOverviewData_list_mediaList_media>
    _$gHomeOverviewDataListMediaListMediaSerializer =
    new _$GHomeOverviewData_list_mediaList_mediaSerializer();
Serializer<GHomeOverviewData_list_mediaList_media_title>
    _$gHomeOverviewDataListMediaListMediaTitleSerializer =
    new _$GHomeOverviewData_list_mediaList_media_titleSerializer();
Serializer<GHomeOverviewData_list_mediaList_media_coverImage>
    _$gHomeOverviewDataListMediaListMediaCoverImageSerializer =
    new _$GHomeOverviewData_list_mediaList_media_coverImageSerializer();
Serializer<GHomeOverviewData_list_mediaList_media_startDate>
    _$gHomeOverviewDataListMediaListMediaStartDateSerializer =
    new _$GHomeOverviewData_list_mediaList_media_startDateSerializer();
Serializer<GHomeOverviewData_forums> _$gHomeOverviewDataForumsSerializer =
    new _$GHomeOverviewData_forumsSerializer();
Serializer<GHomeOverviewData_forums_threads>
    _$gHomeOverviewDataForumsThreadsSerializer =
    new _$GHomeOverviewData_forums_threadsSerializer();
Serializer<GHomeOverviewData_forums_threads_mediaCategories>
    _$gHomeOverviewDataForumsThreadsMediaCategoriesSerializer =
    new _$GHomeOverviewData_forums_threads_mediaCategoriesSerializer();
Serializer<GHomeOverviewData_forums_threads_mediaCategories_title>
    _$gHomeOverviewDataForumsThreadsMediaCategoriesTitleSerializer =
    new _$GHomeOverviewData_forums_threads_mediaCategories_titleSerializer();
Serializer<GHomeOverviewData_forums_threads_mediaCategories_coverImage>
    _$gHomeOverviewDataForumsThreadsMediaCategoriesCoverImageSerializer =
    new _$GHomeOverviewData_forums_threads_mediaCategories_coverImageSerializer();
Serializer<GHomeOverviewData_forums_threads_categories>
    _$gHomeOverviewDataForumsThreadsCategoriesSerializer =
    new _$GHomeOverviewData_forums_threads_categoriesSerializer();
Serializer<GHomeOverviewData_forums_threads_user>
    _$gHomeOverviewDataForumsThreadsUserSerializer =
    new _$GHomeOverviewData_forums_threads_userSerializer();
Serializer<GHomeOverviewData_forums_threads_user_avatar>
    _$gHomeOverviewDataForumsThreadsUserAvatarSerializer =
    new _$GHomeOverviewData_forums_threads_user_avatarSerializer();
Serializer<GHomeOverviewData_forums_threads_replyUser>
    _$gHomeOverviewDataForumsThreadsReplyUserSerializer =
    new _$GHomeOverviewData_forums_threads_replyUserSerializer();
Serializer<GHomeOverviewData_forums_threads_replyUser_avatar>
    _$gHomeOverviewDataForumsThreadsReplyUserAvatarSerializer =
    new _$GHomeOverviewData_forums_threads_replyUser_avatarSerializer();
Serializer<GHomeOverviewData_reviews> _$gHomeOverviewDataReviewsSerializer =
    new _$GHomeOverviewData_reviewsSerializer();
Serializer<GHomeOverviewData_reviews_reviews>
    _$gHomeOverviewDataReviewsReviewsSerializer =
    new _$GHomeOverviewData_reviews_reviewsSerializer();
Serializer<GHomeOverviewData_reviews_reviews_media>
    _$gHomeOverviewDataReviewsReviewsMediaSerializer =
    new _$GHomeOverviewData_reviews_reviews_mediaSerializer();
Serializer<GHomeOverviewData_reviews_reviews_media_title>
    _$gHomeOverviewDataReviewsReviewsMediaTitleSerializer =
    new _$GHomeOverviewData_reviews_reviews_media_titleSerializer();
Serializer<GHomeOverviewData_reviews_reviews_user>
    _$gHomeOverviewDataReviewsReviewsUserSerializer =
    new _$GHomeOverviewData_reviews_reviews_userSerializer();
Serializer<GHomeOverviewData_reviews_reviews_user_avatar>
    _$gHomeOverviewDataReviewsReviewsUserAvatarSerializer =
    new _$GHomeOverviewData_reviews_reviews_user_avatarSerializer();

class _$GHomeOverviewDataSerializer
    implements StructuredSerializer<GHomeOverviewData> {
  @override
  final Iterable<Type> types = const [GHomeOverviewData, _$GHomeOverviewData];
  @override
  final String wireName = 'GHomeOverviewData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GHomeOverviewData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.releasing;
    if (value != null) {
      result
        ..add('releasing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GHomeOverviewData_releasing)));
    }
    value = object.list;
    if (value != null) {
      result
        ..add('list')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GHomeOverviewData_list)));
    }
    value = object.forums;
    if (value != null) {
      result
        ..add('forums')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GHomeOverviewData_forums)));
    }
    value = object.reviews;
    if (value != null) {
      result
        ..add('reviews')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GHomeOverviewData_reviews)));
    }
    return result;
  }

  @override
  GHomeOverviewData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewDataBuilder();

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
        case 'releasing':
          result.releasing.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GHomeOverviewData_releasing))!
              as GHomeOverviewData_releasing);
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GHomeOverviewData_list))!
              as GHomeOverviewData_list);
          break;
        case 'forums':
          result.forums.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GHomeOverviewData_forums))!
              as GHomeOverviewData_forums);
          break;
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GHomeOverviewData_reviews))!
              as GHomeOverviewData_reviews);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_releasingSerializer
    implements StructuredSerializer<GHomeOverviewData_releasing> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_releasing,
    _$GHomeOverviewData_releasing
  ];
  @override
  final String wireName = 'GHomeOverviewData_releasing';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHomeOverviewData_releasing object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GHomeOverviewData_releasing_media)
            ])));
    }
    return result;
  }

  @override
  GHomeOverviewData_releasing deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_releasingBuilder();

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
        case 'media':
          result.media.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GHomeOverviewData_releasing_media)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_releasing_mediaSerializer
    implements StructuredSerializer<GHomeOverviewData_releasing_media> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_releasing_media,
    _$GHomeOverviewData_releasing_media
  ];
  @override
  final String wireName = 'GHomeOverviewData_releasing_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHomeOverviewData_releasing_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.nextAiringEpisode;
    if (value != null) {
      result
        ..add('nextAiringEpisode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GHomeOverviewData_releasing_media_nextAiringEpisode)));
    }
    value = object.airingSchedule;
    if (value != null) {
      result
        ..add('airingSchedule')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GHomeOverviewData_releasing_media_airingSchedule)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaType)));
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
            specifiedType: const FullType(_i3.GMediaFormat)));
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
                const FullType(GHomeOverviewData_releasing_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GHomeOverviewData_releasing_media_coverImage)));
    }
    return result;
  }

  @override
  GHomeOverviewData_releasing_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_releasing_mediaBuilder();

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
        case 'nextAiringEpisode':
          result.nextAiringEpisode.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_releasing_media_nextAiringEpisode))!
              as GHomeOverviewData_releasing_media_nextAiringEpisode);
          break;
        case 'airingSchedule':
          result.airingSchedule.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_releasing_media_airingSchedule))!
              as GHomeOverviewData_releasing_media_airingSchedule);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i3.GMediaType)) as _i3.GMediaType?;
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
                  specifiedType: const FullType(_i3.GMediaFormat))
              as _i3.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GHomeOverviewData_releasing_media_title))!
              as GHomeOverviewData_releasing_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_releasing_media_coverImage))!
              as GHomeOverviewData_releasing_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_releasing_media_nextAiringEpisodeSerializer
    implements
        StructuredSerializer<
            GHomeOverviewData_releasing_media_nextAiringEpisode> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_releasing_media_nextAiringEpisode,
    _$GHomeOverviewData_releasing_media_nextAiringEpisode
  ];
  @override
  final String wireName = 'GHomeOverviewData_releasing_media_nextAiringEpisode';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_releasing_media_nextAiringEpisode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'airingAt',
      serializers.serialize(object.airingAt,
          specifiedType: const FullType(int)),
      'timeUntilAiring',
      serializers.serialize(object.timeUntilAiring,
          specifiedType: const FullType(int)),
      'episode',
      serializers.serialize(object.episode, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GHomeOverviewData_releasing_media_nextAiringEpisode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder();

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
        case 'airingAt':
          result.airingAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'timeUntilAiring':
          result.timeUntilAiring = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'episode':
          result.episode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_releasing_media_airingScheduleSerializer
    implements
        StructuredSerializer<GHomeOverviewData_releasing_media_airingSchedule> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_releasing_media_airingSchedule,
    _$GHomeOverviewData_releasing_media_airingSchedule
  ];
  @override
  final String wireName = 'GHomeOverviewData_releasing_media_airingSchedule';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_releasing_media_airingSchedule object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GHomeOverviewData_releasing_media_airingSchedule_edges)
            ])));
    }
    return result;
  }

  @override
  GHomeOverviewData_releasing_media_airingSchedule deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GHomeOverviewData_releasing_media_airingScheduleBuilder();

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
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GHomeOverviewData_releasing_media_airingSchedule_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_releasing_media_airingSchedule_edgesSerializer
    implements
        StructuredSerializer<
            GHomeOverviewData_releasing_media_airingSchedule_edges> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_releasing_media_airingSchedule_edges,
    _$GHomeOverviewData_releasing_media_airingSchedule_edges
  ];
  @override
  final String wireName =
      'GHomeOverviewData_releasing_media_airingSchedule_edges';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_releasing_media_airingSchedule_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GHomeOverviewData_releasing_media_airingSchedule_edges_node)));
    }
    return result;
  }

  @override
  GHomeOverviewData_releasing_media_airingSchedule_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder();

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
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_releasing_media_airingSchedule_edges_node))!
              as GHomeOverviewData_releasing_media_airingSchedule_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_releasing_media_airingSchedule_edges_nodeSerializer
    implements
        StructuredSerializer<
            GHomeOverviewData_releasing_media_airingSchedule_edges_node> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_releasing_media_airingSchedule_edges_node,
    _$GHomeOverviewData_releasing_media_airingSchedule_edges_node
  ];
  @override
  final String wireName =
      'GHomeOverviewData_releasing_media_airingSchedule_edges_node';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_releasing_media_airingSchedule_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'airingAt',
      serializers.serialize(object.airingAt,
          specifiedType: const FullType(int)),
      'timeUntilAiring',
      serializers.serialize(object.timeUntilAiring,
          specifiedType: const FullType(int)),
      'episode',
      serializers.serialize(object.episode, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GHomeOverviewData_releasing_media_airingSchedule_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder();

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
        case 'airingAt':
          result.airingAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'timeUntilAiring':
          result.timeUntilAiring = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'episode':
          result.episode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_releasing_media_titleSerializer
    implements StructuredSerializer<GHomeOverviewData_releasing_media_title> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_releasing_media_title,
    _$GHomeOverviewData_releasing_media_title
  ];
  @override
  final String wireName = 'GHomeOverviewData_releasing_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHomeOverviewData_releasing_media_title object,
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
  GHomeOverviewData_releasing_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_releasing_media_titleBuilder();

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

class _$GHomeOverviewData_releasing_media_coverImageSerializer
    implements
        StructuredSerializer<GHomeOverviewData_releasing_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_releasing_media_coverImage,
    _$GHomeOverviewData_releasing_media_coverImage
  ];
  @override
  final String wireName = 'GHomeOverviewData_releasing_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_releasing_media_coverImage object,
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
  GHomeOverviewData_releasing_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_releasing_media_coverImageBuilder();

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

class _$GHomeOverviewData_listSerializer
    implements StructuredSerializer<GHomeOverviewData_list> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_list,
    _$GHomeOverviewData_list
  ];
  @override
  final String wireName = 'GHomeOverviewData_list';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHomeOverviewData_list object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.mediaList;
    if (value != null) {
      result
        ..add('mediaList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GHomeOverviewData_list_mediaList)
            ])));
    }
    return result;
  }

  @override
  GHomeOverviewData_list deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_listBuilder();

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
        case 'mediaList':
          result.mediaList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GHomeOverviewData_list_mediaList)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_list_mediaListSerializer
    implements StructuredSerializer<GHomeOverviewData_list_mediaList> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_list_mediaList,
    _$GHomeOverviewData_list_mediaList
  ];
  @override
  final String wireName = 'GHomeOverviewData_list_mediaList';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHomeOverviewData_list_mediaList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'mediaId',
      serializers.serialize(object.mediaId, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaListStatus)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.progress;
    if (value != null) {
      result
        ..add('progress')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.progressVolumes;
    if (value != null) {
      result
        ..add('progressVolumes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.priority;
    if (value != null) {
      result
        ..add('priority')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hiddenFromStatusLists;
    if (value != null) {
      result
        ..add('hiddenFromStatusLists')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.private;
    if (value != null) {
      result
        ..add('private')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.repeat;
    if (value != null) {
      result
        ..add('repeat')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.customLists;
    if (value != null) {
      result
        ..add('customLists')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i5.JsonObject)));
    }
    value = object.startedAt;
    if (value != null) {
      result
        ..add('startedAt')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GHomeOverviewData_list_mediaList_startedAt)));
    }
    value = object.completedAt;
    if (value != null) {
      result
        ..add('completedAt')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GHomeOverviewData_list_mediaList_completedAt)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GHomeOverviewData_list_mediaList_media)));
    }
    return result;
  }

  @override
  GHomeOverviewData_list_mediaList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_list_mediaListBuilder();

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
        case 'mediaId':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaListStatus))
              as _i3.GMediaListStatus?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'progressVolumes':
          result.progressVolumes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hiddenFromStatusLists':
          result.hiddenFromStatusLists = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'repeat':
          result.repeat = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'customLists':
          result.customLists = serializers.deserialize(value,
              specifiedType: const FullType(_i5.JsonObject)) as _i5.JsonObject?;
          break;
        case 'startedAt':
          result.startedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_list_mediaList_startedAt))!
              as GHomeOverviewData_list_mediaList_startedAt);
          break;
        case 'completedAt':
          result.completedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_list_mediaList_completedAt))!
              as GHomeOverviewData_list_mediaList_completedAt);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GHomeOverviewData_list_mediaList_media))!
              as GHomeOverviewData_list_mediaList_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_list_mediaList_startedAtSerializer
    implements
        StructuredSerializer<GHomeOverviewData_list_mediaList_startedAt> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_list_mediaList_startedAt,
    _$GHomeOverviewData_list_mediaList_startedAt
  ];
  @override
  final String wireName = 'GHomeOverviewData_list_mediaList_startedAt';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_list_mediaList_startedAt object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GHomeOverviewData_list_mediaList_startedAt deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_list_mediaList_startedAtBuilder();

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
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_list_mediaList_completedAtSerializer
    implements
        StructuredSerializer<GHomeOverviewData_list_mediaList_completedAt> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_list_mediaList_completedAt,
    _$GHomeOverviewData_list_mediaList_completedAt
  ];
  @override
  final String wireName = 'GHomeOverviewData_list_mediaList_completedAt';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_list_mediaList_completedAt object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GHomeOverviewData_list_mediaList_completedAt deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_list_mediaList_completedAtBuilder();

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
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_list_mediaList_mediaSerializer
    implements StructuredSerializer<GHomeOverviewData_list_mediaList_media> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_list_mediaList_media,
    _$GHomeOverviewData_list_mediaList_media
  ];
  @override
  final String wireName = 'GHomeOverviewData_list_mediaList_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHomeOverviewData_list_mediaList_media object,
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
            specifiedType: const FullType(_i3.GMediaType)));
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
            specifiedType: const FullType(_i3.GMediaFormat)));
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
                const FullType(GHomeOverviewData_list_mediaList_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GHomeOverviewData_list_mediaList_media_coverImage)));
    }
    value = object.episodes;
    if (value != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chapters;
    if (value != null) {
      result
        ..add('chapters')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaStatus)));
    }
    value = object.averageScore;
    if (value != null) {
      result
        ..add('averageScore')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.popularity;
    if (value != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GHomeOverviewData_list_mediaList_media_startDate)));
    }
    return result;
  }

  @override
  GHomeOverviewData_list_mediaList_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_list_mediaList_mediaBuilder();

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
              specifiedType: const FullType(_i3.GMediaType)) as _i3.GMediaType?;
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
                  specifiedType: const FullType(_i3.GMediaFormat))
              as _i3.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_list_mediaList_media_title))!
              as GHomeOverviewData_list_mediaList_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_list_mediaList_media_coverImage))!
              as GHomeOverviewData_list_mediaList_media_coverImage);
          break;
        case 'episodes':
          result.episodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chapters':
          result.chapters = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaStatus))
              as _i3.GMediaStatus?;
          break;
        case 'averageScore':
          result.averageScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startDate':
          result.startDate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_list_mediaList_media_startDate))!
              as GHomeOverviewData_list_mediaList_media_startDate);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_list_mediaList_media_titleSerializer
    implements
        StructuredSerializer<GHomeOverviewData_list_mediaList_media_title> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_list_mediaList_media_title,
    _$GHomeOverviewData_list_mediaList_media_title
  ];
  @override
  final String wireName = 'GHomeOverviewData_list_mediaList_media_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_list_mediaList_media_title object,
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
  GHomeOverviewData_list_mediaList_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_list_mediaList_media_titleBuilder();

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

class _$GHomeOverviewData_list_mediaList_media_coverImageSerializer
    implements
        StructuredSerializer<
            GHomeOverviewData_list_mediaList_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_list_mediaList_media_coverImage,
    _$GHomeOverviewData_list_mediaList_media_coverImage
  ];
  @override
  final String wireName = 'GHomeOverviewData_list_mediaList_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_list_mediaList_media_coverImage object,
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
  GHomeOverviewData_list_mediaList_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GHomeOverviewData_list_mediaList_media_coverImageBuilder();

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

class _$GHomeOverviewData_list_mediaList_media_startDateSerializer
    implements
        StructuredSerializer<GHomeOverviewData_list_mediaList_media_startDate> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_list_mediaList_media_startDate,
    _$GHomeOverviewData_list_mediaList_media_startDate
  ];
  @override
  final String wireName = 'GHomeOverviewData_list_mediaList_media_startDate';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_list_mediaList_media_startDate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GHomeOverviewData_list_mediaList_media_startDate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GHomeOverviewData_list_mediaList_media_startDateBuilder();

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
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_forumsSerializer
    implements StructuredSerializer<GHomeOverviewData_forums> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_forums,
    _$GHomeOverviewData_forums
  ];
  @override
  final String wireName = 'GHomeOverviewData_forums';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHomeOverviewData_forums object,
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
              const FullType.nullable(GHomeOverviewData_forums_threads)
            ])));
    }
    return result;
  }

  @override
  GHomeOverviewData_forums deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_forumsBuilder();

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
                const FullType.nullable(GHomeOverviewData_forums_threads)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_forums_threadsSerializer
    implements StructuredSerializer<GHomeOverviewData_forums_threads> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_forums_threads,
    _$GHomeOverviewData_forums_threads
  ];
  @override
  final String wireName = 'GHomeOverviewData_forums_threads';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHomeOverviewData_forums_threads object,
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
                  GHomeOverviewData_forums_threads_mediaCategories)
            ])));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GHomeOverviewData_forums_threads_categories)
            ])));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GHomeOverviewData_forums_threads_user)));
    }
    value = object.replyUser;
    if (value != null) {
      result
        ..add('replyUser')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GHomeOverviewData_forums_threads_replyUser)));
    }
    return result;
  }

  @override
  GHomeOverviewData_forums_threads deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_forums_threadsBuilder();

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
                    GHomeOverviewData_forums_threads_mediaCategories)
              ]))! as BuiltList<Object?>);
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GHomeOverviewData_forums_threads_categories)
              ]))! as BuiltList<Object?>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GHomeOverviewData_forums_threads_user))!
              as GHomeOverviewData_forums_threads_user);
          break;
        case 'replyUser':
          result.replyUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_forums_threads_replyUser))!
              as GHomeOverviewData_forums_threads_replyUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_forums_threads_mediaCategoriesSerializer
    implements
        StructuredSerializer<GHomeOverviewData_forums_threads_mediaCategories> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_forums_threads_mediaCategories,
    _$GHomeOverviewData_forums_threads_mediaCategories
  ];
  @override
  final String wireName = 'GHomeOverviewData_forums_threads_mediaCategories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_forums_threads_mediaCategories object,
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
            specifiedType: const FullType(_i3.GMediaType)));
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
            specifiedType: const FullType(_i3.GMediaFormat)));
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
                GHomeOverviewData_forums_threads_mediaCategories_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GHomeOverviewData_forums_threads_mediaCategories_coverImage)));
    }
    return result;
  }

  @override
  GHomeOverviewData_forums_threads_mediaCategories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GHomeOverviewData_forums_threads_mediaCategoriesBuilder();

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
              specifiedType: const FullType(_i3.GMediaType)) as _i3.GMediaType?;
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
                  specifiedType: const FullType(_i3.GMediaFormat))
              as _i3.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_forums_threads_mediaCategories_title))!
              as GHomeOverviewData_forums_threads_mediaCategories_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_forums_threads_mediaCategories_coverImage))!
              as GHomeOverviewData_forums_threads_mediaCategories_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_forums_threads_mediaCategories_titleSerializer
    implements
        StructuredSerializer<
            GHomeOverviewData_forums_threads_mediaCategories_title> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_forums_threads_mediaCategories_title,
    _$GHomeOverviewData_forums_threads_mediaCategories_title
  ];
  @override
  final String wireName =
      'GHomeOverviewData_forums_threads_mediaCategories_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_forums_threads_mediaCategories_title object,
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
  GHomeOverviewData_forums_threads_mediaCategories_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GHomeOverviewData_forums_threads_mediaCategories_titleBuilder();

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

class _$GHomeOverviewData_forums_threads_mediaCategories_coverImageSerializer
    implements
        StructuredSerializer<
            GHomeOverviewData_forums_threads_mediaCategories_coverImage> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_forums_threads_mediaCategories_coverImage,
    _$GHomeOverviewData_forums_threads_mediaCategories_coverImage
  ];
  @override
  final String wireName =
      'GHomeOverviewData_forums_threads_mediaCategories_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_forums_threads_mediaCategories_coverImage object,
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
  GHomeOverviewData_forums_threads_mediaCategories_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder();

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

class _$GHomeOverviewData_forums_threads_categoriesSerializer
    implements
        StructuredSerializer<GHomeOverviewData_forums_threads_categories> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_forums_threads_categories,
    _$GHomeOverviewData_forums_threads_categories
  ];
  @override
  final String wireName = 'GHomeOverviewData_forums_threads_categories';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_forums_threads_categories object,
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
  GHomeOverviewData_forums_threads_categories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_forums_threads_categoriesBuilder();

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

class _$GHomeOverviewData_forums_threads_userSerializer
    implements StructuredSerializer<GHomeOverviewData_forums_threads_user> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_forums_threads_user,
    _$GHomeOverviewData_forums_threads_user
  ];
  @override
  final String wireName = 'GHomeOverviewData_forums_threads_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHomeOverviewData_forums_threads_user object,
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
                BuiltList, const [const FullType.nullable(_i3.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GHomeOverviewData_forums_threads_user_avatar)));
    }
    return result;
  }

  @override
  GHomeOverviewData_forums_threads_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_forums_threads_userBuilder();

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
                const FullType.nullable(_i3.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_forums_threads_user_avatar))!
              as GHomeOverviewData_forums_threads_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_forums_threads_user_avatarSerializer
    implements
        StructuredSerializer<GHomeOverviewData_forums_threads_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_forums_threads_user_avatar,
    _$GHomeOverviewData_forums_threads_user_avatar
  ];
  @override
  final String wireName = 'GHomeOverviewData_forums_threads_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_forums_threads_user_avatar object,
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
  GHomeOverviewData_forums_threads_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_forums_threads_user_avatarBuilder();

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

class _$GHomeOverviewData_forums_threads_replyUserSerializer
    implements
        StructuredSerializer<GHomeOverviewData_forums_threads_replyUser> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_forums_threads_replyUser,
    _$GHomeOverviewData_forums_threads_replyUser
  ];
  @override
  final String wireName = 'GHomeOverviewData_forums_threads_replyUser';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_forums_threads_replyUser object,
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
                BuiltList, const [const FullType.nullable(_i3.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GHomeOverviewData_forums_threads_replyUser_avatar)));
    }
    return result;
  }

  @override
  GHomeOverviewData_forums_threads_replyUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_forums_threads_replyUserBuilder();

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
                const FullType.nullable(_i3.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_forums_threads_replyUser_avatar))!
              as GHomeOverviewData_forums_threads_replyUser_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_forums_threads_replyUser_avatarSerializer
    implements
        StructuredSerializer<
            GHomeOverviewData_forums_threads_replyUser_avatar> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_forums_threads_replyUser_avatar,
    _$GHomeOverviewData_forums_threads_replyUser_avatar
  ];
  @override
  final String wireName = 'GHomeOverviewData_forums_threads_replyUser_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_forums_threads_replyUser_avatar object,
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
  GHomeOverviewData_forums_threads_replyUser_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GHomeOverviewData_forums_threads_replyUser_avatarBuilder();

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

class _$GHomeOverviewData_reviewsSerializer
    implements StructuredSerializer<GHomeOverviewData_reviews> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_reviews,
    _$GHomeOverviewData_reviews
  ];
  @override
  final String wireName = 'GHomeOverviewData_reviews';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHomeOverviewData_reviews object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.reviews;
    if (value != null) {
      result
        ..add('reviews')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GHomeOverviewData_reviews_reviews)
            ])));
    }
    return result;
  }

  @override
  GHomeOverviewData_reviews deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_reviewsBuilder();

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
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GHomeOverviewData_reviews_reviews)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_reviews_reviewsSerializer
    implements StructuredSerializer<GHomeOverviewData_reviews_reviews> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_reviews_reviews,
    _$GHomeOverviewData_reviews_reviews
  ];
  @override
  final String wireName = 'GHomeOverviewData_reviews_reviews';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHomeOverviewData_reviews_reviews object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ratingAmount;
    if (value != null) {
      result
        ..add('ratingAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.summary;
    if (value != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GHomeOverviewData_reviews_reviews_media)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GHomeOverviewData_reviews_reviews_user)));
    }
    return result;
  }

  @override
  GHomeOverviewData_reviews_reviews deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_reviews_reviewsBuilder();

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
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ratingAmount':
          result.ratingAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GHomeOverviewData_reviews_reviews_media))!
              as GHomeOverviewData_reviews_reviews_media);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GHomeOverviewData_reviews_reviews_user))!
              as GHomeOverviewData_reviews_reviews_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_reviews_reviews_mediaSerializer
    implements StructuredSerializer<GHomeOverviewData_reviews_reviews_media> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_reviews_reviews_media,
    _$GHomeOverviewData_reviews_reviews_media
  ];
  @override
  final String wireName = 'GHomeOverviewData_reviews_reviews_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHomeOverviewData_reviews_reviews_media object,
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
            specifiedType:
                const FullType(GHomeOverviewData_reviews_reviews_media_title)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaType)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GHomeOverviewData_reviews_reviews_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_reviews_reviews_mediaBuilder();

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
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_reviews_reviews_media_title))!
              as GHomeOverviewData_reviews_reviews_media_title);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i3.GMediaType)) as _i3.GMediaType?;
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_reviews_reviews_media_titleSerializer
    implements
        StructuredSerializer<GHomeOverviewData_reviews_reviews_media_title> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_reviews_reviews_media_title,
    _$GHomeOverviewData_reviews_reviews_media_title
  ];
  @override
  final String wireName = 'GHomeOverviewData_reviews_reviews_media_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_reviews_reviews_media_title object,
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
  GHomeOverviewData_reviews_reviews_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_reviews_reviews_media_titleBuilder();

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

class _$GHomeOverviewData_reviews_reviews_userSerializer
    implements StructuredSerializer<GHomeOverviewData_reviews_reviews_user> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_reviews_reviews_user,
    _$GHomeOverviewData_reviews_reviews_user
  ];
  @override
  final String wireName = 'GHomeOverviewData_reviews_reviews_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHomeOverviewData_reviews_reviews_user object,
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
                BuiltList, const [const FullType.nullable(_i3.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GHomeOverviewData_reviews_reviews_user_avatar)));
    }
    return result;
  }

  @override
  GHomeOverviewData_reviews_reviews_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_reviews_reviews_userBuilder();

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
                const FullType.nullable(_i3.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHomeOverviewData_reviews_reviews_user_avatar))!
              as GHomeOverviewData_reviews_reviews_user_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GHomeOverviewData_reviews_reviews_user_avatarSerializer
    implements
        StructuredSerializer<GHomeOverviewData_reviews_reviews_user_avatar> {
  @override
  final Iterable<Type> types = const [
    GHomeOverviewData_reviews_reviews_user_avatar,
    _$GHomeOverviewData_reviews_reviews_user_avatar
  ];
  @override
  final String wireName = 'GHomeOverviewData_reviews_reviews_user_avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHomeOverviewData_reviews_reviews_user_avatar object,
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
  GHomeOverviewData_reviews_reviews_user_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHomeOverviewData_reviews_reviews_user_avatarBuilder();

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

class _$GHomeOverviewData extends GHomeOverviewData {
  @override
  final String G__typename;
  @override
  final GHomeOverviewData_releasing? releasing;
  @override
  final GHomeOverviewData_list? list;
  @override
  final GHomeOverviewData_forums? forums;
  @override
  final GHomeOverviewData_reviews? reviews;

  factory _$GHomeOverviewData(
          [void Function(GHomeOverviewDataBuilder)? updates]) =>
      (new GHomeOverviewDataBuilder()..update(updates))._build();

  _$GHomeOverviewData._(
      {required this.G__typename,
      this.releasing,
      this.list,
      this.forums,
      this.reviews})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GHomeOverviewData', 'G__typename');
  }

  @override
  GHomeOverviewData rebuild(void Function(GHomeOverviewDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewDataBuilder toBuilder() =>
      new GHomeOverviewDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData &&
        G__typename == other.G__typename &&
        releasing == other.releasing &&
        list == other.list &&
        forums == other.forums &&
        reviews == other.reviews;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, releasing.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jc(_$hash, forums.hashCode);
    _$hash = $jc(_$hash, reviews.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GHomeOverviewData')
          ..add('G__typename', G__typename)
          ..add('releasing', releasing)
          ..add('list', list)
          ..add('forums', forums)
          ..add('reviews', reviews))
        .toString();
  }
}

class GHomeOverviewDataBuilder
    implements Builder<GHomeOverviewData, GHomeOverviewDataBuilder> {
  _$GHomeOverviewData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GHomeOverviewData_releasingBuilder? _releasing;
  GHomeOverviewData_releasingBuilder get releasing =>
      _$this._releasing ??= new GHomeOverviewData_releasingBuilder();
  set releasing(GHomeOverviewData_releasingBuilder? releasing) =>
      _$this._releasing = releasing;

  GHomeOverviewData_listBuilder? _list;
  GHomeOverviewData_listBuilder get list =>
      _$this._list ??= new GHomeOverviewData_listBuilder();
  set list(GHomeOverviewData_listBuilder? list) => _$this._list = list;

  GHomeOverviewData_forumsBuilder? _forums;
  GHomeOverviewData_forumsBuilder get forums =>
      _$this._forums ??= new GHomeOverviewData_forumsBuilder();
  set forums(GHomeOverviewData_forumsBuilder? forums) =>
      _$this._forums = forums;

  GHomeOverviewData_reviewsBuilder? _reviews;
  GHomeOverviewData_reviewsBuilder get reviews =>
      _$this._reviews ??= new GHomeOverviewData_reviewsBuilder();
  set reviews(GHomeOverviewData_reviewsBuilder? reviews) =>
      _$this._reviews = reviews;

  GHomeOverviewDataBuilder() {
    GHomeOverviewData._initializeBuilder(this);
  }

  GHomeOverviewDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _releasing = $v.releasing?.toBuilder();
      _list = $v.list?.toBuilder();
      _forums = $v.forums?.toBuilder();
      _reviews = $v.reviews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData;
  }

  @override
  void update(void Function(GHomeOverviewDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData build() => _build();

  _$GHomeOverviewData _build() {
    _$GHomeOverviewData _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GHomeOverviewData', 'G__typename'),
              releasing: _releasing?.build(),
              list: _list?.build(),
              forums: _forums?.build(),
              reviews: _reviews?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'releasing';
        _releasing?.build();
        _$failedField = 'list';
        _list?.build();
        _$failedField = 'forums';
        _forums?.build();
        _$failedField = 'reviews';
        _reviews?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GHomeOverviewData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_releasing extends GHomeOverviewData_releasing {
  @override
  final String G__typename;
  @override
  final BuiltList<GHomeOverviewData_releasing_media?>? media;

  factory _$GHomeOverviewData_releasing(
          [void Function(GHomeOverviewData_releasingBuilder)? updates]) =>
      (new GHomeOverviewData_releasingBuilder()..update(updates))._build();

  _$GHomeOverviewData_releasing._({required this.G__typename, this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GHomeOverviewData_releasing', 'G__typename');
  }

  @override
  GHomeOverviewData_releasing rebuild(
          void Function(GHomeOverviewData_releasingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_releasingBuilder toBuilder() =>
      new GHomeOverviewData_releasingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_releasing &&
        G__typename == other.G__typename &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GHomeOverviewData_releasing')
          ..add('G__typename', G__typename)
          ..add('media', media))
        .toString();
  }
}

class GHomeOverviewData_releasingBuilder
    implements
        Builder<GHomeOverviewData_releasing,
            GHomeOverviewData_releasingBuilder> {
  _$GHomeOverviewData_releasing? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GHomeOverviewData_releasing_media?>? _media;
  ListBuilder<GHomeOverviewData_releasing_media?> get media =>
      _$this._media ??= new ListBuilder<GHomeOverviewData_releasing_media?>();
  set media(ListBuilder<GHomeOverviewData_releasing_media?>? media) =>
      _$this._media = media;

  GHomeOverviewData_releasingBuilder() {
    GHomeOverviewData_releasing._initializeBuilder(this);
  }

  GHomeOverviewData_releasingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_releasing other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_releasing;
  }

  @override
  void update(void Function(GHomeOverviewData_releasingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_releasing build() => _build();

  _$GHomeOverviewData_releasing _build() {
    _$GHomeOverviewData_releasing _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_releasing._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GHomeOverviewData_releasing', 'G__typename'),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GHomeOverviewData_releasing', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_releasing_media
    extends GHomeOverviewData_releasing_media {
  @override
  final String G__typename;
  @override
  final GHomeOverviewData_releasing_media_nextAiringEpisode? nextAiringEpisode;
  @override
  final GHomeOverviewData_releasing_media_airingSchedule? airingSchedule;
  @override
  final int id;
  @override
  final _i3.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i3.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GHomeOverviewData_releasing_media_title? title;
  @override
  final GHomeOverviewData_releasing_media_coverImage? coverImage;

  factory _$GHomeOverviewData_releasing_media(
          [void Function(GHomeOverviewData_releasing_mediaBuilder)? updates]) =>
      (new GHomeOverviewData_releasing_mediaBuilder()..update(updates))
          ._build();

  _$GHomeOverviewData_releasing_media._(
      {required this.G__typename,
      this.nextAiringEpisode,
      this.airingSchedule,
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
        G__typename, r'GHomeOverviewData_releasing_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GHomeOverviewData_releasing_media', 'id');
  }

  @override
  GHomeOverviewData_releasing_media rebuild(
          void Function(GHomeOverviewData_releasing_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_releasing_mediaBuilder toBuilder() =>
      new GHomeOverviewData_releasing_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_releasing_media &&
        G__typename == other.G__typename &&
        nextAiringEpisode == other.nextAiringEpisode &&
        airingSchedule == other.airingSchedule &&
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
    _$hash = $jc(_$hash, nextAiringEpisode.hashCode);
    _$hash = $jc(_$hash, airingSchedule.hashCode);
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
    return (newBuiltValueToStringHelper(r'GHomeOverviewData_releasing_media')
          ..add('G__typename', G__typename)
          ..add('nextAiringEpisode', nextAiringEpisode)
          ..add('airingSchedule', airingSchedule)
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

class GHomeOverviewData_releasing_mediaBuilder
    implements
        Builder<GHomeOverviewData_releasing_media,
            GHomeOverviewData_releasing_mediaBuilder> {
  _$GHomeOverviewData_releasing_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder?
      _nextAiringEpisode;
  GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder
      get nextAiringEpisode => _$this._nextAiringEpisode ??=
          new GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder();
  set nextAiringEpisode(
          GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder?
              nextAiringEpisode) =>
      _$this._nextAiringEpisode = nextAiringEpisode;

  GHomeOverviewData_releasing_media_airingScheduleBuilder? _airingSchedule;
  GHomeOverviewData_releasing_media_airingScheduleBuilder get airingSchedule =>
      _$this._airingSchedule ??=
          new GHomeOverviewData_releasing_media_airingScheduleBuilder();
  set airingSchedule(
          GHomeOverviewData_releasing_media_airingScheduleBuilder?
              airingSchedule) =>
      _$this._airingSchedule = airingSchedule;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i3.GMediaType? _type;
  _i3.GMediaType? get type => _$this._type;
  set type(_i3.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i3.GMediaFormat? _format;
  _i3.GMediaFormat? get format => _$this._format;
  set format(_i3.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GHomeOverviewData_releasing_media_titleBuilder? _title;
  GHomeOverviewData_releasing_media_titleBuilder get title =>
      _$this._title ??= new GHomeOverviewData_releasing_media_titleBuilder();
  set title(GHomeOverviewData_releasing_media_titleBuilder? title) =>
      _$this._title = title;

  GHomeOverviewData_releasing_media_coverImageBuilder? _coverImage;
  GHomeOverviewData_releasing_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GHomeOverviewData_releasing_media_coverImageBuilder();
  set coverImage(
          GHomeOverviewData_releasing_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GHomeOverviewData_releasing_mediaBuilder() {
    GHomeOverviewData_releasing_media._initializeBuilder(this);
  }

  GHomeOverviewData_releasing_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nextAiringEpisode = $v.nextAiringEpisode?.toBuilder();
      _airingSchedule = $v.airingSchedule?.toBuilder();
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
  void replace(GHomeOverviewData_releasing_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_releasing_media;
  }

  @override
  void update(
      void Function(GHomeOverviewData_releasing_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_releasing_media build() => _build();

  _$GHomeOverviewData_releasing_media _build() {
    _$GHomeOverviewData_releasing_media _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_releasing_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GHomeOverviewData_releasing_media', 'G__typename'),
              nextAiringEpisode: _nextAiringEpisode?.build(),
              airingSchedule: _airingSchedule?.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GHomeOverviewData_releasing_media', 'id'),
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
        _$failedField = 'nextAiringEpisode';
        _nextAiringEpisode?.build();
        _$failedField = 'airingSchedule';
        _airingSchedule?.build();

        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GHomeOverviewData_releasing_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_releasing_media_nextAiringEpisode
    extends GHomeOverviewData_releasing_media_nextAiringEpisode {
  @override
  final String G__typename;
  @override
  final int airingAt;
  @override
  final int timeUntilAiring;
  @override
  final int episode;

  factory _$GHomeOverviewData_releasing_media_nextAiringEpisode(
          [void Function(
                  GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder)?
              updates]) =>
      (new GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_releasing_media_nextAiringEpisode._(
      {required this.G__typename,
      required this.airingAt,
      required this.timeUntilAiring,
      required this.episode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_releasing_media_nextAiringEpisode', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(airingAt,
        r'GHomeOverviewData_releasing_media_nextAiringEpisode', 'airingAt');
    BuiltValueNullFieldError.checkNotNull(
        timeUntilAiring,
        r'GHomeOverviewData_releasing_media_nextAiringEpisode',
        'timeUntilAiring');
    BuiltValueNullFieldError.checkNotNull(episode,
        r'GHomeOverviewData_releasing_media_nextAiringEpisode', 'episode');
  }

  @override
  GHomeOverviewData_releasing_media_nextAiringEpisode rebuild(
          void Function(
                  GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder toBuilder() =>
      new GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_releasing_media_nextAiringEpisode &&
        G__typename == other.G__typename &&
        airingAt == other.airingAt &&
        timeUntilAiring == other.timeUntilAiring &&
        episode == other.episode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, airingAt.hashCode);
    _$hash = $jc(_$hash, timeUntilAiring.hashCode);
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GHomeOverviewData_releasing_media_nextAiringEpisode')
          ..add('G__typename', G__typename)
          ..add('airingAt', airingAt)
          ..add('timeUntilAiring', timeUntilAiring)
          ..add('episode', episode))
        .toString();
  }
}

class GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder
    implements
        Builder<GHomeOverviewData_releasing_media_nextAiringEpisode,
            GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder> {
  _$GHomeOverviewData_releasing_media_nextAiringEpisode? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _airingAt;
  int? get airingAt => _$this._airingAt;
  set airingAt(int? airingAt) => _$this._airingAt = airingAt;

  int? _timeUntilAiring;
  int? get timeUntilAiring => _$this._timeUntilAiring;
  set timeUntilAiring(int? timeUntilAiring) =>
      _$this._timeUntilAiring = timeUntilAiring;

  int? _episode;
  int? get episode => _$this._episode;
  set episode(int? episode) => _$this._episode = episode;

  GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder() {
    GHomeOverviewData_releasing_media_nextAiringEpisode._initializeBuilder(
        this);
  }

  GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _airingAt = $v.airingAt;
      _timeUntilAiring = $v.timeUntilAiring;
      _episode = $v.episode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_releasing_media_nextAiringEpisode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_releasing_media_nextAiringEpisode;
  }

  @override
  void update(
      void Function(GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_releasing_media_nextAiringEpisode build() => _build();

  _$GHomeOverviewData_releasing_media_nextAiringEpisode _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_releasing_media_nextAiringEpisode._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GHomeOverviewData_releasing_media_nextAiringEpisode',
                'G__typename'),
            airingAt: BuiltValueNullFieldError.checkNotNull(
                airingAt,
                r'GHomeOverviewData_releasing_media_nextAiringEpisode',
                'airingAt'),
            timeUntilAiring: BuiltValueNullFieldError.checkNotNull(
                timeUntilAiring,
                r'GHomeOverviewData_releasing_media_nextAiringEpisode',
                'timeUntilAiring'),
            episode: BuiltValueNullFieldError.checkNotNull(
                episode,
                r'GHomeOverviewData_releasing_media_nextAiringEpisode',
                'episode'));
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_releasing_media_airingSchedule
    extends GHomeOverviewData_releasing_media_airingSchedule {
  @override
  final String G__typename;
  @override
  final BuiltList<GHomeOverviewData_releasing_media_airingSchedule_edges?>?
      edges;

  factory _$GHomeOverviewData_releasing_media_airingSchedule(
          [void Function(
                  GHomeOverviewData_releasing_media_airingScheduleBuilder)?
              updates]) =>
      (new GHomeOverviewData_releasing_media_airingScheduleBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_releasing_media_airingSchedule._(
      {required this.G__typename, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_releasing_media_airingSchedule', 'G__typename');
  }

  @override
  GHomeOverviewData_releasing_media_airingSchedule rebuild(
          void Function(GHomeOverviewData_releasing_media_airingScheduleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_releasing_media_airingScheduleBuilder toBuilder() =>
      new GHomeOverviewData_releasing_media_airingScheduleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_releasing_media_airingSchedule &&
        G__typename == other.G__typename &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GHomeOverviewData_releasing_media_airingSchedule')
          ..add('G__typename', G__typename)
          ..add('edges', edges))
        .toString();
  }
}

class GHomeOverviewData_releasing_media_airingScheduleBuilder
    implements
        Builder<GHomeOverviewData_releasing_media_airingSchedule,
            GHomeOverviewData_releasing_media_airingScheduleBuilder> {
  _$GHomeOverviewData_releasing_media_airingSchedule? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GHomeOverviewData_releasing_media_airingSchedule_edges?>? _edges;
  ListBuilder<GHomeOverviewData_releasing_media_airingSchedule_edges?>
      get edges => _$this._edges ??= new ListBuilder<
          GHomeOverviewData_releasing_media_airingSchedule_edges?>();
  set edges(
          ListBuilder<GHomeOverviewData_releasing_media_airingSchedule_edges?>?
              edges) =>
      _$this._edges = edges;

  GHomeOverviewData_releasing_media_airingScheduleBuilder() {
    GHomeOverviewData_releasing_media_airingSchedule._initializeBuilder(this);
  }

  GHomeOverviewData_releasing_media_airingScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_releasing_media_airingSchedule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_releasing_media_airingSchedule;
  }

  @override
  void update(
      void Function(GHomeOverviewData_releasing_media_airingScheduleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_releasing_media_airingSchedule build() => _build();

  _$GHomeOverviewData_releasing_media_airingSchedule _build() {
    _$GHomeOverviewData_releasing_media_airingSchedule _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_releasing_media_airingSchedule._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GHomeOverviewData_releasing_media_airingSchedule',
                  'G__typename'),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GHomeOverviewData_releasing_media_airingSchedule',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_releasing_media_airingSchedule_edges
    extends GHomeOverviewData_releasing_media_airingSchedule_edges {
  @override
  final String G__typename;
  @override
  final GHomeOverviewData_releasing_media_airingSchedule_edges_node? node;

  factory _$GHomeOverviewData_releasing_media_airingSchedule_edges(
          [void Function(
                  GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder)?
              updates]) =>
      (new GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_releasing_media_airingSchedule_edges._(
      {required this.G__typename, this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GHomeOverviewData_releasing_media_airingSchedule_edges',
        'G__typename');
  }

  @override
  GHomeOverviewData_releasing_media_airingSchedule_edges rebuild(
          void Function(
                  GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder toBuilder() =>
      new GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_releasing_media_airingSchedule_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GHomeOverviewData_releasing_media_airingSchedule_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder
    implements
        Builder<GHomeOverviewData_releasing_media_airingSchedule_edges,
            GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder> {
  _$GHomeOverviewData_releasing_media_airingSchedule_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder? _node;
  GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder get node =>
      _$this._node ??=
          new GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder();
  set node(
          GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder?
              node) =>
      _$this._node = node;

  GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder() {
    GHomeOverviewData_releasing_media_airingSchedule_edges._initializeBuilder(
        this);
  }

  GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_releasing_media_airingSchedule_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_releasing_media_airingSchedule_edges;
  }

  @override
  void update(
      void Function(
              GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_releasing_media_airingSchedule_edges build() => _build();

  _$GHomeOverviewData_releasing_media_airingSchedule_edges _build() {
    _$GHomeOverviewData_releasing_media_airingSchedule_edges _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_releasing_media_airingSchedule_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GHomeOverviewData_releasing_media_airingSchedule_edges',
                  'G__typename'),
              node: _node?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GHomeOverviewData_releasing_media_airingSchedule_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_releasing_media_airingSchedule_edges_node
    extends GHomeOverviewData_releasing_media_airingSchedule_edges_node {
  @override
  final String G__typename;
  @override
  final int airingAt;
  @override
  final int timeUntilAiring;
  @override
  final int episode;

  factory _$GHomeOverviewData_releasing_media_airingSchedule_edges_node(
          [void Function(
                  GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder)?
              updates]) =>
      (new GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_releasing_media_airingSchedule_edges_node._(
      {required this.G__typename,
      required this.airingAt,
      required this.timeUntilAiring,
      required this.episode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GHomeOverviewData_releasing_media_airingSchedule_edges_node',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        airingAt,
        r'GHomeOverviewData_releasing_media_airingSchedule_edges_node',
        'airingAt');
    BuiltValueNullFieldError.checkNotNull(
        timeUntilAiring,
        r'GHomeOverviewData_releasing_media_airingSchedule_edges_node',
        'timeUntilAiring');
    BuiltValueNullFieldError.checkNotNull(
        episode,
        r'GHomeOverviewData_releasing_media_airingSchedule_edges_node',
        'episode');
  }

  @override
  GHomeOverviewData_releasing_media_airingSchedule_edges_node rebuild(
          void Function(
                  GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder
      toBuilder() =>
          new GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GHomeOverviewData_releasing_media_airingSchedule_edges_node &&
        G__typename == other.G__typename &&
        airingAt == other.airingAt &&
        timeUntilAiring == other.timeUntilAiring &&
        episode == other.episode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, airingAt.hashCode);
    _$hash = $jc(_$hash, timeUntilAiring.hashCode);
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GHomeOverviewData_releasing_media_airingSchedule_edges_node')
          ..add('G__typename', G__typename)
          ..add('airingAt', airingAt)
          ..add('timeUntilAiring', timeUntilAiring)
          ..add('episode', episode))
        .toString();
  }
}

class GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder
    implements
        Builder<GHomeOverviewData_releasing_media_airingSchedule_edges_node,
            GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder> {
  _$GHomeOverviewData_releasing_media_airingSchedule_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _airingAt;
  int? get airingAt => _$this._airingAt;
  set airingAt(int? airingAt) => _$this._airingAt = airingAt;

  int? _timeUntilAiring;
  int? get timeUntilAiring => _$this._timeUntilAiring;
  set timeUntilAiring(int? timeUntilAiring) =>
      _$this._timeUntilAiring = timeUntilAiring;

  int? _episode;
  int? get episode => _$this._episode;
  set episode(int? episode) => _$this._episode = episode;

  GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder() {
    GHomeOverviewData_releasing_media_airingSchedule_edges_node
        ._initializeBuilder(this);
  }

  GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _airingAt = $v.airingAt;
      _timeUntilAiring = $v.timeUntilAiring;
      _episode = $v.episode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GHomeOverviewData_releasing_media_airingSchedule_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GHomeOverviewData_releasing_media_airingSchedule_edges_node;
  }

  @override
  void update(
      void Function(
              GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_releasing_media_airingSchedule_edges_node build() =>
      _build();

  _$GHomeOverviewData_releasing_media_airingSchedule_edges_node _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_releasing_media_airingSchedule_edges_node._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GHomeOverviewData_releasing_media_airingSchedule_edges_node',
                'G__typename'),
            airingAt: BuiltValueNullFieldError.checkNotNull(
                airingAt,
                r'GHomeOverviewData_releasing_media_airingSchedule_edges_node',
                'airingAt'),
            timeUntilAiring: BuiltValueNullFieldError.checkNotNull(
                timeUntilAiring,
                r'GHomeOverviewData_releasing_media_airingSchedule_edges_node',
                'timeUntilAiring'),
            episode: BuiltValueNullFieldError.checkNotNull(
                episode,
                r'GHomeOverviewData_releasing_media_airingSchedule_edges_node',
                'episode'));
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_releasing_media_title
    extends GHomeOverviewData_releasing_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GHomeOverviewData_releasing_media_title(
          [void Function(GHomeOverviewData_releasing_media_titleBuilder)?
              updates]) =>
      (new GHomeOverviewData_releasing_media_titleBuilder()..update(updates))
          ._build();

  _$GHomeOverviewData_releasing_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GHomeOverviewData_releasing_media_title', 'G__typename');
  }

  @override
  GHomeOverviewData_releasing_media_title rebuild(
          void Function(GHomeOverviewData_releasing_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_releasing_media_titleBuilder toBuilder() =>
      new GHomeOverviewData_releasing_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_releasing_media_title &&
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
            r'GHomeOverviewData_releasing_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GHomeOverviewData_releasing_media_titleBuilder
    implements
        Builder<GHomeOverviewData_releasing_media_title,
            GHomeOverviewData_releasing_media_titleBuilder> {
  _$GHomeOverviewData_releasing_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GHomeOverviewData_releasing_media_titleBuilder() {
    GHomeOverviewData_releasing_media_title._initializeBuilder(this);
  }

  GHomeOverviewData_releasing_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_releasing_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_releasing_media_title;
  }

  @override
  void update(
      void Function(GHomeOverviewData_releasing_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_releasing_media_title build() => _build();

  _$GHomeOverviewData_releasing_media_title _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_releasing_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GHomeOverviewData_releasing_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_releasing_media_coverImage
    extends GHomeOverviewData_releasing_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GHomeOverviewData_releasing_media_coverImage(
          [void Function(GHomeOverviewData_releasing_media_coverImageBuilder)?
              updates]) =>
      (new GHomeOverviewData_releasing_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_releasing_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_releasing_media_coverImage', 'G__typename');
  }

  @override
  GHomeOverviewData_releasing_media_coverImage rebuild(
          void Function(GHomeOverviewData_releasing_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_releasing_media_coverImageBuilder toBuilder() =>
      new GHomeOverviewData_releasing_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_releasing_media_coverImage &&
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
            r'GHomeOverviewData_releasing_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GHomeOverviewData_releasing_media_coverImageBuilder
    implements
        Builder<GHomeOverviewData_releasing_media_coverImage,
            GHomeOverviewData_releasing_media_coverImageBuilder> {
  _$GHomeOverviewData_releasing_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GHomeOverviewData_releasing_media_coverImageBuilder() {
    GHomeOverviewData_releasing_media_coverImage._initializeBuilder(this);
  }

  GHomeOverviewData_releasing_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_releasing_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_releasing_media_coverImage;
  }

  @override
  void update(
      void Function(GHomeOverviewData_releasing_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_releasing_media_coverImage build() => _build();

  _$GHomeOverviewData_releasing_media_coverImage _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_releasing_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GHomeOverviewData_releasing_media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_list extends GHomeOverviewData_list {
  @override
  final String G__typename;
  @override
  final BuiltList<GHomeOverviewData_list_mediaList?>? mediaList;

  factory _$GHomeOverviewData_list(
          [void Function(GHomeOverviewData_listBuilder)? updates]) =>
      (new GHomeOverviewData_listBuilder()..update(updates))._build();

  _$GHomeOverviewData_list._({required this.G__typename, this.mediaList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GHomeOverviewData_list', 'G__typename');
  }

  @override
  GHomeOverviewData_list rebuild(
          void Function(GHomeOverviewData_listBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_listBuilder toBuilder() =>
      new GHomeOverviewData_listBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_list &&
        G__typename == other.G__typename &&
        mediaList == other.mediaList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, mediaList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GHomeOverviewData_list')
          ..add('G__typename', G__typename)
          ..add('mediaList', mediaList))
        .toString();
  }
}

class GHomeOverviewData_listBuilder
    implements Builder<GHomeOverviewData_list, GHomeOverviewData_listBuilder> {
  _$GHomeOverviewData_list? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GHomeOverviewData_list_mediaList?>? _mediaList;
  ListBuilder<GHomeOverviewData_list_mediaList?> get mediaList =>
      _$this._mediaList ??=
          new ListBuilder<GHomeOverviewData_list_mediaList?>();
  set mediaList(ListBuilder<GHomeOverviewData_list_mediaList?>? mediaList) =>
      _$this._mediaList = mediaList;

  GHomeOverviewData_listBuilder() {
    GHomeOverviewData_list._initializeBuilder(this);
  }

  GHomeOverviewData_listBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _mediaList = $v.mediaList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_list other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_list;
  }

  @override
  void update(void Function(GHomeOverviewData_listBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_list build() => _build();

  _$GHomeOverviewData_list _build() {
    _$GHomeOverviewData_list _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_list._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GHomeOverviewData_list', 'G__typename'),
              mediaList: _mediaList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaList';
        _mediaList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GHomeOverviewData_list', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_list_mediaList
    extends GHomeOverviewData_list_mediaList {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int mediaId;
  @override
  final _i3.GMediaListStatus? status;
  @override
  final int? updatedAt;
  @override
  final int? progress;
  @override
  final int? progressVolumes;
  @override
  final int? priority;
  @override
  final String? notes;
  @override
  final bool? hiddenFromStatusLists;
  @override
  final bool? private;
  @override
  final int? repeat;
  @override
  final double? score;
  @override
  final _i5.JsonObject? customLists;
  @override
  final GHomeOverviewData_list_mediaList_startedAt? startedAt;
  @override
  final GHomeOverviewData_list_mediaList_completedAt? completedAt;
  @override
  final GHomeOverviewData_list_mediaList_media? media;

  factory _$GHomeOverviewData_list_mediaList(
          [void Function(GHomeOverviewData_list_mediaListBuilder)? updates]) =>
      (new GHomeOverviewData_list_mediaListBuilder()..update(updates))._build();

  _$GHomeOverviewData_list_mediaList._(
      {required this.G__typename,
      required this.id,
      required this.mediaId,
      this.status,
      this.updatedAt,
      this.progress,
      this.progressVolumes,
      this.priority,
      this.notes,
      this.hiddenFromStatusLists,
      this.private,
      this.repeat,
      this.score,
      this.customLists,
      this.startedAt,
      this.completedAt,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GHomeOverviewData_list_mediaList', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GHomeOverviewData_list_mediaList', 'id');
    BuiltValueNullFieldError.checkNotNull(
        mediaId, r'GHomeOverviewData_list_mediaList', 'mediaId');
  }

  @override
  GHomeOverviewData_list_mediaList rebuild(
          void Function(GHomeOverviewData_list_mediaListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_list_mediaListBuilder toBuilder() =>
      new GHomeOverviewData_list_mediaListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_list_mediaList &&
        G__typename == other.G__typename &&
        id == other.id &&
        mediaId == other.mediaId &&
        status == other.status &&
        updatedAt == other.updatedAt &&
        progress == other.progress &&
        progressVolumes == other.progressVolumes &&
        priority == other.priority &&
        notes == other.notes &&
        hiddenFromStatusLists == other.hiddenFromStatusLists &&
        private == other.private &&
        repeat == other.repeat &&
        score == other.score &&
        customLists == other.customLists &&
        startedAt == other.startedAt &&
        completedAt == other.completedAt &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, progressVolumes.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, hiddenFromStatusLists.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, repeat.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, customLists.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GHomeOverviewData_list_mediaList')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('mediaId', mediaId)
          ..add('status', status)
          ..add('updatedAt', updatedAt)
          ..add('progress', progress)
          ..add('progressVolumes', progressVolumes)
          ..add('priority', priority)
          ..add('notes', notes)
          ..add('hiddenFromStatusLists', hiddenFromStatusLists)
          ..add('private', private)
          ..add('repeat', repeat)
          ..add('score', score)
          ..add('customLists', customLists)
          ..add('startedAt', startedAt)
          ..add('completedAt', completedAt)
          ..add('media', media))
        .toString();
  }
}

class GHomeOverviewData_list_mediaListBuilder
    implements
        Builder<GHomeOverviewData_list_mediaList,
            GHomeOverviewData_list_mediaListBuilder> {
  _$GHomeOverviewData_list_mediaList? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  _i3.GMediaListStatus? _status;
  _i3.GMediaListStatus? get status => _$this._status;
  set status(_i3.GMediaListStatus? status) => _$this._status = status;

  int? _updatedAt;
  int? get updatedAt => _$this._updatedAt;
  set updatedAt(int? updatedAt) => _$this._updatedAt = updatedAt;

  int? _progress;
  int? get progress => _$this._progress;
  set progress(int? progress) => _$this._progress = progress;

  int? _progressVolumes;
  int? get progressVolumes => _$this._progressVolumes;
  set progressVolumes(int? progressVolumes) =>
      _$this._progressVolumes = progressVolumes;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  bool? _hiddenFromStatusLists;
  bool? get hiddenFromStatusLists => _$this._hiddenFromStatusLists;
  set hiddenFromStatusLists(bool? hiddenFromStatusLists) =>
      _$this._hiddenFromStatusLists = hiddenFromStatusLists;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  int? _repeat;
  int? get repeat => _$this._repeat;
  set repeat(int? repeat) => _$this._repeat = repeat;

  double? _score;
  double? get score => _$this._score;
  set score(double? score) => _$this._score = score;

  _i5.JsonObject? _customLists;
  _i5.JsonObject? get customLists => _$this._customLists;
  set customLists(_i5.JsonObject? customLists) =>
      _$this._customLists = customLists;

  GHomeOverviewData_list_mediaList_startedAtBuilder? _startedAt;
  GHomeOverviewData_list_mediaList_startedAtBuilder get startedAt =>
      _$this._startedAt ??=
          new GHomeOverviewData_list_mediaList_startedAtBuilder();
  set startedAt(GHomeOverviewData_list_mediaList_startedAtBuilder? startedAt) =>
      _$this._startedAt = startedAt;

  GHomeOverviewData_list_mediaList_completedAtBuilder? _completedAt;
  GHomeOverviewData_list_mediaList_completedAtBuilder get completedAt =>
      _$this._completedAt ??=
          new GHomeOverviewData_list_mediaList_completedAtBuilder();
  set completedAt(
          GHomeOverviewData_list_mediaList_completedAtBuilder? completedAt) =>
      _$this._completedAt = completedAt;

  GHomeOverviewData_list_mediaList_mediaBuilder? _media;
  GHomeOverviewData_list_mediaList_mediaBuilder get media =>
      _$this._media ??= new GHomeOverviewData_list_mediaList_mediaBuilder();
  set media(GHomeOverviewData_list_mediaList_mediaBuilder? media) =>
      _$this._media = media;

  GHomeOverviewData_list_mediaListBuilder() {
    GHomeOverviewData_list_mediaList._initializeBuilder(this);
  }

  GHomeOverviewData_list_mediaListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _mediaId = $v.mediaId;
      _status = $v.status;
      _updatedAt = $v.updatedAt;
      _progress = $v.progress;
      _progressVolumes = $v.progressVolumes;
      _priority = $v.priority;
      _notes = $v.notes;
      _hiddenFromStatusLists = $v.hiddenFromStatusLists;
      _private = $v.private;
      _repeat = $v.repeat;
      _score = $v.score;
      _customLists = $v.customLists;
      _startedAt = $v.startedAt?.toBuilder();
      _completedAt = $v.completedAt?.toBuilder();
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_list_mediaList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_list_mediaList;
  }

  @override
  void update(void Function(GHomeOverviewData_list_mediaListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_list_mediaList build() => _build();

  _$GHomeOverviewData_list_mediaList _build() {
    _$GHomeOverviewData_list_mediaList _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_list_mediaList._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GHomeOverviewData_list_mediaList', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GHomeOverviewData_list_mediaList', 'id'),
              mediaId: BuiltValueNullFieldError.checkNotNull(
                  mediaId, r'GHomeOverviewData_list_mediaList', 'mediaId'),
              status: status,
              updatedAt: updatedAt,
              progress: progress,
              progressVolumes: progressVolumes,
              priority: priority,
              notes: notes,
              hiddenFromStatusLists: hiddenFromStatusLists,
              private: private,
              repeat: repeat,
              score: score,
              customLists: customLists,
              startedAt: _startedAt?.build(),
              completedAt: _completedAt?.build(),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startedAt';
        _startedAt?.build();
        _$failedField = 'completedAt';
        _completedAt?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GHomeOverviewData_list_mediaList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_list_mediaList_startedAt
    extends GHomeOverviewData_list_mediaList_startedAt {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GHomeOverviewData_list_mediaList_startedAt(
          [void Function(GHomeOverviewData_list_mediaList_startedAtBuilder)?
              updates]) =>
      (new GHomeOverviewData_list_mediaList_startedAtBuilder()..update(updates))
          ._build();

  _$GHomeOverviewData_list_mediaList_startedAt._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_list_mediaList_startedAt', 'G__typename');
  }

  @override
  GHomeOverviewData_list_mediaList_startedAt rebuild(
          void Function(GHomeOverviewData_list_mediaList_startedAtBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_list_mediaList_startedAtBuilder toBuilder() =>
      new GHomeOverviewData_list_mediaList_startedAtBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_list_mediaList_startedAt &&
        G__typename == other.G__typename &&
        day == other.day &&
        month == other.month &&
        year == other.year;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GHomeOverviewData_list_mediaList_startedAt')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GHomeOverviewData_list_mediaList_startedAtBuilder
    implements
        Builder<GHomeOverviewData_list_mediaList_startedAt,
            GHomeOverviewData_list_mediaList_startedAtBuilder> {
  _$GHomeOverviewData_list_mediaList_startedAt? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  GHomeOverviewData_list_mediaList_startedAtBuilder() {
    GHomeOverviewData_list_mediaList_startedAt._initializeBuilder(this);
  }

  GHomeOverviewData_list_mediaList_startedAtBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _day = $v.day;
      _month = $v.month;
      _year = $v.year;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_list_mediaList_startedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_list_mediaList_startedAt;
  }

  @override
  void update(
      void Function(GHomeOverviewData_list_mediaList_startedAtBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_list_mediaList_startedAt build() => _build();

  _$GHomeOverviewData_list_mediaList_startedAt _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_list_mediaList_startedAt._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GHomeOverviewData_list_mediaList_startedAt', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_list_mediaList_completedAt
    extends GHomeOverviewData_list_mediaList_completedAt {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GHomeOverviewData_list_mediaList_completedAt(
          [void Function(GHomeOverviewData_list_mediaList_completedAtBuilder)?
              updates]) =>
      (new GHomeOverviewData_list_mediaList_completedAtBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_list_mediaList_completedAt._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_list_mediaList_completedAt', 'G__typename');
  }

  @override
  GHomeOverviewData_list_mediaList_completedAt rebuild(
          void Function(GHomeOverviewData_list_mediaList_completedAtBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_list_mediaList_completedAtBuilder toBuilder() =>
      new GHomeOverviewData_list_mediaList_completedAtBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_list_mediaList_completedAt &&
        G__typename == other.G__typename &&
        day == other.day &&
        month == other.month &&
        year == other.year;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GHomeOverviewData_list_mediaList_completedAt')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GHomeOverviewData_list_mediaList_completedAtBuilder
    implements
        Builder<GHomeOverviewData_list_mediaList_completedAt,
            GHomeOverviewData_list_mediaList_completedAtBuilder> {
  _$GHomeOverviewData_list_mediaList_completedAt? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  GHomeOverviewData_list_mediaList_completedAtBuilder() {
    GHomeOverviewData_list_mediaList_completedAt._initializeBuilder(this);
  }

  GHomeOverviewData_list_mediaList_completedAtBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _day = $v.day;
      _month = $v.month;
      _year = $v.year;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_list_mediaList_completedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_list_mediaList_completedAt;
  }

  @override
  void update(
      void Function(GHomeOverviewData_list_mediaList_completedAtBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_list_mediaList_completedAt build() => _build();

  _$GHomeOverviewData_list_mediaList_completedAt _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_list_mediaList_completedAt._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GHomeOverviewData_list_mediaList_completedAt', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_list_mediaList_media
    extends GHomeOverviewData_list_mediaList_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i3.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i3.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GHomeOverviewData_list_mediaList_media_title? title;
  @override
  final GHomeOverviewData_list_mediaList_media_coverImage? coverImage;
  @override
  final int? episodes;
  @override
  final int? chapters;
  @override
  final _i3.GMediaStatus? status;
  @override
  final int? averageScore;
  @override
  final int? popularity;
  @override
  final GHomeOverviewData_list_mediaList_media_startDate? startDate;

  factory _$GHomeOverviewData_list_mediaList_media(
          [void Function(GHomeOverviewData_list_mediaList_mediaBuilder)?
              updates]) =>
      (new GHomeOverviewData_list_mediaList_mediaBuilder()..update(updates))
          ._build();

  _$GHomeOverviewData_list_mediaList_media._(
      {required this.G__typename,
      required this.id,
      this.type,
      this.isAdult,
      this.genres,
      this.format,
      this.description,
      this.title,
      this.coverImage,
      this.episodes,
      this.chapters,
      this.status,
      this.averageScore,
      this.popularity,
      this.startDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GHomeOverviewData_list_mediaList_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GHomeOverviewData_list_mediaList_media', 'id');
  }

  @override
  GHomeOverviewData_list_mediaList_media rebuild(
          void Function(GHomeOverviewData_list_mediaList_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_list_mediaList_mediaBuilder toBuilder() =>
      new GHomeOverviewData_list_mediaList_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_list_mediaList_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        isAdult == other.isAdult &&
        genres == other.genres &&
        format == other.format &&
        description == other.description &&
        title == other.title &&
        coverImage == other.coverImage &&
        episodes == other.episodes &&
        chapters == other.chapters &&
        status == other.status &&
        averageScore == other.averageScore &&
        popularity == other.popularity &&
        startDate == other.startDate;
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
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jc(_$hash, chapters.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, averageScore.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GHomeOverviewData_list_mediaList_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('isAdult', isAdult)
          ..add('genres', genres)
          ..add('format', format)
          ..add('description', description)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('episodes', episodes)
          ..add('chapters', chapters)
          ..add('status', status)
          ..add('averageScore', averageScore)
          ..add('popularity', popularity)
          ..add('startDate', startDate))
        .toString();
  }
}

class GHomeOverviewData_list_mediaList_mediaBuilder
    implements
        Builder<GHomeOverviewData_list_mediaList_media,
            GHomeOverviewData_list_mediaList_mediaBuilder> {
  _$GHomeOverviewData_list_mediaList_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i3.GMediaType? _type;
  _i3.GMediaType? get type => _$this._type;
  set type(_i3.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i3.GMediaFormat? _format;
  _i3.GMediaFormat? get format => _$this._format;
  set format(_i3.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GHomeOverviewData_list_mediaList_media_titleBuilder? _title;
  GHomeOverviewData_list_mediaList_media_titleBuilder get title =>
      _$this._title ??=
          new GHomeOverviewData_list_mediaList_media_titleBuilder();
  set title(GHomeOverviewData_list_mediaList_media_titleBuilder? title) =>
      _$this._title = title;

  GHomeOverviewData_list_mediaList_media_coverImageBuilder? _coverImage;
  GHomeOverviewData_list_mediaList_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GHomeOverviewData_list_mediaList_media_coverImageBuilder();
  set coverImage(
          GHomeOverviewData_list_mediaList_media_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  int? _episodes;
  int? get episodes => _$this._episodes;
  set episodes(int? episodes) => _$this._episodes = episodes;

  int? _chapters;
  int? get chapters => _$this._chapters;
  set chapters(int? chapters) => _$this._chapters = chapters;

  _i3.GMediaStatus? _status;
  _i3.GMediaStatus? get status => _$this._status;
  set status(_i3.GMediaStatus? status) => _$this._status = status;

  int? _averageScore;
  int? get averageScore => _$this._averageScore;
  set averageScore(int? averageScore) => _$this._averageScore = averageScore;

  int? _popularity;
  int? get popularity => _$this._popularity;
  set popularity(int? popularity) => _$this._popularity = popularity;

  GHomeOverviewData_list_mediaList_media_startDateBuilder? _startDate;
  GHomeOverviewData_list_mediaList_media_startDateBuilder get startDate =>
      _$this._startDate ??=
          new GHomeOverviewData_list_mediaList_media_startDateBuilder();
  set startDate(
          GHomeOverviewData_list_mediaList_media_startDateBuilder? startDate) =>
      _$this._startDate = startDate;

  GHomeOverviewData_list_mediaList_mediaBuilder() {
    GHomeOverviewData_list_mediaList_media._initializeBuilder(this);
  }

  GHomeOverviewData_list_mediaList_mediaBuilder get _$this {
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
      _episodes = $v.episodes;
      _chapters = $v.chapters;
      _status = $v.status;
      _averageScore = $v.averageScore;
      _popularity = $v.popularity;
      _startDate = $v.startDate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_list_mediaList_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_list_mediaList_media;
  }

  @override
  void update(
      void Function(GHomeOverviewData_list_mediaList_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_list_mediaList_media build() => _build();

  _$GHomeOverviewData_list_mediaList_media _build() {
    _$GHomeOverviewData_list_mediaList_media _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_list_mediaList_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GHomeOverviewData_list_mediaList_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GHomeOverviewData_list_mediaList_media', 'id'),
              type: type,
              isAdult: isAdult,
              genres: _genres?.build(),
              format: format,
              description: description,
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              episodes: episodes,
              chapters: chapters,
              status: status,
              averageScore: averageScore,
              popularity: popularity,
              startDate: _startDate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();

        _$failedField = 'startDate';
        _startDate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GHomeOverviewData_list_mediaList_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_list_mediaList_media_title
    extends GHomeOverviewData_list_mediaList_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GHomeOverviewData_list_mediaList_media_title(
          [void Function(GHomeOverviewData_list_mediaList_media_titleBuilder)?
              updates]) =>
      (new GHomeOverviewData_list_mediaList_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_list_mediaList_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_list_mediaList_media_title', 'G__typename');
  }

  @override
  GHomeOverviewData_list_mediaList_media_title rebuild(
          void Function(GHomeOverviewData_list_mediaList_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_list_mediaList_media_titleBuilder toBuilder() =>
      new GHomeOverviewData_list_mediaList_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_list_mediaList_media_title &&
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
            r'GHomeOverviewData_list_mediaList_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GHomeOverviewData_list_mediaList_media_titleBuilder
    implements
        Builder<GHomeOverviewData_list_mediaList_media_title,
            GHomeOverviewData_list_mediaList_media_titleBuilder> {
  _$GHomeOverviewData_list_mediaList_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GHomeOverviewData_list_mediaList_media_titleBuilder() {
    GHomeOverviewData_list_mediaList_media_title._initializeBuilder(this);
  }

  GHomeOverviewData_list_mediaList_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_list_mediaList_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_list_mediaList_media_title;
  }

  @override
  void update(
      void Function(GHomeOverviewData_list_mediaList_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_list_mediaList_media_title build() => _build();

  _$GHomeOverviewData_list_mediaList_media_title _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_list_mediaList_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GHomeOverviewData_list_mediaList_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_list_mediaList_media_coverImage
    extends GHomeOverviewData_list_mediaList_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GHomeOverviewData_list_mediaList_media_coverImage(
          [void Function(
                  GHomeOverviewData_list_mediaList_media_coverImageBuilder)?
              updates]) =>
      (new GHomeOverviewData_list_mediaList_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_list_mediaList_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_list_mediaList_media_coverImage', 'G__typename');
  }

  @override
  GHomeOverviewData_list_mediaList_media_coverImage rebuild(
          void Function(
                  GHomeOverviewData_list_mediaList_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_list_mediaList_media_coverImageBuilder toBuilder() =>
      new GHomeOverviewData_list_mediaList_media_coverImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_list_mediaList_media_coverImage &&
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
            r'GHomeOverviewData_list_mediaList_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GHomeOverviewData_list_mediaList_media_coverImageBuilder
    implements
        Builder<GHomeOverviewData_list_mediaList_media_coverImage,
            GHomeOverviewData_list_mediaList_media_coverImageBuilder> {
  _$GHomeOverviewData_list_mediaList_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GHomeOverviewData_list_mediaList_media_coverImageBuilder() {
    GHomeOverviewData_list_mediaList_media_coverImage._initializeBuilder(this);
  }

  GHomeOverviewData_list_mediaList_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_list_mediaList_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_list_mediaList_media_coverImage;
  }

  @override
  void update(
      void Function(GHomeOverviewData_list_mediaList_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_list_mediaList_media_coverImage build() => _build();

  _$GHomeOverviewData_list_mediaList_media_coverImage _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_list_mediaList_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GHomeOverviewData_list_mediaList_media_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_list_mediaList_media_startDate
    extends GHomeOverviewData_list_mediaList_media_startDate {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GHomeOverviewData_list_mediaList_media_startDate(
          [void Function(
                  GHomeOverviewData_list_mediaList_media_startDateBuilder)?
              updates]) =>
      (new GHomeOverviewData_list_mediaList_media_startDateBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_list_mediaList_media_startDate._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_list_mediaList_media_startDate', 'G__typename');
  }

  @override
  GHomeOverviewData_list_mediaList_media_startDate rebuild(
          void Function(GHomeOverviewData_list_mediaList_media_startDateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_list_mediaList_media_startDateBuilder toBuilder() =>
      new GHomeOverviewData_list_mediaList_media_startDateBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_list_mediaList_media_startDate &&
        G__typename == other.G__typename &&
        day == other.day &&
        month == other.month &&
        year == other.year;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GHomeOverviewData_list_mediaList_media_startDate')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GHomeOverviewData_list_mediaList_media_startDateBuilder
    implements
        Builder<GHomeOverviewData_list_mediaList_media_startDate,
            GHomeOverviewData_list_mediaList_media_startDateBuilder> {
  _$GHomeOverviewData_list_mediaList_media_startDate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  GHomeOverviewData_list_mediaList_media_startDateBuilder() {
    GHomeOverviewData_list_mediaList_media_startDate._initializeBuilder(this);
  }

  GHomeOverviewData_list_mediaList_media_startDateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _day = $v.day;
      _month = $v.month;
      _year = $v.year;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_list_mediaList_media_startDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_list_mediaList_media_startDate;
  }

  @override
  void update(
      void Function(GHomeOverviewData_list_mediaList_media_startDateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_list_mediaList_media_startDate build() => _build();

  _$GHomeOverviewData_list_mediaList_media_startDate _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_list_mediaList_media_startDate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GHomeOverviewData_list_mediaList_media_startDate',
                'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_forums extends GHomeOverviewData_forums {
  @override
  final String G__typename;
  @override
  final BuiltList<GHomeOverviewData_forums_threads?>? threads;

  factory _$GHomeOverviewData_forums(
          [void Function(GHomeOverviewData_forumsBuilder)? updates]) =>
      (new GHomeOverviewData_forumsBuilder()..update(updates))._build();

  _$GHomeOverviewData_forums._({required this.G__typename, this.threads})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GHomeOverviewData_forums', 'G__typename');
  }

  @override
  GHomeOverviewData_forums rebuild(
          void Function(GHomeOverviewData_forumsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_forumsBuilder toBuilder() =>
      new GHomeOverviewData_forumsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_forums &&
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
    return (newBuiltValueToStringHelper(r'GHomeOverviewData_forums')
          ..add('G__typename', G__typename)
          ..add('threads', threads))
        .toString();
  }
}

class GHomeOverviewData_forumsBuilder
    implements
        Builder<GHomeOverviewData_forums, GHomeOverviewData_forumsBuilder> {
  _$GHomeOverviewData_forums? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GHomeOverviewData_forums_threads?>? _threads;
  ListBuilder<GHomeOverviewData_forums_threads?> get threads =>
      _$this._threads ??= new ListBuilder<GHomeOverviewData_forums_threads?>();
  set threads(ListBuilder<GHomeOverviewData_forums_threads?>? threads) =>
      _$this._threads = threads;

  GHomeOverviewData_forumsBuilder() {
    GHomeOverviewData_forums._initializeBuilder(this);
  }

  GHomeOverviewData_forumsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _threads = $v.threads?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_forums other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_forums;
  }

  @override
  void update(void Function(GHomeOverviewData_forumsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_forums build() => _build();

  _$GHomeOverviewData_forums _build() {
    _$GHomeOverviewData_forums _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_forums._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GHomeOverviewData_forums', 'G__typename'),
              threads: _threads?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'threads';
        _threads?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GHomeOverviewData_forums', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_forums_threads
    extends GHomeOverviewData_forums_threads {
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
  final BuiltList<GHomeOverviewData_forums_threads_mediaCategories?>?
      mediaCategories;
  @override
  final BuiltList<GHomeOverviewData_forums_threads_categories?>? categories;
  @override
  final GHomeOverviewData_forums_threads_user? user;
  @override
  final GHomeOverviewData_forums_threads_replyUser? replyUser;

  factory _$GHomeOverviewData_forums_threads(
          [void Function(GHomeOverviewData_forums_threadsBuilder)? updates]) =>
      (new GHomeOverviewData_forums_threadsBuilder()..update(updates))._build();

  _$GHomeOverviewData_forums_threads._(
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
        G__typename, r'GHomeOverviewData_forums_threads', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GHomeOverviewData_forums_threads', 'id');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GHomeOverviewData_forums_threads', 'createdAt');
  }

  @override
  GHomeOverviewData_forums_threads rebuild(
          void Function(GHomeOverviewData_forums_threadsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_forums_threadsBuilder toBuilder() =>
      new GHomeOverviewData_forums_threadsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_forums_threads &&
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
    return (newBuiltValueToStringHelper(r'GHomeOverviewData_forums_threads')
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

class GHomeOverviewData_forums_threadsBuilder
    implements
        Builder<GHomeOverviewData_forums_threads,
            GHomeOverviewData_forums_threadsBuilder> {
  _$GHomeOverviewData_forums_threads? _$v;

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

  ListBuilder<GHomeOverviewData_forums_threads_mediaCategories?>?
      _mediaCategories;
  ListBuilder<GHomeOverviewData_forums_threads_mediaCategories?>
      get mediaCategories => _$this._mediaCategories ??=
          new ListBuilder<GHomeOverviewData_forums_threads_mediaCategories?>();
  set mediaCategories(
          ListBuilder<GHomeOverviewData_forums_threads_mediaCategories?>?
              mediaCategories) =>
      _$this._mediaCategories = mediaCategories;

  ListBuilder<GHomeOverviewData_forums_threads_categories?>? _categories;
  ListBuilder<GHomeOverviewData_forums_threads_categories?> get categories =>
      _$this._categories ??=
          new ListBuilder<GHomeOverviewData_forums_threads_categories?>();
  set categories(
          ListBuilder<GHomeOverviewData_forums_threads_categories?>?
              categories) =>
      _$this._categories = categories;

  GHomeOverviewData_forums_threads_userBuilder? _user;
  GHomeOverviewData_forums_threads_userBuilder get user =>
      _$this._user ??= new GHomeOverviewData_forums_threads_userBuilder();
  set user(GHomeOverviewData_forums_threads_userBuilder? user) =>
      _$this._user = user;

  GHomeOverviewData_forums_threads_replyUserBuilder? _replyUser;
  GHomeOverviewData_forums_threads_replyUserBuilder get replyUser =>
      _$this._replyUser ??=
          new GHomeOverviewData_forums_threads_replyUserBuilder();
  set replyUser(GHomeOverviewData_forums_threads_replyUserBuilder? replyUser) =>
      _$this._replyUser = replyUser;

  GHomeOverviewData_forums_threadsBuilder() {
    GHomeOverviewData_forums_threads._initializeBuilder(this);
  }

  GHomeOverviewData_forums_threadsBuilder get _$this {
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
  void replace(GHomeOverviewData_forums_threads other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_forums_threads;
  }

  @override
  void update(void Function(GHomeOverviewData_forums_threadsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_forums_threads build() => _build();

  _$GHomeOverviewData_forums_threads _build() {
    _$GHomeOverviewData_forums_threads _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_forums_threads._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GHomeOverviewData_forums_threads', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GHomeOverviewData_forums_threads', 'id'),
              title: title,
              replyCount: replyCount,
              viewCount: viewCount,
              replyCommentId: replyCommentId,
              repliedAt: repliedAt,
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GHomeOverviewData_forums_threads', 'createdAt'),
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
            r'GHomeOverviewData_forums_threads', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_forums_threads_mediaCategories
    extends GHomeOverviewData_forums_threads_mediaCategories {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i3.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i3.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GHomeOverviewData_forums_threads_mediaCategories_title? title;
  @override
  final GHomeOverviewData_forums_threads_mediaCategories_coverImage? coverImage;

  factory _$GHomeOverviewData_forums_threads_mediaCategories(
          [void Function(
                  GHomeOverviewData_forums_threads_mediaCategoriesBuilder)?
              updates]) =>
      (new GHomeOverviewData_forums_threads_mediaCategoriesBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_forums_threads_mediaCategories._(
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
        r'GHomeOverviewData_forums_threads_mediaCategories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GHomeOverviewData_forums_threads_mediaCategories', 'id');
  }

  @override
  GHomeOverviewData_forums_threads_mediaCategories rebuild(
          void Function(GHomeOverviewData_forums_threads_mediaCategoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_forums_threads_mediaCategoriesBuilder toBuilder() =>
      new GHomeOverviewData_forums_threads_mediaCategoriesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_forums_threads_mediaCategories &&
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
            r'GHomeOverviewData_forums_threads_mediaCategories')
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

class GHomeOverviewData_forums_threads_mediaCategoriesBuilder
    implements
        Builder<GHomeOverviewData_forums_threads_mediaCategories,
            GHomeOverviewData_forums_threads_mediaCategoriesBuilder> {
  _$GHomeOverviewData_forums_threads_mediaCategories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i3.GMediaType? _type;
  _i3.GMediaType? get type => _$this._type;
  set type(_i3.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i3.GMediaFormat? _format;
  _i3.GMediaFormat? get format => _$this._format;
  set format(_i3.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GHomeOverviewData_forums_threads_mediaCategories_titleBuilder? _title;
  GHomeOverviewData_forums_threads_mediaCategories_titleBuilder get title =>
      _$this._title ??=
          new GHomeOverviewData_forums_threads_mediaCategories_titleBuilder();
  set title(
          GHomeOverviewData_forums_threads_mediaCategories_titleBuilder?
              title) =>
      _$this._title = title;

  GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder?
      _coverImage;
  GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder();
  set coverImage(
          GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GHomeOverviewData_forums_threads_mediaCategoriesBuilder() {
    GHomeOverviewData_forums_threads_mediaCategories._initializeBuilder(this);
  }

  GHomeOverviewData_forums_threads_mediaCategoriesBuilder get _$this {
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
  void replace(GHomeOverviewData_forums_threads_mediaCategories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_forums_threads_mediaCategories;
  }

  @override
  void update(
      void Function(GHomeOverviewData_forums_threads_mediaCategoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_forums_threads_mediaCategories build() => _build();

  _$GHomeOverviewData_forums_threads_mediaCategories _build() {
    _$GHomeOverviewData_forums_threads_mediaCategories _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_forums_threads_mediaCategories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GHomeOverviewData_forums_threads_mediaCategories',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GHomeOverviewData_forums_threads_mediaCategories', 'id'),
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
            r'GHomeOverviewData_forums_threads_mediaCategories',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_forums_threads_mediaCategories_title
    extends GHomeOverviewData_forums_threads_mediaCategories_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GHomeOverviewData_forums_threads_mediaCategories_title(
          [void Function(
                  GHomeOverviewData_forums_threads_mediaCategories_titleBuilder)?
              updates]) =>
      (new GHomeOverviewData_forums_threads_mediaCategories_titleBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_forums_threads_mediaCategories_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GHomeOverviewData_forums_threads_mediaCategories_title',
        'G__typename');
  }

  @override
  GHomeOverviewData_forums_threads_mediaCategories_title rebuild(
          void Function(
                  GHomeOverviewData_forums_threads_mediaCategories_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_forums_threads_mediaCategories_titleBuilder toBuilder() =>
      new GHomeOverviewData_forums_threads_mediaCategories_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_forums_threads_mediaCategories_title &&
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
            r'GHomeOverviewData_forums_threads_mediaCategories_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GHomeOverviewData_forums_threads_mediaCategories_titleBuilder
    implements
        Builder<GHomeOverviewData_forums_threads_mediaCategories_title,
            GHomeOverviewData_forums_threads_mediaCategories_titleBuilder> {
  _$GHomeOverviewData_forums_threads_mediaCategories_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GHomeOverviewData_forums_threads_mediaCategories_titleBuilder() {
    GHomeOverviewData_forums_threads_mediaCategories_title._initializeBuilder(
        this);
  }

  GHomeOverviewData_forums_threads_mediaCategories_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_forums_threads_mediaCategories_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_forums_threads_mediaCategories_title;
  }

  @override
  void update(
      void Function(
              GHomeOverviewData_forums_threads_mediaCategories_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_forums_threads_mediaCategories_title build() => _build();

  _$GHomeOverviewData_forums_threads_mediaCategories_title _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_forums_threads_mediaCategories_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GHomeOverviewData_forums_threads_mediaCategories_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_forums_threads_mediaCategories_coverImage
    extends GHomeOverviewData_forums_threads_mediaCategories_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GHomeOverviewData_forums_threads_mediaCategories_coverImage(
          [void Function(
                  GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder)?
              updates]) =>
      (new GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_forums_threads_mediaCategories_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GHomeOverviewData_forums_threads_mediaCategories_coverImage',
        'G__typename');
  }

  @override
  GHomeOverviewData_forums_threads_mediaCategories_coverImage rebuild(
          void Function(
                  GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder
      toBuilder() =>
          new GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GHomeOverviewData_forums_threads_mediaCategories_coverImage &&
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
            r'GHomeOverviewData_forums_threads_mediaCategories_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder
    implements
        Builder<GHomeOverviewData_forums_threads_mediaCategories_coverImage,
            GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder> {
  _$GHomeOverviewData_forums_threads_mediaCategories_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder() {
    GHomeOverviewData_forums_threads_mediaCategories_coverImage
        ._initializeBuilder(this);
  }

  GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder
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
      GHomeOverviewData_forums_threads_mediaCategories_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GHomeOverviewData_forums_threads_mediaCategories_coverImage;
  }

  @override
  void update(
      void Function(
              GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_forums_threads_mediaCategories_coverImage build() =>
      _build();

  _$GHomeOverviewData_forums_threads_mediaCategories_coverImage _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_forums_threads_mediaCategories_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GHomeOverviewData_forums_threads_mediaCategories_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_forums_threads_categories
    extends GHomeOverviewData_forums_threads_categories {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;

  factory _$GHomeOverviewData_forums_threads_categories(
          [void Function(GHomeOverviewData_forums_threads_categoriesBuilder)?
              updates]) =>
      (new GHomeOverviewData_forums_threads_categoriesBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_forums_threads_categories._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_forums_threads_categories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GHomeOverviewData_forums_threads_categories', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GHomeOverviewData_forums_threads_categories', 'name');
  }

  @override
  GHomeOverviewData_forums_threads_categories rebuild(
          void Function(GHomeOverviewData_forums_threads_categoriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_forums_threads_categoriesBuilder toBuilder() =>
      new GHomeOverviewData_forums_threads_categoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_forums_threads_categories &&
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
            r'GHomeOverviewData_forums_threads_categories')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GHomeOverviewData_forums_threads_categoriesBuilder
    implements
        Builder<GHomeOverviewData_forums_threads_categories,
            GHomeOverviewData_forums_threads_categoriesBuilder> {
  _$GHomeOverviewData_forums_threads_categories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GHomeOverviewData_forums_threads_categoriesBuilder() {
    GHomeOverviewData_forums_threads_categories._initializeBuilder(this);
  }

  GHomeOverviewData_forums_threads_categoriesBuilder get _$this {
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
  void replace(GHomeOverviewData_forums_threads_categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_forums_threads_categories;
  }

  @override
  void update(
      void Function(GHomeOverviewData_forums_threads_categoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_forums_threads_categories build() => _build();

  _$GHomeOverviewData_forums_threads_categories _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_forums_threads_categories._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GHomeOverviewData_forums_threads_categories', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GHomeOverviewData_forums_threads_categories', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GHomeOverviewData_forums_threads_categories', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_forums_threads_user
    extends GHomeOverviewData_forums_threads_user {
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
  final BuiltList<_i3.GModRole?>? moderatorRoles;
  @override
  final GHomeOverviewData_forums_threads_user_avatar? avatar;

  factory _$GHomeOverviewData_forums_threads_user(
          [void Function(GHomeOverviewData_forums_threads_userBuilder)?
              updates]) =>
      (new GHomeOverviewData_forums_threads_userBuilder()..update(updates))
          ._build();

  _$GHomeOverviewData_forums_threads_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GHomeOverviewData_forums_threads_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GHomeOverviewData_forums_threads_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GHomeOverviewData_forums_threads_user', 'name');
  }

  @override
  GHomeOverviewData_forums_threads_user rebuild(
          void Function(GHomeOverviewData_forums_threads_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_forums_threads_userBuilder toBuilder() =>
      new GHomeOverviewData_forums_threads_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_forums_threads_user &&
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
            r'GHomeOverviewData_forums_threads_user')
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

class GHomeOverviewData_forums_threads_userBuilder
    implements
        Builder<GHomeOverviewData_forums_threads_user,
            GHomeOverviewData_forums_threads_userBuilder> {
  _$GHomeOverviewData_forums_threads_user? _$v;

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

  ListBuilder<_i3.GModRole?>? _moderatorRoles;
  ListBuilder<_i3.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i3.GModRole?>();
  set moderatorRoles(ListBuilder<_i3.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GHomeOverviewData_forums_threads_user_avatarBuilder? _avatar;
  GHomeOverviewData_forums_threads_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GHomeOverviewData_forums_threads_user_avatarBuilder();
  set avatar(GHomeOverviewData_forums_threads_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GHomeOverviewData_forums_threads_userBuilder() {
    GHomeOverviewData_forums_threads_user._initializeBuilder(this);
  }

  GHomeOverviewData_forums_threads_userBuilder get _$this {
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
  void replace(GHomeOverviewData_forums_threads_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_forums_threads_user;
  }

  @override
  void update(
      void Function(GHomeOverviewData_forums_threads_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_forums_threads_user build() => _build();

  _$GHomeOverviewData_forums_threads_user _build() {
    _$GHomeOverviewData_forums_threads_user _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_forums_threads_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GHomeOverviewData_forums_threads_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GHomeOverviewData_forums_threads_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GHomeOverviewData_forums_threads_user', 'name'),
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
            r'GHomeOverviewData_forums_threads_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_forums_threads_user_avatar
    extends GHomeOverviewData_forums_threads_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GHomeOverviewData_forums_threads_user_avatar(
          [void Function(GHomeOverviewData_forums_threads_user_avatarBuilder)?
              updates]) =>
      (new GHomeOverviewData_forums_threads_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_forums_threads_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_forums_threads_user_avatar', 'G__typename');
  }

  @override
  GHomeOverviewData_forums_threads_user_avatar rebuild(
          void Function(GHomeOverviewData_forums_threads_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_forums_threads_user_avatarBuilder toBuilder() =>
      new GHomeOverviewData_forums_threads_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_forums_threads_user_avatar &&
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
            r'GHomeOverviewData_forums_threads_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GHomeOverviewData_forums_threads_user_avatarBuilder
    implements
        Builder<GHomeOverviewData_forums_threads_user_avatar,
            GHomeOverviewData_forums_threads_user_avatarBuilder> {
  _$GHomeOverviewData_forums_threads_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GHomeOverviewData_forums_threads_user_avatarBuilder() {
    GHomeOverviewData_forums_threads_user_avatar._initializeBuilder(this);
  }

  GHomeOverviewData_forums_threads_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_forums_threads_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_forums_threads_user_avatar;
  }

  @override
  void update(
      void Function(GHomeOverviewData_forums_threads_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_forums_threads_user_avatar build() => _build();

  _$GHomeOverviewData_forums_threads_user_avatar _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_forums_threads_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GHomeOverviewData_forums_threads_user_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_forums_threads_replyUser
    extends GHomeOverviewData_forums_threads_replyUser {
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
  final BuiltList<_i3.GModRole?>? moderatorRoles;
  @override
  final GHomeOverviewData_forums_threads_replyUser_avatar? avatar;

  factory _$GHomeOverviewData_forums_threads_replyUser(
          [void Function(GHomeOverviewData_forums_threads_replyUserBuilder)?
              updates]) =>
      (new GHomeOverviewData_forums_threads_replyUserBuilder()..update(updates))
          ._build();

  _$GHomeOverviewData_forums_threads_replyUser._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_forums_threads_replyUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GHomeOverviewData_forums_threads_replyUser', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GHomeOverviewData_forums_threads_replyUser', 'name');
  }

  @override
  GHomeOverviewData_forums_threads_replyUser rebuild(
          void Function(GHomeOverviewData_forums_threads_replyUserBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_forums_threads_replyUserBuilder toBuilder() =>
      new GHomeOverviewData_forums_threads_replyUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_forums_threads_replyUser &&
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
            r'GHomeOverviewData_forums_threads_replyUser')
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

class GHomeOverviewData_forums_threads_replyUserBuilder
    implements
        Builder<GHomeOverviewData_forums_threads_replyUser,
            GHomeOverviewData_forums_threads_replyUserBuilder> {
  _$GHomeOverviewData_forums_threads_replyUser? _$v;

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

  ListBuilder<_i3.GModRole?>? _moderatorRoles;
  ListBuilder<_i3.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i3.GModRole?>();
  set moderatorRoles(ListBuilder<_i3.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GHomeOverviewData_forums_threads_replyUser_avatarBuilder? _avatar;
  GHomeOverviewData_forums_threads_replyUser_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GHomeOverviewData_forums_threads_replyUser_avatarBuilder();
  set avatar(
          GHomeOverviewData_forums_threads_replyUser_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GHomeOverviewData_forums_threads_replyUserBuilder() {
    GHomeOverviewData_forums_threads_replyUser._initializeBuilder(this);
  }

  GHomeOverviewData_forums_threads_replyUserBuilder get _$this {
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
  void replace(GHomeOverviewData_forums_threads_replyUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_forums_threads_replyUser;
  }

  @override
  void update(
      void Function(GHomeOverviewData_forums_threads_replyUserBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_forums_threads_replyUser build() => _build();

  _$GHomeOverviewData_forums_threads_replyUser _build() {
    _$GHomeOverviewData_forums_threads_replyUser _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_forums_threads_replyUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GHomeOverviewData_forums_threads_replyUser', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GHomeOverviewData_forums_threads_replyUser', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GHomeOverviewData_forums_threads_replyUser', 'name'),
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
            r'GHomeOverviewData_forums_threads_replyUser',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_forums_threads_replyUser_avatar
    extends GHomeOverviewData_forums_threads_replyUser_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GHomeOverviewData_forums_threads_replyUser_avatar(
          [void Function(
                  GHomeOverviewData_forums_threads_replyUser_avatarBuilder)?
              updates]) =>
      (new GHomeOverviewData_forums_threads_replyUser_avatarBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_forums_threads_replyUser_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_forums_threads_replyUser_avatar', 'G__typename');
  }

  @override
  GHomeOverviewData_forums_threads_replyUser_avatar rebuild(
          void Function(
                  GHomeOverviewData_forums_threads_replyUser_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_forums_threads_replyUser_avatarBuilder toBuilder() =>
      new GHomeOverviewData_forums_threads_replyUser_avatarBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_forums_threads_replyUser_avatar &&
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
            r'GHomeOverviewData_forums_threads_replyUser_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GHomeOverviewData_forums_threads_replyUser_avatarBuilder
    implements
        Builder<GHomeOverviewData_forums_threads_replyUser_avatar,
            GHomeOverviewData_forums_threads_replyUser_avatarBuilder> {
  _$GHomeOverviewData_forums_threads_replyUser_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GHomeOverviewData_forums_threads_replyUser_avatarBuilder() {
    GHomeOverviewData_forums_threads_replyUser_avatar._initializeBuilder(this);
  }

  GHomeOverviewData_forums_threads_replyUser_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_forums_threads_replyUser_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_forums_threads_replyUser_avatar;
  }

  @override
  void update(
      void Function(GHomeOverviewData_forums_threads_replyUser_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_forums_threads_replyUser_avatar build() => _build();

  _$GHomeOverviewData_forums_threads_replyUser_avatar _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_forums_threads_replyUser_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GHomeOverviewData_forums_threads_replyUser_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_reviews extends GHomeOverviewData_reviews {
  @override
  final String G__typename;
  @override
  final BuiltList<GHomeOverviewData_reviews_reviews?>? reviews;

  factory _$GHomeOverviewData_reviews(
          [void Function(GHomeOverviewData_reviewsBuilder)? updates]) =>
      (new GHomeOverviewData_reviewsBuilder()..update(updates))._build();

  _$GHomeOverviewData_reviews._({required this.G__typename, this.reviews})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GHomeOverviewData_reviews', 'G__typename');
  }

  @override
  GHomeOverviewData_reviews rebuild(
          void Function(GHomeOverviewData_reviewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_reviewsBuilder toBuilder() =>
      new GHomeOverviewData_reviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_reviews &&
        G__typename == other.G__typename &&
        reviews == other.reviews;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, reviews.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GHomeOverviewData_reviews')
          ..add('G__typename', G__typename)
          ..add('reviews', reviews))
        .toString();
  }
}

class GHomeOverviewData_reviewsBuilder
    implements
        Builder<GHomeOverviewData_reviews, GHomeOverviewData_reviewsBuilder> {
  _$GHomeOverviewData_reviews? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GHomeOverviewData_reviews_reviews?>? _reviews;
  ListBuilder<GHomeOverviewData_reviews_reviews?> get reviews =>
      _$this._reviews ??= new ListBuilder<GHomeOverviewData_reviews_reviews?>();
  set reviews(ListBuilder<GHomeOverviewData_reviews_reviews?>? reviews) =>
      _$this._reviews = reviews;

  GHomeOverviewData_reviewsBuilder() {
    GHomeOverviewData_reviews._initializeBuilder(this);
  }

  GHomeOverviewData_reviewsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _reviews = $v.reviews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_reviews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_reviews;
  }

  @override
  void update(void Function(GHomeOverviewData_reviewsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_reviews build() => _build();

  _$GHomeOverviewData_reviews _build() {
    _$GHomeOverviewData_reviews _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_reviews._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GHomeOverviewData_reviews', 'G__typename'),
              reviews: _reviews?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reviews';
        _reviews?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GHomeOverviewData_reviews', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_reviews_reviews
    extends GHomeOverviewData_reviews_reviews {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int? rating;
  @override
  final int? ratingAmount;
  @override
  final String? summary;
  @override
  final GHomeOverviewData_reviews_reviews_media? media;
  @override
  final GHomeOverviewData_reviews_reviews_user? user;

  factory _$GHomeOverviewData_reviews_reviews(
          [void Function(GHomeOverviewData_reviews_reviewsBuilder)? updates]) =>
      (new GHomeOverviewData_reviews_reviewsBuilder()..update(updates))
          ._build();

  _$GHomeOverviewData_reviews_reviews._(
      {required this.G__typename,
      required this.id,
      this.rating,
      this.ratingAmount,
      this.summary,
      this.media,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GHomeOverviewData_reviews_reviews', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GHomeOverviewData_reviews_reviews', 'id');
  }

  @override
  GHomeOverviewData_reviews_reviews rebuild(
          void Function(GHomeOverviewData_reviews_reviewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_reviews_reviewsBuilder toBuilder() =>
      new GHomeOverviewData_reviews_reviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_reviews_reviews &&
        G__typename == other.G__typename &&
        id == other.id &&
        rating == other.rating &&
        ratingAmount == other.ratingAmount &&
        summary == other.summary &&
        media == other.media &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, ratingAmount.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GHomeOverviewData_reviews_reviews')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('rating', rating)
          ..add('ratingAmount', ratingAmount)
          ..add('summary', summary)
          ..add('media', media)
          ..add('user', user))
        .toString();
  }
}

class GHomeOverviewData_reviews_reviewsBuilder
    implements
        Builder<GHomeOverviewData_reviews_reviews,
            GHomeOverviewData_reviews_reviewsBuilder> {
  _$GHomeOverviewData_reviews_reviews? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  int? _ratingAmount;
  int? get ratingAmount => _$this._ratingAmount;
  set ratingAmount(int? ratingAmount) => _$this._ratingAmount = ratingAmount;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  GHomeOverviewData_reviews_reviews_mediaBuilder? _media;
  GHomeOverviewData_reviews_reviews_mediaBuilder get media =>
      _$this._media ??= new GHomeOverviewData_reviews_reviews_mediaBuilder();
  set media(GHomeOverviewData_reviews_reviews_mediaBuilder? media) =>
      _$this._media = media;

  GHomeOverviewData_reviews_reviews_userBuilder? _user;
  GHomeOverviewData_reviews_reviews_userBuilder get user =>
      _$this._user ??= new GHomeOverviewData_reviews_reviews_userBuilder();
  set user(GHomeOverviewData_reviews_reviews_userBuilder? user) =>
      _$this._user = user;

  GHomeOverviewData_reviews_reviewsBuilder() {
    GHomeOverviewData_reviews_reviews._initializeBuilder(this);
  }

  GHomeOverviewData_reviews_reviewsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _rating = $v.rating;
      _ratingAmount = $v.ratingAmount;
      _summary = $v.summary;
      _media = $v.media?.toBuilder();
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_reviews_reviews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_reviews_reviews;
  }

  @override
  void update(
      void Function(GHomeOverviewData_reviews_reviewsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_reviews_reviews build() => _build();

  _$GHomeOverviewData_reviews_reviews _build() {
    _$GHomeOverviewData_reviews_reviews _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_reviews_reviews._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GHomeOverviewData_reviews_reviews', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GHomeOverviewData_reviews_reviews', 'id'),
              rating: rating,
              ratingAmount: ratingAmount,
              summary: summary,
              media: _media?.build(),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GHomeOverviewData_reviews_reviews', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_reviews_reviews_media
    extends GHomeOverviewData_reviews_reviews_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GHomeOverviewData_reviews_reviews_media_title? title;
  @override
  final _i3.GMediaType? type;
  @override
  final String? bannerImage;

  factory _$GHomeOverviewData_reviews_reviews_media(
          [void Function(GHomeOverviewData_reviews_reviews_mediaBuilder)?
              updates]) =>
      (new GHomeOverviewData_reviews_reviews_mediaBuilder()..update(updates))
          ._build();

  _$GHomeOverviewData_reviews_reviews_media._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.type,
      this.bannerImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GHomeOverviewData_reviews_reviews_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GHomeOverviewData_reviews_reviews_media', 'id');
  }

  @override
  GHomeOverviewData_reviews_reviews_media rebuild(
          void Function(GHomeOverviewData_reviews_reviews_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_reviews_reviews_mediaBuilder toBuilder() =>
      new GHomeOverviewData_reviews_reviews_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_reviews_reviews_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        type == other.type &&
        bannerImage == other.bannerImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GHomeOverviewData_reviews_reviews_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('type', type)
          ..add('bannerImage', bannerImage))
        .toString();
  }
}

class GHomeOverviewData_reviews_reviews_mediaBuilder
    implements
        Builder<GHomeOverviewData_reviews_reviews_media,
            GHomeOverviewData_reviews_reviews_mediaBuilder> {
  _$GHomeOverviewData_reviews_reviews_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GHomeOverviewData_reviews_reviews_media_titleBuilder? _title;
  GHomeOverviewData_reviews_reviews_media_titleBuilder get title =>
      _$this._title ??=
          new GHomeOverviewData_reviews_reviews_media_titleBuilder();
  set title(GHomeOverviewData_reviews_reviews_media_titleBuilder? title) =>
      _$this._title = title;

  _i3.GMediaType? _type;
  _i3.GMediaType? get type => _$this._type;
  set type(_i3.GMediaType? type) => _$this._type = type;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  GHomeOverviewData_reviews_reviews_mediaBuilder() {
    GHomeOverviewData_reviews_reviews_media._initializeBuilder(this);
  }

  GHomeOverviewData_reviews_reviews_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _type = $v.type;
      _bannerImage = $v.bannerImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_reviews_reviews_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_reviews_reviews_media;
  }

  @override
  void update(
      void Function(GHomeOverviewData_reviews_reviews_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_reviews_reviews_media build() => _build();

  _$GHomeOverviewData_reviews_reviews_media _build() {
    _$GHomeOverviewData_reviews_reviews_media _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_reviews_reviews_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GHomeOverviewData_reviews_reviews_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GHomeOverviewData_reviews_reviews_media', 'id'),
              title: _title?.build(),
              type: type,
              bannerImage: bannerImage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GHomeOverviewData_reviews_reviews_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_reviews_reviews_media_title
    extends GHomeOverviewData_reviews_reviews_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GHomeOverviewData_reviews_reviews_media_title(
          [void Function(GHomeOverviewData_reviews_reviews_media_titleBuilder)?
              updates]) =>
      (new GHomeOverviewData_reviews_reviews_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_reviews_reviews_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_reviews_reviews_media_title', 'G__typename');
  }

  @override
  GHomeOverviewData_reviews_reviews_media_title rebuild(
          void Function(GHomeOverviewData_reviews_reviews_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_reviews_reviews_media_titleBuilder toBuilder() =>
      new GHomeOverviewData_reviews_reviews_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_reviews_reviews_media_title &&
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
            r'GHomeOverviewData_reviews_reviews_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GHomeOverviewData_reviews_reviews_media_titleBuilder
    implements
        Builder<GHomeOverviewData_reviews_reviews_media_title,
            GHomeOverviewData_reviews_reviews_media_titleBuilder> {
  _$GHomeOverviewData_reviews_reviews_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GHomeOverviewData_reviews_reviews_media_titleBuilder() {
    GHomeOverviewData_reviews_reviews_media_title._initializeBuilder(this);
  }

  GHomeOverviewData_reviews_reviews_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_reviews_reviews_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_reviews_reviews_media_title;
  }

  @override
  void update(
      void Function(GHomeOverviewData_reviews_reviews_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_reviews_reviews_media_title build() => _build();

  _$GHomeOverviewData_reviews_reviews_media_title _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_reviews_reviews_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GHomeOverviewData_reviews_reviews_media_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_reviews_reviews_user
    extends GHomeOverviewData_reviews_reviews_user {
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
  final BuiltList<_i3.GModRole?>? moderatorRoles;
  @override
  final GHomeOverviewData_reviews_reviews_user_avatar? avatar;

  factory _$GHomeOverviewData_reviews_reviews_user(
          [void Function(GHomeOverviewData_reviews_reviews_userBuilder)?
              updates]) =>
      (new GHomeOverviewData_reviews_reviews_userBuilder()..update(updates))
          ._build();

  _$GHomeOverviewData_reviews_reviews_user._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GHomeOverviewData_reviews_reviews_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GHomeOverviewData_reviews_reviews_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GHomeOverviewData_reviews_reviews_user', 'name');
  }

  @override
  GHomeOverviewData_reviews_reviews_user rebuild(
          void Function(GHomeOverviewData_reviews_reviews_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_reviews_reviews_userBuilder toBuilder() =>
      new GHomeOverviewData_reviews_reviews_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_reviews_reviews_user &&
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
            r'GHomeOverviewData_reviews_reviews_user')
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

class GHomeOverviewData_reviews_reviews_userBuilder
    implements
        Builder<GHomeOverviewData_reviews_reviews_user,
            GHomeOverviewData_reviews_reviews_userBuilder> {
  _$GHomeOverviewData_reviews_reviews_user? _$v;

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

  ListBuilder<_i3.GModRole?>? _moderatorRoles;
  ListBuilder<_i3.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i3.GModRole?>();
  set moderatorRoles(ListBuilder<_i3.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GHomeOverviewData_reviews_reviews_user_avatarBuilder? _avatar;
  GHomeOverviewData_reviews_reviews_user_avatarBuilder get avatar =>
      _$this._avatar ??=
          new GHomeOverviewData_reviews_reviews_user_avatarBuilder();
  set avatar(GHomeOverviewData_reviews_reviews_user_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GHomeOverviewData_reviews_reviews_userBuilder() {
    GHomeOverviewData_reviews_reviews_user._initializeBuilder(this);
  }

  GHomeOverviewData_reviews_reviews_userBuilder get _$this {
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
  void replace(GHomeOverviewData_reviews_reviews_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_reviews_reviews_user;
  }

  @override
  void update(
      void Function(GHomeOverviewData_reviews_reviews_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_reviews_reviews_user build() => _build();

  _$GHomeOverviewData_reviews_reviews_user _build() {
    _$GHomeOverviewData_reviews_reviews_user _$result;
    try {
      _$result = _$v ??
          new _$GHomeOverviewData_reviews_reviews_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GHomeOverviewData_reviews_reviews_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GHomeOverviewData_reviews_reviews_user', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GHomeOverviewData_reviews_reviews_user', 'name'),
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
            r'GHomeOverviewData_reviews_reviews_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHomeOverviewData_reviews_reviews_user_avatar
    extends GHomeOverviewData_reviews_reviews_user_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GHomeOverviewData_reviews_reviews_user_avatar(
          [void Function(GHomeOverviewData_reviews_reviews_user_avatarBuilder)?
              updates]) =>
      (new GHomeOverviewData_reviews_reviews_user_avatarBuilder()
            ..update(updates))
          ._build();

  _$GHomeOverviewData_reviews_reviews_user_avatar._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GHomeOverviewData_reviews_reviews_user_avatar', 'G__typename');
  }

  @override
  GHomeOverviewData_reviews_reviews_user_avatar rebuild(
          void Function(GHomeOverviewData_reviews_reviews_user_avatarBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHomeOverviewData_reviews_reviews_user_avatarBuilder toBuilder() =>
      new GHomeOverviewData_reviews_reviews_user_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHomeOverviewData_reviews_reviews_user_avatar &&
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
            r'GHomeOverviewData_reviews_reviews_user_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GHomeOverviewData_reviews_reviews_user_avatarBuilder
    implements
        Builder<GHomeOverviewData_reviews_reviews_user_avatar,
            GHomeOverviewData_reviews_reviews_user_avatarBuilder> {
  _$GHomeOverviewData_reviews_reviews_user_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GHomeOverviewData_reviews_reviews_user_avatarBuilder() {
    GHomeOverviewData_reviews_reviews_user_avatar._initializeBuilder(this);
  }

  GHomeOverviewData_reviews_reviews_user_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHomeOverviewData_reviews_reviews_user_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHomeOverviewData_reviews_reviews_user_avatar;
  }

  @override
  void update(
      void Function(GHomeOverviewData_reviews_reviews_user_avatarBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GHomeOverviewData_reviews_reviews_user_avatar build() => _build();

  _$GHomeOverviewData_reviews_reviews_user_avatar _build() {
    final _$result = _$v ??
        new _$GHomeOverviewData_reviews_reviews_user_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GHomeOverviewData_reviews_reviews_user_avatar',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
