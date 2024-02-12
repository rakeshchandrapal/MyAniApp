// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewer.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GViewerData> _$gViewerDataSerializer = new _$GViewerDataSerializer();
Serializer<GViewerData_Viewer> _$gViewerDataViewerSerializer =
    new _$GViewerData_ViewerSerializer();
Serializer<GViewerData_Viewer_avatar> _$gViewerDataViewerAvatarSerializer =
    new _$GViewerData_Viewer_avatarSerializer();
Serializer<GViewerData_Viewer_statistics>
    _$gViewerDataViewerStatisticsSerializer =
    new _$GViewerData_Viewer_statisticsSerializer();
Serializer<GViewerData_Viewer_statistics_anime>
    _$gViewerDataViewerStatisticsAnimeSerializer =
    new _$GViewerData_Viewer_statistics_animeSerializer();
Serializer<GViewerData_Viewer_statistics_manga>
    _$gViewerDataViewerStatisticsMangaSerializer =
    new _$GViewerData_Viewer_statistics_mangaSerializer();
Serializer<GViewerData_Viewer_options> _$gViewerDataViewerOptionsSerializer =
    new _$GViewerData_Viewer_optionsSerializer();
Serializer<GViewerData_Viewer_mediaListOptions>
    _$gViewerDataViewerMediaListOptionsSerializer =
    new _$GViewerData_Viewer_mediaListOptionsSerializer();
Serializer<GViewerData_Viewer_mediaListOptions_animeList>
    _$gViewerDataViewerMediaListOptionsAnimeListSerializer =
    new _$GViewerData_Viewer_mediaListOptions_animeListSerializer();
Serializer<GNotificationCountData> _$gNotificationCountDataSerializer =
    new _$GNotificationCountDataSerializer();
Serializer<GNotificationCountData_Viewer>
    _$gNotificationCountDataViewerSerializer =
    new _$GNotificationCountData_ViewerSerializer();
Serializer<GNotificationCountData_Viewer_options>
    _$gNotificationCountDataViewerOptionsSerializer =
    new _$GNotificationCountData_Viewer_optionsSerializer();
Serializer<GUpdateUserData> _$gUpdateUserDataSerializer =
    new _$GUpdateUserDataSerializer();
Serializer<GUpdateUserData_UpdateUser> _$gUpdateUserDataUpdateUserSerializer =
    new _$GUpdateUserData_UpdateUserSerializer();
Serializer<GUpdateUserData_UpdateUser_avatar>
    _$gUpdateUserDataUpdateUserAvatarSerializer =
    new _$GUpdateUserData_UpdateUser_avatarSerializer();
Serializer<GUpdateUserData_UpdateUser_statistics>
    _$gUpdateUserDataUpdateUserStatisticsSerializer =
    new _$GUpdateUserData_UpdateUser_statisticsSerializer();
Serializer<GUpdateUserData_UpdateUser_statistics_anime>
    _$gUpdateUserDataUpdateUserStatisticsAnimeSerializer =
    new _$GUpdateUserData_UpdateUser_statistics_animeSerializer();
Serializer<GUpdateUserData_UpdateUser_statistics_manga>
    _$gUpdateUserDataUpdateUserStatisticsMangaSerializer =
    new _$GUpdateUserData_UpdateUser_statistics_mangaSerializer();
Serializer<GUpdateUserData_UpdateUser_options>
    _$gUpdateUserDataUpdateUserOptionsSerializer =
    new _$GUpdateUserData_UpdateUser_optionsSerializer();
Serializer<GUpdateUserData_UpdateUser_mediaListOptions>
    _$gUpdateUserDataUpdateUserMediaListOptionsSerializer =
    new _$GUpdateUserData_UpdateUser_mediaListOptionsSerializer();
Serializer<GUpdateUserData_UpdateUser_mediaListOptions_animeList>
    _$gUpdateUserDataUpdateUserMediaListOptionsAnimeListSerializer =
    new _$GUpdateUserData_UpdateUser_mediaListOptions_animeListSerializer();
Serializer<GThisUserData> _$gThisUserDataSerializer =
    new _$GThisUserDataSerializer();
Serializer<GThisUserData_avatar> _$gThisUserDataAvatarSerializer =
    new _$GThisUserData_avatarSerializer();
Serializer<GThisUserData_statistics> _$gThisUserDataStatisticsSerializer =
    new _$GThisUserData_statisticsSerializer();
Serializer<GThisUserData_statistics_anime>
    _$gThisUserDataStatisticsAnimeSerializer =
    new _$GThisUserData_statistics_animeSerializer();
Serializer<GThisUserData_statistics_manga>
    _$gThisUserDataStatisticsMangaSerializer =
    new _$GThisUserData_statistics_mangaSerializer();
Serializer<GThisUserData_options> _$gThisUserDataOptionsSerializer =
    new _$GThisUserData_optionsSerializer();
Serializer<GThisUserData_mediaListOptions>
    _$gThisUserDataMediaListOptionsSerializer =
    new _$GThisUserData_mediaListOptionsSerializer();
Serializer<GThisUserData_mediaListOptions_animeList>
    _$gThisUserDataMediaListOptionsAnimeListSerializer =
    new _$GThisUserData_mediaListOptions_animeListSerializer();

class _$GViewerDataSerializer implements StructuredSerializer<GViewerData> {
  @override
  final Iterable<Type> types = const [GViewerData, _$GViewerData];
  @override
  final String wireName = 'GViewerData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GViewerData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Viewer;
    if (value != null) {
      result
        ..add('Viewer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GViewerData_Viewer)));
    }
    return result;
  }

  @override
  GViewerData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerDataBuilder();

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
        case 'Viewer':
          result.Viewer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GViewerData_Viewer))!
              as GViewerData_Viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerData_ViewerSerializer
    implements StructuredSerializer<GViewerData_Viewer> {
  @override
  final Iterable<Type> types = const [GViewerData_Viewer, _$GViewerData_Viewer];
  @override
  final String wireName = 'GViewerData_Viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerData_Viewer object,
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
    value = object.about;
    if (value != null) {
      result
        ..add('about')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.unreadNotificationCount;
    if (value != null) {
      result
        ..add('unreadNotificationCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GViewerData_Viewer_avatar)));
    }
    value = object.statistics;
    if (value != null) {
      result
        ..add('statistics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GViewerData_Viewer_statistics)));
    }
    value = object.options;
    if (value != null) {
      result
        ..add('options')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GViewerData_Viewer_options)));
    }
    value = object.mediaListOptions;
    if (value != null) {
      result
        ..add('mediaListOptions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GViewerData_Viewer_mediaListOptions)));
    }
    return result;
  }

  @override
  GViewerData_Viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerData_ViewerBuilder();

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
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'unreadNotificationCount':
          result.unreadNotificationCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GViewerData_Viewer_avatar))!
              as GViewerData_Viewer_avatar);
          break;
        case 'statistics':
          result.statistics.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GViewerData_Viewer_statistics))!
              as GViewerData_Viewer_statistics);
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GViewerData_Viewer_options))!
              as GViewerData_Viewer_options);
          break;
        case 'mediaListOptions':
          result.mediaListOptions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GViewerData_Viewer_mediaListOptions))!
              as GViewerData_Viewer_mediaListOptions);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerData_Viewer_avatarSerializer
    implements StructuredSerializer<GViewerData_Viewer_avatar> {
  @override
  final Iterable<Type> types = const [
    GViewerData_Viewer_avatar,
    _$GViewerData_Viewer_avatar
  ];
  @override
  final String wireName = 'GViewerData_Viewer_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerData_Viewer_avatar object,
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
  GViewerData_Viewer_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerData_Viewer_avatarBuilder();

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

class _$GViewerData_Viewer_statisticsSerializer
    implements StructuredSerializer<GViewerData_Viewer_statistics> {
  @override
  final Iterable<Type> types = const [
    GViewerData_Viewer_statistics,
    _$GViewerData_Viewer_statistics
  ];
  @override
  final String wireName = 'GViewerData_Viewer_statistics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerData_Viewer_statistics object,
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
            specifiedType:
                const FullType(GViewerData_Viewer_statistics_anime)));
    }
    value = object.manga;
    if (value != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GViewerData_Viewer_statistics_manga)));
    }
    return result;
  }

  @override
  GViewerData_Viewer_statistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerData_Viewer_statisticsBuilder();

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
                      const FullType(GViewerData_Viewer_statistics_anime))!
              as GViewerData_Viewer_statistics_anime);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GViewerData_Viewer_statistics_manga))!
              as GViewerData_Viewer_statistics_manga);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerData_Viewer_statistics_animeSerializer
    implements StructuredSerializer<GViewerData_Viewer_statistics_anime> {
  @override
  final Iterable<Type> types = const [
    GViewerData_Viewer_statistics_anime,
    _$GViewerData_Viewer_statistics_anime
  ];
  @override
  final String wireName = 'GViewerData_Viewer_statistics_anime';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerData_Viewer_statistics_anime object,
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
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'standardDeviation',
      serializers.serialize(object.standardDeviation,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GViewerData_Viewer_statistics_anime deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerData_Viewer_statistics_animeBuilder();

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
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'standardDeviation':
          result.standardDeviation = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerData_Viewer_statistics_mangaSerializer
    implements StructuredSerializer<GViewerData_Viewer_statistics_manga> {
  @override
  final Iterable<Type> types = const [
    GViewerData_Viewer_statistics_manga,
    _$GViewerData_Viewer_statistics_manga
  ];
  @override
  final String wireName = 'GViewerData_Viewer_statistics_manga';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerData_Viewer_statistics_manga object,
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
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'standardDeviation',
      serializers.serialize(object.standardDeviation,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GViewerData_Viewer_statistics_manga deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerData_Viewer_statistics_mangaBuilder();

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
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'standardDeviation':
          result.standardDeviation = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerData_Viewer_optionsSerializer
    implements StructuredSerializer<GViewerData_Viewer_options> {
  @override
  final Iterable<Type> types = const [
    GViewerData_Viewer_options,
    _$GViewerData_Viewer_options
  ];
  @override
  final String wireName = 'GViewerData_Viewer_options';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerData_Viewer_options object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.displayAdultContent;
    if (value != null) {
      result
        ..add('displayAdultContent')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.airingNotifications;
    if (value != null) {
      result
        ..add('airingNotifications')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.titleLanguage;
    if (value != null) {
      result
        ..add('titleLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GUserTitleLanguage)));
    }
    value = object.staffNameLanguage;
    if (value != null) {
      result
        ..add('staffNameLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GUserStaffNameLanguage)));
    }
    value = object.activityMergeTime;
    if (value != null) {
      result
        ..add('activityMergeTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.restrictMessagesToFollowing;
    if (value != null) {
      result
        ..add('restrictMessagesToFollowing')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GViewerData_Viewer_options deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerData_Viewer_optionsBuilder();

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
        case 'displayAdultContent':
          result.displayAdultContent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'airingNotifications':
          result.airingNotifications = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'titleLanguage':
          result.titleLanguage = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GUserTitleLanguage))
              as _i2.GUserTitleLanguage?;
          break;
        case 'staffNameLanguage':
          result.staffNameLanguage = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GUserStaffNameLanguage))
              as _i2.GUserStaffNameLanguage?;
          break;
        case 'activityMergeTime':
          result.activityMergeTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'restrictMessagesToFollowing':
          result.restrictMessagesToFollowing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerData_Viewer_mediaListOptionsSerializer
    implements StructuredSerializer<GViewerData_Viewer_mediaListOptions> {
  @override
  final Iterable<Type> types = const [
    GViewerData_Viewer_mediaListOptions,
    _$GViewerData_Viewer_mediaListOptions
  ];
  @override
  final String wireName = 'GViewerData_Viewer_mediaListOptions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GViewerData_Viewer_mediaListOptions object,
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
            specifiedType: const FullType(_i2.GScoreFormat)));
    }
    value = object.rowOrder;
    if (value != null) {
      result
        ..add('rowOrder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.animeList;
    if (value != null) {
      result
        ..add('animeList')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GViewerData_Viewer_mediaListOptions_animeList)));
    }
    return result;
  }

  @override
  GViewerData_Viewer_mediaListOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerData_Viewer_mediaListOptionsBuilder();

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
                  specifiedType: const FullType(_i2.GScoreFormat))
              as _i2.GScoreFormat?;
          break;
        case 'rowOrder':
          result.rowOrder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'animeList':
          result.animeList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GViewerData_Viewer_mediaListOptions_animeList))!
              as GViewerData_Viewer_mediaListOptions_animeList);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerData_Viewer_mediaListOptions_animeListSerializer
    implements
        StructuredSerializer<GViewerData_Viewer_mediaListOptions_animeList> {
  @override
  final Iterable<Type> types = const [
    GViewerData_Viewer_mediaListOptions_animeList,
    _$GViewerData_Viewer_mediaListOptions_animeList
  ];
  @override
  final String wireName = 'GViewerData_Viewer_mediaListOptions_animeList';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GViewerData_Viewer_mediaListOptions_animeList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.sectionOrder;
    if (value != null) {
      result
        ..add('sectionOrder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GViewerData_Viewer_mediaListOptions_animeList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GViewerData_Viewer_mediaListOptions_animeListBuilder();

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
        case 'sectionOrder':
          result.sectionOrder.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationCountDataSerializer
    implements StructuredSerializer<GNotificationCountData> {
  @override
  final Iterable<Type> types = const [
    GNotificationCountData,
    _$GNotificationCountData
  ];
  @override
  final String wireName = 'GNotificationCountData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNotificationCountData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Viewer;
    if (value != null) {
      result
        ..add('Viewer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GNotificationCountData_Viewer)));
    }
    return result;
  }

  @override
  GNotificationCountData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationCountDataBuilder();

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
        case 'Viewer':
          result.Viewer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GNotificationCountData_Viewer))!
              as GNotificationCountData_Viewer);
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationCountData_ViewerSerializer
    implements StructuredSerializer<GNotificationCountData_Viewer> {
  @override
  final Iterable<Type> types = const [
    GNotificationCountData_Viewer,
    _$GNotificationCountData_Viewer
  ];
  @override
  final String wireName = 'GNotificationCountData_Viewer';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNotificationCountData_Viewer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.unreadNotificationCount;
    if (value != null) {
      result
        ..add('unreadNotificationCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.options;
    if (value != null) {
      result
        ..add('options')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GNotificationCountData_Viewer_options)));
    }
    return result;
  }

  @override
  GNotificationCountData_Viewer deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationCountData_ViewerBuilder();

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
        case 'unreadNotificationCount':
          result.unreadNotificationCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GNotificationCountData_Viewer_options))!
              as GNotificationCountData_Viewer_options);
          break;
      }
    }

    return result.build();
  }
}

class _$GNotificationCountData_Viewer_optionsSerializer
    implements StructuredSerializer<GNotificationCountData_Viewer_options> {
  @override
  final Iterable<Type> types = const [
    GNotificationCountData_Viewer_options,
    _$GNotificationCountData_Viewer_options
  ];
  @override
  final String wireName = 'GNotificationCountData_Viewer_options';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNotificationCountData_Viewer_options object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.airingNotifications;
    if (value != null) {
      result
        ..add('airingNotifications')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GNotificationCountData_Viewer_options deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNotificationCountData_Viewer_optionsBuilder();

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
        case 'airingNotifications':
          result.airingNotifications = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserDataSerializer
    implements StructuredSerializer<GUpdateUserData> {
  @override
  final Iterable<Type> types = const [GUpdateUserData, _$GUpdateUserData];
  @override
  final String wireName = 'GUpdateUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.UpdateUser;
    if (value != null) {
      result
        ..add('UpdateUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUpdateUserData_UpdateUser)));
    }
    return result;
  }

  @override
  GUpdateUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserDataBuilder();

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
        case 'UpdateUser':
          result.UpdateUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUpdateUserData_UpdateUser))!
              as GUpdateUserData_UpdateUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserData_UpdateUserSerializer
    implements StructuredSerializer<GUpdateUserData_UpdateUser> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserData_UpdateUser,
    _$GUpdateUserData_UpdateUser
  ];
  @override
  final String wireName = 'GUpdateUserData_UpdateUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateUserData_UpdateUser object,
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
    value = object.about;
    if (value != null) {
      result
        ..add('about')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.unreadNotificationCount;
    if (value != null) {
      result
        ..add('unreadNotificationCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUpdateUserData_UpdateUser_avatar)));
    }
    value = object.statistics;
    if (value != null) {
      result
        ..add('statistics')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GUpdateUserData_UpdateUser_statistics)));
    }
    value = object.options;
    if (value != null) {
      result
        ..add('options')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUpdateUserData_UpdateUser_options)));
    }
    value = object.mediaListOptions;
    if (value != null) {
      result
        ..add('mediaListOptions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GUpdateUserData_UpdateUser_mediaListOptions)));
    }
    return result;
  }

  @override
  GUpdateUserData_UpdateUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserData_UpdateUserBuilder();

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
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'unreadNotificationCount':
          result.unreadNotificationCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUpdateUserData_UpdateUser_avatar))!
              as GUpdateUserData_UpdateUser_avatar);
          break;
        case 'statistics':
          result.statistics.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUpdateUserData_UpdateUser_statistics))!
              as GUpdateUserData_UpdateUser_statistics);
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUpdateUserData_UpdateUser_options))!
              as GUpdateUserData_UpdateUser_options);
          break;
        case 'mediaListOptions':
          result.mediaListOptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUpdateUserData_UpdateUser_mediaListOptions))!
              as GUpdateUserData_UpdateUser_mediaListOptions);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserData_UpdateUser_avatarSerializer
    implements StructuredSerializer<GUpdateUserData_UpdateUser_avatar> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserData_UpdateUser_avatar,
    _$GUpdateUserData_UpdateUser_avatar
  ];
  @override
  final String wireName = 'GUpdateUserData_UpdateUser_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateUserData_UpdateUser_avatar object,
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
  GUpdateUserData_UpdateUser_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserData_UpdateUser_avatarBuilder();

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

class _$GUpdateUserData_UpdateUser_statisticsSerializer
    implements StructuredSerializer<GUpdateUserData_UpdateUser_statistics> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserData_UpdateUser_statistics,
    _$GUpdateUserData_UpdateUser_statistics
  ];
  @override
  final String wireName = 'GUpdateUserData_UpdateUser_statistics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateUserData_UpdateUser_statistics object,
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
            specifiedType:
                const FullType(GUpdateUserData_UpdateUser_statistics_anime)));
    }
    value = object.manga;
    if (value != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GUpdateUserData_UpdateUser_statistics_manga)));
    }
    return result;
  }

  @override
  GUpdateUserData_UpdateUser_statistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserData_UpdateUser_statisticsBuilder();

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
                  specifiedType: const FullType(
                      GUpdateUserData_UpdateUser_statistics_anime))!
              as GUpdateUserData_UpdateUser_statistics_anime);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUpdateUserData_UpdateUser_statistics_manga))!
              as GUpdateUserData_UpdateUser_statistics_manga);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserData_UpdateUser_statistics_animeSerializer
    implements
        StructuredSerializer<GUpdateUserData_UpdateUser_statistics_anime> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserData_UpdateUser_statistics_anime,
    _$GUpdateUserData_UpdateUser_statistics_anime
  ];
  @override
  final String wireName = 'GUpdateUserData_UpdateUser_statistics_anime';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUpdateUserData_UpdateUser_statistics_anime object,
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
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'standardDeviation',
      serializers.serialize(object.standardDeviation,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GUpdateUserData_UpdateUser_statistics_anime deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserData_UpdateUser_statistics_animeBuilder();

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
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'standardDeviation':
          result.standardDeviation = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserData_UpdateUser_statistics_mangaSerializer
    implements
        StructuredSerializer<GUpdateUserData_UpdateUser_statistics_manga> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserData_UpdateUser_statistics_manga,
    _$GUpdateUserData_UpdateUser_statistics_manga
  ];
  @override
  final String wireName = 'GUpdateUserData_UpdateUser_statistics_manga';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUpdateUserData_UpdateUser_statistics_manga object,
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
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'standardDeviation',
      serializers.serialize(object.standardDeviation,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GUpdateUserData_UpdateUser_statistics_manga deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserData_UpdateUser_statistics_mangaBuilder();

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
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'standardDeviation':
          result.standardDeviation = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserData_UpdateUser_optionsSerializer
    implements StructuredSerializer<GUpdateUserData_UpdateUser_options> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserData_UpdateUser_options,
    _$GUpdateUserData_UpdateUser_options
  ];
  @override
  final String wireName = 'GUpdateUserData_UpdateUser_options';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateUserData_UpdateUser_options object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.displayAdultContent;
    if (value != null) {
      result
        ..add('displayAdultContent')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.airingNotifications;
    if (value != null) {
      result
        ..add('airingNotifications')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.titleLanguage;
    if (value != null) {
      result
        ..add('titleLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GUserTitleLanguage)));
    }
    value = object.staffNameLanguage;
    if (value != null) {
      result
        ..add('staffNameLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GUserStaffNameLanguage)));
    }
    value = object.activityMergeTime;
    if (value != null) {
      result
        ..add('activityMergeTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.restrictMessagesToFollowing;
    if (value != null) {
      result
        ..add('restrictMessagesToFollowing')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GUpdateUserData_UpdateUser_options deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserData_UpdateUser_optionsBuilder();

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
        case 'displayAdultContent':
          result.displayAdultContent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'airingNotifications':
          result.airingNotifications = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'titleLanguage':
          result.titleLanguage = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GUserTitleLanguage))
              as _i2.GUserTitleLanguage?;
          break;
        case 'staffNameLanguage':
          result.staffNameLanguage = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GUserStaffNameLanguage))
              as _i2.GUserStaffNameLanguage?;
          break;
        case 'activityMergeTime':
          result.activityMergeTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'restrictMessagesToFollowing':
          result.restrictMessagesToFollowing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserData_UpdateUser_mediaListOptionsSerializer
    implements
        StructuredSerializer<GUpdateUserData_UpdateUser_mediaListOptions> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserData_UpdateUser_mediaListOptions,
    _$GUpdateUserData_UpdateUser_mediaListOptions
  ];
  @override
  final String wireName = 'GUpdateUserData_UpdateUser_mediaListOptions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUpdateUserData_UpdateUser_mediaListOptions object,
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
            specifiedType: const FullType(_i2.GScoreFormat)));
    }
    value = object.rowOrder;
    if (value != null) {
      result
        ..add('rowOrder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.animeList;
    if (value != null) {
      result
        ..add('animeList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GUpdateUserData_UpdateUser_mediaListOptions_animeList)));
    }
    return result;
  }

  @override
  GUpdateUserData_UpdateUser_mediaListOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserData_UpdateUser_mediaListOptionsBuilder();

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
                  specifiedType: const FullType(_i2.GScoreFormat))
              as _i2.GScoreFormat?;
          break;
        case 'rowOrder':
          result.rowOrder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'animeList':
          result.animeList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUpdateUserData_UpdateUser_mediaListOptions_animeList))!
              as GUpdateUserData_UpdateUser_mediaListOptions_animeList);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserData_UpdateUser_mediaListOptions_animeListSerializer
    implements
        StructuredSerializer<
            GUpdateUserData_UpdateUser_mediaListOptions_animeList> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserData_UpdateUser_mediaListOptions_animeList,
    _$GUpdateUserData_UpdateUser_mediaListOptions_animeList
  ];
  @override
  final String wireName =
      'GUpdateUserData_UpdateUser_mediaListOptions_animeList';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUpdateUserData_UpdateUser_mediaListOptions_animeList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.sectionOrder;
    if (value != null) {
      result
        ..add('sectionOrder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GUpdateUserData_UpdateUser_mediaListOptions_animeList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder();

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
        case 'sectionOrder':
          result.sectionOrder.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GThisUserDataSerializer implements StructuredSerializer<GThisUserData> {
  @override
  final Iterable<Type> types = const [GThisUserData, _$GThisUserData];
  @override
  final String wireName = 'GThisUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GThisUserData object,
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
    value = object.about;
    if (value != null) {
      result
        ..add('about')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.unreadNotificationCount;
    if (value != null) {
      result
        ..add('unreadNotificationCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GThisUserData_avatar)));
    }
    value = object.statistics;
    if (value != null) {
      result
        ..add('statistics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GThisUserData_statistics)));
    }
    value = object.options;
    if (value != null) {
      result
        ..add('options')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GThisUserData_options)));
    }
    value = object.mediaListOptions;
    if (value != null) {
      result
        ..add('mediaListOptions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GThisUserData_mediaListOptions)));
    }
    return result;
  }

  @override
  GThisUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThisUserDataBuilder();

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
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'unreadNotificationCount':
          result.unreadNotificationCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GThisUserData_avatar))!
              as GThisUserData_avatar);
          break;
        case 'statistics':
          result.statistics.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GThisUserData_statistics))!
              as GThisUserData_statistics);
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GThisUserData_options))!
              as GThisUserData_options);
          break;
        case 'mediaListOptions':
          result.mediaListOptions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GThisUserData_mediaListOptions))!
              as GThisUserData_mediaListOptions);
          break;
      }
    }

    return result.build();
  }
}

class _$GThisUserData_avatarSerializer
    implements StructuredSerializer<GThisUserData_avatar> {
  @override
  final Iterable<Type> types = const [
    GThisUserData_avatar,
    _$GThisUserData_avatar
  ];
  @override
  final String wireName = 'GThisUserData_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThisUserData_avatar object,
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
  GThisUserData_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThisUserData_avatarBuilder();

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

class _$GThisUserData_statisticsSerializer
    implements StructuredSerializer<GThisUserData_statistics> {
  @override
  final Iterable<Type> types = const [
    GThisUserData_statistics,
    _$GThisUserData_statistics
  ];
  @override
  final String wireName = 'GThisUserData_statistics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThisUserData_statistics object,
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
            specifiedType: const FullType(GThisUserData_statistics_anime)));
    }
    value = object.manga;
    if (value != null) {
      result
        ..add('manga')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GThisUserData_statistics_manga)));
    }
    return result;
  }

  @override
  GThisUserData_statistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThisUserData_statisticsBuilder();

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
                      const FullType(GThisUserData_statistics_anime))!
              as GThisUserData_statistics_anime);
          break;
        case 'manga':
          result.manga.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GThisUserData_statistics_manga))!
              as GThisUserData_statistics_manga);
          break;
      }
    }

    return result.build();
  }
}

class _$GThisUserData_statistics_animeSerializer
    implements StructuredSerializer<GThisUserData_statistics_anime> {
  @override
  final Iterable<Type> types = const [
    GThisUserData_statistics_anime,
    _$GThisUserData_statistics_anime
  ];
  @override
  final String wireName = 'GThisUserData_statistics_anime';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThisUserData_statistics_anime object,
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
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'standardDeviation',
      serializers.serialize(object.standardDeviation,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GThisUserData_statistics_anime deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThisUserData_statistics_animeBuilder();

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
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'standardDeviation':
          result.standardDeviation = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GThisUserData_statistics_mangaSerializer
    implements StructuredSerializer<GThisUserData_statistics_manga> {
  @override
  final Iterable<Type> types = const [
    GThisUserData_statistics_manga,
    _$GThisUserData_statistics_manga
  ];
  @override
  final String wireName = 'GThisUserData_statistics_manga';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThisUserData_statistics_manga object,
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
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'standardDeviation',
      serializers.serialize(object.standardDeviation,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GThisUserData_statistics_manga deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThisUserData_statistics_mangaBuilder();

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
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'standardDeviation':
          result.standardDeviation = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GThisUserData_optionsSerializer
    implements StructuredSerializer<GThisUserData_options> {
  @override
  final Iterable<Type> types = const [
    GThisUserData_options,
    _$GThisUserData_options
  ];
  @override
  final String wireName = 'GThisUserData_options';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThisUserData_options object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.displayAdultContent;
    if (value != null) {
      result
        ..add('displayAdultContent')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.airingNotifications;
    if (value != null) {
      result
        ..add('airingNotifications')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.titleLanguage;
    if (value != null) {
      result
        ..add('titleLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GUserTitleLanguage)));
    }
    value = object.staffNameLanguage;
    if (value != null) {
      result
        ..add('staffNameLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GUserStaffNameLanguage)));
    }
    value = object.activityMergeTime;
    if (value != null) {
      result
        ..add('activityMergeTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.restrictMessagesToFollowing;
    if (value != null) {
      result
        ..add('restrictMessagesToFollowing')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GThisUserData_options deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThisUserData_optionsBuilder();

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
        case 'displayAdultContent':
          result.displayAdultContent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'airingNotifications':
          result.airingNotifications = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'titleLanguage':
          result.titleLanguage = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GUserTitleLanguage))
              as _i2.GUserTitleLanguage?;
          break;
        case 'staffNameLanguage':
          result.staffNameLanguage = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GUserStaffNameLanguage))
              as _i2.GUserStaffNameLanguage?;
          break;
        case 'activityMergeTime':
          result.activityMergeTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'restrictMessagesToFollowing':
          result.restrictMessagesToFollowing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GThisUserData_mediaListOptionsSerializer
    implements StructuredSerializer<GThisUserData_mediaListOptions> {
  @override
  final Iterable<Type> types = const [
    GThisUserData_mediaListOptions,
    _$GThisUserData_mediaListOptions
  ];
  @override
  final String wireName = 'GThisUserData_mediaListOptions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThisUserData_mediaListOptions object,
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
            specifiedType: const FullType(_i2.GScoreFormat)));
    }
    value = object.rowOrder;
    if (value != null) {
      result
        ..add('rowOrder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.animeList;
    if (value != null) {
      result
        ..add('animeList')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GThisUserData_mediaListOptions_animeList)));
    }
    return result;
  }

  @override
  GThisUserData_mediaListOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThisUserData_mediaListOptionsBuilder();

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
                  specifiedType: const FullType(_i2.GScoreFormat))
              as _i2.GScoreFormat?;
          break;
        case 'rowOrder':
          result.rowOrder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'animeList':
          result.animeList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GThisUserData_mediaListOptions_animeList))!
              as GThisUserData_mediaListOptions_animeList);
          break;
      }
    }

    return result.build();
  }
}

class _$GThisUserData_mediaListOptions_animeListSerializer
    implements StructuredSerializer<GThisUserData_mediaListOptions_animeList> {
  @override
  final Iterable<Type> types = const [
    GThisUserData_mediaListOptions_animeList,
    _$GThisUserData_mediaListOptions_animeList
  ];
  @override
  final String wireName = 'GThisUserData_mediaListOptions_animeList';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThisUserData_mediaListOptions_animeList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.sectionOrder;
    if (value != null) {
      result
        ..add('sectionOrder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GThisUserData_mediaListOptions_animeList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThisUserData_mediaListOptions_animeListBuilder();

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
        case 'sectionOrder':
          result.sectionOrder.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GViewerData extends GViewerData {
  @override
  final String G__typename;
  @override
  final GViewerData_Viewer? Viewer;

  factory _$GViewerData([void Function(GViewerDataBuilder)? updates]) =>
      (new GViewerDataBuilder()..update(updates))._build();

  _$GViewerData._({required this.G__typename, this.Viewer}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GViewerData', 'G__typename');
  }

  @override
  GViewerData rebuild(void Function(GViewerDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerDataBuilder toBuilder() => new GViewerDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerData &&
        G__typename == other.G__typename &&
        Viewer == other.Viewer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Viewer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GViewerData')
          ..add('G__typename', G__typename)
          ..add('Viewer', Viewer))
        .toString();
  }
}

class GViewerDataBuilder implements Builder<GViewerData, GViewerDataBuilder> {
  _$GViewerData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GViewerData_ViewerBuilder? _Viewer;
  GViewerData_ViewerBuilder get Viewer =>
      _$this._Viewer ??= new GViewerData_ViewerBuilder();
  set Viewer(GViewerData_ViewerBuilder? Viewer) => _$this._Viewer = Viewer;

  GViewerDataBuilder() {
    GViewerData._initializeBuilder(this);
  }

  GViewerDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Viewer = $v.Viewer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerData;
  }

  @override
  void update(void Function(GViewerDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerData build() => _build();

  _$GViewerData _build() {
    _$GViewerData _$result;
    try {
      _$result = _$v ??
          new _$GViewerData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GViewerData', 'G__typename'),
              Viewer: _Viewer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Viewer';
        _Viewer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerData_Viewer extends GViewerData_Viewer {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final String? about;
  @override
  final String? bannerImage;
  @override
  final int? unreadNotificationCount;
  @override
  final GViewerData_Viewer_avatar? avatar;
  @override
  final GViewerData_Viewer_statistics? statistics;
  @override
  final GViewerData_Viewer_options? options;
  @override
  final GViewerData_Viewer_mediaListOptions? mediaListOptions;

  factory _$GViewerData_Viewer(
          [void Function(GViewerData_ViewerBuilder)? updates]) =>
      (new GViewerData_ViewerBuilder()..update(updates))._build();

  _$GViewerData_Viewer._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.about,
      this.bannerImage,
      this.unreadNotificationCount,
      this.avatar,
      this.statistics,
      this.options,
      this.mediaListOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GViewerData_Viewer', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GViewerData_Viewer', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GViewerData_Viewer', 'name');
  }

  @override
  GViewerData_Viewer rebuild(
          void Function(GViewerData_ViewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerData_ViewerBuilder toBuilder() =>
      new GViewerData_ViewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerData_Viewer &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        about == other.about &&
        bannerImage == other.bannerImage &&
        unreadNotificationCount == other.unreadNotificationCount &&
        avatar == other.avatar &&
        statistics == other.statistics &&
        options == other.options &&
        mediaListOptions == other.mediaListOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, about.hashCode);
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jc(_$hash, unreadNotificationCount.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, statistics.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, mediaListOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GViewerData_Viewer')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('about', about)
          ..add('bannerImage', bannerImage)
          ..add('unreadNotificationCount', unreadNotificationCount)
          ..add('avatar', avatar)
          ..add('statistics', statistics)
          ..add('options', options)
          ..add('mediaListOptions', mediaListOptions))
        .toString();
  }
}

class GViewerData_ViewerBuilder
    implements Builder<GViewerData_Viewer, GViewerData_ViewerBuilder> {
  _$GViewerData_Viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _about;
  String? get about => _$this._about;
  set about(String? about) => _$this._about = about;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  int? _unreadNotificationCount;
  int? get unreadNotificationCount => _$this._unreadNotificationCount;
  set unreadNotificationCount(int? unreadNotificationCount) =>
      _$this._unreadNotificationCount = unreadNotificationCount;

  GViewerData_Viewer_avatarBuilder? _avatar;
  GViewerData_Viewer_avatarBuilder get avatar =>
      _$this._avatar ??= new GViewerData_Viewer_avatarBuilder();
  set avatar(GViewerData_Viewer_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GViewerData_Viewer_statisticsBuilder? _statistics;
  GViewerData_Viewer_statisticsBuilder get statistics =>
      _$this._statistics ??= new GViewerData_Viewer_statisticsBuilder();
  set statistics(GViewerData_Viewer_statisticsBuilder? statistics) =>
      _$this._statistics = statistics;

  GViewerData_Viewer_optionsBuilder? _options;
  GViewerData_Viewer_optionsBuilder get options =>
      _$this._options ??= new GViewerData_Viewer_optionsBuilder();
  set options(GViewerData_Viewer_optionsBuilder? options) =>
      _$this._options = options;

  GViewerData_Viewer_mediaListOptionsBuilder? _mediaListOptions;
  GViewerData_Viewer_mediaListOptionsBuilder get mediaListOptions =>
      _$this._mediaListOptions ??=
          new GViewerData_Viewer_mediaListOptionsBuilder();
  set mediaListOptions(
          GViewerData_Viewer_mediaListOptionsBuilder? mediaListOptions) =>
      _$this._mediaListOptions = mediaListOptions;

  GViewerData_ViewerBuilder() {
    GViewerData_Viewer._initializeBuilder(this);
  }

  GViewerData_ViewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _about = $v.about;
      _bannerImage = $v.bannerImage;
      _unreadNotificationCount = $v.unreadNotificationCount;
      _avatar = $v.avatar?.toBuilder();
      _statistics = $v.statistics?.toBuilder();
      _options = $v.options?.toBuilder();
      _mediaListOptions = $v.mediaListOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerData_Viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerData_Viewer;
  }

  @override
  void update(void Function(GViewerData_ViewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerData_Viewer build() => _build();

  _$GViewerData_Viewer _build() {
    _$GViewerData_Viewer _$result;
    try {
      _$result = _$v ??
          new _$GViewerData_Viewer._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GViewerData_Viewer', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GViewerData_Viewer', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GViewerData_Viewer', 'name'),
              about: about,
              bannerImage: bannerImage,
              unreadNotificationCount: unreadNotificationCount,
              avatar: _avatar?.build(),
              statistics: _statistics?.build(),
              options: _options?.build(),
              mediaListOptions: _mediaListOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();
        _$failedField = 'statistics';
        _statistics?.build();
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'mediaListOptions';
        _mediaListOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerData_Viewer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerData_Viewer_avatar extends GViewerData_Viewer_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GViewerData_Viewer_avatar(
          [void Function(GViewerData_Viewer_avatarBuilder)? updates]) =>
      (new GViewerData_Viewer_avatarBuilder()..update(updates))._build();

  _$GViewerData_Viewer_avatar._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GViewerData_Viewer_avatar', 'G__typename');
  }

  @override
  GViewerData_Viewer_avatar rebuild(
          void Function(GViewerData_Viewer_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerData_Viewer_avatarBuilder toBuilder() =>
      new GViewerData_Viewer_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerData_Viewer_avatar &&
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
    return (newBuiltValueToStringHelper(r'GViewerData_Viewer_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GViewerData_Viewer_avatarBuilder
    implements
        Builder<GViewerData_Viewer_avatar, GViewerData_Viewer_avatarBuilder> {
  _$GViewerData_Viewer_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GViewerData_Viewer_avatarBuilder() {
    GViewerData_Viewer_avatar._initializeBuilder(this);
  }

  GViewerData_Viewer_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerData_Viewer_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerData_Viewer_avatar;
  }

  @override
  void update(void Function(GViewerData_Viewer_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerData_Viewer_avatar build() => _build();

  _$GViewerData_Viewer_avatar _build() {
    final _$result = _$v ??
        new _$GViewerData_Viewer_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GViewerData_Viewer_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GViewerData_Viewer_statistics extends GViewerData_Viewer_statistics {
  @override
  final String G__typename;
  @override
  final GViewerData_Viewer_statistics_anime? anime;
  @override
  final GViewerData_Viewer_statistics_manga? manga;

  factory _$GViewerData_Viewer_statistics(
          [void Function(GViewerData_Viewer_statisticsBuilder)? updates]) =>
      (new GViewerData_Viewer_statisticsBuilder()..update(updates))._build();

  _$GViewerData_Viewer_statistics._(
      {required this.G__typename, this.anime, this.manga})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GViewerData_Viewer_statistics', 'G__typename');
  }

  @override
  GViewerData_Viewer_statistics rebuild(
          void Function(GViewerData_Viewer_statisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerData_Viewer_statisticsBuilder toBuilder() =>
      new GViewerData_Viewer_statisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerData_Viewer_statistics &&
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
    return (newBuiltValueToStringHelper(r'GViewerData_Viewer_statistics')
          ..add('G__typename', G__typename)
          ..add('anime', anime)
          ..add('manga', manga))
        .toString();
  }
}

class GViewerData_Viewer_statisticsBuilder
    implements
        Builder<GViewerData_Viewer_statistics,
            GViewerData_Viewer_statisticsBuilder> {
  _$GViewerData_Viewer_statistics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GViewerData_Viewer_statistics_animeBuilder? _anime;
  GViewerData_Viewer_statistics_animeBuilder get anime =>
      _$this._anime ??= new GViewerData_Viewer_statistics_animeBuilder();
  set anime(GViewerData_Viewer_statistics_animeBuilder? anime) =>
      _$this._anime = anime;

  GViewerData_Viewer_statistics_mangaBuilder? _manga;
  GViewerData_Viewer_statistics_mangaBuilder get manga =>
      _$this._manga ??= new GViewerData_Viewer_statistics_mangaBuilder();
  set manga(GViewerData_Viewer_statistics_mangaBuilder? manga) =>
      _$this._manga = manga;

  GViewerData_Viewer_statisticsBuilder() {
    GViewerData_Viewer_statistics._initializeBuilder(this);
  }

  GViewerData_Viewer_statisticsBuilder get _$this {
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
  void replace(GViewerData_Viewer_statistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerData_Viewer_statistics;
  }

  @override
  void update(void Function(GViewerData_Viewer_statisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerData_Viewer_statistics build() => _build();

  _$GViewerData_Viewer_statistics _build() {
    _$GViewerData_Viewer_statistics _$result;
    try {
      _$result = _$v ??
          new _$GViewerData_Viewer_statistics._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GViewerData_Viewer_statistics', 'G__typename'),
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
            r'GViewerData_Viewer_statistics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerData_Viewer_statistics_anime
    extends GViewerData_Viewer_statistics_anime {
  @override
  final String G__typename;
  @override
  final int count;
  @override
  final int episodesWatched;
  @override
  final int minutesWatched;
  @override
  final double meanScore;
  @override
  final double standardDeviation;

  factory _$GViewerData_Viewer_statistics_anime(
          [void Function(GViewerData_Viewer_statistics_animeBuilder)?
              updates]) =>
      (new GViewerData_Viewer_statistics_animeBuilder()..update(updates))
          ._build();

  _$GViewerData_Viewer_statistics_anime._(
      {required this.G__typename,
      required this.count,
      required this.episodesWatched,
      required this.minutesWatched,
      required this.meanScore,
      required this.standardDeviation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GViewerData_Viewer_statistics_anime', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GViewerData_Viewer_statistics_anime', 'count');
    BuiltValueNullFieldError.checkNotNull(episodesWatched,
        r'GViewerData_Viewer_statistics_anime', 'episodesWatched');
    BuiltValueNullFieldError.checkNotNull(minutesWatched,
        r'GViewerData_Viewer_statistics_anime', 'minutesWatched');
    BuiltValueNullFieldError.checkNotNull(
        meanScore, r'GViewerData_Viewer_statistics_anime', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(standardDeviation,
        r'GViewerData_Viewer_statistics_anime', 'standardDeviation');
  }

  @override
  GViewerData_Viewer_statistics_anime rebuild(
          void Function(GViewerData_Viewer_statistics_animeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerData_Viewer_statistics_animeBuilder toBuilder() =>
      new GViewerData_Viewer_statistics_animeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerData_Viewer_statistics_anime &&
        G__typename == other.G__typename &&
        count == other.count &&
        episodesWatched == other.episodesWatched &&
        minutesWatched == other.minutesWatched &&
        meanScore == other.meanScore &&
        standardDeviation == other.standardDeviation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, episodesWatched.hashCode);
    _$hash = $jc(_$hash, minutesWatched.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, standardDeviation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GViewerData_Viewer_statistics_anime')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('episodesWatched', episodesWatched)
          ..add('minutesWatched', minutesWatched)
          ..add('meanScore', meanScore)
          ..add('standardDeviation', standardDeviation))
        .toString();
  }
}

class GViewerData_Viewer_statistics_animeBuilder
    implements
        Builder<GViewerData_Viewer_statistics_anime,
            GViewerData_Viewer_statistics_animeBuilder> {
  _$GViewerData_Viewer_statistics_anime? _$v;

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

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  double? _standardDeviation;
  double? get standardDeviation => _$this._standardDeviation;
  set standardDeviation(double? standardDeviation) =>
      _$this._standardDeviation = standardDeviation;

  GViewerData_Viewer_statistics_animeBuilder() {
    GViewerData_Viewer_statistics_anime._initializeBuilder(this);
  }

  GViewerData_Viewer_statistics_animeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _episodesWatched = $v.episodesWatched;
      _minutesWatched = $v.minutesWatched;
      _meanScore = $v.meanScore;
      _standardDeviation = $v.standardDeviation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerData_Viewer_statistics_anime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerData_Viewer_statistics_anime;
  }

  @override
  void update(
      void Function(GViewerData_Viewer_statistics_animeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerData_Viewer_statistics_anime build() => _build();

  _$GViewerData_Viewer_statistics_anime _build() {
    final _$result = _$v ??
        new _$GViewerData_Viewer_statistics_anime._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GViewerData_Viewer_statistics_anime', 'G__typename'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'GViewerData_Viewer_statistics_anime', 'count'),
            episodesWatched: BuiltValueNullFieldError.checkNotNull(
                episodesWatched,
                r'GViewerData_Viewer_statistics_anime',
                'episodesWatched'),
            minutesWatched: BuiltValueNullFieldError.checkNotNull(
                minutesWatched, r'GViewerData_Viewer_statistics_anime', 'minutesWatched'),
            meanScore: BuiltValueNullFieldError.checkNotNull(
                meanScore, r'GViewerData_Viewer_statistics_anime', 'meanScore'),
            standardDeviation: BuiltValueNullFieldError.checkNotNull(
                standardDeviation,
                r'GViewerData_Viewer_statistics_anime',
                'standardDeviation'));
    replace(_$result);
    return _$result;
  }
}

class _$GViewerData_Viewer_statistics_manga
    extends GViewerData_Viewer_statistics_manga {
  @override
  final String G__typename;
  @override
  final int count;
  @override
  final int chaptersRead;
  @override
  final int volumesRead;
  @override
  final double meanScore;
  @override
  final double standardDeviation;

  factory _$GViewerData_Viewer_statistics_manga(
          [void Function(GViewerData_Viewer_statistics_mangaBuilder)?
              updates]) =>
      (new GViewerData_Viewer_statistics_mangaBuilder()..update(updates))
          ._build();

  _$GViewerData_Viewer_statistics_manga._(
      {required this.G__typename,
      required this.count,
      required this.chaptersRead,
      required this.volumesRead,
      required this.meanScore,
      required this.standardDeviation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GViewerData_Viewer_statistics_manga', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GViewerData_Viewer_statistics_manga', 'count');
    BuiltValueNullFieldError.checkNotNull(
        chaptersRead, r'GViewerData_Viewer_statistics_manga', 'chaptersRead');
    BuiltValueNullFieldError.checkNotNull(
        volumesRead, r'GViewerData_Viewer_statistics_manga', 'volumesRead');
    BuiltValueNullFieldError.checkNotNull(
        meanScore, r'GViewerData_Viewer_statistics_manga', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(standardDeviation,
        r'GViewerData_Viewer_statistics_manga', 'standardDeviation');
  }

  @override
  GViewerData_Viewer_statistics_manga rebuild(
          void Function(GViewerData_Viewer_statistics_mangaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerData_Viewer_statistics_mangaBuilder toBuilder() =>
      new GViewerData_Viewer_statistics_mangaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerData_Viewer_statistics_manga &&
        G__typename == other.G__typename &&
        count == other.count &&
        chaptersRead == other.chaptersRead &&
        volumesRead == other.volumesRead &&
        meanScore == other.meanScore &&
        standardDeviation == other.standardDeviation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, volumesRead.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, standardDeviation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GViewerData_Viewer_statistics_manga')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('chaptersRead', chaptersRead)
          ..add('volumesRead', volumesRead)
          ..add('meanScore', meanScore)
          ..add('standardDeviation', standardDeviation))
        .toString();
  }
}

class GViewerData_Viewer_statistics_mangaBuilder
    implements
        Builder<GViewerData_Viewer_statistics_manga,
            GViewerData_Viewer_statistics_mangaBuilder> {
  _$GViewerData_Viewer_statistics_manga? _$v;

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

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  double? _standardDeviation;
  double? get standardDeviation => _$this._standardDeviation;
  set standardDeviation(double? standardDeviation) =>
      _$this._standardDeviation = standardDeviation;

  GViewerData_Viewer_statistics_mangaBuilder() {
    GViewerData_Viewer_statistics_manga._initializeBuilder(this);
  }

  GViewerData_Viewer_statistics_mangaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _chaptersRead = $v.chaptersRead;
      _volumesRead = $v.volumesRead;
      _meanScore = $v.meanScore;
      _standardDeviation = $v.standardDeviation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerData_Viewer_statistics_manga other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerData_Viewer_statistics_manga;
  }

  @override
  void update(
      void Function(GViewerData_Viewer_statistics_mangaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerData_Viewer_statistics_manga build() => _build();

  _$GViewerData_Viewer_statistics_manga _build() {
    final _$result = _$v ??
        new _$GViewerData_Viewer_statistics_manga._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GViewerData_Viewer_statistics_manga', 'G__typename'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'GViewerData_Viewer_statistics_manga', 'count'),
            chaptersRead: BuiltValueNullFieldError.checkNotNull(chaptersRead,
                r'GViewerData_Viewer_statistics_manga', 'chaptersRead'),
            volumesRead: BuiltValueNullFieldError.checkNotNull(volumesRead,
                r'GViewerData_Viewer_statistics_manga', 'volumesRead'),
            meanScore: BuiltValueNullFieldError.checkNotNull(
                meanScore, r'GViewerData_Viewer_statistics_manga', 'meanScore'),
            standardDeviation: BuiltValueNullFieldError.checkNotNull(
                standardDeviation,
                r'GViewerData_Viewer_statistics_manga',
                'standardDeviation'));
    replace(_$result);
    return _$result;
  }
}

class _$GViewerData_Viewer_options extends GViewerData_Viewer_options {
  @override
  final String G__typename;
  @override
  final bool? displayAdultContent;
  @override
  final bool? airingNotifications;
  @override
  final _i2.GUserTitleLanguage? titleLanguage;
  @override
  final _i2.GUserStaffNameLanguage? staffNameLanguage;
  @override
  final int? activityMergeTime;
  @override
  final bool? restrictMessagesToFollowing;

  factory _$GViewerData_Viewer_options(
          [void Function(GViewerData_Viewer_optionsBuilder)? updates]) =>
      (new GViewerData_Viewer_optionsBuilder()..update(updates))._build();

  _$GViewerData_Viewer_options._(
      {required this.G__typename,
      this.displayAdultContent,
      this.airingNotifications,
      this.titleLanguage,
      this.staffNameLanguage,
      this.activityMergeTime,
      this.restrictMessagesToFollowing})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GViewerData_Viewer_options', 'G__typename');
  }

  @override
  GViewerData_Viewer_options rebuild(
          void Function(GViewerData_Viewer_optionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerData_Viewer_optionsBuilder toBuilder() =>
      new GViewerData_Viewer_optionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerData_Viewer_options &&
        G__typename == other.G__typename &&
        displayAdultContent == other.displayAdultContent &&
        airingNotifications == other.airingNotifications &&
        titleLanguage == other.titleLanguage &&
        staffNameLanguage == other.staffNameLanguage &&
        activityMergeTime == other.activityMergeTime &&
        restrictMessagesToFollowing == other.restrictMessagesToFollowing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, displayAdultContent.hashCode);
    _$hash = $jc(_$hash, airingNotifications.hashCode);
    _$hash = $jc(_$hash, titleLanguage.hashCode);
    _$hash = $jc(_$hash, staffNameLanguage.hashCode);
    _$hash = $jc(_$hash, activityMergeTime.hashCode);
    _$hash = $jc(_$hash, restrictMessagesToFollowing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GViewerData_Viewer_options')
          ..add('G__typename', G__typename)
          ..add('displayAdultContent', displayAdultContent)
          ..add('airingNotifications', airingNotifications)
          ..add('titleLanguage', titleLanguage)
          ..add('staffNameLanguage', staffNameLanguage)
          ..add('activityMergeTime', activityMergeTime)
          ..add('restrictMessagesToFollowing', restrictMessagesToFollowing))
        .toString();
  }
}

class GViewerData_Viewer_optionsBuilder
    implements
        Builder<GViewerData_Viewer_options, GViewerData_Viewer_optionsBuilder> {
  _$GViewerData_Viewer_options? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _displayAdultContent;
  bool? get displayAdultContent => _$this._displayAdultContent;
  set displayAdultContent(bool? displayAdultContent) =>
      _$this._displayAdultContent = displayAdultContent;

  bool? _airingNotifications;
  bool? get airingNotifications => _$this._airingNotifications;
  set airingNotifications(bool? airingNotifications) =>
      _$this._airingNotifications = airingNotifications;

  _i2.GUserTitleLanguage? _titleLanguage;
  _i2.GUserTitleLanguage? get titleLanguage => _$this._titleLanguage;
  set titleLanguage(_i2.GUserTitleLanguage? titleLanguage) =>
      _$this._titleLanguage = titleLanguage;

  _i2.GUserStaffNameLanguage? _staffNameLanguage;
  _i2.GUserStaffNameLanguage? get staffNameLanguage =>
      _$this._staffNameLanguage;
  set staffNameLanguage(_i2.GUserStaffNameLanguage? staffNameLanguage) =>
      _$this._staffNameLanguage = staffNameLanguage;

  int? _activityMergeTime;
  int? get activityMergeTime => _$this._activityMergeTime;
  set activityMergeTime(int? activityMergeTime) =>
      _$this._activityMergeTime = activityMergeTime;

  bool? _restrictMessagesToFollowing;
  bool? get restrictMessagesToFollowing => _$this._restrictMessagesToFollowing;
  set restrictMessagesToFollowing(bool? restrictMessagesToFollowing) =>
      _$this._restrictMessagesToFollowing = restrictMessagesToFollowing;

  GViewerData_Viewer_optionsBuilder() {
    GViewerData_Viewer_options._initializeBuilder(this);
  }

  GViewerData_Viewer_optionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _displayAdultContent = $v.displayAdultContent;
      _airingNotifications = $v.airingNotifications;
      _titleLanguage = $v.titleLanguage;
      _staffNameLanguage = $v.staffNameLanguage;
      _activityMergeTime = $v.activityMergeTime;
      _restrictMessagesToFollowing = $v.restrictMessagesToFollowing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerData_Viewer_options other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerData_Viewer_options;
  }

  @override
  void update(void Function(GViewerData_Viewer_optionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerData_Viewer_options build() => _build();

  _$GViewerData_Viewer_options _build() {
    final _$result = _$v ??
        new _$GViewerData_Viewer_options._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GViewerData_Viewer_options', 'G__typename'),
            displayAdultContent: displayAdultContent,
            airingNotifications: airingNotifications,
            titleLanguage: titleLanguage,
            staffNameLanguage: staffNameLanguage,
            activityMergeTime: activityMergeTime,
            restrictMessagesToFollowing: restrictMessagesToFollowing);
    replace(_$result);
    return _$result;
  }
}

class _$GViewerData_Viewer_mediaListOptions
    extends GViewerData_Viewer_mediaListOptions {
  @override
  final String G__typename;
  @override
  final _i2.GScoreFormat? scoreFormat;
  @override
  final String? rowOrder;
  @override
  final GViewerData_Viewer_mediaListOptions_animeList? animeList;

  factory _$GViewerData_Viewer_mediaListOptions(
          [void Function(GViewerData_Viewer_mediaListOptionsBuilder)?
              updates]) =>
      (new GViewerData_Viewer_mediaListOptionsBuilder()..update(updates))
          ._build();

  _$GViewerData_Viewer_mediaListOptions._(
      {required this.G__typename,
      this.scoreFormat,
      this.rowOrder,
      this.animeList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GViewerData_Viewer_mediaListOptions', 'G__typename');
  }

  @override
  GViewerData_Viewer_mediaListOptions rebuild(
          void Function(GViewerData_Viewer_mediaListOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerData_Viewer_mediaListOptionsBuilder toBuilder() =>
      new GViewerData_Viewer_mediaListOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerData_Viewer_mediaListOptions &&
        G__typename == other.G__typename &&
        scoreFormat == other.scoreFormat &&
        rowOrder == other.rowOrder &&
        animeList == other.animeList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, scoreFormat.hashCode);
    _$hash = $jc(_$hash, rowOrder.hashCode);
    _$hash = $jc(_$hash, animeList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GViewerData_Viewer_mediaListOptions')
          ..add('G__typename', G__typename)
          ..add('scoreFormat', scoreFormat)
          ..add('rowOrder', rowOrder)
          ..add('animeList', animeList))
        .toString();
  }
}

class GViewerData_Viewer_mediaListOptionsBuilder
    implements
        Builder<GViewerData_Viewer_mediaListOptions,
            GViewerData_Viewer_mediaListOptionsBuilder> {
  _$GViewerData_Viewer_mediaListOptions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GScoreFormat? _scoreFormat;
  _i2.GScoreFormat? get scoreFormat => _$this._scoreFormat;
  set scoreFormat(_i2.GScoreFormat? scoreFormat) =>
      _$this._scoreFormat = scoreFormat;

  String? _rowOrder;
  String? get rowOrder => _$this._rowOrder;
  set rowOrder(String? rowOrder) => _$this._rowOrder = rowOrder;

  GViewerData_Viewer_mediaListOptions_animeListBuilder? _animeList;
  GViewerData_Viewer_mediaListOptions_animeListBuilder get animeList =>
      _$this._animeList ??=
          new GViewerData_Viewer_mediaListOptions_animeListBuilder();
  set animeList(
          GViewerData_Viewer_mediaListOptions_animeListBuilder? animeList) =>
      _$this._animeList = animeList;

  GViewerData_Viewer_mediaListOptionsBuilder() {
    GViewerData_Viewer_mediaListOptions._initializeBuilder(this);
  }

  GViewerData_Viewer_mediaListOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _scoreFormat = $v.scoreFormat;
      _rowOrder = $v.rowOrder;
      _animeList = $v.animeList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerData_Viewer_mediaListOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerData_Viewer_mediaListOptions;
  }

  @override
  void update(
      void Function(GViewerData_Viewer_mediaListOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerData_Viewer_mediaListOptions build() => _build();

  _$GViewerData_Viewer_mediaListOptions _build() {
    _$GViewerData_Viewer_mediaListOptions _$result;
    try {
      _$result = _$v ??
          new _$GViewerData_Viewer_mediaListOptions._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GViewerData_Viewer_mediaListOptions', 'G__typename'),
              scoreFormat: scoreFormat,
              rowOrder: rowOrder,
              animeList: _animeList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'animeList';
        _animeList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerData_Viewer_mediaListOptions',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GViewerData_Viewer_mediaListOptions_animeList
    extends GViewerData_Viewer_mediaListOptions_animeList {
  @override
  final String G__typename;
  @override
  final BuiltList<String?>? sectionOrder;

  factory _$GViewerData_Viewer_mediaListOptions_animeList(
          [void Function(GViewerData_Viewer_mediaListOptions_animeListBuilder)?
              updates]) =>
      (new GViewerData_Viewer_mediaListOptions_animeListBuilder()
            ..update(updates))
          ._build();

  _$GViewerData_Viewer_mediaListOptions_animeList._(
      {required this.G__typename, this.sectionOrder})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GViewerData_Viewer_mediaListOptions_animeList', 'G__typename');
  }

  @override
  GViewerData_Viewer_mediaListOptions_animeList rebuild(
          void Function(GViewerData_Viewer_mediaListOptions_animeListBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerData_Viewer_mediaListOptions_animeListBuilder toBuilder() =>
      new GViewerData_Viewer_mediaListOptions_animeListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerData_Viewer_mediaListOptions_animeList &&
        G__typename == other.G__typename &&
        sectionOrder == other.sectionOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sectionOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GViewerData_Viewer_mediaListOptions_animeList')
          ..add('G__typename', G__typename)
          ..add('sectionOrder', sectionOrder))
        .toString();
  }
}

class GViewerData_Viewer_mediaListOptions_animeListBuilder
    implements
        Builder<GViewerData_Viewer_mediaListOptions_animeList,
            GViewerData_Viewer_mediaListOptions_animeListBuilder> {
  _$GViewerData_Viewer_mediaListOptions_animeList? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<String?>? _sectionOrder;
  ListBuilder<String?> get sectionOrder =>
      _$this._sectionOrder ??= new ListBuilder<String?>();
  set sectionOrder(ListBuilder<String?>? sectionOrder) =>
      _$this._sectionOrder = sectionOrder;

  GViewerData_Viewer_mediaListOptions_animeListBuilder() {
    GViewerData_Viewer_mediaListOptions_animeList._initializeBuilder(this);
  }

  GViewerData_Viewer_mediaListOptions_animeListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sectionOrder = $v.sectionOrder?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GViewerData_Viewer_mediaListOptions_animeList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerData_Viewer_mediaListOptions_animeList;
  }

  @override
  void update(
      void Function(GViewerData_Viewer_mediaListOptions_animeListBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerData_Viewer_mediaListOptions_animeList build() => _build();

  _$GViewerData_Viewer_mediaListOptions_animeList _build() {
    _$GViewerData_Viewer_mediaListOptions_animeList _$result;
    try {
      _$result = _$v ??
          new _$GViewerData_Viewer_mediaListOptions_animeList._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GViewerData_Viewer_mediaListOptions_animeList',
                  'G__typename'),
              sectionOrder: _sectionOrder?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sectionOrder';
        _sectionOrder?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GViewerData_Viewer_mediaListOptions_animeList',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationCountData extends GNotificationCountData {
  @override
  final String G__typename;
  @override
  final GNotificationCountData_Viewer? Viewer;

  factory _$GNotificationCountData(
          [void Function(GNotificationCountDataBuilder)? updates]) =>
      (new GNotificationCountDataBuilder()..update(updates))._build();

  _$GNotificationCountData._({required this.G__typename, this.Viewer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNotificationCountData', 'G__typename');
  }

  @override
  GNotificationCountData rebuild(
          void Function(GNotificationCountDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationCountDataBuilder toBuilder() =>
      new GNotificationCountDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationCountData &&
        G__typename == other.G__typename &&
        Viewer == other.Viewer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Viewer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNotificationCountData')
          ..add('G__typename', G__typename)
          ..add('Viewer', Viewer))
        .toString();
  }
}

class GNotificationCountDataBuilder
    implements Builder<GNotificationCountData, GNotificationCountDataBuilder> {
  _$GNotificationCountData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GNotificationCountData_ViewerBuilder? _Viewer;
  GNotificationCountData_ViewerBuilder get Viewer =>
      _$this._Viewer ??= new GNotificationCountData_ViewerBuilder();
  set Viewer(GNotificationCountData_ViewerBuilder? Viewer) =>
      _$this._Viewer = Viewer;

  GNotificationCountDataBuilder() {
    GNotificationCountData._initializeBuilder(this);
  }

  GNotificationCountDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Viewer = $v.Viewer?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationCountData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationCountData;
  }

  @override
  void update(void Function(GNotificationCountDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationCountData build() => _build();

  _$GNotificationCountData _build() {
    _$GNotificationCountData _$result;
    try {
      _$result = _$v ??
          new _$GNotificationCountData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GNotificationCountData', 'G__typename'),
              Viewer: _Viewer?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Viewer';
        _Viewer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNotificationCountData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationCountData_Viewer extends GNotificationCountData_Viewer {
  @override
  final String G__typename;
  @override
  final int? unreadNotificationCount;
  @override
  final GNotificationCountData_Viewer_options? options;

  factory _$GNotificationCountData_Viewer(
          [void Function(GNotificationCountData_ViewerBuilder)? updates]) =>
      (new GNotificationCountData_ViewerBuilder()..update(updates))._build();

  _$GNotificationCountData_Viewer._(
      {required this.G__typename, this.unreadNotificationCount, this.options})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNotificationCountData_Viewer', 'G__typename');
  }

  @override
  GNotificationCountData_Viewer rebuild(
          void Function(GNotificationCountData_ViewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationCountData_ViewerBuilder toBuilder() =>
      new GNotificationCountData_ViewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationCountData_Viewer &&
        G__typename == other.G__typename &&
        unreadNotificationCount == other.unreadNotificationCount &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, unreadNotificationCount.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNotificationCountData_Viewer')
          ..add('G__typename', G__typename)
          ..add('unreadNotificationCount', unreadNotificationCount)
          ..add('options', options))
        .toString();
  }
}

class GNotificationCountData_ViewerBuilder
    implements
        Builder<GNotificationCountData_Viewer,
            GNotificationCountData_ViewerBuilder> {
  _$GNotificationCountData_Viewer? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _unreadNotificationCount;
  int? get unreadNotificationCount => _$this._unreadNotificationCount;
  set unreadNotificationCount(int? unreadNotificationCount) =>
      _$this._unreadNotificationCount = unreadNotificationCount;

  GNotificationCountData_Viewer_optionsBuilder? _options;
  GNotificationCountData_Viewer_optionsBuilder get options =>
      _$this._options ??= new GNotificationCountData_Viewer_optionsBuilder();
  set options(GNotificationCountData_Viewer_optionsBuilder? options) =>
      _$this._options = options;

  GNotificationCountData_ViewerBuilder() {
    GNotificationCountData_Viewer._initializeBuilder(this);
  }

  GNotificationCountData_ViewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _unreadNotificationCount = $v.unreadNotificationCount;
      _options = $v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationCountData_Viewer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationCountData_Viewer;
  }

  @override
  void update(void Function(GNotificationCountData_ViewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationCountData_Viewer build() => _build();

  _$GNotificationCountData_Viewer _build() {
    _$GNotificationCountData_Viewer _$result;
    try {
      _$result = _$v ??
          new _$GNotificationCountData_Viewer._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GNotificationCountData_Viewer', 'G__typename'),
              unreadNotificationCount: unreadNotificationCount,
              options: _options?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNotificationCountData_Viewer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationCountData_Viewer_options
    extends GNotificationCountData_Viewer_options {
  @override
  final String G__typename;
  @override
  final bool? airingNotifications;

  factory _$GNotificationCountData_Viewer_options(
          [void Function(GNotificationCountData_Viewer_optionsBuilder)?
              updates]) =>
      (new GNotificationCountData_Viewer_optionsBuilder()..update(updates))
          ._build();

  _$GNotificationCountData_Viewer_options._(
      {required this.G__typename, this.airingNotifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNotificationCountData_Viewer_options', 'G__typename');
  }

  @override
  GNotificationCountData_Viewer_options rebuild(
          void Function(GNotificationCountData_Viewer_optionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationCountData_Viewer_optionsBuilder toBuilder() =>
      new GNotificationCountData_Viewer_optionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationCountData_Viewer_options &&
        G__typename == other.G__typename &&
        airingNotifications == other.airingNotifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, airingNotifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GNotificationCountData_Viewer_options')
          ..add('G__typename', G__typename)
          ..add('airingNotifications', airingNotifications))
        .toString();
  }
}

class GNotificationCountData_Viewer_optionsBuilder
    implements
        Builder<GNotificationCountData_Viewer_options,
            GNotificationCountData_Viewer_optionsBuilder> {
  _$GNotificationCountData_Viewer_options? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _airingNotifications;
  bool? get airingNotifications => _$this._airingNotifications;
  set airingNotifications(bool? airingNotifications) =>
      _$this._airingNotifications = airingNotifications;

  GNotificationCountData_Viewer_optionsBuilder() {
    GNotificationCountData_Viewer_options._initializeBuilder(this);
  }

  GNotificationCountData_Viewer_optionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _airingNotifications = $v.airingNotifications;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNotificationCountData_Viewer_options other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationCountData_Viewer_options;
  }

  @override
  void update(
      void Function(GNotificationCountData_Viewer_optionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationCountData_Viewer_options build() => _build();

  _$GNotificationCountData_Viewer_options _build() {
    final _$result = _$v ??
        new _$GNotificationCountData_Viewer_options._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GNotificationCountData_Viewer_options', 'G__typename'),
            airingNotifications: airingNotifications);
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData extends GUpdateUserData {
  @override
  final String G__typename;
  @override
  final GUpdateUserData_UpdateUser? UpdateUser;

  factory _$GUpdateUserData([void Function(GUpdateUserDataBuilder)? updates]) =>
      (new GUpdateUserDataBuilder()..update(updates))._build();

  _$GUpdateUserData._({required this.G__typename, this.UpdateUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserData', 'G__typename');
  }

  @override
  GUpdateUserData rebuild(void Function(GUpdateUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserDataBuilder toBuilder() =>
      new GUpdateUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData &&
        G__typename == other.G__typename &&
        UpdateUser == other.UpdateUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, UpdateUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserData')
          ..add('G__typename', G__typename)
          ..add('UpdateUser', UpdateUser))
        .toString();
  }
}

class GUpdateUserDataBuilder
    implements Builder<GUpdateUserData, GUpdateUserDataBuilder> {
  _$GUpdateUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateUserData_UpdateUserBuilder? _UpdateUser;
  GUpdateUserData_UpdateUserBuilder get UpdateUser =>
      _$this._UpdateUser ??= new GUpdateUserData_UpdateUserBuilder();
  set UpdateUser(GUpdateUserData_UpdateUserBuilder? UpdateUser) =>
      _$this._UpdateUser = UpdateUser;

  GUpdateUserDataBuilder() {
    GUpdateUserData._initializeBuilder(this);
  }

  GUpdateUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _UpdateUser = $v.UpdateUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData;
  }

  @override
  void update(void Function(GUpdateUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData build() => _build();

  _$GUpdateUserData _build() {
    _$GUpdateUserData _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUpdateUserData', 'G__typename'),
              UpdateUser: _UpdateUser?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'UpdateUser';
        _UpdateUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData_UpdateUser extends GUpdateUserData_UpdateUser {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final String? about;
  @override
  final String? bannerImage;
  @override
  final int? unreadNotificationCount;
  @override
  final GUpdateUserData_UpdateUser_avatar? avatar;
  @override
  final GUpdateUserData_UpdateUser_statistics? statistics;
  @override
  final GUpdateUserData_UpdateUser_options? options;
  @override
  final GUpdateUserData_UpdateUser_mediaListOptions? mediaListOptions;

  factory _$GUpdateUserData_UpdateUser(
          [void Function(GUpdateUserData_UpdateUserBuilder)? updates]) =>
      (new GUpdateUserData_UpdateUserBuilder()..update(updates))._build();

  _$GUpdateUserData_UpdateUser._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.about,
      this.bannerImage,
      this.unreadNotificationCount,
      this.avatar,
      this.statistics,
      this.options,
      this.mediaListOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserData_UpdateUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUpdateUserData_UpdateUser', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GUpdateUserData_UpdateUser', 'name');
  }

  @override
  GUpdateUserData_UpdateUser rebuild(
          void Function(GUpdateUserData_UpdateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserData_UpdateUserBuilder toBuilder() =>
      new GUpdateUserData_UpdateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData_UpdateUser &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        about == other.about &&
        bannerImage == other.bannerImage &&
        unreadNotificationCount == other.unreadNotificationCount &&
        avatar == other.avatar &&
        statistics == other.statistics &&
        options == other.options &&
        mediaListOptions == other.mediaListOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, about.hashCode);
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jc(_$hash, unreadNotificationCount.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, statistics.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, mediaListOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserData_UpdateUser')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('about', about)
          ..add('bannerImage', bannerImage)
          ..add('unreadNotificationCount', unreadNotificationCount)
          ..add('avatar', avatar)
          ..add('statistics', statistics)
          ..add('options', options)
          ..add('mediaListOptions', mediaListOptions))
        .toString();
  }
}

class GUpdateUserData_UpdateUserBuilder
    implements
        Builder<GUpdateUserData_UpdateUser, GUpdateUserData_UpdateUserBuilder> {
  _$GUpdateUserData_UpdateUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _about;
  String? get about => _$this._about;
  set about(String? about) => _$this._about = about;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  int? _unreadNotificationCount;
  int? get unreadNotificationCount => _$this._unreadNotificationCount;
  set unreadNotificationCount(int? unreadNotificationCount) =>
      _$this._unreadNotificationCount = unreadNotificationCount;

  GUpdateUserData_UpdateUser_avatarBuilder? _avatar;
  GUpdateUserData_UpdateUser_avatarBuilder get avatar =>
      _$this._avatar ??= new GUpdateUserData_UpdateUser_avatarBuilder();
  set avatar(GUpdateUserData_UpdateUser_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GUpdateUserData_UpdateUser_statisticsBuilder? _statistics;
  GUpdateUserData_UpdateUser_statisticsBuilder get statistics =>
      _$this._statistics ??= new GUpdateUserData_UpdateUser_statisticsBuilder();
  set statistics(GUpdateUserData_UpdateUser_statisticsBuilder? statistics) =>
      _$this._statistics = statistics;

  GUpdateUserData_UpdateUser_optionsBuilder? _options;
  GUpdateUserData_UpdateUser_optionsBuilder get options =>
      _$this._options ??= new GUpdateUserData_UpdateUser_optionsBuilder();
  set options(GUpdateUserData_UpdateUser_optionsBuilder? options) =>
      _$this._options = options;

  GUpdateUserData_UpdateUser_mediaListOptionsBuilder? _mediaListOptions;
  GUpdateUserData_UpdateUser_mediaListOptionsBuilder get mediaListOptions =>
      _$this._mediaListOptions ??=
          new GUpdateUserData_UpdateUser_mediaListOptionsBuilder();
  set mediaListOptions(
          GUpdateUserData_UpdateUser_mediaListOptionsBuilder?
              mediaListOptions) =>
      _$this._mediaListOptions = mediaListOptions;

  GUpdateUserData_UpdateUserBuilder() {
    GUpdateUserData_UpdateUser._initializeBuilder(this);
  }

  GUpdateUserData_UpdateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _about = $v.about;
      _bannerImage = $v.bannerImage;
      _unreadNotificationCount = $v.unreadNotificationCount;
      _avatar = $v.avatar?.toBuilder();
      _statistics = $v.statistics?.toBuilder();
      _options = $v.options?.toBuilder();
      _mediaListOptions = $v.mediaListOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData_UpdateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData_UpdateUser;
  }

  @override
  void update(void Function(GUpdateUserData_UpdateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData_UpdateUser build() => _build();

  _$GUpdateUserData_UpdateUser _build() {
    _$GUpdateUserData_UpdateUser _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserData_UpdateUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUpdateUserData_UpdateUser', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUpdateUserData_UpdateUser', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GUpdateUserData_UpdateUser', 'name'),
              about: about,
              bannerImage: bannerImage,
              unreadNotificationCount: unreadNotificationCount,
              avatar: _avatar?.build(),
              statistics: _statistics?.build(),
              options: _options?.build(),
              mediaListOptions: _mediaListOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();
        _$failedField = 'statistics';
        _statistics?.build();
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'mediaListOptions';
        _mediaListOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserData_UpdateUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData_UpdateUser_avatar
    extends GUpdateUserData_UpdateUser_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GUpdateUserData_UpdateUser_avatar(
          [void Function(GUpdateUserData_UpdateUser_avatarBuilder)? updates]) =>
      (new GUpdateUserData_UpdateUser_avatarBuilder()..update(updates))
          ._build();

  _$GUpdateUserData_UpdateUser_avatar._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserData_UpdateUser_avatar', 'G__typename');
  }

  @override
  GUpdateUserData_UpdateUser_avatar rebuild(
          void Function(GUpdateUserData_UpdateUser_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserData_UpdateUser_avatarBuilder toBuilder() =>
      new GUpdateUserData_UpdateUser_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData_UpdateUser_avatar &&
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
    return (newBuiltValueToStringHelper(r'GUpdateUserData_UpdateUser_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GUpdateUserData_UpdateUser_avatarBuilder
    implements
        Builder<GUpdateUserData_UpdateUser_avatar,
            GUpdateUserData_UpdateUser_avatarBuilder> {
  _$GUpdateUserData_UpdateUser_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GUpdateUserData_UpdateUser_avatarBuilder() {
    GUpdateUserData_UpdateUser_avatar._initializeBuilder(this);
  }

  GUpdateUserData_UpdateUser_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData_UpdateUser_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData_UpdateUser_avatar;
  }

  @override
  void update(
      void Function(GUpdateUserData_UpdateUser_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData_UpdateUser_avatar build() => _build();

  _$GUpdateUserData_UpdateUser_avatar _build() {
    final _$result = _$v ??
        new _$GUpdateUserData_UpdateUser_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUpdateUserData_UpdateUser_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData_UpdateUser_statistics
    extends GUpdateUserData_UpdateUser_statistics {
  @override
  final String G__typename;
  @override
  final GUpdateUserData_UpdateUser_statistics_anime? anime;
  @override
  final GUpdateUserData_UpdateUser_statistics_manga? manga;

  factory _$GUpdateUserData_UpdateUser_statistics(
          [void Function(GUpdateUserData_UpdateUser_statisticsBuilder)?
              updates]) =>
      (new GUpdateUserData_UpdateUser_statisticsBuilder()..update(updates))
          ._build();

  _$GUpdateUserData_UpdateUser_statistics._(
      {required this.G__typename, this.anime, this.manga})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserData_UpdateUser_statistics', 'G__typename');
  }

  @override
  GUpdateUserData_UpdateUser_statistics rebuild(
          void Function(GUpdateUserData_UpdateUser_statisticsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserData_UpdateUser_statisticsBuilder toBuilder() =>
      new GUpdateUserData_UpdateUser_statisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData_UpdateUser_statistics &&
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
    return (newBuiltValueToStringHelper(
            r'GUpdateUserData_UpdateUser_statistics')
          ..add('G__typename', G__typename)
          ..add('anime', anime)
          ..add('manga', manga))
        .toString();
  }
}

class GUpdateUserData_UpdateUser_statisticsBuilder
    implements
        Builder<GUpdateUserData_UpdateUser_statistics,
            GUpdateUserData_UpdateUser_statisticsBuilder> {
  _$GUpdateUserData_UpdateUser_statistics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateUserData_UpdateUser_statistics_animeBuilder? _anime;
  GUpdateUserData_UpdateUser_statistics_animeBuilder get anime =>
      _$this._anime ??=
          new GUpdateUserData_UpdateUser_statistics_animeBuilder();
  set anime(GUpdateUserData_UpdateUser_statistics_animeBuilder? anime) =>
      _$this._anime = anime;

  GUpdateUserData_UpdateUser_statistics_mangaBuilder? _manga;
  GUpdateUserData_UpdateUser_statistics_mangaBuilder get manga =>
      _$this._manga ??=
          new GUpdateUserData_UpdateUser_statistics_mangaBuilder();
  set manga(GUpdateUserData_UpdateUser_statistics_mangaBuilder? manga) =>
      _$this._manga = manga;

  GUpdateUserData_UpdateUser_statisticsBuilder() {
    GUpdateUserData_UpdateUser_statistics._initializeBuilder(this);
  }

  GUpdateUserData_UpdateUser_statisticsBuilder get _$this {
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
  void replace(GUpdateUserData_UpdateUser_statistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData_UpdateUser_statistics;
  }

  @override
  void update(
      void Function(GUpdateUserData_UpdateUser_statisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData_UpdateUser_statistics build() => _build();

  _$GUpdateUserData_UpdateUser_statistics _build() {
    _$GUpdateUserData_UpdateUser_statistics _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserData_UpdateUser_statistics._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUpdateUserData_UpdateUser_statistics', 'G__typename'),
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
            r'GUpdateUserData_UpdateUser_statistics',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData_UpdateUser_statistics_anime
    extends GUpdateUserData_UpdateUser_statistics_anime {
  @override
  final String G__typename;
  @override
  final int count;
  @override
  final int episodesWatched;
  @override
  final int minutesWatched;
  @override
  final double meanScore;
  @override
  final double standardDeviation;

  factory _$GUpdateUserData_UpdateUser_statistics_anime(
          [void Function(GUpdateUserData_UpdateUser_statistics_animeBuilder)?
              updates]) =>
      (new GUpdateUserData_UpdateUser_statistics_animeBuilder()
            ..update(updates))
          ._build();

  _$GUpdateUserData_UpdateUser_statistics_anime._(
      {required this.G__typename,
      required this.count,
      required this.episodesWatched,
      required this.minutesWatched,
      required this.meanScore,
      required this.standardDeviation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUpdateUserData_UpdateUser_statistics_anime', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GUpdateUserData_UpdateUser_statistics_anime', 'count');
    BuiltValueNullFieldError.checkNotNull(episodesWatched,
        r'GUpdateUserData_UpdateUser_statistics_anime', 'episodesWatched');
    BuiltValueNullFieldError.checkNotNull(minutesWatched,
        r'GUpdateUserData_UpdateUser_statistics_anime', 'minutesWatched');
    BuiltValueNullFieldError.checkNotNull(
        meanScore, r'GUpdateUserData_UpdateUser_statistics_anime', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(standardDeviation,
        r'GUpdateUserData_UpdateUser_statistics_anime', 'standardDeviation');
  }

  @override
  GUpdateUserData_UpdateUser_statistics_anime rebuild(
          void Function(GUpdateUserData_UpdateUser_statistics_animeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserData_UpdateUser_statistics_animeBuilder toBuilder() =>
      new GUpdateUserData_UpdateUser_statistics_animeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData_UpdateUser_statistics_anime &&
        G__typename == other.G__typename &&
        count == other.count &&
        episodesWatched == other.episodesWatched &&
        minutesWatched == other.minutesWatched &&
        meanScore == other.meanScore &&
        standardDeviation == other.standardDeviation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, episodesWatched.hashCode);
    _$hash = $jc(_$hash, minutesWatched.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, standardDeviation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUpdateUserData_UpdateUser_statistics_anime')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('episodesWatched', episodesWatched)
          ..add('minutesWatched', minutesWatched)
          ..add('meanScore', meanScore)
          ..add('standardDeviation', standardDeviation))
        .toString();
  }
}

class GUpdateUserData_UpdateUser_statistics_animeBuilder
    implements
        Builder<GUpdateUserData_UpdateUser_statistics_anime,
            GUpdateUserData_UpdateUser_statistics_animeBuilder> {
  _$GUpdateUserData_UpdateUser_statistics_anime? _$v;

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

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  double? _standardDeviation;
  double? get standardDeviation => _$this._standardDeviation;
  set standardDeviation(double? standardDeviation) =>
      _$this._standardDeviation = standardDeviation;

  GUpdateUserData_UpdateUser_statistics_animeBuilder() {
    GUpdateUserData_UpdateUser_statistics_anime._initializeBuilder(this);
  }

  GUpdateUserData_UpdateUser_statistics_animeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _episodesWatched = $v.episodesWatched;
      _minutesWatched = $v.minutesWatched;
      _meanScore = $v.meanScore;
      _standardDeviation = $v.standardDeviation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData_UpdateUser_statistics_anime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData_UpdateUser_statistics_anime;
  }

  @override
  void update(
      void Function(GUpdateUserData_UpdateUser_statistics_animeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData_UpdateUser_statistics_anime build() => _build();

  _$GUpdateUserData_UpdateUser_statistics_anime _build() {
    final _$result = _$v ??
        new _$GUpdateUserData_UpdateUser_statistics_anime._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUpdateUserData_UpdateUser_statistics_anime', 'G__typename'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'GUpdateUserData_UpdateUser_statistics_anime', 'count'),
            episodesWatched: BuiltValueNullFieldError.checkNotNull(
                episodesWatched,
                r'GUpdateUserData_UpdateUser_statistics_anime',
                'episodesWatched'),
            minutesWatched: BuiltValueNullFieldError.checkNotNull(
                minutesWatched, r'GUpdateUserData_UpdateUser_statistics_anime', 'minutesWatched'),
            meanScore: BuiltValueNullFieldError.checkNotNull(
                meanScore, r'GUpdateUserData_UpdateUser_statistics_anime', 'meanScore'),
            standardDeviation: BuiltValueNullFieldError.checkNotNull(
                standardDeviation,
                r'GUpdateUserData_UpdateUser_statistics_anime',
                'standardDeviation'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData_UpdateUser_statistics_manga
    extends GUpdateUserData_UpdateUser_statistics_manga {
  @override
  final String G__typename;
  @override
  final int count;
  @override
  final int chaptersRead;
  @override
  final int volumesRead;
  @override
  final double meanScore;
  @override
  final double standardDeviation;

  factory _$GUpdateUserData_UpdateUser_statistics_manga(
          [void Function(GUpdateUserData_UpdateUser_statistics_mangaBuilder)?
              updates]) =>
      (new GUpdateUserData_UpdateUser_statistics_mangaBuilder()
            ..update(updates))
          ._build();

  _$GUpdateUserData_UpdateUser_statistics_manga._(
      {required this.G__typename,
      required this.count,
      required this.chaptersRead,
      required this.volumesRead,
      required this.meanScore,
      required this.standardDeviation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUpdateUserData_UpdateUser_statistics_manga', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GUpdateUserData_UpdateUser_statistics_manga', 'count');
    BuiltValueNullFieldError.checkNotNull(chaptersRead,
        r'GUpdateUserData_UpdateUser_statistics_manga', 'chaptersRead');
    BuiltValueNullFieldError.checkNotNull(volumesRead,
        r'GUpdateUserData_UpdateUser_statistics_manga', 'volumesRead');
    BuiltValueNullFieldError.checkNotNull(
        meanScore, r'GUpdateUserData_UpdateUser_statistics_manga', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(standardDeviation,
        r'GUpdateUserData_UpdateUser_statistics_manga', 'standardDeviation');
  }

  @override
  GUpdateUserData_UpdateUser_statistics_manga rebuild(
          void Function(GUpdateUserData_UpdateUser_statistics_mangaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserData_UpdateUser_statistics_mangaBuilder toBuilder() =>
      new GUpdateUserData_UpdateUser_statistics_mangaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData_UpdateUser_statistics_manga &&
        G__typename == other.G__typename &&
        count == other.count &&
        chaptersRead == other.chaptersRead &&
        volumesRead == other.volumesRead &&
        meanScore == other.meanScore &&
        standardDeviation == other.standardDeviation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, volumesRead.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, standardDeviation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUpdateUserData_UpdateUser_statistics_manga')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('chaptersRead', chaptersRead)
          ..add('volumesRead', volumesRead)
          ..add('meanScore', meanScore)
          ..add('standardDeviation', standardDeviation))
        .toString();
  }
}

class GUpdateUserData_UpdateUser_statistics_mangaBuilder
    implements
        Builder<GUpdateUserData_UpdateUser_statistics_manga,
            GUpdateUserData_UpdateUser_statistics_mangaBuilder> {
  _$GUpdateUserData_UpdateUser_statistics_manga? _$v;

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

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  double? _standardDeviation;
  double? get standardDeviation => _$this._standardDeviation;
  set standardDeviation(double? standardDeviation) =>
      _$this._standardDeviation = standardDeviation;

  GUpdateUserData_UpdateUser_statistics_mangaBuilder() {
    GUpdateUserData_UpdateUser_statistics_manga._initializeBuilder(this);
  }

  GUpdateUserData_UpdateUser_statistics_mangaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _chaptersRead = $v.chaptersRead;
      _volumesRead = $v.volumesRead;
      _meanScore = $v.meanScore;
      _standardDeviation = $v.standardDeviation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData_UpdateUser_statistics_manga other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData_UpdateUser_statistics_manga;
  }

  @override
  void update(
      void Function(GUpdateUserData_UpdateUser_statistics_mangaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData_UpdateUser_statistics_manga build() => _build();

  _$GUpdateUserData_UpdateUser_statistics_manga _build() {
    final _$result = _$v ??
        new _$GUpdateUserData_UpdateUser_statistics_manga._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUpdateUserData_UpdateUser_statistics_manga', 'G__typename'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'GUpdateUserData_UpdateUser_statistics_manga', 'count'),
            chaptersRead: BuiltValueNullFieldError.checkNotNull(chaptersRead,
                r'GUpdateUserData_UpdateUser_statistics_manga', 'chaptersRead'),
            volumesRead: BuiltValueNullFieldError.checkNotNull(
                volumesRead, r'GUpdateUserData_UpdateUser_statistics_manga', 'volumesRead'),
            meanScore: BuiltValueNullFieldError.checkNotNull(
                meanScore, r'GUpdateUserData_UpdateUser_statistics_manga', 'meanScore'),
            standardDeviation: BuiltValueNullFieldError.checkNotNull(
                standardDeviation,
                r'GUpdateUserData_UpdateUser_statistics_manga',
                'standardDeviation'));
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData_UpdateUser_options
    extends GUpdateUserData_UpdateUser_options {
  @override
  final String G__typename;
  @override
  final bool? displayAdultContent;
  @override
  final bool? airingNotifications;
  @override
  final _i2.GUserTitleLanguage? titleLanguage;
  @override
  final _i2.GUserStaffNameLanguage? staffNameLanguage;
  @override
  final int? activityMergeTime;
  @override
  final bool? restrictMessagesToFollowing;

  factory _$GUpdateUserData_UpdateUser_options(
          [void Function(GUpdateUserData_UpdateUser_optionsBuilder)?
              updates]) =>
      (new GUpdateUserData_UpdateUser_optionsBuilder()..update(updates))
          ._build();

  _$GUpdateUserData_UpdateUser_options._(
      {required this.G__typename,
      this.displayAdultContent,
      this.airingNotifications,
      this.titleLanguage,
      this.staffNameLanguage,
      this.activityMergeTime,
      this.restrictMessagesToFollowing})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserData_UpdateUser_options', 'G__typename');
  }

  @override
  GUpdateUserData_UpdateUser_options rebuild(
          void Function(GUpdateUserData_UpdateUser_optionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserData_UpdateUser_optionsBuilder toBuilder() =>
      new GUpdateUserData_UpdateUser_optionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData_UpdateUser_options &&
        G__typename == other.G__typename &&
        displayAdultContent == other.displayAdultContent &&
        airingNotifications == other.airingNotifications &&
        titleLanguage == other.titleLanguage &&
        staffNameLanguage == other.staffNameLanguage &&
        activityMergeTime == other.activityMergeTime &&
        restrictMessagesToFollowing == other.restrictMessagesToFollowing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, displayAdultContent.hashCode);
    _$hash = $jc(_$hash, airingNotifications.hashCode);
    _$hash = $jc(_$hash, titleLanguage.hashCode);
    _$hash = $jc(_$hash, staffNameLanguage.hashCode);
    _$hash = $jc(_$hash, activityMergeTime.hashCode);
    _$hash = $jc(_$hash, restrictMessagesToFollowing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserData_UpdateUser_options')
          ..add('G__typename', G__typename)
          ..add('displayAdultContent', displayAdultContent)
          ..add('airingNotifications', airingNotifications)
          ..add('titleLanguage', titleLanguage)
          ..add('staffNameLanguage', staffNameLanguage)
          ..add('activityMergeTime', activityMergeTime)
          ..add('restrictMessagesToFollowing', restrictMessagesToFollowing))
        .toString();
  }
}

class GUpdateUserData_UpdateUser_optionsBuilder
    implements
        Builder<GUpdateUserData_UpdateUser_options,
            GUpdateUserData_UpdateUser_optionsBuilder> {
  _$GUpdateUserData_UpdateUser_options? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _displayAdultContent;
  bool? get displayAdultContent => _$this._displayAdultContent;
  set displayAdultContent(bool? displayAdultContent) =>
      _$this._displayAdultContent = displayAdultContent;

  bool? _airingNotifications;
  bool? get airingNotifications => _$this._airingNotifications;
  set airingNotifications(bool? airingNotifications) =>
      _$this._airingNotifications = airingNotifications;

  _i2.GUserTitleLanguage? _titleLanguage;
  _i2.GUserTitleLanguage? get titleLanguage => _$this._titleLanguage;
  set titleLanguage(_i2.GUserTitleLanguage? titleLanguage) =>
      _$this._titleLanguage = titleLanguage;

  _i2.GUserStaffNameLanguage? _staffNameLanguage;
  _i2.GUserStaffNameLanguage? get staffNameLanguage =>
      _$this._staffNameLanguage;
  set staffNameLanguage(_i2.GUserStaffNameLanguage? staffNameLanguage) =>
      _$this._staffNameLanguage = staffNameLanguage;

  int? _activityMergeTime;
  int? get activityMergeTime => _$this._activityMergeTime;
  set activityMergeTime(int? activityMergeTime) =>
      _$this._activityMergeTime = activityMergeTime;

  bool? _restrictMessagesToFollowing;
  bool? get restrictMessagesToFollowing => _$this._restrictMessagesToFollowing;
  set restrictMessagesToFollowing(bool? restrictMessagesToFollowing) =>
      _$this._restrictMessagesToFollowing = restrictMessagesToFollowing;

  GUpdateUserData_UpdateUser_optionsBuilder() {
    GUpdateUserData_UpdateUser_options._initializeBuilder(this);
  }

  GUpdateUserData_UpdateUser_optionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _displayAdultContent = $v.displayAdultContent;
      _airingNotifications = $v.airingNotifications;
      _titleLanguage = $v.titleLanguage;
      _staffNameLanguage = $v.staffNameLanguage;
      _activityMergeTime = $v.activityMergeTime;
      _restrictMessagesToFollowing = $v.restrictMessagesToFollowing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData_UpdateUser_options other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData_UpdateUser_options;
  }

  @override
  void update(
      void Function(GUpdateUserData_UpdateUser_optionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData_UpdateUser_options build() => _build();

  _$GUpdateUserData_UpdateUser_options _build() {
    final _$result = _$v ??
        new _$GUpdateUserData_UpdateUser_options._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GUpdateUserData_UpdateUser_options', 'G__typename'),
            displayAdultContent: displayAdultContent,
            airingNotifications: airingNotifications,
            titleLanguage: titleLanguage,
            staffNameLanguage: staffNameLanguage,
            activityMergeTime: activityMergeTime,
            restrictMessagesToFollowing: restrictMessagesToFollowing);
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData_UpdateUser_mediaListOptions
    extends GUpdateUserData_UpdateUser_mediaListOptions {
  @override
  final String G__typename;
  @override
  final _i2.GScoreFormat? scoreFormat;
  @override
  final String? rowOrder;
  @override
  final GUpdateUserData_UpdateUser_mediaListOptions_animeList? animeList;

  factory _$GUpdateUserData_UpdateUser_mediaListOptions(
          [void Function(GUpdateUserData_UpdateUser_mediaListOptionsBuilder)?
              updates]) =>
      (new GUpdateUserData_UpdateUser_mediaListOptionsBuilder()
            ..update(updates))
          ._build();

  _$GUpdateUserData_UpdateUser_mediaListOptions._(
      {required this.G__typename,
      this.scoreFormat,
      this.rowOrder,
      this.animeList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUpdateUserData_UpdateUser_mediaListOptions', 'G__typename');
  }

  @override
  GUpdateUserData_UpdateUser_mediaListOptions rebuild(
          void Function(GUpdateUserData_UpdateUser_mediaListOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserData_UpdateUser_mediaListOptionsBuilder toBuilder() =>
      new GUpdateUserData_UpdateUser_mediaListOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData_UpdateUser_mediaListOptions &&
        G__typename == other.G__typename &&
        scoreFormat == other.scoreFormat &&
        rowOrder == other.rowOrder &&
        animeList == other.animeList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, scoreFormat.hashCode);
    _$hash = $jc(_$hash, rowOrder.hashCode);
    _$hash = $jc(_$hash, animeList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUpdateUserData_UpdateUser_mediaListOptions')
          ..add('G__typename', G__typename)
          ..add('scoreFormat', scoreFormat)
          ..add('rowOrder', rowOrder)
          ..add('animeList', animeList))
        .toString();
  }
}

class GUpdateUserData_UpdateUser_mediaListOptionsBuilder
    implements
        Builder<GUpdateUserData_UpdateUser_mediaListOptions,
            GUpdateUserData_UpdateUser_mediaListOptionsBuilder> {
  _$GUpdateUserData_UpdateUser_mediaListOptions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GScoreFormat? _scoreFormat;
  _i2.GScoreFormat? get scoreFormat => _$this._scoreFormat;
  set scoreFormat(_i2.GScoreFormat? scoreFormat) =>
      _$this._scoreFormat = scoreFormat;

  String? _rowOrder;
  String? get rowOrder => _$this._rowOrder;
  set rowOrder(String? rowOrder) => _$this._rowOrder = rowOrder;

  GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder? _animeList;
  GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder get animeList =>
      _$this._animeList ??=
          new GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder();
  set animeList(
          GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder?
              animeList) =>
      _$this._animeList = animeList;

  GUpdateUserData_UpdateUser_mediaListOptionsBuilder() {
    GUpdateUserData_UpdateUser_mediaListOptions._initializeBuilder(this);
  }

  GUpdateUserData_UpdateUser_mediaListOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _scoreFormat = $v.scoreFormat;
      _rowOrder = $v.rowOrder;
      _animeList = $v.animeList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData_UpdateUser_mediaListOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData_UpdateUser_mediaListOptions;
  }

  @override
  void update(
      void Function(GUpdateUserData_UpdateUser_mediaListOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData_UpdateUser_mediaListOptions build() => _build();

  _$GUpdateUserData_UpdateUser_mediaListOptions _build() {
    _$GUpdateUserData_UpdateUser_mediaListOptions _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserData_UpdateUser_mediaListOptions._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUpdateUserData_UpdateUser_mediaListOptions',
                  'G__typename'),
              scoreFormat: scoreFormat,
              rowOrder: rowOrder,
              animeList: _animeList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'animeList';
        _animeList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserData_UpdateUser_mediaListOptions',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData_UpdateUser_mediaListOptions_animeList
    extends GUpdateUserData_UpdateUser_mediaListOptions_animeList {
  @override
  final String G__typename;
  @override
  final BuiltList<String?>? sectionOrder;

  factory _$GUpdateUserData_UpdateUser_mediaListOptions_animeList(
          [void Function(
                  GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder)?
              updates]) =>
      (new GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder()
            ..update(updates))
          ._build();

  _$GUpdateUserData_UpdateUser_mediaListOptions_animeList._(
      {required this.G__typename, this.sectionOrder})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GUpdateUserData_UpdateUser_mediaListOptions_animeList',
        'G__typename');
  }

  @override
  GUpdateUserData_UpdateUser_mediaListOptions_animeList rebuild(
          void Function(
                  GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder toBuilder() =>
      new GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData_UpdateUser_mediaListOptions_animeList &&
        G__typename == other.G__typename &&
        sectionOrder == other.sectionOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sectionOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUpdateUserData_UpdateUser_mediaListOptions_animeList')
          ..add('G__typename', G__typename)
          ..add('sectionOrder', sectionOrder))
        .toString();
  }
}

class GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder
    implements
        Builder<GUpdateUserData_UpdateUser_mediaListOptions_animeList,
            GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder> {
  _$GUpdateUserData_UpdateUser_mediaListOptions_animeList? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<String?>? _sectionOrder;
  ListBuilder<String?> get sectionOrder =>
      _$this._sectionOrder ??= new ListBuilder<String?>();
  set sectionOrder(ListBuilder<String?>? sectionOrder) =>
      _$this._sectionOrder = sectionOrder;

  GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder() {
    GUpdateUserData_UpdateUser_mediaListOptions_animeList._initializeBuilder(
        this);
  }

  GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sectionOrder = $v.sectionOrder?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData_UpdateUser_mediaListOptions_animeList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData_UpdateUser_mediaListOptions_animeList;
  }

  @override
  void update(
      void Function(
              GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData_UpdateUser_mediaListOptions_animeList build() => _build();

  _$GUpdateUserData_UpdateUser_mediaListOptions_animeList _build() {
    _$GUpdateUserData_UpdateUser_mediaListOptions_animeList _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserData_UpdateUser_mediaListOptions_animeList._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUpdateUserData_UpdateUser_mediaListOptions_animeList',
                  'G__typename'),
              sectionOrder: _sectionOrder?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sectionOrder';
        _sectionOrder?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserData_UpdateUser_mediaListOptions_animeList',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThisUserData extends GThisUserData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final String? about;
  @override
  final String? bannerImage;
  @override
  final int? unreadNotificationCount;
  @override
  final GThisUserData_avatar? avatar;
  @override
  final GThisUserData_statistics? statistics;
  @override
  final GThisUserData_options? options;
  @override
  final GThisUserData_mediaListOptions? mediaListOptions;

  factory _$GThisUserData([void Function(GThisUserDataBuilder)? updates]) =>
      (new GThisUserDataBuilder()..update(updates))._build();

  _$GThisUserData._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.about,
      this.bannerImage,
      this.unreadNotificationCount,
      this.avatar,
      this.statistics,
      this.options,
      this.mediaListOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThisUserData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GThisUserData', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GThisUserData', 'name');
  }

  @override
  GThisUserData rebuild(void Function(GThisUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThisUserDataBuilder toBuilder() => new GThisUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThisUserData &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        about == other.about &&
        bannerImage == other.bannerImage &&
        unreadNotificationCount == other.unreadNotificationCount &&
        avatar == other.avatar &&
        statistics == other.statistics &&
        options == other.options &&
        mediaListOptions == other.mediaListOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, about.hashCode);
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jc(_$hash, unreadNotificationCount.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, statistics.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, mediaListOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GThisUserData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('about', about)
          ..add('bannerImage', bannerImage)
          ..add('unreadNotificationCount', unreadNotificationCount)
          ..add('avatar', avatar)
          ..add('statistics', statistics)
          ..add('options', options)
          ..add('mediaListOptions', mediaListOptions))
        .toString();
  }
}

class GThisUserDataBuilder
    implements Builder<GThisUserData, GThisUserDataBuilder> {
  _$GThisUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _about;
  String? get about => _$this._about;
  set about(String? about) => _$this._about = about;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  int? _unreadNotificationCount;
  int? get unreadNotificationCount => _$this._unreadNotificationCount;
  set unreadNotificationCount(int? unreadNotificationCount) =>
      _$this._unreadNotificationCount = unreadNotificationCount;

  GThisUserData_avatarBuilder? _avatar;
  GThisUserData_avatarBuilder get avatar =>
      _$this._avatar ??= new GThisUserData_avatarBuilder();
  set avatar(GThisUserData_avatarBuilder? avatar) => _$this._avatar = avatar;

  GThisUserData_statisticsBuilder? _statistics;
  GThisUserData_statisticsBuilder get statistics =>
      _$this._statistics ??= new GThisUserData_statisticsBuilder();
  set statistics(GThisUserData_statisticsBuilder? statistics) =>
      _$this._statistics = statistics;

  GThisUserData_optionsBuilder? _options;
  GThisUserData_optionsBuilder get options =>
      _$this._options ??= new GThisUserData_optionsBuilder();
  set options(GThisUserData_optionsBuilder? options) =>
      _$this._options = options;

  GThisUserData_mediaListOptionsBuilder? _mediaListOptions;
  GThisUserData_mediaListOptionsBuilder get mediaListOptions =>
      _$this._mediaListOptions ??= new GThisUserData_mediaListOptionsBuilder();
  set mediaListOptions(
          GThisUserData_mediaListOptionsBuilder? mediaListOptions) =>
      _$this._mediaListOptions = mediaListOptions;

  GThisUserDataBuilder() {
    GThisUserData._initializeBuilder(this);
  }

  GThisUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _about = $v.about;
      _bannerImage = $v.bannerImage;
      _unreadNotificationCount = $v.unreadNotificationCount;
      _avatar = $v.avatar?.toBuilder();
      _statistics = $v.statistics?.toBuilder();
      _options = $v.options?.toBuilder();
      _mediaListOptions = $v.mediaListOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThisUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThisUserData;
  }

  @override
  void update(void Function(GThisUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThisUserData build() => _build();

  _$GThisUserData _build() {
    _$GThisUserData _$result;
    try {
      _$result = _$v ??
          new _$GThisUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GThisUserData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GThisUserData', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GThisUserData', 'name'),
              about: about,
              bannerImage: bannerImage,
              unreadNotificationCount: unreadNotificationCount,
              avatar: _avatar?.build(),
              statistics: _statistics?.build(),
              options: _options?.build(),
              mediaListOptions: _mediaListOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();
        _$failedField = 'statistics';
        _statistics?.build();
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'mediaListOptions';
        _mediaListOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GThisUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThisUserData_avatar extends GThisUserData_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GThisUserData_avatar(
          [void Function(GThisUserData_avatarBuilder)? updates]) =>
      (new GThisUserData_avatarBuilder()..update(updates))._build();

  _$GThisUserData_avatar._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThisUserData_avatar', 'G__typename');
  }

  @override
  GThisUserData_avatar rebuild(
          void Function(GThisUserData_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThisUserData_avatarBuilder toBuilder() =>
      new GThisUserData_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThisUserData_avatar &&
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
    return (newBuiltValueToStringHelper(r'GThisUserData_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GThisUserData_avatarBuilder
    implements Builder<GThisUserData_avatar, GThisUserData_avatarBuilder> {
  _$GThisUserData_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GThisUserData_avatarBuilder() {
    GThisUserData_avatar._initializeBuilder(this);
  }

  GThisUserData_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThisUserData_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThisUserData_avatar;
  }

  @override
  void update(void Function(GThisUserData_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThisUserData_avatar build() => _build();

  _$GThisUserData_avatar _build() {
    final _$result = _$v ??
        new _$GThisUserData_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GThisUserData_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GThisUserData_statistics extends GThisUserData_statistics {
  @override
  final String G__typename;
  @override
  final GThisUserData_statistics_anime? anime;
  @override
  final GThisUserData_statistics_manga? manga;

  factory _$GThisUserData_statistics(
          [void Function(GThisUserData_statisticsBuilder)? updates]) =>
      (new GThisUserData_statisticsBuilder()..update(updates))._build();

  _$GThisUserData_statistics._(
      {required this.G__typename, this.anime, this.manga})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThisUserData_statistics', 'G__typename');
  }

  @override
  GThisUserData_statistics rebuild(
          void Function(GThisUserData_statisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThisUserData_statisticsBuilder toBuilder() =>
      new GThisUserData_statisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThisUserData_statistics &&
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
    return (newBuiltValueToStringHelper(r'GThisUserData_statistics')
          ..add('G__typename', G__typename)
          ..add('anime', anime)
          ..add('manga', manga))
        .toString();
  }
}

class GThisUserData_statisticsBuilder
    implements
        Builder<GThisUserData_statistics, GThisUserData_statisticsBuilder> {
  _$GThisUserData_statistics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GThisUserData_statistics_animeBuilder? _anime;
  GThisUserData_statistics_animeBuilder get anime =>
      _$this._anime ??= new GThisUserData_statistics_animeBuilder();
  set anime(GThisUserData_statistics_animeBuilder? anime) =>
      _$this._anime = anime;

  GThisUserData_statistics_mangaBuilder? _manga;
  GThisUserData_statistics_mangaBuilder get manga =>
      _$this._manga ??= new GThisUserData_statistics_mangaBuilder();
  set manga(GThisUserData_statistics_mangaBuilder? manga) =>
      _$this._manga = manga;

  GThisUserData_statisticsBuilder() {
    GThisUserData_statistics._initializeBuilder(this);
  }

  GThisUserData_statisticsBuilder get _$this {
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
  void replace(GThisUserData_statistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThisUserData_statistics;
  }

  @override
  void update(void Function(GThisUserData_statisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThisUserData_statistics build() => _build();

  _$GThisUserData_statistics _build() {
    _$GThisUserData_statistics _$result;
    try {
      _$result = _$v ??
          new _$GThisUserData_statistics._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GThisUserData_statistics', 'G__typename'),
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
            r'GThisUserData_statistics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThisUserData_statistics_anime extends GThisUserData_statistics_anime {
  @override
  final String G__typename;
  @override
  final int count;
  @override
  final int episodesWatched;
  @override
  final int minutesWatched;
  @override
  final double meanScore;
  @override
  final double standardDeviation;

  factory _$GThisUserData_statistics_anime(
          [void Function(GThisUserData_statistics_animeBuilder)? updates]) =>
      (new GThisUserData_statistics_animeBuilder()..update(updates))._build();

  _$GThisUserData_statistics_anime._(
      {required this.G__typename,
      required this.count,
      required this.episodesWatched,
      required this.minutesWatched,
      required this.meanScore,
      required this.standardDeviation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThisUserData_statistics_anime', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GThisUserData_statistics_anime', 'count');
    BuiltValueNullFieldError.checkNotNull(
        episodesWatched, r'GThisUserData_statistics_anime', 'episodesWatched');
    BuiltValueNullFieldError.checkNotNull(
        minutesWatched, r'GThisUserData_statistics_anime', 'minutesWatched');
    BuiltValueNullFieldError.checkNotNull(
        meanScore, r'GThisUserData_statistics_anime', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(standardDeviation,
        r'GThisUserData_statistics_anime', 'standardDeviation');
  }

  @override
  GThisUserData_statistics_anime rebuild(
          void Function(GThisUserData_statistics_animeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThisUserData_statistics_animeBuilder toBuilder() =>
      new GThisUserData_statistics_animeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThisUserData_statistics_anime &&
        G__typename == other.G__typename &&
        count == other.count &&
        episodesWatched == other.episodesWatched &&
        minutesWatched == other.minutesWatched &&
        meanScore == other.meanScore &&
        standardDeviation == other.standardDeviation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, episodesWatched.hashCode);
    _$hash = $jc(_$hash, minutesWatched.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, standardDeviation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GThisUserData_statistics_anime')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('episodesWatched', episodesWatched)
          ..add('minutesWatched', minutesWatched)
          ..add('meanScore', meanScore)
          ..add('standardDeviation', standardDeviation))
        .toString();
  }
}

class GThisUserData_statistics_animeBuilder
    implements
        Builder<GThisUserData_statistics_anime,
            GThisUserData_statistics_animeBuilder> {
  _$GThisUserData_statistics_anime? _$v;

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

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  double? _standardDeviation;
  double? get standardDeviation => _$this._standardDeviation;
  set standardDeviation(double? standardDeviation) =>
      _$this._standardDeviation = standardDeviation;

  GThisUserData_statistics_animeBuilder() {
    GThisUserData_statistics_anime._initializeBuilder(this);
  }

  GThisUserData_statistics_animeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _episodesWatched = $v.episodesWatched;
      _minutesWatched = $v.minutesWatched;
      _meanScore = $v.meanScore;
      _standardDeviation = $v.standardDeviation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThisUserData_statistics_anime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThisUserData_statistics_anime;
  }

  @override
  void update(void Function(GThisUserData_statistics_animeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThisUserData_statistics_anime build() => _build();

  _$GThisUserData_statistics_anime _build() {
    final _$result = _$v ??
        new _$GThisUserData_statistics_anime._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GThisUserData_statistics_anime', 'G__typename'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'GThisUserData_statistics_anime', 'count'),
            episodesWatched: BuiltValueNullFieldError.checkNotNull(
                episodesWatched,
                r'GThisUserData_statistics_anime',
                'episodesWatched'),
            minutesWatched: BuiltValueNullFieldError.checkNotNull(
                minutesWatched,
                r'GThisUserData_statistics_anime',
                'minutesWatched'),
            meanScore: BuiltValueNullFieldError.checkNotNull(
                meanScore, r'GThisUserData_statistics_anime', 'meanScore'),
            standardDeviation: BuiltValueNullFieldError.checkNotNull(
                standardDeviation,
                r'GThisUserData_statistics_anime',
                'standardDeviation'));
    replace(_$result);
    return _$result;
  }
}

class _$GThisUserData_statistics_manga extends GThisUserData_statistics_manga {
  @override
  final String G__typename;
  @override
  final int count;
  @override
  final int chaptersRead;
  @override
  final int volumesRead;
  @override
  final double meanScore;
  @override
  final double standardDeviation;

  factory _$GThisUserData_statistics_manga(
          [void Function(GThisUserData_statistics_mangaBuilder)? updates]) =>
      (new GThisUserData_statistics_mangaBuilder()..update(updates))._build();

  _$GThisUserData_statistics_manga._(
      {required this.G__typename,
      required this.count,
      required this.chaptersRead,
      required this.volumesRead,
      required this.meanScore,
      required this.standardDeviation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThisUserData_statistics_manga', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GThisUserData_statistics_manga', 'count');
    BuiltValueNullFieldError.checkNotNull(
        chaptersRead, r'GThisUserData_statistics_manga', 'chaptersRead');
    BuiltValueNullFieldError.checkNotNull(
        volumesRead, r'GThisUserData_statistics_manga', 'volumesRead');
    BuiltValueNullFieldError.checkNotNull(
        meanScore, r'GThisUserData_statistics_manga', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(standardDeviation,
        r'GThisUserData_statistics_manga', 'standardDeviation');
  }

  @override
  GThisUserData_statistics_manga rebuild(
          void Function(GThisUserData_statistics_mangaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThisUserData_statistics_mangaBuilder toBuilder() =>
      new GThisUserData_statistics_mangaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThisUserData_statistics_manga &&
        G__typename == other.G__typename &&
        count == other.count &&
        chaptersRead == other.chaptersRead &&
        volumesRead == other.volumesRead &&
        meanScore == other.meanScore &&
        standardDeviation == other.standardDeviation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, volumesRead.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, standardDeviation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GThisUserData_statistics_manga')
          ..add('G__typename', G__typename)
          ..add('count', count)
          ..add('chaptersRead', chaptersRead)
          ..add('volumesRead', volumesRead)
          ..add('meanScore', meanScore)
          ..add('standardDeviation', standardDeviation))
        .toString();
  }
}

class GThisUserData_statistics_mangaBuilder
    implements
        Builder<GThisUserData_statistics_manga,
            GThisUserData_statistics_mangaBuilder> {
  _$GThisUserData_statistics_manga? _$v;

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

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  double? _standardDeviation;
  double? get standardDeviation => _$this._standardDeviation;
  set standardDeviation(double? standardDeviation) =>
      _$this._standardDeviation = standardDeviation;

  GThisUserData_statistics_mangaBuilder() {
    GThisUserData_statistics_manga._initializeBuilder(this);
  }

  GThisUserData_statistics_mangaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _count = $v.count;
      _chaptersRead = $v.chaptersRead;
      _volumesRead = $v.volumesRead;
      _meanScore = $v.meanScore;
      _standardDeviation = $v.standardDeviation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThisUserData_statistics_manga other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThisUserData_statistics_manga;
  }

  @override
  void update(void Function(GThisUserData_statistics_mangaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThisUserData_statistics_manga build() => _build();

  _$GThisUserData_statistics_manga _build() {
    final _$result = _$v ??
        new _$GThisUserData_statistics_manga._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GThisUserData_statistics_manga', 'G__typename'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'GThisUserData_statistics_manga', 'count'),
            chaptersRead: BuiltValueNullFieldError.checkNotNull(chaptersRead,
                r'GThisUserData_statistics_manga', 'chaptersRead'),
            volumesRead: BuiltValueNullFieldError.checkNotNull(
                volumesRead, r'GThisUserData_statistics_manga', 'volumesRead'),
            meanScore: BuiltValueNullFieldError.checkNotNull(
                meanScore, r'GThisUserData_statistics_manga', 'meanScore'),
            standardDeviation: BuiltValueNullFieldError.checkNotNull(
                standardDeviation,
                r'GThisUserData_statistics_manga',
                'standardDeviation'));
    replace(_$result);
    return _$result;
  }
}

class _$GThisUserData_options extends GThisUserData_options {
  @override
  final String G__typename;
  @override
  final bool? displayAdultContent;
  @override
  final bool? airingNotifications;
  @override
  final _i2.GUserTitleLanguage? titleLanguage;
  @override
  final _i2.GUserStaffNameLanguage? staffNameLanguage;
  @override
  final int? activityMergeTime;
  @override
  final bool? restrictMessagesToFollowing;

  factory _$GThisUserData_options(
          [void Function(GThisUserData_optionsBuilder)? updates]) =>
      (new GThisUserData_optionsBuilder()..update(updates))._build();

  _$GThisUserData_options._(
      {required this.G__typename,
      this.displayAdultContent,
      this.airingNotifications,
      this.titleLanguage,
      this.staffNameLanguage,
      this.activityMergeTime,
      this.restrictMessagesToFollowing})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThisUserData_options', 'G__typename');
  }

  @override
  GThisUserData_options rebuild(
          void Function(GThisUserData_optionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThisUserData_optionsBuilder toBuilder() =>
      new GThisUserData_optionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThisUserData_options &&
        G__typename == other.G__typename &&
        displayAdultContent == other.displayAdultContent &&
        airingNotifications == other.airingNotifications &&
        titleLanguage == other.titleLanguage &&
        staffNameLanguage == other.staffNameLanguage &&
        activityMergeTime == other.activityMergeTime &&
        restrictMessagesToFollowing == other.restrictMessagesToFollowing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, displayAdultContent.hashCode);
    _$hash = $jc(_$hash, airingNotifications.hashCode);
    _$hash = $jc(_$hash, titleLanguage.hashCode);
    _$hash = $jc(_$hash, staffNameLanguage.hashCode);
    _$hash = $jc(_$hash, activityMergeTime.hashCode);
    _$hash = $jc(_$hash, restrictMessagesToFollowing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GThisUserData_options')
          ..add('G__typename', G__typename)
          ..add('displayAdultContent', displayAdultContent)
          ..add('airingNotifications', airingNotifications)
          ..add('titleLanguage', titleLanguage)
          ..add('staffNameLanguage', staffNameLanguage)
          ..add('activityMergeTime', activityMergeTime)
          ..add('restrictMessagesToFollowing', restrictMessagesToFollowing))
        .toString();
  }
}

class GThisUserData_optionsBuilder
    implements Builder<GThisUserData_options, GThisUserData_optionsBuilder> {
  _$GThisUserData_options? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _displayAdultContent;
  bool? get displayAdultContent => _$this._displayAdultContent;
  set displayAdultContent(bool? displayAdultContent) =>
      _$this._displayAdultContent = displayAdultContent;

  bool? _airingNotifications;
  bool? get airingNotifications => _$this._airingNotifications;
  set airingNotifications(bool? airingNotifications) =>
      _$this._airingNotifications = airingNotifications;

  _i2.GUserTitleLanguage? _titleLanguage;
  _i2.GUserTitleLanguage? get titleLanguage => _$this._titleLanguage;
  set titleLanguage(_i2.GUserTitleLanguage? titleLanguage) =>
      _$this._titleLanguage = titleLanguage;

  _i2.GUserStaffNameLanguage? _staffNameLanguage;
  _i2.GUserStaffNameLanguage? get staffNameLanguage =>
      _$this._staffNameLanguage;
  set staffNameLanguage(_i2.GUserStaffNameLanguage? staffNameLanguage) =>
      _$this._staffNameLanguage = staffNameLanguage;

  int? _activityMergeTime;
  int? get activityMergeTime => _$this._activityMergeTime;
  set activityMergeTime(int? activityMergeTime) =>
      _$this._activityMergeTime = activityMergeTime;

  bool? _restrictMessagesToFollowing;
  bool? get restrictMessagesToFollowing => _$this._restrictMessagesToFollowing;
  set restrictMessagesToFollowing(bool? restrictMessagesToFollowing) =>
      _$this._restrictMessagesToFollowing = restrictMessagesToFollowing;

  GThisUserData_optionsBuilder() {
    GThisUserData_options._initializeBuilder(this);
  }

  GThisUserData_optionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _displayAdultContent = $v.displayAdultContent;
      _airingNotifications = $v.airingNotifications;
      _titleLanguage = $v.titleLanguage;
      _staffNameLanguage = $v.staffNameLanguage;
      _activityMergeTime = $v.activityMergeTime;
      _restrictMessagesToFollowing = $v.restrictMessagesToFollowing;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThisUserData_options other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThisUserData_options;
  }

  @override
  void update(void Function(GThisUserData_optionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThisUserData_options build() => _build();

  _$GThisUserData_options _build() {
    final _$result = _$v ??
        new _$GThisUserData_options._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GThisUserData_options', 'G__typename'),
            displayAdultContent: displayAdultContent,
            airingNotifications: airingNotifications,
            titleLanguage: titleLanguage,
            staffNameLanguage: staffNameLanguage,
            activityMergeTime: activityMergeTime,
            restrictMessagesToFollowing: restrictMessagesToFollowing);
    replace(_$result);
    return _$result;
  }
}

class _$GThisUserData_mediaListOptions extends GThisUserData_mediaListOptions {
  @override
  final String G__typename;
  @override
  final _i2.GScoreFormat? scoreFormat;
  @override
  final String? rowOrder;
  @override
  final GThisUserData_mediaListOptions_animeList? animeList;

  factory _$GThisUserData_mediaListOptions(
          [void Function(GThisUserData_mediaListOptionsBuilder)? updates]) =>
      (new GThisUserData_mediaListOptionsBuilder()..update(updates))._build();

  _$GThisUserData_mediaListOptions._(
      {required this.G__typename,
      this.scoreFormat,
      this.rowOrder,
      this.animeList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GThisUserData_mediaListOptions', 'G__typename');
  }

  @override
  GThisUserData_mediaListOptions rebuild(
          void Function(GThisUserData_mediaListOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThisUserData_mediaListOptionsBuilder toBuilder() =>
      new GThisUserData_mediaListOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThisUserData_mediaListOptions &&
        G__typename == other.G__typename &&
        scoreFormat == other.scoreFormat &&
        rowOrder == other.rowOrder &&
        animeList == other.animeList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, scoreFormat.hashCode);
    _$hash = $jc(_$hash, rowOrder.hashCode);
    _$hash = $jc(_$hash, animeList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GThisUserData_mediaListOptions')
          ..add('G__typename', G__typename)
          ..add('scoreFormat', scoreFormat)
          ..add('rowOrder', rowOrder)
          ..add('animeList', animeList))
        .toString();
  }
}

class GThisUserData_mediaListOptionsBuilder
    implements
        Builder<GThisUserData_mediaListOptions,
            GThisUserData_mediaListOptionsBuilder> {
  _$GThisUserData_mediaListOptions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GScoreFormat? _scoreFormat;
  _i2.GScoreFormat? get scoreFormat => _$this._scoreFormat;
  set scoreFormat(_i2.GScoreFormat? scoreFormat) =>
      _$this._scoreFormat = scoreFormat;

  String? _rowOrder;
  String? get rowOrder => _$this._rowOrder;
  set rowOrder(String? rowOrder) => _$this._rowOrder = rowOrder;

  GThisUserData_mediaListOptions_animeListBuilder? _animeList;
  GThisUserData_mediaListOptions_animeListBuilder get animeList =>
      _$this._animeList ??=
          new GThisUserData_mediaListOptions_animeListBuilder();
  set animeList(GThisUserData_mediaListOptions_animeListBuilder? animeList) =>
      _$this._animeList = animeList;

  GThisUserData_mediaListOptionsBuilder() {
    GThisUserData_mediaListOptions._initializeBuilder(this);
  }

  GThisUserData_mediaListOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _scoreFormat = $v.scoreFormat;
      _rowOrder = $v.rowOrder;
      _animeList = $v.animeList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThisUserData_mediaListOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThisUserData_mediaListOptions;
  }

  @override
  void update(void Function(GThisUserData_mediaListOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThisUserData_mediaListOptions build() => _build();

  _$GThisUserData_mediaListOptions _build() {
    _$GThisUserData_mediaListOptions _$result;
    try {
      _$result = _$v ??
          new _$GThisUserData_mediaListOptions._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GThisUserData_mediaListOptions', 'G__typename'),
              scoreFormat: scoreFormat,
              rowOrder: rowOrder,
              animeList: _animeList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'animeList';
        _animeList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GThisUserData_mediaListOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThisUserData_mediaListOptions_animeList
    extends GThisUserData_mediaListOptions_animeList {
  @override
  final String G__typename;
  @override
  final BuiltList<String?>? sectionOrder;

  factory _$GThisUserData_mediaListOptions_animeList(
          [void Function(GThisUserData_mediaListOptions_animeListBuilder)?
              updates]) =>
      (new GThisUserData_mediaListOptions_animeListBuilder()..update(updates))
          ._build();

  _$GThisUserData_mediaListOptions_animeList._(
      {required this.G__typename, this.sectionOrder})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GThisUserData_mediaListOptions_animeList', 'G__typename');
  }

  @override
  GThisUserData_mediaListOptions_animeList rebuild(
          void Function(GThisUserData_mediaListOptions_animeListBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThisUserData_mediaListOptions_animeListBuilder toBuilder() =>
      new GThisUserData_mediaListOptions_animeListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThisUserData_mediaListOptions_animeList &&
        G__typename == other.G__typename &&
        sectionOrder == other.sectionOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sectionOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GThisUserData_mediaListOptions_animeList')
          ..add('G__typename', G__typename)
          ..add('sectionOrder', sectionOrder))
        .toString();
  }
}

class GThisUserData_mediaListOptions_animeListBuilder
    implements
        Builder<GThisUserData_mediaListOptions_animeList,
            GThisUserData_mediaListOptions_animeListBuilder> {
  _$GThisUserData_mediaListOptions_animeList? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<String?>? _sectionOrder;
  ListBuilder<String?> get sectionOrder =>
      _$this._sectionOrder ??= new ListBuilder<String?>();
  set sectionOrder(ListBuilder<String?>? sectionOrder) =>
      _$this._sectionOrder = sectionOrder;

  GThisUserData_mediaListOptions_animeListBuilder() {
    GThisUserData_mediaListOptions_animeList._initializeBuilder(this);
  }

  GThisUserData_mediaListOptions_animeListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sectionOrder = $v.sectionOrder?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThisUserData_mediaListOptions_animeList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThisUserData_mediaListOptions_animeList;
  }

  @override
  void update(
      void Function(GThisUserData_mediaListOptions_animeListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThisUserData_mediaListOptions_animeList build() => _build();

  _$GThisUserData_mediaListOptions_animeList _build() {
    _$GThisUserData_mediaListOptions_animeList _$result;
    try {
      _$result = _$v ??
          new _$GThisUserData_mediaListOptions_animeList._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GThisUserData_mediaListOptions_animeList', 'G__typename'),
              sectionOrder: _sectionOrder?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sectionOrder';
        _sectionOrder?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GThisUserData_mediaListOptions_animeList',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
