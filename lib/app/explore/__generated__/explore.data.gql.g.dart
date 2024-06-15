// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GExploreData> _$gExploreDataSerializer =
    new _$GExploreDataSerializer();
Serializer<GExploreData_trending> _$gExploreDataTrendingSerializer =
    new _$GExploreData_trendingSerializer();
Serializer<GExploreData_trending_media> _$gExploreDataTrendingMediaSerializer =
    new _$GExploreData_trending_mediaSerializer();
Serializer<GExploreData_trending_media_title>
    _$gExploreDataTrendingMediaTitleSerializer =
    new _$GExploreData_trending_media_titleSerializer();
Serializer<GExploreData_trending_media_coverImage>
    _$gExploreDataTrendingMediaCoverImageSerializer =
    new _$GExploreData_trending_media_coverImageSerializer();
Serializer<GExploreData_season> _$gExploreDataSeasonSerializer =
    new _$GExploreData_seasonSerializer();
Serializer<GExploreData_season_media> _$gExploreDataSeasonMediaSerializer =
    new _$GExploreData_season_mediaSerializer();
Serializer<GExploreData_season_media_title>
    _$gExploreDataSeasonMediaTitleSerializer =
    new _$GExploreData_season_media_titleSerializer();
Serializer<GExploreData_season_media_coverImage>
    _$gExploreDataSeasonMediaCoverImageSerializer =
    new _$GExploreData_season_media_coverImageSerializer();
Serializer<GExploreData_nextSeason> _$gExploreDataNextSeasonSerializer =
    new _$GExploreData_nextSeasonSerializer();
Serializer<GExploreData_nextSeason_media>
    _$gExploreDataNextSeasonMediaSerializer =
    new _$GExploreData_nextSeason_mediaSerializer();
Serializer<GExploreData_nextSeason_media_title>
    _$gExploreDataNextSeasonMediaTitleSerializer =
    new _$GExploreData_nextSeason_media_titleSerializer();
Serializer<GExploreData_nextSeason_media_coverImage>
    _$gExploreDataNextSeasonMediaCoverImageSerializer =
    new _$GExploreData_nextSeason_media_coverImageSerializer();
Serializer<GExploreData_popular> _$gExploreDataPopularSerializer =
    new _$GExploreData_popularSerializer();
Serializer<GExploreData_popular_media> _$gExploreDataPopularMediaSerializer =
    new _$GExploreData_popular_mediaSerializer();
Serializer<GExploreData_popular_media_title>
    _$gExploreDataPopularMediaTitleSerializer =
    new _$GExploreData_popular_media_titleSerializer();
Serializer<GExploreData_popular_media_coverImage>
    _$gExploreDataPopularMediaCoverImageSerializer =
    new _$GExploreData_popular_media_coverImageSerializer();
Serializer<GExploreData_recent> _$gExploreDataRecentSerializer =
    new _$GExploreData_recentSerializer();
Serializer<GExploreData_recent_media> _$gExploreDataRecentMediaSerializer =
    new _$GExploreData_recent_mediaSerializer();
Serializer<GExploreData_recent_media_title>
    _$gExploreDataRecentMediaTitleSerializer =
    new _$GExploreData_recent_media_titleSerializer();
Serializer<GExploreData_recent_media_coverImage>
    _$gExploreDataRecentMediaCoverImageSerializer =
    new _$GExploreData_recent_media_coverImageSerializer();

class _$GExploreDataSerializer implements StructuredSerializer<GExploreData> {
  @override
  final Iterable<Type> types = const [GExploreData, _$GExploreData];
  @override
  final String wireName = 'GExploreData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GExploreData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.trending;
    if (value != null) {
      result
        ..add('trending')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GExploreData_trending)));
    }
    value = object.season;
    if (value != null) {
      result
        ..add('season')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GExploreData_season)));
    }
    value = object.nextSeason;
    if (value != null) {
      result
        ..add('nextSeason')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GExploreData_nextSeason)));
    }
    value = object.popular;
    if (value != null) {
      result
        ..add('popular')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GExploreData_popular)));
    }
    value = object.recent;
    if (value != null) {
      result
        ..add('recent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GExploreData_recent)));
    }
    return result;
  }

  @override
  GExploreData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreDataBuilder();

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
        case 'trending':
          result.trending.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GExploreData_trending))!
              as GExploreData_trending);
          break;
        case 'season':
          result.season.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GExploreData_season))!
              as GExploreData_season);
          break;
        case 'nextSeason':
          result.nextSeason.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GExploreData_nextSeason))!
              as GExploreData_nextSeason);
          break;
        case 'popular':
          result.popular.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GExploreData_popular))!
              as GExploreData_popular);
          break;
        case 'recent':
          result.recent.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GExploreData_recent))!
              as GExploreData_recent);
          break;
      }
    }

    return result.build();
  }
}

class _$GExploreData_trendingSerializer
    implements StructuredSerializer<GExploreData_trending> {
  @override
  final Iterable<Type> types = const [
    GExploreData_trending,
    _$GExploreData_trending
  ];
  @override
  final String wireName = 'GExploreData_trending';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_trending object,
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
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GExploreData_trending_media)])));
    }
    return result;
  }

  @override
  GExploreData_trending deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_trendingBuilder();

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
                const FullType.nullable(GExploreData_trending_media)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GExploreData_trending_mediaSerializer
    implements StructuredSerializer<GExploreData_trending_media> {
  @override
  final Iterable<Type> types = const [
    GExploreData_trending_media,
    _$GExploreData_trending_media
  ];
  @override
  final String wireName = 'GExploreData_trending_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_trending_media object,
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
            specifiedType: const FullType(GExploreData_trending_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GExploreData_trending_media_coverImage)));
    }
    return result;
  }

  @override
  GExploreData_trending_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_trending_mediaBuilder();

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
                  specifiedType:
                      const FullType(GExploreData_trending_media_title))!
              as GExploreData_trending_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GExploreData_trending_media_coverImage))!
              as GExploreData_trending_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GExploreData_trending_media_titleSerializer
    implements StructuredSerializer<GExploreData_trending_media_title> {
  @override
  final Iterable<Type> types = const [
    GExploreData_trending_media_title,
    _$GExploreData_trending_media_title
  ];
  @override
  final String wireName = 'GExploreData_trending_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_trending_media_title object,
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
  GExploreData_trending_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_trending_media_titleBuilder();

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

class _$GExploreData_trending_media_coverImageSerializer
    implements StructuredSerializer<GExploreData_trending_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GExploreData_trending_media_coverImage,
    _$GExploreData_trending_media_coverImage
  ];
  @override
  final String wireName = 'GExploreData_trending_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_trending_media_coverImage object,
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
  GExploreData_trending_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_trending_media_coverImageBuilder();

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

class _$GExploreData_seasonSerializer
    implements StructuredSerializer<GExploreData_season> {
  @override
  final Iterable<Type> types = const [
    GExploreData_season,
    _$GExploreData_season
  ];
  @override
  final String wireName = 'GExploreData_season';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_season object,
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
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GExploreData_season_media)])));
    }
    return result;
  }

  @override
  GExploreData_season deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_seasonBuilder();

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
                const FullType.nullable(GExploreData_season_media)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GExploreData_season_mediaSerializer
    implements StructuredSerializer<GExploreData_season_media> {
  @override
  final Iterable<Type> types = const [
    GExploreData_season_media,
    _$GExploreData_season_media
  ];
  @override
  final String wireName = 'GExploreData_season_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_season_media object,
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
            specifiedType: const FullType(GExploreData_season_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GExploreData_season_media_coverImage)));
    }
    return result;
  }

  @override
  GExploreData_season_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_season_mediaBuilder();

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
                  specifiedType:
                      const FullType(GExploreData_season_media_title))!
              as GExploreData_season_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GExploreData_season_media_coverImage))!
              as GExploreData_season_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GExploreData_season_media_titleSerializer
    implements StructuredSerializer<GExploreData_season_media_title> {
  @override
  final Iterable<Type> types = const [
    GExploreData_season_media_title,
    _$GExploreData_season_media_title
  ];
  @override
  final String wireName = 'GExploreData_season_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_season_media_title object,
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
  GExploreData_season_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_season_media_titleBuilder();

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

class _$GExploreData_season_media_coverImageSerializer
    implements StructuredSerializer<GExploreData_season_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GExploreData_season_media_coverImage,
    _$GExploreData_season_media_coverImage
  ];
  @override
  final String wireName = 'GExploreData_season_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_season_media_coverImage object,
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
  GExploreData_season_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_season_media_coverImageBuilder();

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

class _$GExploreData_nextSeasonSerializer
    implements StructuredSerializer<GExploreData_nextSeason> {
  @override
  final Iterable<Type> types = const [
    GExploreData_nextSeason,
    _$GExploreData_nextSeason
  ];
  @override
  final String wireName = 'GExploreData_nextSeason';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_nextSeason object,
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
              const FullType.nullable(GExploreData_nextSeason_media)
            ])));
    }
    return result;
  }

  @override
  GExploreData_nextSeason deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_nextSeasonBuilder();

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
                const FullType.nullable(GExploreData_nextSeason_media)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GExploreData_nextSeason_mediaSerializer
    implements StructuredSerializer<GExploreData_nextSeason_media> {
  @override
  final Iterable<Type> types = const [
    GExploreData_nextSeason_media,
    _$GExploreData_nextSeason_media
  ];
  @override
  final String wireName = 'GExploreData_nextSeason_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_nextSeason_media object,
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
                const FullType(GExploreData_nextSeason_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GExploreData_nextSeason_media_coverImage)));
    }
    return result;
  }

  @override
  GExploreData_nextSeason_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_nextSeason_mediaBuilder();

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
                  specifiedType:
                      const FullType(GExploreData_nextSeason_media_title))!
              as GExploreData_nextSeason_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GExploreData_nextSeason_media_coverImage))!
              as GExploreData_nextSeason_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GExploreData_nextSeason_media_titleSerializer
    implements StructuredSerializer<GExploreData_nextSeason_media_title> {
  @override
  final Iterable<Type> types = const [
    GExploreData_nextSeason_media_title,
    _$GExploreData_nextSeason_media_title
  ];
  @override
  final String wireName = 'GExploreData_nextSeason_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_nextSeason_media_title object,
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
  GExploreData_nextSeason_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_nextSeason_media_titleBuilder();

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

class _$GExploreData_nextSeason_media_coverImageSerializer
    implements StructuredSerializer<GExploreData_nextSeason_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GExploreData_nextSeason_media_coverImage,
    _$GExploreData_nextSeason_media_coverImage
  ];
  @override
  final String wireName = 'GExploreData_nextSeason_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_nextSeason_media_coverImage object,
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
  GExploreData_nextSeason_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_nextSeason_media_coverImageBuilder();

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

class _$GExploreData_popularSerializer
    implements StructuredSerializer<GExploreData_popular> {
  @override
  final Iterable<Type> types = const [
    GExploreData_popular,
    _$GExploreData_popular
  ];
  @override
  final String wireName = 'GExploreData_popular';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_popular object,
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
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GExploreData_popular_media)])));
    }
    return result;
  }

  @override
  GExploreData_popular deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_popularBuilder();

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
                const FullType.nullable(GExploreData_popular_media)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GExploreData_popular_mediaSerializer
    implements StructuredSerializer<GExploreData_popular_media> {
  @override
  final Iterable<Type> types = const [
    GExploreData_popular_media,
    _$GExploreData_popular_media
  ];
  @override
  final String wireName = 'GExploreData_popular_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_popular_media object,
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
            specifiedType: const FullType(GExploreData_popular_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GExploreData_popular_media_coverImage)));
    }
    return result;
  }

  @override
  GExploreData_popular_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_popular_mediaBuilder();

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
                  specifiedType:
                      const FullType(GExploreData_popular_media_title))!
              as GExploreData_popular_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GExploreData_popular_media_coverImage))!
              as GExploreData_popular_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GExploreData_popular_media_titleSerializer
    implements StructuredSerializer<GExploreData_popular_media_title> {
  @override
  final Iterable<Type> types = const [
    GExploreData_popular_media_title,
    _$GExploreData_popular_media_title
  ];
  @override
  final String wireName = 'GExploreData_popular_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_popular_media_title object,
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
  GExploreData_popular_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_popular_media_titleBuilder();

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

class _$GExploreData_popular_media_coverImageSerializer
    implements StructuredSerializer<GExploreData_popular_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GExploreData_popular_media_coverImage,
    _$GExploreData_popular_media_coverImage
  ];
  @override
  final String wireName = 'GExploreData_popular_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_popular_media_coverImage object,
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
  GExploreData_popular_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_popular_media_coverImageBuilder();

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

class _$GExploreData_recentSerializer
    implements StructuredSerializer<GExploreData_recent> {
  @override
  final Iterable<Type> types = const [
    GExploreData_recent,
    _$GExploreData_recent
  ];
  @override
  final String wireName = 'GExploreData_recent';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_recent object,
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
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GExploreData_recent_media)])));
    }
    return result;
  }

  @override
  GExploreData_recent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_recentBuilder();

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
                const FullType.nullable(GExploreData_recent_media)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GExploreData_recent_mediaSerializer
    implements StructuredSerializer<GExploreData_recent_media> {
  @override
  final Iterable<Type> types = const [
    GExploreData_recent_media,
    _$GExploreData_recent_media
  ];
  @override
  final String wireName = 'GExploreData_recent_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_recent_media object,
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
            specifiedType: const FullType(GExploreData_recent_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GExploreData_recent_media_coverImage)));
    }
    return result;
  }

  @override
  GExploreData_recent_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_recent_mediaBuilder();

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
                  specifiedType:
                      const FullType(GExploreData_recent_media_title))!
              as GExploreData_recent_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GExploreData_recent_media_coverImage))!
              as GExploreData_recent_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GExploreData_recent_media_titleSerializer
    implements StructuredSerializer<GExploreData_recent_media_title> {
  @override
  final Iterable<Type> types = const [
    GExploreData_recent_media_title,
    _$GExploreData_recent_media_title
  ];
  @override
  final String wireName = 'GExploreData_recent_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_recent_media_title object,
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
  GExploreData_recent_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_recent_media_titleBuilder();

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

class _$GExploreData_recent_media_coverImageSerializer
    implements StructuredSerializer<GExploreData_recent_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GExploreData_recent_media_coverImage,
    _$GExploreData_recent_media_coverImage
  ];
  @override
  final String wireName = 'GExploreData_recent_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GExploreData_recent_media_coverImage object,
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
  GExploreData_recent_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GExploreData_recent_media_coverImageBuilder();

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

class _$GExploreData extends GExploreData {
  @override
  final String G__typename;
  @override
  final GExploreData_trending? trending;
  @override
  final GExploreData_season? season;
  @override
  final GExploreData_nextSeason? nextSeason;
  @override
  final GExploreData_popular? popular;
  @override
  final GExploreData_recent? recent;

  factory _$GExploreData([void Function(GExploreDataBuilder)? updates]) =>
      (new GExploreDataBuilder()..update(updates))._build();

  _$GExploreData._(
      {required this.G__typename,
      this.trending,
      this.season,
      this.nextSeason,
      this.popular,
      this.recent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData', 'G__typename');
  }

  @override
  GExploreData rebuild(void Function(GExploreDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreDataBuilder toBuilder() => new GExploreDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData &&
        G__typename == other.G__typename &&
        trending == other.trending &&
        season == other.season &&
        nextSeason == other.nextSeason &&
        popular == other.popular &&
        recent == other.recent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, trending.hashCode);
    _$hash = $jc(_$hash, season.hashCode);
    _$hash = $jc(_$hash, nextSeason.hashCode);
    _$hash = $jc(_$hash, popular.hashCode);
    _$hash = $jc(_$hash, recent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GExploreData')
          ..add('G__typename', G__typename)
          ..add('trending', trending)
          ..add('season', season)
          ..add('nextSeason', nextSeason)
          ..add('popular', popular)
          ..add('recent', recent))
        .toString();
  }
}

class GExploreDataBuilder
    implements Builder<GExploreData, GExploreDataBuilder> {
  _$GExploreData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GExploreData_trendingBuilder? _trending;
  GExploreData_trendingBuilder get trending =>
      _$this._trending ??= new GExploreData_trendingBuilder();
  set trending(GExploreData_trendingBuilder? trending) =>
      _$this._trending = trending;

  GExploreData_seasonBuilder? _season;
  GExploreData_seasonBuilder get season =>
      _$this._season ??= new GExploreData_seasonBuilder();
  set season(GExploreData_seasonBuilder? season) => _$this._season = season;

  GExploreData_nextSeasonBuilder? _nextSeason;
  GExploreData_nextSeasonBuilder get nextSeason =>
      _$this._nextSeason ??= new GExploreData_nextSeasonBuilder();
  set nextSeason(GExploreData_nextSeasonBuilder? nextSeason) =>
      _$this._nextSeason = nextSeason;

  GExploreData_popularBuilder? _popular;
  GExploreData_popularBuilder get popular =>
      _$this._popular ??= new GExploreData_popularBuilder();
  set popular(GExploreData_popularBuilder? popular) =>
      _$this._popular = popular;

  GExploreData_recentBuilder? _recent;
  GExploreData_recentBuilder get recent =>
      _$this._recent ??= new GExploreData_recentBuilder();
  set recent(GExploreData_recentBuilder? recent) => _$this._recent = recent;

  GExploreDataBuilder() {
    GExploreData._initializeBuilder(this);
  }

  GExploreDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _trending = $v.trending?.toBuilder();
      _season = $v.season?.toBuilder();
      _nextSeason = $v.nextSeason?.toBuilder();
      _popular = $v.popular?.toBuilder();
      _recent = $v.recent?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData;
  }

  @override
  void update(void Function(GExploreDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData build() => _build();

  _$GExploreData _build() {
    _$GExploreData _$result;
    try {
      _$result = _$v ??
          new _$GExploreData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExploreData', 'G__typename'),
              trending: _trending?.build(),
              season: _season?.build(),
              nextSeason: _nextSeason?.build(),
              popular: _popular?.build(),
              recent: _recent?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trending';
        _trending?.build();
        _$failedField = 'season';
        _season?.build();
        _$failedField = 'nextSeason';
        _nextSeason?.build();
        _$failedField = 'popular';
        _popular?.build();
        _$failedField = 'recent';
        _recent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GExploreData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_trending extends GExploreData_trending {
  @override
  final String G__typename;
  @override
  final BuiltList<GExploreData_trending_media?>? media;

  factory _$GExploreData_trending(
          [void Function(GExploreData_trendingBuilder)? updates]) =>
      (new GExploreData_trendingBuilder()..update(updates))._build();

  _$GExploreData_trending._({required this.G__typename, this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_trending', 'G__typename');
  }

  @override
  GExploreData_trending rebuild(
          void Function(GExploreData_trendingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_trendingBuilder toBuilder() =>
      new GExploreData_trendingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_trending &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_trending')
          ..add('G__typename', G__typename)
          ..add('media', media))
        .toString();
  }
}

class GExploreData_trendingBuilder
    implements Builder<GExploreData_trending, GExploreData_trendingBuilder> {
  _$GExploreData_trending? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GExploreData_trending_media?>? _media;
  ListBuilder<GExploreData_trending_media?> get media =>
      _$this._media ??= new ListBuilder<GExploreData_trending_media?>();
  set media(ListBuilder<GExploreData_trending_media?>? media) =>
      _$this._media = media;

  GExploreData_trendingBuilder() {
    GExploreData_trending._initializeBuilder(this);
  }

  GExploreData_trendingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_trending other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_trending;
  }

  @override
  void update(void Function(GExploreData_trendingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_trending build() => _build();

  _$GExploreData_trending _build() {
    _$GExploreData_trending _$result;
    try {
      _$result = _$v ??
          new _$GExploreData_trending._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExploreData_trending', 'G__typename'),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GExploreData_trending', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_trending_media extends GExploreData_trending_media {
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
  final GExploreData_trending_media_title? title;
  @override
  final GExploreData_trending_media_coverImage? coverImage;

  factory _$GExploreData_trending_media(
          [void Function(GExploreData_trending_mediaBuilder)? updates]) =>
      (new GExploreData_trending_mediaBuilder()..update(updates))._build();

  _$GExploreData_trending_media._(
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
        G__typename, r'GExploreData_trending_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GExploreData_trending_media', 'id');
  }

  @override
  GExploreData_trending_media rebuild(
          void Function(GExploreData_trending_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_trending_mediaBuilder toBuilder() =>
      new GExploreData_trending_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_trending_media &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_trending_media')
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

class GExploreData_trending_mediaBuilder
    implements
        Builder<GExploreData_trending_media,
            GExploreData_trending_mediaBuilder> {
  _$GExploreData_trending_media? _$v;

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

  GExploreData_trending_media_titleBuilder? _title;
  GExploreData_trending_media_titleBuilder get title =>
      _$this._title ??= new GExploreData_trending_media_titleBuilder();
  set title(GExploreData_trending_media_titleBuilder? title) =>
      _$this._title = title;

  GExploreData_trending_media_coverImageBuilder? _coverImage;
  GExploreData_trending_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GExploreData_trending_media_coverImageBuilder();
  set coverImage(GExploreData_trending_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GExploreData_trending_mediaBuilder() {
    GExploreData_trending_media._initializeBuilder(this);
  }

  GExploreData_trending_mediaBuilder get _$this {
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
  void replace(GExploreData_trending_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_trending_media;
  }

  @override
  void update(void Function(GExploreData_trending_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_trending_media build() => _build();

  _$GExploreData_trending_media _build() {
    _$GExploreData_trending_media _$result;
    try {
      _$result = _$v ??
          new _$GExploreData_trending_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExploreData_trending_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GExploreData_trending_media', 'id'),
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
            r'GExploreData_trending_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_trending_media_title
    extends GExploreData_trending_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GExploreData_trending_media_title(
          [void Function(GExploreData_trending_media_titleBuilder)? updates]) =>
      (new GExploreData_trending_media_titleBuilder()..update(updates))
          ._build();

  _$GExploreData_trending_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_trending_media_title', 'G__typename');
  }

  @override
  GExploreData_trending_media_title rebuild(
          void Function(GExploreData_trending_media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_trending_media_titleBuilder toBuilder() =>
      new GExploreData_trending_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_trending_media_title &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_trending_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GExploreData_trending_media_titleBuilder
    implements
        Builder<GExploreData_trending_media_title,
            GExploreData_trending_media_titleBuilder> {
  _$GExploreData_trending_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GExploreData_trending_media_titleBuilder() {
    GExploreData_trending_media_title._initializeBuilder(this);
  }

  GExploreData_trending_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_trending_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_trending_media_title;
  }

  @override
  void update(
      void Function(GExploreData_trending_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_trending_media_title build() => _build();

  _$GExploreData_trending_media_title _build() {
    final _$result = _$v ??
        new _$GExploreData_trending_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GExploreData_trending_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_trending_media_coverImage
    extends GExploreData_trending_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GExploreData_trending_media_coverImage(
          [void Function(GExploreData_trending_media_coverImageBuilder)?
              updates]) =>
      (new GExploreData_trending_media_coverImageBuilder()..update(updates))
          ._build();

  _$GExploreData_trending_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_trending_media_coverImage', 'G__typename');
  }

  @override
  GExploreData_trending_media_coverImage rebuild(
          void Function(GExploreData_trending_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_trending_media_coverImageBuilder toBuilder() =>
      new GExploreData_trending_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_trending_media_coverImage &&
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
            r'GExploreData_trending_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GExploreData_trending_media_coverImageBuilder
    implements
        Builder<GExploreData_trending_media_coverImage,
            GExploreData_trending_media_coverImageBuilder> {
  _$GExploreData_trending_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GExploreData_trending_media_coverImageBuilder() {
    GExploreData_trending_media_coverImage._initializeBuilder(this);
  }

  GExploreData_trending_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_trending_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_trending_media_coverImage;
  }

  @override
  void update(
      void Function(GExploreData_trending_media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_trending_media_coverImage build() => _build();

  _$GExploreData_trending_media_coverImage _build() {
    final _$result = _$v ??
        new _$GExploreData_trending_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GExploreData_trending_media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_season extends GExploreData_season {
  @override
  final String G__typename;
  @override
  final BuiltList<GExploreData_season_media?>? media;

  factory _$GExploreData_season(
          [void Function(GExploreData_seasonBuilder)? updates]) =>
      (new GExploreData_seasonBuilder()..update(updates))._build();

  _$GExploreData_season._({required this.G__typename, this.media}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_season', 'G__typename');
  }

  @override
  GExploreData_season rebuild(
          void Function(GExploreData_seasonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_seasonBuilder toBuilder() =>
      new GExploreData_seasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_season &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_season')
          ..add('G__typename', G__typename)
          ..add('media', media))
        .toString();
  }
}

class GExploreData_seasonBuilder
    implements Builder<GExploreData_season, GExploreData_seasonBuilder> {
  _$GExploreData_season? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GExploreData_season_media?>? _media;
  ListBuilder<GExploreData_season_media?> get media =>
      _$this._media ??= new ListBuilder<GExploreData_season_media?>();
  set media(ListBuilder<GExploreData_season_media?>? media) =>
      _$this._media = media;

  GExploreData_seasonBuilder() {
    GExploreData_season._initializeBuilder(this);
  }

  GExploreData_seasonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_season other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_season;
  }

  @override
  void update(void Function(GExploreData_seasonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_season build() => _build();

  _$GExploreData_season _build() {
    _$GExploreData_season _$result;
    try {
      _$result = _$v ??
          new _$GExploreData_season._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExploreData_season', 'G__typename'),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GExploreData_season', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_season_media extends GExploreData_season_media {
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
  final GExploreData_season_media_title? title;
  @override
  final GExploreData_season_media_coverImage? coverImage;

  factory _$GExploreData_season_media(
          [void Function(GExploreData_season_mediaBuilder)? updates]) =>
      (new GExploreData_season_mediaBuilder()..update(updates))._build();

  _$GExploreData_season_media._(
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
        G__typename, r'GExploreData_season_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GExploreData_season_media', 'id');
  }

  @override
  GExploreData_season_media rebuild(
          void Function(GExploreData_season_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_season_mediaBuilder toBuilder() =>
      new GExploreData_season_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_season_media &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_season_media')
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

class GExploreData_season_mediaBuilder
    implements
        Builder<GExploreData_season_media, GExploreData_season_mediaBuilder> {
  _$GExploreData_season_media? _$v;

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

  GExploreData_season_media_titleBuilder? _title;
  GExploreData_season_media_titleBuilder get title =>
      _$this._title ??= new GExploreData_season_media_titleBuilder();
  set title(GExploreData_season_media_titleBuilder? title) =>
      _$this._title = title;

  GExploreData_season_media_coverImageBuilder? _coverImage;
  GExploreData_season_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??= new GExploreData_season_media_coverImageBuilder();
  set coverImage(GExploreData_season_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GExploreData_season_mediaBuilder() {
    GExploreData_season_media._initializeBuilder(this);
  }

  GExploreData_season_mediaBuilder get _$this {
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
  void replace(GExploreData_season_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_season_media;
  }

  @override
  void update(void Function(GExploreData_season_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_season_media build() => _build();

  _$GExploreData_season_media _build() {
    _$GExploreData_season_media _$result;
    try {
      _$result = _$v ??
          new _$GExploreData_season_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExploreData_season_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GExploreData_season_media', 'id'),
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
            r'GExploreData_season_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_season_media_title
    extends GExploreData_season_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GExploreData_season_media_title(
          [void Function(GExploreData_season_media_titleBuilder)? updates]) =>
      (new GExploreData_season_media_titleBuilder()..update(updates))._build();

  _$GExploreData_season_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_season_media_title', 'G__typename');
  }

  @override
  GExploreData_season_media_title rebuild(
          void Function(GExploreData_season_media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_season_media_titleBuilder toBuilder() =>
      new GExploreData_season_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_season_media_title &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_season_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GExploreData_season_media_titleBuilder
    implements
        Builder<GExploreData_season_media_title,
            GExploreData_season_media_titleBuilder> {
  _$GExploreData_season_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GExploreData_season_media_titleBuilder() {
    GExploreData_season_media_title._initializeBuilder(this);
  }

  GExploreData_season_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_season_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_season_media_title;
  }

  @override
  void update(void Function(GExploreData_season_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_season_media_title build() => _build();

  _$GExploreData_season_media_title _build() {
    final _$result = _$v ??
        new _$GExploreData_season_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GExploreData_season_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_season_media_coverImage
    extends GExploreData_season_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GExploreData_season_media_coverImage(
          [void Function(GExploreData_season_media_coverImageBuilder)?
              updates]) =>
      (new GExploreData_season_media_coverImageBuilder()..update(updates))
          ._build();

  _$GExploreData_season_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_season_media_coverImage', 'G__typename');
  }

  @override
  GExploreData_season_media_coverImage rebuild(
          void Function(GExploreData_season_media_coverImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_season_media_coverImageBuilder toBuilder() =>
      new GExploreData_season_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_season_media_coverImage &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_season_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GExploreData_season_media_coverImageBuilder
    implements
        Builder<GExploreData_season_media_coverImage,
            GExploreData_season_media_coverImageBuilder> {
  _$GExploreData_season_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GExploreData_season_media_coverImageBuilder() {
    GExploreData_season_media_coverImage._initializeBuilder(this);
  }

  GExploreData_season_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_season_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_season_media_coverImage;
  }

  @override
  void update(
      void Function(GExploreData_season_media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_season_media_coverImage build() => _build();

  _$GExploreData_season_media_coverImage _build() {
    final _$result = _$v ??
        new _$GExploreData_season_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GExploreData_season_media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_nextSeason extends GExploreData_nextSeason {
  @override
  final String G__typename;
  @override
  final BuiltList<GExploreData_nextSeason_media?>? media;

  factory _$GExploreData_nextSeason(
          [void Function(GExploreData_nextSeasonBuilder)? updates]) =>
      (new GExploreData_nextSeasonBuilder()..update(updates))._build();

  _$GExploreData_nextSeason._({required this.G__typename, this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_nextSeason', 'G__typename');
  }

  @override
  GExploreData_nextSeason rebuild(
          void Function(GExploreData_nextSeasonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_nextSeasonBuilder toBuilder() =>
      new GExploreData_nextSeasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_nextSeason &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_nextSeason')
          ..add('G__typename', G__typename)
          ..add('media', media))
        .toString();
  }
}

class GExploreData_nextSeasonBuilder
    implements
        Builder<GExploreData_nextSeason, GExploreData_nextSeasonBuilder> {
  _$GExploreData_nextSeason? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GExploreData_nextSeason_media?>? _media;
  ListBuilder<GExploreData_nextSeason_media?> get media =>
      _$this._media ??= new ListBuilder<GExploreData_nextSeason_media?>();
  set media(ListBuilder<GExploreData_nextSeason_media?>? media) =>
      _$this._media = media;

  GExploreData_nextSeasonBuilder() {
    GExploreData_nextSeason._initializeBuilder(this);
  }

  GExploreData_nextSeasonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_nextSeason other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_nextSeason;
  }

  @override
  void update(void Function(GExploreData_nextSeasonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_nextSeason build() => _build();

  _$GExploreData_nextSeason _build() {
    _$GExploreData_nextSeason _$result;
    try {
      _$result = _$v ??
          new _$GExploreData_nextSeason._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExploreData_nextSeason', 'G__typename'),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GExploreData_nextSeason', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_nextSeason_media extends GExploreData_nextSeason_media {
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
  final GExploreData_nextSeason_media_title? title;
  @override
  final GExploreData_nextSeason_media_coverImage? coverImage;

  factory _$GExploreData_nextSeason_media(
          [void Function(GExploreData_nextSeason_mediaBuilder)? updates]) =>
      (new GExploreData_nextSeason_mediaBuilder()..update(updates))._build();

  _$GExploreData_nextSeason_media._(
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
        G__typename, r'GExploreData_nextSeason_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GExploreData_nextSeason_media', 'id');
  }

  @override
  GExploreData_nextSeason_media rebuild(
          void Function(GExploreData_nextSeason_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_nextSeason_mediaBuilder toBuilder() =>
      new GExploreData_nextSeason_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_nextSeason_media &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_nextSeason_media')
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

class GExploreData_nextSeason_mediaBuilder
    implements
        Builder<GExploreData_nextSeason_media,
            GExploreData_nextSeason_mediaBuilder> {
  _$GExploreData_nextSeason_media? _$v;

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

  GExploreData_nextSeason_media_titleBuilder? _title;
  GExploreData_nextSeason_media_titleBuilder get title =>
      _$this._title ??= new GExploreData_nextSeason_media_titleBuilder();
  set title(GExploreData_nextSeason_media_titleBuilder? title) =>
      _$this._title = title;

  GExploreData_nextSeason_media_coverImageBuilder? _coverImage;
  GExploreData_nextSeason_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GExploreData_nextSeason_media_coverImageBuilder();
  set coverImage(GExploreData_nextSeason_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GExploreData_nextSeason_mediaBuilder() {
    GExploreData_nextSeason_media._initializeBuilder(this);
  }

  GExploreData_nextSeason_mediaBuilder get _$this {
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
  void replace(GExploreData_nextSeason_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_nextSeason_media;
  }

  @override
  void update(void Function(GExploreData_nextSeason_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_nextSeason_media build() => _build();

  _$GExploreData_nextSeason_media _build() {
    _$GExploreData_nextSeason_media _$result;
    try {
      _$result = _$v ??
          new _$GExploreData_nextSeason_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExploreData_nextSeason_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GExploreData_nextSeason_media', 'id'),
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
            r'GExploreData_nextSeason_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_nextSeason_media_title
    extends GExploreData_nextSeason_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GExploreData_nextSeason_media_title(
          [void Function(GExploreData_nextSeason_media_titleBuilder)?
              updates]) =>
      (new GExploreData_nextSeason_media_titleBuilder()..update(updates))
          ._build();

  _$GExploreData_nextSeason_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_nextSeason_media_title', 'G__typename');
  }

  @override
  GExploreData_nextSeason_media_title rebuild(
          void Function(GExploreData_nextSeason_media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_nextSeason_media_titleBuilder toBuilder() =>
      new GExploreData_nextSeason_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_nextSeason_media_title &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_nextSeason_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GExploreData_nextSeason_media_titleBuilder
    implements
        Builder<GExploreData_nextSeason_media_title,
            GExploreData_nextSeason_media_titleBuilder> {
  _$GExploreData_nextSeason_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GExploreData_nextSeason_media_titleBuilder() {
    GExploreData_nextSeason_media_title._initializeBuilder(this);
  }

  GExploreData_nextSeason_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_nextSeason_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_nextSeason_media_title;
  }

  @override
  void update(
      void Function(GExploreData_nextSeason_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_nextSeason_media_title build() => _build();

  _$GExploreData_nextSeason_media_title _build() {
    final _$result = _$v ??
        new _$GExploreData_nextSeason_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GExploreData_nextSeason_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_nextSeason_media_coverImage
    extends GExploreData_nextSeason_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GExploreData_nextSeason_media_coverImage(
          [void Function(GExploreData_nextSeason_media_coverImageBuilder)?
              updates]) =>
      (new GExploreData_nextSeason_media_coverImageBuilder()..update(updates))
          ._build();

  _$GExploreData_nextSeason_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GExploreData_nextSeason_media_coverImage', 'G__typename');
  }

  @override
  GExploreData_nextSeason_media_coverImage rebuild(
          void Function(GExploreData_nextSeason_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_nextSeason_media_coverImageBuilder toBuilder() =>
      new GExploreData_nextSeason_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_nextSeason_media_coverImage &&
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
            r'GExploreData_nextSeason_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GExploreData_nextSeason_media_coverImageBuilder
    implements
        Builder<GExploreData_nextSeason_media_coverImage,
            GExploreData_nextSeason_media_coverImageBuilder> {
  _$GExploreData_nextSeason_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GExploreData_nextSeason_media_coverImageBuilder() {
    GExploreData_nextSeason_media_coverImage._initializeBuilder(this);
  }

  GExploreData_nextSeason_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_nextSeason_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_nextSeason_media_coverImage;
  }

  @override
  void update(
      void Function(GExploreData_nextSeason_media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_nextSeason_media_coverImage build() => _build();

  _$GExploreData_nextSeason_media_coverImage _build() {
    final _$result = _$v ??
        new _$GExploreData_nextSeason_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GExploreData_nextSeason_media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_popular extends GExploreData_popular {
  @override
  final String G__typename;
  @override
  final BuiltList<GExploreData_popular_media?>? media;

  factory _$GExploreData_popular(
          [void Function(GExploreData_popularBuilder)? updates]) =>
      (new GExploreData_popularBuilder()..update(updates))._build();

  _$GExploreData_popular._({required this.G__typename, this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_popular', 'G__typename');
  }

  @override
  GExploreData_popular rebuild(
          void Function(GExploreData_popularBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_popularBuilder toBuilder() =>
      new GExploreData_popularBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_popular &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_popular')
          ..add('G__typename', G__typename)
          ..add('media', media))
        .toString();
  }
}

class GExploreData_popularBuilder
    implements Builder<GExploreData_popular, GExploreData_popularBuilder> {
  _$GExploreData_popular? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GExploreData_popular_media?>? _media;
  ListBuilder<GExploreData_popular_media?> get media =>
      _$this._media ??= new ListBuilder<GExploreData_popular_media?>();
  set media(ListBuilder<GExploreData_popular_media?>? media) =>
      _$this._media = media;

  GExploreData_popularBuilder() {
    GExploreData_popular._initializeBuilder(this);
  }

  GExploreData_popularBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_popular other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_popular;
  }

  @override
  void update(void Function(GExploreData_popularBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_popular build() => _build();

  _$GExploreData_popular _build() {
    _$GExploreData_popular _$result;
    try {
      _$result = _$v ??
          new _$GExploreData_popular._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExploreData_popular', 'G__typename'),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GExploreData_popular', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_popular_media extends GExploreData_popular_media {
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
  final GExploreData_popular_media_title? title;
  @override
  final GExploreData_popular_media_coverImage? coverImage;

  factory _$GExploreData_popular_media(
          [void Function(GExploreData_popular_mediaBuilder)? updates]) =>
      (new GExploreData_popular_mediaBuilder()..update(updates))._build();

  _$GExploreData_popular_media._(
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
        G__typename, r'GExploreData_popular_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GExploreData_popular_media', 'id');
  }

  @override
  GExploreData_popular_media rebuild(
          void Function(GExploreData_popular_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_popular_mediaBuilder toBuilder() =>
      new GExploreData_popular_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_popular_media &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_popular_media')
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

class GExploreData_popular_mediaBuilder
    implements
        Builder<GExploreData_popular_media, GExploreData_popular_mediaBuilder> {
  _$GExploreData_popular_media? _$v;

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

  GExploreData_popular_media_titleBuilder? _title;
  GExploreData_popular_media_titleBuilder get title =>
      _$this._title ??= new GExploreData_popular_media_titleBuilder();
  set title(GExploreData_popular_media_titleBuilder? title) =>
      _$this._title = title;

  GExploreData_popular_media_coverImageBuilder? _coverImage;
  GExploreData_popular_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??= new GExploreData_popular_media_coverImageBuilder();
  set coverImage(GExploreData_popular_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GExploreData_popular_mediaBuilder() {
    GExploreData_popular_media._initializeBuilder(this);
  }

  GExploreData_popular_mediaBuilder get _$this {
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
  void replace(GExploreData_popular_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_popular_media;
  }

  @override
  void update(void Function(GExploreData_popular_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_popular_media build() => _build();

  _$GExploreData_popular_media _build() {
    _$GExploreData_popular_media _$result;
    try {
      _$result = _$v ??
          new _$GExploreData_popular_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExploreData_popular_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GExploreData_popular_media', 'id'),
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
            r'GExploreData_popular_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_popular_media_title
    extends GExploreData_popular_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GExploreData_popular_media_title(
          [void Function(GExploreData_popular_media_titleBuilder)? updates]) =>
      (new GExploreData_popular_media_titleBuilder()..update(updates))._build();

  _$GExploreData_popular_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_popular_media_title', 'G__typename');
  }

  @override
  GExploreData_popular_media_title rebuild(
          void Function(GExploreData_popular_media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_popular_media_titleBuilder toBuilder() =>
      new GExploreData_popular_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_popular_media_title &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_popular_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GExploreData_popular_media_titleBuilder
    implements
        Builder<GExploreData_popular_media_title,
            GExploreData_popular_media_titleBuilder> {
  _$GExploreData_popular_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GExploreData_popular_media_titleBuilder() {
    GExploreData_popular_media_title._initializeBuilder(this);
  }

  GExploreData_popular_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_popular_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_popular_media_title;
  }

  @override
  void update(void Function(GExploreData_popular_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_popular_media_title build() => _build();

  _$GExploreData_popular_media_title _build() {
    final _$result = _$v ??
        new _$GExploreData_popular_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GExploreData_popular_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_popular_media_coverImage
    extends GExploreData_popular_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GExploreData_popular_media_coverImage(
          [void Function(GExploreData_popular_media_coverImageBuilder)?
              updates]) =>
      (new GExploreData_popular_media_coverImageBuilder()..update(updates))
          ._build();

  _$GExploreData_popular_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_popular_media_coverImage', 'G__typename');
  }

  @override
  GExploreData_popular_media_coverImage rebuild(
          void Function(GExploreData_popular_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_popular_media_coverImageBuilder toBuilder() =>
      new GExploreData_popular_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_popular_media_coverImage &&
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
            r'GExploreData_popular_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GExploreData_popular_media_coverImageBuilder
    implements
        Builder<GExploreData_popular_media_coverImage,
            GExploreData_popular_media_coverImageBuilder> {
  _$GExploreData_popular_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GExploreData_popular_media_coverImageBuilder() {
    GExploreData_popular_media_coverImage._initializeBuilder(this);
  }

  GExploreData_popular_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_popular_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_popular_media_coverImage;
  }

  @override
  void update(
      void Function(GExploreData_popular_media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_popular_media_coverImage build() => _build();

  _$GExploreData_popular_media_coverImage _build() {
    final _$result = _$v ??
        new _$GExploreData_popular_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GExploreData_popular_media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_recent extends GExploreData_recent {
  @override
  final String G__typename;
  @override
  final BuiltList<GExploreData_recent_media?>? media;

  factory _$GExploreData_recent(
          [void Function(GExploreData_recentBuilder)? updates]) =>
      (new GExploreData_recentBuilder()..update(updates))._build();

  _$GExploreData_recent._({required this.G__typename, this.media}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_recent', 'G__typename');
  }

  @override
  GExploreData_recent rebuild(
          void Function(GExploreData_recentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_recentBuilder toBuilder() =>
      new GExploreData_recentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_recent &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_recent')
          ..add('G__typename', G__typename)
          ..add('media', media))
        .toString();
  }
}

class GExploreData_recentBuilder
    implements Builder<GExploreData_recent, GExploreData_recentBuilder> {
  _$GExploreData_recent? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GExploreData_recent_media?>? _media;
  ListBuilder<GExploreData_recent_media?> get media =>
      _$this._media ??= new ListBuilder<GExploreData_recent_media?>();
  set media(ListBuilder<GExploreData_recent_media?>? media) =>
      _$this._media = media;

  GExploreData_recentBuilder() {
    GExploreData_recent._initializeBuilder(this);
  }

  GExploreData_recentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_recent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_recent;
  }

  @override
  void update(void Function(GExploreData_recentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_recent build() => _build();

  _$GExploreData_recent _build() {
    _$GExploreData_recent _$result;
    try {
      _$result = _$v ??
          new _$GExploreData_recent._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExploreData_recent', 'G__typename'),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GExploreData_recent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_recent_media extends GExploreData_recent_media {
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
  final GExploreData_recent_media_title? title;
  @override
  final GExploreData_recent_media_coverImage? coverImage;

  factory _$GExploreData_recent_media(
          [void Function(GExploreData_recent_mediaBuilder)? updates]) =>
      (new GExploreData_recent_mediaBuilder()..update(updates))._build();

  _$GExploreData_recent_media._(
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
        G__typename, r'GExploreData_recent_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GExploreData_recent_media', 'id');
  }

  @override
  GExploreData_recent_media rebuild(
          void Function(GExploreData_recent_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_recent_mediaBuilder toBuilder() =>
      new GExploreData_recent_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_recent_media &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_recent_media')
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

class GExploreData_recent_mediaBuilder
    implements
        Builder<GExploreData_recent_media, GExploreData_recent_mediaBuilder> {
  _$GExploreData_recent_media? _$v;

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

  GExploreData_recent_media_titleBuilder? _title;
  GExploreData_recent_media_titleBuilder get title =>
      _$this._title ??= new GExploreData_recent_media_titleBuilder();
  set title(GExploreData_recent_media_titleBuilder? title) =>
      _$this._title = title;

  GExploreData_recent_media_coverImageBuilder? _coverImage;
  GExploreData_recent_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??= new GExploreData_recent_media_coverImageBuilder();
  set coverImage(GExploreData_recent_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GExploreData_recent_mediaBuilder() {
    GExploreData_recent_media._initializeBuilder(this);
  }

  GExploreData_recent_mediaBuilder get _$this {
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
  void replace(GExploreData_recent_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_recent_media;
  }

  @override
  void update(void Function(GExploreData_recent_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_recent_media build() => _build();

  _$GExploreData_recent_media _build() {
    _$GExploreData_recent_media _$result;
    try {
      _$result = _$v ??
          new _$GExploreData_recent_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GExploreData_recent_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GExploreData_recent_media', 'id'),
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
            r'GExploreData_recent_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_recent_media_title
    extends GExploreData_recent_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GExploreData_recent_media_title(
          [void Function(GExploreData_recent_media_titleBuilder)? updates]) =>
      (new GExploreData_recent_media_titleBuilder()..update(updates))._build();

  _$GExploreData_recent_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_recent_media_title', 'G__typename');
  }

  @override
  GExploreData_recent_media_title rebuild(
          void Function(GExploreData_recent_media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_recent_media_titleBuilder toBuilder() =>
      new GExploreData_recent_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_recent_media_title &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_recent_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GExploreData_recent_media_titleBuilder
    implements
        Builder<GExploreData_recent_media_title,
            GExploreData_recent_media_titleBuilder> {
  _$GExploreData_recent_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GExploreData_recent_media_titleBuilder() {
    GExploreData_recent_media_title._initializeBuilder(this);
  }

  GExploreData_recent_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_recent_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_recent_media_title;
  }

  @override
  void update(void Function(GExploreData_recent_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_recent_media_title build() => _build();

  _$GExploreData_recent_media_title _build() {
    final _$result = _$v ??
        new _$GExploreData_recent_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GExploreData_recent_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GExploreData_recent_media_coverImage
    extends GExploreData_recent_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GExploreData_recent_media_coverImage(
          [void Function(GExploreData_recent_media_coverImageBuilder)?
              updates]) =>
      (new GExploreData_recent_media_coverImageBuilder()..update(updates))
          ._build();

  _$GExploreData_recent_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GExploreData_recent_media_coverImage', 'G__typename');
  }

  @override
  GExploreData_recent_media_coverImage rebuild(
          void Function(GExploreData_recent_media_coverImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GExploreData_recent_media_coverImageBuilder toBuilder() =>
      new GExploreData_recent_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GExploreData_recent_media_coverImage &&
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
    return (newBuiltValueToStringHelper(r'GExploreData_recent_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GExploreData_recent_media_coverImageBuilder
    implements
        Builder<GExploreData_recent_media_coverImage,
            GExploreData_recent_media_coverImageBuilder> {
  _$GExploreData_recent_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GExploreData_recent_media_coverImageBuilder() {
    GExploreData_recent_media_coverImage._initializeBuilder(this);
  }

  GExploreData_recent_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GExploreData_recent_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GExploreData_recent_media_coverImage;
  }

  @override
  void update(
      void Function(GExploreData_recent_media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GExploreData_recent_media_coverImage build() => _build();

  _$GExploreData_recent_media_coverImage _build() {
    final _$result = _$v ??
        new _$GExploreData_recent_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GExploreData_recent_media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
