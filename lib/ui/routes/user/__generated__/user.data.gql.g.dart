// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserData> _$gUserDataSerializer = new _$GUserDataSerializer();
Serializer<GUserData_User> _$gUserDataUserSerializer =
    new _$GUserData_UserSerializer();
Serializer<GUserData_User_avatar> _$gUserDataUserAvatarSerializer =
    new _$GUserData_User_avatarSerializer();
Serializer<GUserData_User_mediaListOptions>
    _$gUserDataUserMediaListOptionsSerializer =
    new _$GUserData_User_mediaListOptionsSerializer();
Serializer<GUserData_User_statistics> _$gUserDataUserStatisticsSerializer =
    new _$GUserData_User_statisticsSerializer();
Serializer<GUserData_User_statistics_anime>
    _$gUserDataUserStatisticsAnimeSerializer =
    new _$GUserData_User_statistics_animeSerializer();
Serializer<GUserData_User_statistics_anime_genres>
    _$gUserDataUserStatisticsAnimeGenresSerializer =
    new _$GUserData_User_statistics_anime_genresSerializer();
Serializer<GUserData_User_statistics_manga>
    _$gUserDataUserStatisticsMangaSerializer =
    new _$GUserData_User_statistics_mangaSerializer();
Serializer<GUserData_User_statistics_manga_genres>
    _$gUserDataUserStatisticsMangaGenresSerializer =
    new _$GUserData_User_statistics_manga_genresSerializer();
Serializer<GUserData_User_favourites> _$gUserDataUserFavouritesSerializer =
    new _$GUserData_User_favouritesSerializer();
Serializer<GUserData_User_favourites_anime>
    _$gUserDataUserFavouritesAnimeSerializer =
    new _$GUserData_User_favourites_animeSerializer();
Serializer<GUserData_User_favourites_anime_nodes>
    _$gUserDataUserFavouritesAnimeNodesSerializer =
    new _$GUserData_User_favourites_anime_nodesSerializer();
Serializer<GUserData_User_favourites_anime_nodes_title>
    _$gUserDataUserFavouritesAnimeNodesTitleSerializer =
    new _$GUserData_User_favourites_anime_nodes_titleSerializer();
Serializer<GUserData_User_favourites_anime_nodes_coverImage>
    _$gUserDataUserFavouritesAnimeNodesCoverImageSerializer =
    new _$GUserData_User_favourites_anime_nodes_coverImageSerializer();
Serializer<GUserData_User_favourites_manga>
    _$gUserDataUserFavouritesMangaSerializer =
    new _$GUserData_User_favourites_mangaSerializer();
Serializer<GUserData_User_favourites_manga_nodes>
    _$gUserDataUserFavouritesMangaNodesSerializer =
    new _$GUserData_User_favourites_manga_nodesSerializer();
Serializer<GUserData_User_favourites_manga_nodes_title>
    _$gUserDataUserFavouritesMangaNodesTitleSerializer =
    new _$GUserData_User_favourites_manga_nodes_titleSerializer();
Serializer<GUserData_User_favourites_manga_nodes_coverImage>
    _$gUserDataUserFavouritesMangaNodesCoverImageSerializer =
    new _$GUserData_User_favourites_manga_nodes_coverImageSerializer();
Serializer<GGenreStatData> _$gGenreStatDataSerializer =
    new _$GGenreStatDataSerializer();

class _$GUserDataSerializer implements StructuredSerializer<GUserData> {
  @override
  final Iterable<Type> types = const [GUserData, _$GUserData];
  @override
  final String wireName = 'GUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.User;
    if (value != null) {
      result
        ..add('User')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserData_User)));
    }
    return result;
  }

  @override
  GUserData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserDataBuilder();

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
        case 'User':
          result.User.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserData_User))!
              as GUserData_User);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_UserSerializer
    implements StructuredSerializer<GUserData_User> {
  @override
  final Iterable<Type> types = const [GUserData_User, _$GUserData_User];
  @override
  final String wireName = 'GUserData_User';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserData_User object,
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
            specifiedType: const FullType(GUserData_User_avatar)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.about;
    if (value != null) {
      result
        ..add('about')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mediaListOptions;
    if (value != null) {
      result
        ..add('mediaListOptions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserData_User_mediaListOptions)));
    }
    value = object.statistics;
    if (value != null) {
      result
        ..add('statistics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserData_User_statistics)));
    }
    value = object.favourites;
    if (value != null) {
      result
        ..add('favourites')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserData_User_favourites)));
    }
    return result;
  }

  @override
  GUserData_User deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_UserBuilder();

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
                  specifiedType: const FullType(GUserData_User_avatar))!
              as GUserData_User_avatar);
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mediaListOptions':
          result.mediaListOptions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserData_User_mediaListOptions))!
              as GUserData_User_mediaListOptions);
          break;
        case 'statistics':
          result.statistics.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserData_User_statistics))!
              as GUserData_User_statistics);
          break;
        case 'favourites':
          result.favourites.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUserData_User_favourites))!
              as GUserData_User_favourites);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_User_avatarSerializer
    implements StructuredSerializer<GUserData_User_avatar> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_avatar,
    _$GUserData_User_avatar
  ];
  @override
  final String wireName = 'GUserData_User_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_User_avatar object,
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
  GUserData_User_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_avatarBuilder();

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

class _$GUserData_User_mediaListOptionsSerializer
    implements StructuredSerializer<GUserData_User_mediaListOptions> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_mediaListOptions,
    _$GUserData_User_mediaListOptions
  ];
  @override
  final String wireName = 'GUserData_User_mediaListOptions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_User_mediaListOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.scoreFormat;
    if (value != null) {
      result
        ..add('scoreFormat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GScoreFormat)));
    }
    return result;
  }

  @override
  GUserData_User_mediaListOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_mediaListOptionsBuilder();

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
        case 'scoreFormat':
          result.scoreFormat = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GScoreFormat))
              as _i3.GScoreFormat?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_User_statisticsSerializer
    implements StructuredSerializer<GUserData_User_statistics> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_statistics,
    _$GUserData_User_statistics
  ];
  @override
  final String wireName = 'GUserData_User_statistics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_User_statistics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.anime;
    if (value != null) {
      result
        ..add('anime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserData_User_statistics_anime)));
    }
    value = object.manga;
    if (value != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserData_User_statistics_manga)));
    }
    return result;
  }

  @override
  GUserData_User_statistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_statisticsBuilder();

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
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserData_User_statistics_anime))!
              as GUserData_User_statistics_anime);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserData_User_statistics_manga))!
              as GUserData_User_statistics_manga);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_User_statistics_animeSerializer
    implements StructuredSerializer<GUserData_User_statistics_anime> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_statistics_anime,
    _$GUserData_User_statistics_anime
  ];
  @override
  final String wireName = 'GUserData_User_statistics_anime';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_User_statistics_anime object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'episodesWatched',
      serializers.serialize(object.episodesWatched,
          specifiedType: const FullType(int)),
      'minutesWatched',
      serializers.serialize(object.minutesWatched,
          specifiedType: const FullType(int)),
      'standardDeviation',
      serializers.serialize(object.standardDeviation,
          specifiedType: const FullType(double)),
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GUserData_User_statistics_anime_genres)
            ])));
    }
    return result;
  }

  @override
  GUserData_User_statistics_anime deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_statistics_animeBuilder();

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
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'episodesWatched':
          result.episodesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'minutesWatched':
          result.minutesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'standardDeviation':
          result.standardDeviation = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GUserData_User_statistics_anime_genres)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_User_statistics_anime_genresSerializer
    implements StructuredSerializer<GUserData_User_statistics_anime_genres> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_statistics_anime_genres,
    _$GUserData_User_statistics_anime_genres
  ];
  @override
  final String wireName = 'GUserData_User_statistics_anime_genres';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_User_statistics_anime_genres object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.genre;
    if (value != null) {
      result
        ..add('genre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserData_User_statistics_anime_genres deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_statistics_anime_genresBuilder();

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
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_User_statistics_mangaSerializer
    implements StructuredSerializer<GUserData_User_statistics_manga> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_statistics_manga,
    _$GUserData_User_statistics_manga
  ];
  @override
  final String wireName = 'GUserData_User_statistics_manga';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_User_statistics_manga object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'chaptersRead',
      serializers.serialize(object.chaptersRead,
          specifiedType: const FullType(int)),
      'volumesRead',
      serializers.serialize(object.volumesRead,
          specifiedType: const FullType(int)),
      'standardDeviation',
      serializers.serialize(object.standardDeviation,
          specifiedType: const FullType(double)),
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GUserData_User_statistics_manga_genres)
            ])));
    }
    return result;
  }

  @override
  GUserData_User_statistics_manga deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_statistics_mangaBuilder();

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
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'chaptersRead':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'volumesRead':
          result.volumesRead = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'standardDeviation':
          result.standardDeviation = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GUserData_User_statistics_manga_genres)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_User_statistics_manga_genresSerializer
    implements StructuredSerializer<GUserData_User_statistics_manga_genres> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_statistics_manga_genres,
    _$GUserData_User_statistics_manga_genres
  ];
  @override
  final String wireName = 'GUserData_User_statistics_manga_genres';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_User_statistics_manga_genres object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.genre;
    if (value != null) {
      result
        ..add('genre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserData_User_statistics_manga_genres deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_statistics_manga_genresBuilder();

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
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_User_favouritesSerializer
    implements StructuredSerializer<GUserData_User_favourites> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_favourites,
    _$GUserData_User_favourites
  ];
  @override
  final String wireName = 'GUserData_User_favourites';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_User_favourites object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.anime;
    if (value != null) {
      result
        ..add('anime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserData_User_favourites_anime)));
    }
    value = object.manga;
    if (value != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserData_User_favourites_manga)));
    }
    return result;
  }

  @override
  GUserData_User_favourites deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_favouritesBuilder();

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
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserData_User_favourites_anime))!
              as GUserData_User_favourites_anime);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserData_User_favourites_manga))!
              as GUserData_User_favourites_manga);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_User_favourites_animeSerializer
    implements StructuredSerializer<GUserData_User_favourites_anime> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_favourites_anime,
    _$GUserData_User_favourites_anime
  ];
  @override
  final String wireName = 'GUserData_User_favourites_anime';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_User_favourites_anime object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GUserData_User_favourites_anime_nodes)
            ])));
    }
    return result;
  }

  @override
  GUserData_User_favourites_anime deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_favourites_animeBuilder();

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
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GUserData_User_favourites_anime_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_User_favourites_anime_nodesSerializer
    implements StructuredSerializer<GUserData_User_favourites_anime_nodes> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_favourites_anime_nodes,
    _$GUserData_User_favourites_anime_nodes
  ];
  @override
  final String wireName = 'GUserData_User_favourites_anime_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_User_favourites_anime_nodes object,
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
                const FullType(GUserData_User_favourites_anime_nodes_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GUserData_User_favourites_anime_nodes_coverImage)));
    }
    return result;
  }

  @override
  GUserData_User_favourites_anime_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_favourites_anime_nodesBuilder();

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
                      GUserData_User_favourites_anime_nodes_title))!
              as GUserData_User_favourites_anime_nodes_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUserData_User_favourites_anime_nodes_coverImage))!
              as GUserData_User_favourites_anime_nodes_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_User_favourites_anime_nodes_titleSerializer
    implements
        StructuredSerializer<GUserData_User_favourites_anime_nodes_title> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_favourites_anime_nodes_title,
    _$GUserData_User_favourites_anime_nodes_title
  ];
  @override
  final String wireName = 'GUserData_User_favourites_anime_nodes_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserData_User_favourites_anime_nodes_title object,
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
  GUserData_User_favourites_anime_nodes_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_favourites_anime_nodes_titleBuilder();

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

class _$GUserData_User_favourites_anime_nodes_coverImageSerializer
    implements
        StructuredSerializer<GUserData_User_favourites_anime_nodes_coverImage> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_favourites_anime_nodes_coverImage,
    _$GUserData_User_favourites_anime_nodes_coverImage
  ];
  @override
  final String wireName = 'GUserData_User_favourites_anime_nodes_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserData_User_favourites_anime_nodes_coverImage object,
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
  GUserData_User_favourites_anime_nodes_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserData_User_favourites_anime_nodes_coverImageBuilder();

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

class _$GUserData_User_favourites_mangaSerializer
    implements StructuredSerializer<GUserData_User_favourites_manga> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_favourites_manga,
    _$GUserData_User_favourites_manga
  ];
  @override
  final String wireName = 'GUserData_User_favourites_manga';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_User_favourites_manga object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GUserData_User_favourites_manga_nodes)
            ])));
    }
    return result;
  }

  @override
  GUserData_User_favourites_manga deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_favourites_mangaBuilder();

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
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GUserData_User_favourites_manga_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_User_favourites_manga_nodesSerializer
    implements StructuredSerializer<GUserData_User_favourites_manga_nodes> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_favourites_manga_nodes,
    _$GUserData_User_favourites_manga_nodes
  ];
  @override
  final String wireName = 'GUserData_User_favourites_manga_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserData_User_favourites_manga_nodes object,
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
                const FullType(GUserData_User_favourites_manga_nodes_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GUserData_User_favourites_manga_nodes_coverImage)));
    }
    return result;
  }

  @override
  GUserData_User_favourites_manga_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_favourites_manga_nodesBuilder();

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
                      GUserData_User_favourites_manga_nodes_title))!
              as GUserData_User_favourites_manga_nodes_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUserData_User_favourites_manga_nodes_coverImage))!
              as GUserData_User_favourites_manga_nodes_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData_User_favourites_manga_nodes_titleSerializer
    implements
        StructuredSerializer<GUserData_User_favourites_manga_nodes_title> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_favourites_manga_nodes_title,
    _$GUserData_User_favourites_manga_nodes_title
  ];
  @override
  final String wireName = 'GUserData_User_favourites_manga_nodes_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserData_User_favourites_manga_nodes_title object,
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
  GUserData_User_favourites_manga_nodes_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserData_User_favourites_manga_nodes_titleBuilder();

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

class _$GUserData_User_favourites_manga_nodes_coverImageSerializer
    implements
        StructuredSerializer<GUserData_User_favourites_manga_nodes_coverImage> {
  @override
  final Iterable<Type> types = const [
    GUserData_User_favourites_manga_nodes_coverImage,
    _$GUserData_User_favourites_manga_nodes_coverImage
  ];
  @override
  final String wireName = 'GUserData_User_favourites_manga_nodes_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserData_User_favourites_manga_nodes_coverImage object,
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
  GUserData_User_favourites_manga_nodes_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserData_User_favourites_manga_nodes_coverImageBuilder();

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

class _$GGenreStatDataSerializer
    implements StructuredSerializer<GGenreStatData> {
  @override
  final Iterable<Type> types = const [GGenreStatData, _$GGenreStatData];
  @override
  final String wireName = 'GGenreStatData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGenreStatData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.genre;
    if (value != null) {
      result
        ..add('genre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGenreStatData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGenreStatDataBuilder();

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
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserData extends GUserData {
  @override
  final String G__typename;
  @override
  final GUserData_User? User;

  factory _$GUserData([void Function(GUserDataBuilder)? updates]) =>
      (new GUserDataBuilder()..update(updates))._build();

  _$GUserData._({required this.G__typename, this.User}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData', 'G__typename');
  }

  @override
  GUserData rebuild(void Function(GUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserDataBuilder toBuilder() => new GUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData &&
        G__typename == other.G__typename &&
        User == other.User;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, User.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData')
          ..add('G__typename', G__typename)
          ..add('User', User))
        .toString();
  }
}

class GUserDataBuilder implements Builder<GUserData, GUserDataBuilder> {
  _$GUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserData_UserBuilder? _User;
  GUserData_UserBuilder get User =>
      _$this._User ??= new GUserData_UserBuilder();
  set User(GUserData_UserBuilder? User) => _$this._User = User;

  GUserDataBuilder() {
    GUserData._initializeBuilder(this);
  }

  GUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _User = $v.User?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData;
  }

  @override
  void update(void Function(GUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData build() => _build();

  _$GUserData _build() {
    _$GUserData _$result;
    try {
      _$result = _$v ??
          new _$GUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserData', 'G__typename'),
              User: _User?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'User';
        _User?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User extends GUserData_User {
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
  final GUserData_User_avatar? avatar;
  @override
  final String? bannerImage;
  @override
  final String? about;
  @override
  final GUserData_User_mediaListOptions? mediaListOptions;
  @override
  final GUserData_User_statistics? statistics;
  @override
  final GUserData_User_favourites? favourites;

  factory _$GUserData_User([void Function(GUserData_UserBuilder)? updates]) =>
      (new GUserData_UserBuilder()..update(updates))._build();

  _$GUserData_User._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar,
      this.bannerImage,
      this.about,
      this.mediaListOptions,
      this.statistics,
      this.favourites})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_User', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GUserData_User', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GUserData_User', 'name');
  }

  @override
  GUserData_User rebuild(void Function(GUserData_UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_UserBuilder toBuilder() =>
      new GUserData_UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        donatorTier == other.donatorTier &&
        donatorBadge == other.donatorBadge &&
        moderatorRoles == other.moderatorRoles &&
        avatar == other.avatar &&
        bannerImage == other.bannerImage &&
        about == other.about &&
        mediaListOptions == other.mediaListOptions &&
        statistics == other.statistics &&
        favourites == other.favourites;
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
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jc(_$hash, about.hashCode);
    _$hash = $jc(_$hash, mediaListOptions.hashCode);
    _$hash = $jc(_$hash, statistics.hashCode);
    _$hash = $jc(_$hash, favourites.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_User')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('donatorTier', donatorTier)
          ..add('donatorBadge', donatorBadge)
          ..add('moderatorRoles', moderatorRoles)
          ..add('avatar', avatar)
          ..add('bannerImage', bannerImage)
          ..add('about', about)
          ..add('mediaListOptions', mediaListOptions)
          ..add('statistics', statistics)
          ..add('favourites', favourites))
        .toString();
  }
}

class GUserData_UserBuilder
    implements Builder<GUserData_User, GUserData_UserBuilder> {
  _$GUserData_User? _$v;

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

  GUserData_User_avatarBuilder? _avatar;
  GUserData_User_avatarBuilder get avatar =>
      _$this._avatar ??= new GUserData_User_avatarBuilder();
  set avatar(GUserData_User_avatarBuilder? avatar) => _$this._avatar = avatar;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  String? _about;
  String? get about => _$this._about;
  set about(String? about) => _$this._about = about;

  GUserData_User_mediaListOptionsBuilder? _mediaListOptions;
  GUserData_User_mediaListOptionsBuilder get mediaListOptions =>
      _$this._mediaListOptions ??= new GUserData_User_mediaListOptionsBuilder();
  set mediaListOptions(
          GUserData_User_mediaListOptionsBuilder? mediaListOptions) =>
      _$this._mediaListOptions = mediaListOptions;

  GUserData_User_statisticsBuilder? _statistics;
  GUserData_User_statisticsBuilder get statistics =>
      _$this._statistics ??= new GUserData_User_statisticsBuilder();
  set statistics(GUserData_User_statisticsBuilder? statistics) =>
      _$this._statistics = statistics;

  GUserData_User_favouritesBuilder? _favourites;
  GUserData_User_favouritesBuilder get favourites =>
      _$this._favourites ??= new GUserData_User_favouritesBuilder();
  set favourites(GUserData_User_favouritesBuilder? favourites) =>
      _$this._favourites = favourites;

  GUserData_UserBuilder() {
    GUserData_User._initializeBuilder(this);
  }

  GUserData_UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _donatorTier = $v.donatorTier;
      _donatorBadge = $v.donatorBadge;
      _moderatorRoles = $v.moderatorRoles?.toBuilder();
      _avatar = $v.avatar?.toBuilder();
      _bannerImage = $v.bannerImage;
      _about = $v.about;
      _mediaListOptions = $v.mediaListOptions?.toBuilder();
      _statistics = $v.statistics?.toBuilder();
      _favourites = $v.favourites?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User;
  }

  @override
  void update(void Function(GUserData_UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User build() => _build();

  _$GUserData_User _build() {
    _$GUserData_User _$result;
    try {
      _$result = _$v ??
          new _$GUserData_User._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserData_User', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserData_User', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GUserData_User', 'name'),
              donatorTier: donatorTier,
              donatorBadge: donatorBadge,
              moderatorRoles: _moderatorRoles?.build(),
              avatar: _avatar?.build(),
              bannerImage: bannerImage,
              about: about,
              mediaListOptions: _mediaListOptions?.build(),
              statistics: _statistics?.build(),
              favourites: _favourites?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'moderatorRoles';
        _moderatorRoles?.build();
        _$failedField = 'avatar';
        _avatar?.build();

        _$failedField = 'mediaListOptions';
        _mediaListOptions?.build();
        _$failedField = 'statistics';
        _statistics?.build();
        _$failedField = 'favourites';
        _favourites?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserData_User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_avatar extends GUserData_User_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GUserData_User_avatar(
          [void Function(GUserData_User_avatarBuilder)? updates]) =>
      (new GUserData_User_avatarBuilder()..update(updates))._build();

  _$GUserData_User_avatar._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_User_avatar', 'G__typename');
  }

  @override
  GUserData_User_avatar rebuild(
          void Function(GUserData_User_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_avatarBuilder toBuilder() =>
      new GUserData_User_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_avatar &&
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
    return (newBuiltValueToStringHelper(r'GUserData_User_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GUserData_User_avatarBuilder
    implements Builder<GUserData_User_avatar, GUserData_User_avatarBuilder> {
  _$GUserData_User_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GUserData_User_avatarBuilder() {
    GUserData_User_avatar._initializeBuilder(this);
  }

  GUserData_User_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_avatar;
  }

  @override
  void update(void Function(GUserData_User_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_avatar build() => _build();

  _$GUserData_User_avatar _build() {
    final _$result = _$v ??
        new _$GUserData_User_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserData_User_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_mediaListOptions
    extends GUserData_User_mediaListOptions {
  @override
  final String G__typename;
  @override
  final _i3.GScoreFormat? scoreFormat;

  factory _$GUserData_User_mediaListOptions(
          [void Function(GUserData_User_mediaListOptionsBuilder)? updates]) =>
      (new GUserData_User_mediaListOptionsBuilder()..update(updates))._build();

  _$GUserData_User_mediaListOptions._(
      {required this.G__typename, this.scoreFormat})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_User_mediaListOptions', 'G__typename');
  }

  @override
  GUserData_User_mediaListOptions rebuild(
          void Function(GUserData_User_mediaListOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_mediaListOptionsBuilder toBuilder() =>
      new GUserData_User_mediaListOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_mediaListOptions &&
        G__typename == other.G__typename &&
        scoreFormat == other.scoreFormat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, scoreFormat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_User_mediaListOptions')
          ..add('G__typename', G__typename)
          ..add('scoreFormat', scoreFormat))
        .toString();
  }
}

class GUserData_User_mediaListOptionsBuilder
    implements
        Builder<GUserData_User_mediaListOptions,
            GUserData_User_mediaListOptionsBuilder> {
  _$GUserData_User_mediaListOptions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GScoreFormat? _scoreFormat;
  _i3.GScoreFormat? get scoreFormat => _$this._scoreFormat;
  set scoreFormat(_i3.GScoreFormat? scoreFormat) =>
      _$this._scoreFormat = scoreFormat;

  GUserData_User_mediaListOptionsBuilder() {
    GUserData_User_mediaListOptions._initializeBuilder(this);
  }

  GUserData_User_mediaListOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _scoreFormat = $v.scoreFormat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_mediaListOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_mediaListOptions;
  }

  @override
  void update(void Function(GUserData_User_mediaListOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_mediaListOptions build() => _build();

  _$GUserData_User_mediaListOptions _build() {
    final _$result = _$v ??
        new _$GUserData_User_mediaListOptions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUserData_User_mediaListOptions', 'G__typename'),
            scoreFormat: scoreFormat);
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_statistics extends GUserData_User_statistics {
  @override
  final String G__typename;
  @override
  final GUserData_User_statistics_anime? anime;
  @override
  final GUserData_User_statistics_manga? manga;

  factory _$GUserData_User_statistics(
          [void Function(GUserData_User_statisticsBuilder)? updates]) =>
      (new GUserData_User_statisticsBuilder()..update(updates))._build();

  _$GUserData_User_statistics._(
      {required this.G__typename, this.anime, this.manga})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_User_statistics', 'G__typename');
  }

  @override
  GUserData_User_statistics rebuild(
          void Function(GUserData_User_statisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_statisticsBuilder toBuilder() =>
      new GUserData_User_statisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_statistics &&
        G__typename == other.G__typename &&
        anime == other.anime &&
        manga == other.manga;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, anime.hashCode);
    _$hash = $jc(_$hash, manga.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_User_statistics')
          ..add('G__typename', G__typename)
          ..add('anime', anime)
          ..add('manga', manga))
        .toString();
  }
}

class GUserData_User_statisticsBuilder
    implements
        Builder<GUserData_User_statistics, GUserData_User_statisticsBuilder> {
  _$GUserData_User_statistics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserData_User_statistics_animeBuilder? _anime;
  GUserData_User_statistics_animeBuilder get anime =>
      _$this._anime ??= new GUserData_User_statistics_animeBuilder();
  set anime(GUserData_User_statistics_animeBuilder? anime) =>
      _$this._anime = anime;

  GUserData_User_statistics_mangaBuilder? _manga;
  GUserData_User_statistics_mangaBuilder get manga =>
      _$this._manga ??= new GUserData_User_statistics_mangaBuilder();
  set manga(GUserData_User_statistics_mangaBuilder? manga) =>
      _$this._manga = manga;

  GUserData_User_statisticsBuilder() {
    GUserData_User_statistics._initializeBuilder(this);
  }

  GUserData_User_statisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _anime = $v.anime?.toBuilder();
      _manga = $v.manga?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_statistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_statistics;
  }

  @override
  void update(void Function(GUserData_User_statisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_statistics build() => _build();

  _$GUserData_User_statistics _build() {
    _$GUserData_User_statistics _$result;
    try {
      _$result = _$v ??
          new _$GUserData_User_statistics._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserData_User_statistics', 'G__typename'),
              anime: _anime?.build(),
              manga: _manga?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'anime';
        _anime?.build();
        _$failedField = 'manga';
        _manga?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserData_User_statistics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_statistics_anime
    extends GUserData_User_statistics_anime {
  @override
  final String G__typename;
  @override
  final int count;
  @override
  final int episodesWatched;
  @override
  final int minutesWatched;
  @override
  final double standardDeviation;
  @override
  final double meanScore;
  @override
  final BuiltList<GUserData_User_statistics_anime_genres?>? genres;

  factory _$GUserData_User_statistics_anime(
          [void Function(GUserData_User_statistics_animeBuilder)? updates]) =>
      (new GUserData_User_statistics_animeBuilder()..update(updates))._build();

  _$GUserData_User_statistics_anime._(
      {required this.G__typename,
      required this.count,
      required this.episodesWatched,
      required this.minutesWatched,
      required this.standardDeviation,
      required this.meanScore,
      this.genres})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_User_statistics_anime', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GUserData_User_statistics_anime', 'count');
    BuiltValueNullFieldError.checkNotNull(
        episodesWatched, r'GUserData_User_statistics_anime', 'episodesWatched');
    BuiltValueNullFieldError.checkNotNull(
        minutesWatched, r'GUserData_User_statistics_anime', 'minutesWatched');
    BuiltValueNullFieldError.checkNotNull(standardDeviation,
        r'GUserData_User_statistics_anime', 'standardDeviation');
    BuiltValueNullFieldError.checkNotNull(
        meanScore, r'GUserData_User_statistics_anime', 'meanScore');
  }

  @override
  GUserData_User_statistics_anime rebuild(
          void Function(GUserData_User_statistics_animeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_statistics_animeBuilder toBuilder() =>
      new GUserData_User_statistics_animeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_statistics_anime &&
        G__typename == other.G__typename &&
        count == other.count &&
        episodesWatched == other.episodesWatched &&
        minutesWatched == other.minutesWatched &&
        standardDeviation == other.standardDeviation &&
        meanScore == other.meanScore &&
        genres == other.genres;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, episodesWatched.hashCode);
    _$hash = $jc(_$hash, minutesWatched.hashCode);
    _$hash = $jc(_$hash, standardDeviation.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_User_statistics_anime')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('episodesWatched', episodesWatched)
          ..add('minutesWatched', minutesWatched)
          ..add('standardDeviation', standardDeviation)
          ..add('meanScore', meanScore)
          ..add('genres', genres))
        .toString();
  }
}

class GUserData_User_statistics_animeBuilder
    implements
        Builder<GUserData_User_statistics_anime,
            GUserData_User_statistics_animeBuilder> {
  _$GUserData_User_statistics_anime? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _episodesWatched;
  int? get episodesWatched => _$this._episodesWatched;
  set episodesWatched(int? episodesWatched) =>
      _$this._episodesWatched = episodesWatched;

  int? _minutesWatched;
  int? get minutesWatched => _$this._minutesWatched;
  set minutesWatched(int? minutesWatched) =>
      _$this._minutesWatched = minutesWatched;

  double? _standardDeviation;
  double? get standardDeviation => _$this._standardDeviation;
  set standardDeviation(double? standardDeviation) =>
      _$this._standardDeviation = standardDeviation;

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  ListBuilder<GUserData_User_statistics_anime_genres?>? _genres;
  ListBuilder<GUserData_User_statistics_anime_genres?> get genres =>
      _$this._genres ??=
          new ListBuilder<GUserData_User_statistics_anime_genres?>();
  set genres(ListBuilder<GUserData_User_statistics_anime_genres?>? genres) =>
      _$this._genres = genres;

  GUserData_User_statistics_animeBuilder() {
    GUserData_User_statistics_anime._initializeBuilder(this);
  }

  GUserData_User_statistics_animeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _episodesWatched = $v.episodesWatched;
      _minutesWatched = $v.minutesWatched;
      _standardDeviation = $v.standardDeviation;
      _meanScore = $v.meanScore;
      _genres = $v.genres?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_statistics_anime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_statistics_anime;
  }

  @override
  void update(void Function(GUserData_User_statistics_animeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_statistics_anime build() => _build();

  _$GUserData_User_statistics_anime _build() {
    _$GUserData_User_statistics_anime _$result;
    try {
      _$result = _$v ??
          new _$GUserData_User_statistics_anime._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserData_User_statistics_anime', 'G__typename'),
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'GUserData_User_statistics_anime', 'count'),
              episodesWatched: BuiltValueNullFieldError.checkNotNull(
                  episodesWatched,
                  r'GUserData_User_statistics_anime',
                  'episodesWatched'),
              minutesWatched: BuiltValueNullFieldError.checkNotNull(
                  minutesWatched, r'GUserData_User_statistics_anime', 'minutesWatched'),
              standardDeviation: BuiltValueNullFieldError.checkNotNull(
                  standardDeviation,
                  r'GUserData_User_statistics_anime',
                  'standardDeviation'),
              meanScore: BuiltValueNullFieldError.checkNotNull(
                  meanScore, r'GUserData_User_statistics_anime', 'meanScore'),
              genres: _genres?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserData_User_statistics_anime', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_statistics_anime_genres
    extends GUserData_User_statistics_anime_genres {
  @override
  final String G__typename;
  @override
  final String? genre;
  @override
  final int count;

  factory _$GUserData_User_statistics_anime_genres(
          [void Function(GUserData_User_statistics_anime_genresBuilder)?
              updates]) =>
      (new GUserData_User_statistics_anime_genresBuilder()..update(updates))
          ._build();

  _$GUserData_User_statistics_anime_genres._(
      {required this.G__typename, this.genre, required this.count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_User_statistics_anime_genres', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GUserData_User_statistics_anime_genres', 'count');
  }

  @override
  GUserData_User_statistics_anime_genres rebuild(
          void Function(GUserData_User_statistics_anime_genresBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_statistics_anime_genresBuilder toBuilder() =>
      new GUserData_User_statistics_anime_genresBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_statistics_anime_genres &&
        G__typename == other.G__typename &&
        genre == other.genre &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, genre.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserData_User_statistics_anime_genres')
          ..add('G__typename', G__typename)
          ..add('genre', genre)
          ..add('count', count))
        .toString();
  }
}

class GUserData_User_statistics_anime_genresBuilder
    implements
        Builder<GUserData_User_statistics_anime_genres,
            GUserData_User_statistics_anime_genresBuilder> {
  _$GUserData_User_statistics_anime_genres? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  GUserData_User_statistics_anime_genresBuilder() {
    GUserData_User_statistics_anime_genres._initializeBuilder(this);
  }

  GUserData_User_statistics_anime_genresBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _genre = $v.genre;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_statistics_anime_genres other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_statistics_anime_genres;
  }

  @override
  void update(
      void Function(GUserData_User_statistics_anime_genresBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_statistics_anime_genres build() => _build();

  _$GUserData_User_statistics_anime_genres _build() {
    final _$result = _$v ??
        new _$GUserData_User_statistics_anime_genres._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUserData_User_statistics_anime_genres', 'G__typename'),
            genre: genre,
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'GUserData_User_statistics_anime_genres', 'count'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_statistics_manga
    extends GUserData_User_statistics_manga {
  @override
  final String G__typename;
  @override
  final int count;
  @override
  final int chaptersRead;
  @override
  final int volumesRead;
  @override
  final double standardDeviation;
  @override
  final double meanScore;
  @override
  final BuiltList<GUserData_User_statistics_manga_genres?>? genres;

  factory _$GUserData_User_statistics_manga(
          [void Function(GUserData_User_statistics_mangaBuilder)? updates]) =>
      (new GUserData_User_statistics_mangaBuilder()..update(updates))._build();

  _$GUserData_User_statistics_manga._(
      {required this.G__typename,
      required this.count,
      required this.chaptersRead,
      required this.volumesRead,
      required this.standardDeviation,
      required this.meanScore,
      this.genres})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_User_statistics_manga', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GUserData_User_statistics_manga', 'count');
    BuiltValueNullFieldError.checkNotNull(
        chaptersRead, r'GUserData_User_statistics_manga', 'chaptersRead');
    BuiltValueNullFieldError.checkNotNull(
        volumesRead, r'GUserData_User_statistics_manga', 'volumesRead');
    BuiltValueNullFieldError.checkNotNull(standardDeviation,
        r'GUserData_User_statistics_manga', 'standardDeviation');
    BuiltValueNullFieldError.checkNotNull(
        meanScore, r'GUserData_User_statistics_manga', 'meanScore');
  }

  @override
  GUserData_User_statistics_manga rebuild(
          void Function(GUserData_User_statistics_mangaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_statistics_mangaBuilder toBuilder() =>
      new GUserData_User_statistics_mangaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_statistics_manga &&
        G__typename == other.G__typename &&
        count == other.count &&
        chaptersRead == other.chaptersRead &&
        volumesRead == other.volumesRead &&
        standardDeviation == other.standardDeviation &&
        meanScore == other.meanScore &&
        genres == other.genres;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, volumesRead.hashCode);
    _$hash = $jc(_$hash, standardDeviation.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_User_statistics_manga')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('chaptersRead', chaptersRead)
          ..add('volumesRead', volumesRead)
          ..add('standardDeviation', standardDeviation)
          ..add('meanScore', meanScore)
          ..add('genres', genres))
        .toString();
  }
}

class GUserData_User_statistics_mangaBuilder
    implements
        Builder<GUserData_User_statistics_manga,
            GUserData_User_statistics_mangaBuilder> {
  _$GUserData_User_statistics_manga? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  int? _volumesRead;
  int? get volumesRead => _$this._volumesRead;
  set volumesRead(int? volumesRead) => _$this._volumesRead = volumesRead;

  double? _standardDeviation;
  double? get standardDeviation => _$this._standardDeviation;
  set standardDeviation(double? standardDeviation) =>
      _$this._standardDeviation = standardDeviation;

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  ListBuilder<GUserData_User_statistics_manga_genres?>? _genres;
  ListBuilder<GUserData_User_statistics_manga_genres?> get genres =>
      _$this._genres ??=
          new ListBuilder<GUserData_User_statistics_manga_genres?>();
  set genres(ListBuilder<GUserData_User_statistics_manga_genres?>? genres) =>
      _$this._genres = genres;

  GUserData_User_statistics_mangaBuilder() {
    GUserData_User_statistics_manga._initializeBuilder(this);
  }

  GUserData_User_statistics_mangaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _chaptersRead = $v.chaptersRead;
      _volumesRead = $v.volumesRead;
      _standardDeviation = $v.standardDeviation;
      _meanScore = $v.meanScore;
      _genres = $v.genres?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_statistics_manga other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_statistics_manga;
  }

  @override
  void update(void Function(GUserData_User_statistics_mangaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_statistics_manga build() => _build();

  _$GUserData_User_statistics_manga _build() {
    _$GUserData_User_statistics_manga _$result;
    try {
      _$result = _$v ??
          new _$GUserData_User_statistics_manga._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserData_User_statistics_manga', 'G__typename'),
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'GUserData_User_statistics_manga', 'count'),
              chaptersRead: BuiltValueNullFieldError.checkNotNull(chaptersRead,
                  r'GUserData_User_statistics_manga', 'chaptersRead'),
              volumesRead: BuiltValueNullFieldError.checkNotNull(volumesRead,
                  r'GUserData_User_statistics_manga', 'volumesRead'),
              standardDeviation: BuiltValueNullFieldError.checkNotNull(
                  standardDeviation,
                  r'GUserData_User_statistics_manga',
                  'standardDeviation'),
              meanScore: BuiltValueNullFieldError.checkNotNull(
                  meanScore, r'GUserData_User_statistics_manga', 'meanScore'),
              genres: _genres?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserData_User_statistics_manga', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_statistics_manga_genres
    extends GUserData_User_statistics_manga_genres {
  @override
  final String G__typename;
  @override
  final String? genre;
  @override
  final int count;

  factory _$GUserData_User_statistics_manga_genres(
          [void Function(GUserData_User_statistics_manga_genresBuilder)?
              updates]) =>
      (new GUserData_User_statistics_manga_genresBuilder()..update(updates))
          ._build();

  _$GUserData_User_statistics_manga_genres._(
      {required this.G__typename, this.genre, required this.count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_User_statistics_manga_genres', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GUserData_User_statistics_manga_genres', 'count');
  }

  @override
  GUserData_User_statistics_manga_genres rebuild(
          void Function(GUserData_User_statistics_manga_genresBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_statistics_manga_genresBuilder toBuilder() =>
      new GUserData_User_statistics_manga_genresBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_statistics_manga_genres &&
        G__typename == other.G__typename &&
        genre == other.genre &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, genre.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserData_User_statistics_manga_genres')
          ..add('G__typename', G__typename)
          ..add('genre', genre)
          ..add('count', count))
        .toString();
  }
}

class GUserData_User_statistics_manga_genresBuilder
    implements
        Builder<GUserData_User_statistics_manga_genres,
            GUserData_User_statistics_manga_genresBuilder> {
  _$GUserData_User_statistics_manga_genres? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  GUserData_User_statistics_manga_genresBuilder() {
    GUserData_User_statistics_manga_genres._initializeBuilder(this);
  }

  GUserData_User_statistics_manga_genresBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _genre = $v.genre;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_statistics_manga_genres other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_statistics_manga_genres;
  }

  @override
  void update(
      void Function(GUserData_User_statistics_manga_genresBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_statistics_manga_genres build() => _build();

  _$GUserData_User_statistics_manga_genres _build() {
    final _$result = _$v ??
        new _$GUserData_User_statistics_manga_genres._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUserData_User_statistics_manga_genres', 'G__typename'),
            genre: genre,
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'GUserData_User_statistics_manga_genres', 'count'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_favourites extends GUserData_User_favourites {
  @override
  final String G__typename;
  @override
  final GUserData_User_favourites_anime? anime;
  @override
  final GUserData_User_favourites_manga? manga;

  factory _$GUserData_User_favourites(
          [void Function(GUserData_User_favouritesBuilder)? updates]) =>
      (new GUserData_User_favouritesBuilder()..update(updates))._build();

  _$GUserData_User_favourites._(
      {required this.G__typename, this.anime, this.manga})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_User_favourites', 'G__typename');
  }

  @override
  GUserData_User_favourites rebuild(
          void Function(GUserData_User_favouritesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_favouritesBuilder toBuilder() =>
      new GUserData_User_favouritesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_favourites &&
        G__typename == other.G__typename &&
        anime == other.anime &&
        manga == other.manga;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, anime.hashCode);
    _$hash = $jc(_$hash, manga.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_User_favourites')
          ..add('G__typename', G__typename)
          ..add('anime', anime)
          ..add('manga', manga))
        .toString();
  }
}

class GUserData_User_favouritesBuilder
    implements
        Builder<GUserData_User_favourites, GUserData_User_favouritesBuilder> {
  _$GUserData_User_favourites? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserData_User_favourites_animeBuilder? _anime;
  GUserData_User_favourites_animeBuilder get anime =>
      _$this._anime ??= new GUserData_User_favourites_animeBuilder();
  set anime(GUserData_User_favourites_animeBuilder? anime) =>
      _$this._anime = anime;

  GUserData_User_favourites_mangaBuilder? _manga;
  GUserData_User_favourites_mangaBuilder get manga =>
      _$this._manga ??= new GUserData_User_favourites_mangaBuilder();
  set manga(GUserData_User_favourites_mangaBuilder? manga) =>
      _$this._manga = manga;

  GUserData_User_favouritesBuilder() {
    GUserData_User_favourites._initializeBuilder(this);
  }

  GUserData_User_favouritesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _anime = $v.anime?.toBuilder();
      _manga = $v.manga?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_favourites other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_favourites;
  }

  @override
  void update(void Function(GUserData_User_favouritesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_favourites build() => _build();

  _$GUserData_User_favourites _build() {
    _$GUserData_User_favourites _$result;
    try {
      _$result = _$v ??
          new _$GUserData_User_favourites._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserData_User_favourites', 'G__typename'),
              anime: _anime?.build(),
              manga: _manga?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'anime';
        _anime?.build();
        _$failedField = 'manga';
        _manga?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserData_User_favourites', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_favourites_anime
    extends GUserData_User_favourites_anime {
  @override
  final String G__typename;
  @override
  final BuiltList<GUserData_User_favourites_anime_nodes?>? nodes;

  factory _$GUserData_User_favourites_anime(
          [void Function(GUserData_User_favourites_animeBuilder)? updates]) =>
      (new GUserData_User_favourites_animeBuilder()..update(updates))._build();

  _$GUserData_User_favourites_anime._({required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_User_favourites_anime', 'G__typename');
  }

  @override
  GUserData_User_favourites_anime rebuild(
          void Function(GUserData_User_favourites_animeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_favourites_animeBuilder toBuilder() =>
      new GUserData_User_favourites_animeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_favourites_anime &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_User_favourites_anime')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GUserData_User_favourites_animeBuilder
    implements
        Builder<GUserData_User_favourites_anime,
            GUserData_User_favourites_animeBuilder> {
  _$GUserData_User_favourites_anime? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GUserData_User_favourites_anime_nodes?>? _nodes;
  ListBuilder<GUserData_User_favourites_anime_nodes?> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GUserData_User_favourites_anime_nodes?>();
  set nodes(ListBuilder<GUserData_User_favourites_anime_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GUserData_User_favourites_animeBuilder() {
    GUserData_User_favourites_anime._initializeBuilder(this);
  }

  GUserData_User_favourites_animeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_favourites_anime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_favourites_anime;
  }

  @override
  void update(void Function(GUserData_User_favourites_animeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_favourites_anime build() => _build();

  _$GUserData_User_favourites_anime _build() {
    _$GUserData_User_favourites_anime _$result;
    try {
      _$result = _$v ??
          new _$GUserData_User_favourites_anime._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserData_User_favourites_anime', 'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserData_User_favourites_anime', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_favourites_anime_nodes
    extends GUserData_User_favourites_anime_nodes {
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
  final GUserData_User_favourites_anime_nodes_title? title;
  @override
  final GUserData_User_favourites_anime_nodes_coverImage? coverImage;

  factory _$GUserData_User_favourites_anime_nodes(
          [void Function(GUserData_User_favourites_anime_nodesBuilder)?
              updates]) =>
      (new GUserData_User_favourites_anime_nodesBuilder()..update(updates))
          ._build();

  _$GUserData_User_favourites_anime_nodes._(
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
        G__typename, r'GUserData_User_favourites_anime_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserData_User_favourites_anime_nodes', 'id');
  }

  @override
  GUserData_User_favourites_anime_nodes rebuild(
          void Function(GUserData_User_favourites_anime_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_favourites_anime_nodesBuilder toBuilder() =>
      new GUserData_User_favourites_anime_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_favourites_anime_nodes &&
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
            r'GUserData_User_favourites_anime_nodes')
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

class GUserData_User_favourites_anime_nodesBuilder
    implements
        Builder<GUserData_User_favourites_anime_nodes,
            GUserData_User_favourites_anime_nodesBuilder> {
  _$GUserData_User_favourites_anime_nodes? _$v;

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

  GUserData_User_favourites_anime_nodes_titleBuilder? _title;
  GUserData_User_favourites_anime_nodes_titleBuilder get title =>
      _$this._title ??=
          new GUserData_User_favourites_anime_nodes_titleBuilder();
  set title(GUserData_User_favourites_anime_nodes_titleBuilder? title) =>
      _$this._title = title;

  GUserData_User_favourites_anime_nodes_coverImageBuilder? _coverImage;
  GUserData_User_favourites_anime_nodes_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GUserData_User_favourites_anime_nodes_coverImageBuilder();
  set coverImage(
          GUserData_User_favourites_anime_nodes_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GUserData_User_favourites_anime_nodesBuilder() {
    GUserData_User_favourites_anime_nodes._initializeBuilder(this);
  }

  GUserData_User_favourites_anime_nodesBuilder get _$this {
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
  void replace(GUserData_User_favourites_anime_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_favourites_anime_nodes;
  }

  @override
  void update(
      void Function(GUserData_User_favourites_anime_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_favourites_anime_nodes build() => _build();

  _$GUserData_User_favourites_anime_nodes _build() {
    _$GUserData_User_favourites_anime_nodes _$result;
    try {
      _$result = _$v ??
          new _$GUserData_User_favourites_anime_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserData_User_favourites_anime_nodes', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserData_User_favourites_anime_nodes', 'id'),
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
            r'GUserData_User_favourites_anime_nodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_favourites_anime_nodes_title
    extends GUserData_User_favourites_anime_nodes_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GUserData_User_favourites_anime_nodes_title(
          [void Function(GUserData_User_favourites_anime_nodes_titleBuilder)?
              updates]) =>
      (new GUserData_User_favourites_anime_nodes_titleBuilder()
            ..update(updates))
          ._build();

  _$GUserData_User_favourites_anime_nodes_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserData_User_favourites_anime_nodes_title', 'G__typename');
  }

  @override
  GUserData_User_favourites_anime_nodes_title rebuild(
          void Function(GUserData_User_favourites_anime_nodes_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_favourites_anime_nodes_titleBuilder toBuilder() =>
      new GUserData_User_favourites_anime_nodes_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_favourites_anime_nodes_title &&
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
            r'GUserData_User_favourites_anime_nodes_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GUserData_User_favourites_anime_nodes_titleBuilder
    implements
        Builder<GUserData_User_favourites_anime_nodes_title,
            GUserData_User_favourites_anime_nodes_titleBuilder> {
  _$GUserData_User_favourites_anime_nodes_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GUserData_User_favourites_anime_nodes_titleBuilder() {
    GUserData_User_favourites_anime_nodes_title._initializeBuilder(this);
  }

  GUserData_User_favourites_anime_nodes_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_favourites_anime_nodes_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_favourites_anime_nodes_title;
  }

  @override
  void update(
      void Function(GUserData_User_favourites_anime_nodes_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_favourites_anime_nodes_title build() => _build();

  _$GUserData_User_favourites_anime_nodes_title _build() {
    final _$result = _$v ??
        new _$GUserData_User_favourites_anime_nodes_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUserData_User_favourites_anime_nodes_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_favourites_anime_nodes_coverImage
    extends GUserData_User_favourites_anime_nodes_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GUserData_User_favourites_anime_nodes_coverImage(
          [void Function(
                  GUserData_User_favourites_anime_nodes_coverImageBuilder)?
              updates]) =>
      (new GUserData_User_favourites_anime_nodes_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GUserData_User_favourites_anime_nodes_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserData_User_favourites_anime_nodes_coverImage', 'G__typename');
  }

  @override
  GUserData_User_favourites_anime_nodes_coverImage rebuild(
          void Function(GUserData_User_favourites_anime_nodes_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_favourites_anime_nodes_coverImageBuilder toBuilder() =>
      new GUserData_User_favourites_anime_nodes_coverImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_favourites_anime_nodes_coverImage &&
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
            r'GUserData_User_favourites_anime_nodes_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GUserData_User_favourites_anime_nodes_coverImageBuilder
    implements
        Builder<GUserData_User_favourites_anime_nodes_coverImage,
            GUserData_User_favourites_anime_nodes_coverImageBuilder> {
  _$GUserData_User_favourites_anime_nodes_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GUserData_User_favourites_anime_nodes_coverImageBuilder() {
    GUserData_User_favourites_anime_nodes_coverImage._initializeBuilder(this);
  }

  GUserData_User_favourites_anime_nodes_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_favourites_anime_nodes_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_favourites_anime_nodes_coverImage;
  }

  @override
  void update(
      void Function(GUserData_User_favourites_anime_nodes_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_favourites_anime_nodes_coverImage build() => _build();

  _$GUserData_User_favourites_anime_nodes_coverImage _build() {
    final _$result = _$v ??
        new _$GUserData_User_favourites_anime_nodes_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUserData_User_favourites_anime_nodes_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_favourites_manga
    extends GUserData_User_favourites_manga {
  @override
  final String G__typename;
  @override
  final BuiltList<GUserData_User_favourites_manga_nodes?>? nodes;

  factory _$GUserData_User_favourites_manga(
          [void Function(GUserData_User_favourites_mangaBuilder)? updates]) =>
      (new GUserData_User_favourites_mangaBuilder()..update(updates))._build();

  _$GUserData_User_favourites_manga._({required this.G__typename, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserData_User_favourites_manga', 'G__typename');
  }

  @override
  GUserData_User_favourites_manga rebuild(
          void Function(GUserData_User_favourites_mangaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_favourites_mangaBuilder toBuilder() =>
      new GUserData_User_favourites_mangaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_favourites_manga &&
        G__typename == other.G__typename &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserData_User_favourites_manga')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes))
        .toString();
  }
}

class GUserData_User_favourites_mangaBuilder
    implements
        Builder<GUserData_User_favourites_manga,
            GUserData_User_favourites_mangaBuilder> {
  _$GUserData_User_favourites_manga? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GUserData_User_favourites_manga_nodes?>? _nodes;
  ListBuilder<GUserData_User_favourites_manga_nodes?> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GUserData_User_favourites_manga_nodes?>();
  set nodes(ListBuilder<GUserData_User_favourites_manga_nodes?>? nodes) =>
      _$this._nodes = nodes;

  GUserData_User_favourites_mangaBuilder() {
    GUserData_User_favourites_manga._initializeBuilder(this);
  }

  GUserData_User_favourites_mangaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_favourites_manga other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_favourites_manga;
  }

  @override
  void update(void Function(GUserData_User_favourites_mangaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_favourites_manga build() => _build();

  _$GUserData_User_favourites_manga _build() {
    _$GUserData_User_favourites_manga _$result;
    try {
      _$result = _$v ??
          new _$GUserData_User_favourites_manga._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserData_User_favourites_manga', 'G__typename'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserData_User_favourites_manga', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_favourites_manga_nodes
    extends GUserData_User_favourites_manga_nodes {
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
  final GUserData_User_favourites_manga_nodes_title? title;
  @override
  final GUserData_User_favourites_manga_nodes_coverImage? coverImage;

  factory _$GUserData_User_favourites_manga_nodes(
          [void Function(GUserData_User_favourites_manga_nodesBuilder)?
              updates]) =>
      (new GUserData_User_favourites_manga_nodesBuilder()..update(updates))
          ._build();

  _$GUserData_User_favourites_manga_nodes._(
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
        G__typename, r'GUserData_User_favourites_manga_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserData_User_favourites_manga_nodes', 'id');
  }

  @override
  GUserData_User_favourites_manga_nodes rebuild(
          void Function(GUserData_User_favourites_manga_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_favourites_manga_nodesBuilder toBuilder() =>
      new GUserData_User_favourites_manga_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_favourites_manga_nodes &&
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
            r'GUserData_User_favourites_manga_nodes')
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

class GUserData_User_favourites_manga_nodesBuilder
    implements
        Builder<GUserData_User_favourites_manga_nodes,
            GUserData_User_favourites_manga_nodesBuilder> {
  _$GUserData_User_favourites_manga_nodes? _$v;

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

  GUserData_User_favourites_manga_nodes_titleBuilder? _title;
  GUserData_User_favourites_manga_nodes_titleBuilder get title =>
      _$this._title ??=
          new GUserData_User_favourites_manga_nodes_titleBuilder();
  set title(GUserData_User_favourites_manga_nodes_titleBuilder? title) =>
      _$this._title = title;

  GUserData_User_favourites_manga_nodes_coverImageBuilder? _coverImage;
  GUserData_User_favourites_manga_nodes_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GUserData_User_favourites_manga_nodes_coverImageBuilder();
  set coverImage(
          GUserData_User_favourites_manga_nodes_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GUserData_User_favourites_manga_nodesBuilder() {
    GUserData_User_favourites_manga_nodes._initializeBuilder(this);
  }

  GUserData_User_favourites_manga_nodesBuilder get _$this {
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
  void replace(GUserData_User_favourites_manga_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_favourites_manga_nodes;
  }

  @override
  void update(
      void Function(GUserData_User_favourites_manga_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_favourites_manga_nodes build() => _build();

  _$GUserData_User_favourites_manga_nodes _build() {
    _$GUserData_User_favourites_manga_nodes _$result;
    try {
      _$result = _$v ??
          new _$GUserData_User_favourites_manga_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserData_User_favourites_manga_nodes', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserData_User_favourites_manga_nodes', 'id'),
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
            r'GUserData_User_favourites_manga_nodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_favourites_manga_nodes_title
    extends GUserData_User_favourites_manga_nodes_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GUserData_User_favourites_manga_nodes_title(
          [void Function(GUserData_User_favourites_manga_nodes_titleBuilder)?
              updates]) =>
      (new GUserData_User_favourites_manga_nodes_titleBuilder()
            ..update(updates))
          ._build();

  _$GUserData_User_favourites_manga_nodes_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserData_User_favourites_manga_nodes_title', 'G__typename');
  }

  @override
  GUserData_User_favourites_manga_nodes_title rebuild(
          void Function(GUserData_User_favourites_manga_nodes_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_favourites_manga_nodes_titleBuilder toBuilder() =>
      new GUserData_User_favourites_manga_nodes_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_favourites_manga_nodes_title &&
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
            r'GUserData_User_favourites_manga_nodes_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GUserData_User_favourites_manga_nodes_titleBuilder
    implements
        Builder<GUserData_User_favourites_manga_nodes_title,
            GUserData_User_favourites_manga_nodes_titleBuilder> {
  _$GUserData_User_favourites_manga_nodes_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GUserData_User_favourites_manga_nodes_titleBuilder() {
    GUserData_User_favourites_manga_nodes_title._initializeBuilder(this);
  }

  GUserData_User_favourites_manga_nodes_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_favourites_manga_nodes_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_favourites_manga_nodes_title;
  }

  @override
  void update(
      void Function(GUserData_User_favourites_manga_nodes_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_favourites_manga_nodes_title build() => _build();

  _$GUserData_User_favourites_manga_nodes_title _build() {
    final _$result = _$v ??
        new _$GUserData_User_favourites_manga_nodes_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUserData_User_favourites_manga_nodes_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GUserData_User_favourites_manga_nodes_coverImage
    extends GUserData_User_favourites_manga_nodes_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GUserData_User_favourites_manga_nodes_coverImage(
          [void Function(
                  GUserData_User_favourites_manga_nodes_coverImageBuilder)?
              updates]) =>
      (new GUserData_User_favourites_manga_nodes_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GUserData_User_favourites_manga_nodes_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserData_User_favourites_manga_nodes_coverImage', 'G__typename');
  }

  @override
  GUserData_User_favourites_manga_nodes_coverImage rebuild(
          void Function(GUserData_User_favourites_manga_nodes_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserData_User_favourites_manga_nodes_coverImageBuilder toBuilder() =>
      new GUserData_User_favourites_manga_nodes_coverImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserData_User_favourites_manga_nodes_coverImage &&
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
            r'GUserData_User_favourites_manga_nodes_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GUserData_User_favourites_manga_nodes_coverImageBuilder
    implements
        Builder<GUserData_User_favourites_manga_nodes_coverImage,
            GUserData_User_favourites_manga_nodes_coverImageBuilder> {
  _$GUserData_User_favourites_manga_nodes_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GUserData_User_favourites_manga_nodes_coverImageBuilder() {
    GUserData_User_favourites_manga_nodes_coverImage._initializeBuilder(this);
  }

  GUserData_User_favourites_manga_nodes_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserData_User_favourites_manga_nodes_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserData_User_favourites_manga_nodes_coverImage;
  }

  @override
  void update(
      void Function(GUserData_User_favourites_manga_nodes_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserData_User_favourites_manga_nodes_coverImage build() => _build();

  _$GUserData_User_favourites_manga_nodes_coverImage _build() {
    final _$result = _$v ??
        new _$GUserData_User_favourites_manga_nodes_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GUserData_User_favourites_manga_nodes_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GGenreStatData extends GGenreStatData {
  @override
  final String G__typename;
  @override
  final String? genre;
  @override
  final int count;

  factory _$GGenreStatData([void Function(GGenreStatDataBuilder)? updates]) =>
      (new GGenreStatDataBuilder()..update(updates))._build();

  _$GGenreStatData._(
      {required this.G__typename, this.genre, required this.count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGenreStatData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(count, r'GGenreStatData', 'count');
  }

  @override
  GGenreStatData rebuild(void Function(GGenreStatDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGenreStatDataBuilder toBuilder() =>
      new GGenreStatDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGenreStatData &&
        G__typename == other.G__typename &&
        genre == other.genre &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, genre.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGenreStatData')
          ..add('G__typename', G__typename)
          ..add('genre', genre)
          ..add('count', count))
        .toString();
  }
}

class GGenreStatDataBuilder
    implements Builder<GGenreStatData, GGenreStatDataBuilder> {
  _$GGenreStatData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  GGenreStatDataBuilder() {
    GGenreStatData._initializeBuilder(this);
  }

  GGenreStatDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _genre = $v.genre;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGenreStatData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGenreStatData;
  }

  @override
  void update(void Function(GGenreStatDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGenreStatData build() => _build();

  _$GGenreStatData _build() {
    final _$result = _$v ??
        new _$GGenreStatData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGenreStatData', 'G__typename'),
            genre: genre,
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'GGenreStatData', 'count'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
