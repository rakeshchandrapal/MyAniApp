// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserStatsData> _$gUserStatsDataSerializer =
    new _$GUserStatsDataSerializer();
Serializer<GUserStatsData_User> _$gUserStatsDataUserSerializer =
    new _$GUserStatsData_UserSerializer();
Serializer<GUserStatsData_User_statistics>
    _$gUserStatsDataUserStatisticsSerializer =
    new _$GUserStatsData_User_statisticsSerializer();
Serializer<GUserStatsData_User_statistics_anime>
    _$gUserStatsDataUserStatisticsAnimeSerializer =
    new _$GUserStatsData_User_statistics_animeSerializer();
Serializer<GUserStatsData_User_statistics_anime_formats>
    _$gUserStatsDataUserStatisticsAnimeFormatsSerializer =
    new _$GUserStatsData_User_statistics_anime_formatsSerializer();
Serializer<GUserStatsData_User_statistics_anime_statuses>
    _$gUserStatsDataUserStatisticsAnimeStatusesSerializer =
    new _$GUserStatsData_User_statistics_anime_statusesSerializer();
Serializer<GUserStatsData_User_statistics_anime_scores>
    _$gUserStatsDataUserStatisticsAnimeScoresSerializer =
    new _$GUserStatsData_User_statistics_anime_scoresSerializer();
Serializer<GUserStatsData_User_statistics_anime_lengths>
    _$gUserStatsDataUserStatisticsAnimeLengthsSerializer =
    new _$GUserStatsData_User_statistics_anime_lengthsSerializer();
Serializer<GUserStatsData_User_statistics_anime_releaseYears>
    _$gUserStatsDataUserStatisticsAnimeReleaseYearsSerializer =
    new _$GUserStatsData_User_statistics_anime_releaseYearsSerializer();
Serializer<GUserStatsData_User_statistics_anime_startYears>
    _$gUserStatsDataUserStatisticsAnimeStartYearsSerializer =
    new _$GUserStatsData_User_statistics_anime_startYearsSerializer();
Serializer<GUserStatsData_User_statistics_anime_countries>
    _$gUserStatsDataUserStatisticsAnimeCountriesSerializer =
    new _$GUserStatsData_User_statistics_anime_countriesSerializer();

class _$GUserStatsDataSerializer
    implements StructuredSerializer<GUserStatsData> {
  @override
  final Iterable<Type> types = const [GUserStatsData, _$GUserStatsData];
  @override
  final String wireName = 'GUserStatsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserStatsData object,
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
            specifiedType: const FullType(GUserStatsData_User)));
    }
    return result;
  }

  @override
  GUserStatsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserStatsDataBuilder();

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
                  specifiedType: const FullType(GUserStatsData_User))!
              as GUserStatsData_User);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserStatsData_UserSerializer
    implements StructuredSerializer<GUserStatsData_User> {
  @override
  final Iterable<Type> types = const [
    GUserStatsData_User,
    _$GUserStatsData_User
  ];
  @override
  final String wireName = 'GUserStatsData_User';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserStatsData_User object,
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
    value = object.statistics;
    if (value != null) {
      result
        ..add('statistics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUserStatsData_User_statistics)));
    }
    return result;
  }

  @override
  GUserStatsData_User deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserStatsData_UserBuilder();

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
        case 'statistics':
          result.statistics.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserStatsData_User_statistics))!
              as GUserStatsData_User_statistics);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserStatsData_User_statisticsSerializer
    implements StructuredSerializer<GUserStatsData_User_statistics> {
  @override
  final Iterable<Type> types = const [
    GUserStatsData_User_statistics,
    _$GUserStatsData_User_statistics
  ];
  @override
  final String wireName = 'GUserStatsData_User_statistics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserStatsData_User_statistics object,
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
                const FullType(GUserStatsData_User_statistics_anime)));
    }
    return result;
  }

  @override
  GUserStatsData_User_statistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserStatsData_User_statisticsBuilder();

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
                      const FullType(GUserStatsData_User_statistics_anime))!
              as GUserStatsData_User_statistics_anime);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserStatsData_User_statistics_animeSerializer
    implements StructuredSerializer<GUserStatsData_User_statistics_anime> {
  @override
  final Iterable<Type> types = const [
    GUserStatsData_User_statistics_anime,
    _$GUserStatsData_User_statistics_anime
  ];
  @override
  final String wireName = 'GUserStatsData_User_statistics_anime';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserStatsData_User_statistics_anime object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.formats;
    if (value != null) {
      result
        ..add('formats')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GUserStatsData_User_statistics_anime_formats)
            ])));
    }
    value = object.statuses;
    if (value != null) {
      result
        ..add('statuses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GUserStatsData_User_statistics_anime_statuses)
            ])));
    }
    value = object.scores;
    if (value != null) {
      result
        ..add('scores')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GUserStatsData_User_statistics_anime_scores)
            ])));
    }
    value = object.lengths;
    if (value != null) {
      result
        ..add('lengths')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GUserStatsData_User_statistics_anime_lengths)
            ])));
    }
    value = object.releaseYears;
    if (value != null) {
      result
        ..add('releaseYears')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GUserStatsData_User_statistics_anime_releaseYears)
            ])));
    }
    value = object.startYears;
    if (value != null) {
      result
        ..add('startYears')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GUserStatsData_User_statistics_anime_startYears)
            ])));
    }
    value = object.countries;
    if (value != null) {
      result
        ..add('countries')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GUserStatsData_User_statistics_anime_countries)
            ])));
    }
    return result;
  }

  @override
  GUserStatsData_User_statistics_anime deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserStatsData_User_statistics_animeBuilder();

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
        case 'formats':
          result.formats.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GUserStatsData_User_statistics_anime_formats)
              ]))! as BuiltList<Object?>);
          break;
        case 'statuses':
          result.statuses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GUserStatsData_User_statistics_anime_statuses)
              ]))! as BuiltList<Object?>);
          break;
        case 'scores':
          result.scores.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GUserStatsData_User_statistics_anime_scores)
              ]))! as BuiltList<Object?>);
          break;
        case 'lengths':
          result.lengths.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GUserStatsData_User_statistics_anime_lengths)
              ]))! as BuiltList<Object?>);
          break;
        case 'releaseYears':
          result.releaseYears.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GUserStatsData_User_statistics_anime_releaseYears)
              ]))! as BuiltList<Object?>);
          break;
        case 'startYears':
          result.startYears.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GUserStatsData_User_statistics_anime_startYears)
              ]))! as BuiltList<Object?>);
          break;
        case 'countries':
          result.countries.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GUserStatsData_User_statistics_anime_countries)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserStatsData_User_statistics_anime_formatsSerializer
    implements
        StructuredSerializer<GUserStatsData_User_statistics_anime_formats> {
  @override
  final Iterable<Type> types = const [
    GUserStatsData_User_statistics_anime_formats,
    _$GUserStatsData_User_statistics_anime_formats
  ];
  @override
  final String wireName = 'GUserStatsData_User_statistics_anime_formats';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserStatsData_User_statistics_anime_formats object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'minutesWatched',
      serializers.serialize(object.minutesWatched,
          specifiedType: const FullType(int)),
      'chaptersRead',
      serializers.serialize(object.chaptersRead,
          specifiedType: const FullType(int)),
      'mediaIds',
      serializers.serialize(object.mediaIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType.nullable(int)])),
    ];
    Object? value;
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaFormat)));
    }
    return result;
  }

  @override
  GUserStatsData_User_statistics_anime_formats deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserStatsData_User_statistics_anime_formatsBuilder();

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
        case 'format':
          result.format = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaFormat))
              as _i2.GMediaFormat?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'minutesWatched':
          result.minutesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'chaptersRead':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'mediaIds':
          result.mediaIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserStatsData_User_statistics_anime_statusesSerializer
    implements
        StructuredSerializer<GUserStatsData_User_statistics_anime_statuses> {
  @override
  final Iterable<Type> types = const [
    GUserStatsData_User_statistics_anime_statuses,
    _$GUserStatsData_User_statistics_anime_statuses
  ];
  @override
  final String wireName = 'GUserStatsData_User_statistics_anime_statuses';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserStatsData_User_statistics_anime_statuses object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'minutesWatched',
      serializers.serialize(object.minutesWatched,
          specifiedType: const FullType(int)),
      'chaptersRead',
      serializers.serialize(object.chaptersRead,
          specifiedType: const FullType(int)),
      'mediaIds',
      serializers.serialize(object.mediaIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType.nullable(int)])),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaListStatus)));
    }
    return result;
  }

  @override
  GUserStatsData_User_statistics_anime_statuses deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserStatsData_User_statistics_anime_statusesBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaListStatus))
              as _i2.GMediaListStatus?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'minutesWatched':
          result.minutesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'chaptersRead':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'mediaIds':
          result.mediaIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserStatsData_User_statistics_anime_scoresSerializer
    implements
        StructuredSerializer<GUserStatsData_User_statistics_anime_scores> {
  @override
  final Iterable<Type> types = const [
    GUserStatsData_User_statistics_anime_scores,
    _$GUserStatsData_User_statistics_anime_scores
  ];
  @override
  final String wireName = 'GUserStatsData_User_statistics_anime_scores';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserStatsData_User_statistics_anime_scores object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'minutesWatched',
      serializers.serialize(object.minutesWatched,
          specifiedType: const FullType(int)),
      'chaptersRead',
      serializers.serialize(object.chaptersRead,
          specifiedType: const FullType(int)),
      'mediaIds',
      serializers.serialize(object.mediaIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType.nullable(int)])),
    ];
    Object? value;
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GUserStatsData_User_statistics_anime_scores deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserStatsData_User_statistics_anime_scoresBuilder();

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
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'minutesWatched':
          result.minutesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'chaptersRead':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'mediaIds':
          result.mediaIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserStatsData_User_statistics_anime_lengthsSerializer
    implements
        StructuredSerializer<GUserStatsData_User_statistics_anime_lengths> {
  @override
  final Iterable<Type> types = const [
    GUserStatsData_User_statistics_anime_lengths,
    _$GUserStatsData_User_statistics_anime_lengths
  ];
  @override
  final String wireName = 'GUserStatsData_User_statistics_anime_lengths';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserStatsData_User_statistics_anime_lengths object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'minutesWatched',
      serializers.serialize(object.minutesWatched,
          specifiedType: const FullType(int)),
      'chaptersRead',
      serializers.serialize(object.chaptersRead,
          specifiedType: const FullType(int)),
      'mediaIds',
      serializers.serialize(object.mediaIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType.nullable(int)])),
    ];
    Object? value;
    value = object.length;
    if (value != null) {
      result
        ..add('length')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserStatsData_User_statistics_anime_lengths deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserStatsData_User_statistics_anime_lengthsBuilder();

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
        case 'length':
          result.length = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'minutesWatched':
          result.minutesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'chaptersRead':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'mediaIds':
          result.mediaIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserStatsData_User_statistics_anime_releaseYearsSerializer
    implements
        StructuredSerializer<
            GUserStatsData_User_statistics_anime_releaseYears> {
  @override
  final Iterable<Type> types = const [
    GUserStatsData_User_statistics_anime_releaseYears,
    _$GUserStatsData_User_statistics_anime_releaseYears
  ];
  @override
  final String wireName = 'GUserStatsData_User_statistics_anime_releaseYears';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserStatsData_User_statistics_anime_releaseYears object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'minutesWatched',
      serializers.serialize(object.minutesWatched,
          specifiedType: const FullType(int)),
      'chaptersRead',
      serializers.serialize(object.chaptersRead,
          specifiedType: const FullType(int)),
      'mediaIds',
      serializers.serialize(object.mediaIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType.nullable(int)])),
    ];
    Object? value;
    value = object.releaseYear;
    if (value != null) {
      result
        ..add('releaseYear')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GUserStatsData_User_statistics_anime_releaseYears deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GUserStatsData_User_statistics_anime_releaseYearsBuilder();

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
        case 'releaseYear':
          result.releaseYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'minutesWatched':
          result.minutesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'chaptersRead':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'mediaIds':
          result.mediaIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserStatsData_User_statistics_anime_startYearsSerializer
    implements
        StructuredSerializer<GUserStatsData_User_statistics_anime_startYears> {
  @override
  final Iterable<Type> types = const [
    GUserStatsData_User_statistics_anime_startYears,
    _$GUserStatsData_User_statistics_anime_startYears
  ];
  @override
  final String wireName = 'GUserStatsData_User_statistics_anime_startYears';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserStatsData_User_statistics_anime_startYears object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'minutesWatched',
      serializers.serialize(object.minutesWatched,
          specifiedType: const FullType(int)),
      'chaptersRead',
      serializers.serialize(object.chaptersRead,
          specifiedType: const FullType(int)),
      'mediaIds',
      serializers.serialize(object.mediaIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType.nullable(int)])),
    ];
    Object? value;
    value = object.startYear;
    if (value != null) {
      result
        ..add('startYear')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GUserStatsData_User_statistics_anime_startYears deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserStatsData_User_statistics_anime_startYearsBuilder();

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
        case 'startYear':
          result.startYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'minutesWatched':
          result.minutesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'chaptersRead':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'mediaIds':
          result.mediaIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserStatsData_User_statistics_anime_countriesSerializer
    implements
        StructuredSerializer<GUserStatsData_User_statistics_anime_countries> {
  @override
  final Iterable<Type> types = const [
    GUserStatsData_User_statistics_anime_countries,
    _$GUserStatsData_User_statistics_anime_countries
  ];
  @override
  final String wireName = 'GUserStatsData_User_statistics_anime_countries';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserStatsData_User_statistics_anime_countries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'meanScore',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'minutesWatched',
      serializers.serialize(object.minutesWatched,
          specifiedType: const FullType(int)),
      'chaptersRead',
      serializers.serialize(object.chaptersRead,
          specifiedType: const FullType(int)),
      'mediaIds',
      serializers.serialize(object.mediaIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType.nullable(int)])),
    ];
    Object? value;
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GCountryCode)));
    }
    return result;
  }

  @override
  GUserStatsData_User_statistics_anime_countries deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserStatsData_User_statistics_anime_countriesBuilder();

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
        case 'country':
          result.country.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GCountryCode))!
              as _i2.GCountryCode);
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'meanScore':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'minutesWatched':
          result.minutesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'chaptersRead':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'mediaIds':
          result.mediaIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserStatsData extends GUserStatsData {
  @override
  final String G__typename;
  @override
  final GUserStatsData_User? User;

  factory _$GUserStatsData([void Function(GUserStatsDataBuilder)? updates]) =>
      (new GUserStatsDataBuilder()..update(updates))._build();

  _$GUserStatsData._({required this.G__typename, this.User}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserStatsData', 'G__typename');
  }

  @override
  GUserStatsData rebuild(void Function(GUserStatsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserStatsDataBuilder toBuilder() =>
      new GUserStatsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserStatsData &&
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
    return (newBuiltValueToStringHelper(r'GUserStatsData')
          ..add('G__typename', G__typename)
          ..add('User', User))
        .toString();
  }
}

class GUserStatsDataBuilder
    implements Builder<GUserStatsData, GUserStatsDataBuilder> {
  _$GUserStatsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserStatsData_UserBuilder? _User;
  GUserStatsData_UserBuilder get User =>
      _$this._User ??= new GUserStatsData_UserBuilder();
  set User(GUserStatsData_UserBuilder? User) => _$this._User = User;

  GUserStatsDataBuilder() {
    GUserStatsData._initializeBuilder(this);
  }

  GUserStatsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _User = $v.User?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserStatsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserStatsData;
  }

  @override
  void update(void Function(GUserStatsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserStatsData build() => _build();

  _$GUserStatsData _build() {
    _$GUserStatsData _$result;
    try {
      _$result = _$v ??
          new _$GUserStatsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserStatsData', 'G__typename'),
              User: _User?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'User';
        _User?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserStatsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserStatsData_User extends GUserStatsData_User {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final GUserStatsData_User_statistics? statistics;

  factory _$GUserStatsData_User(
          [void Function(GUserStatsData_UserBuilder)? updates]) =>
      (new GUserStatsData_UserBuilder()..update(updates))._build();

  _$GUserStatsData_User._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.statistics})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserStatsData_User', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GUserStatsData_User', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GUserStatsData_User', 'name');
  }

  @override
  GUserStatsData_User rebuild(
          void Function(GUserStatsData_UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserStatsData_UserBuilder toBuilder() =>
      new GUserStatsData_UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserStatsData_User &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        statistics == other.statistics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, statistics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserStatsData_User')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('statistics', statistics))
        .toString();
  }
}

class GUserStatsData_UserBuilder
    implements Builder<GUserStatsData_User, GUserStatsData_UserBuilder> {
  _$GUserStatsData_User? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GUserStatsData_User_statisticsBuilder? _statistics;
  GUserStatsData_User_statisticsBuilder get statistics =>
      _$this._statistics ??= new GUserStatsData_User_statisticsBuilder();
  set statistics(GUserStatsData_User_statisticsBuilder? statistics) =>
      _$this._statistics = statistics;

  GUserStatsData_UserBuilder() {
    GUserStatsData_User._initializeBuilder(this);
  }

  GUserStatsData_UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _statistics = $v.statistics?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserStatsData_User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserStatsData_User;
  }

  @override
  void update(void Function(GUserStatsData_UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserStatsData_User build() => _build();

  _$GUserStatsData_User _build() {
    _$GUserStatsData_User _$result;
    try {
      _$result = _$v ??
          new _$GUserStatsData_User._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserStatsData_User', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GUserStatsData_User', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GUserStatsData_User', 'name'),
              statistics: _statistics?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statistics';
        _statistics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserStatsData_User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserStatsData_User_statistics extends GUserStatsData_User_statistics {
  @override
  final String G__typename;
  @override
  final GUserStatsData_User_statistics_anime? anime;

  factory _$GUserStatsData_User_statistics(
          [void Function(GUserStatsData_User_statisticsBuilder)? updates]) =>
      (new GUserStatsData_User_statisticsBuilder()..update(updates))._build();

  _$GUserStatsData_User_statistics._({required this.G__typename, this.anime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserStatsData_User_statistics', 'G__typename');
  }

  @override
  GUserStatsData_User_statistics rebuild(
          void Function(GUserStatsData_User_statisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserStatsData_User_statisticsBuilder toBuilder() =>
      new GUserStatsData_User_statisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserStatsData_User_statistics &&
        G__typename == other.G__typename &&
        anime == other.anime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, anime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserStatsData_User_statistics')
          ..add('G__typename', G__typename)
          ..add('anime', anime))
        .toString();
  }
}

class GUserStatsData_User_statisticsBuilder
    implements
        Builder<GUserStatsData_User_statistics,
            GUserStatsData_User_statisticsBuilder> {
  _$GUserStatsData_User_statistics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUserStatsData_User_statistics_animeBuilder? _anime;
  GUserStatsData_User_statistics_animeBuilder get anime =>
      _$this._anime ??= new GUserStatsData_User_statistics_animeBuilder();
  set anime(GUserStatsData_User_statistics_animeBuilder? anime) =>
      _$this._anime = anime;

  GUserStatsData_User_statisticsBuilder() {
    GUserStatsData_User_statistics._initializeBuilder(this);
  }

  GUserStatsData_User_statisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _anime = $v.anime?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserStatsData_User_statistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserStatsData_User_statistics;
  }

  @override
  void update(void Function(GUserStatsData_User_statisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserStatsData_User_statistics build() => _build();

  _$GUserStatsData_User_statistics _build() {
    _$GUserStatsData_User_statistics _$result;
    try {
      _$result = _$v ??
          new _$GUserStatsData_User_statistics._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserStatsData_User_statistics', 'G__typename'),
              anime: _anime?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'anime';
        _anime?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserStatsData_User_statistics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserStatsData_User_statistics_anime
    extends GUserStatsData_User_statistics_anime {
  @override
  final String G__typename;
  @override
  final BuiltList<GUserStatsData_User_statistics_anime_formats?>? formats;
  @override
  final BuiltList<GUserStatsData_User_statistics_anime_statuses?>? statuses;
  @override
  final BuiltList<GUserStatsData_User_statistics_anime_scores?>? scores;
  @override
  final BuiltList<GUserStatsData_User_statistics_anime_lengths?>? lengths;
  @override
  final BuiltList<GUserStatsData_User_statistics_anime_releaseYears?>?
      releaseYears;
  @override
  final BuiltList<GUserStatsData_User_statistics_anime_startYears?>? startYears;
  @override
  final BuiltList<GUserStatsData_User_statistics_anime_countries?>? countries;

  factory _$GUserStatsData_User_statistics_anime(
          [void Function(GUserStatsData_User_statistics_animeBuilder)?
              updates]) =>
      (new GUserStatsData_User_statistics_animeBuilder()..update(updates))
          ._build();

  _$GUserStatsData_User_statistics_anime._(
      {required this.G__typename,
      this.formats,
      this.statuses,
      this.scores,
      this.lengths,
      this.releaseYears,
      this.startYears,
      this.countries})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserStatsData_User_statistics_anime', 'G__typename');
  }

  @override
  GUserStatsData_User_statistics_anime rebuild(
          void Function(GUserStatsData_User_statistics_animeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserStatsData_User_statistics_animeBuilder toBuilder() =>
      new GUserStatsData_User_statistics_animeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserStatsData_User_statistics_anime &&
        G__typename == other.G__typename &&
        formats == other.formats &&
        statuses == other.statuses &&
        scores == other.scores &&
        lengths == other.lengths &&
        releaseYears == other.releaseYears &&
        startYears == other.startYears &&
        countries == other.countries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, formats.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jc(_$hash, scores.hashCode);
    _$hash = $jc(_$hash, lengths.hashCode);
    _$hash = $jc(_$hash, releaseYears.hashCode);
    _$hash = $jc(_$hash, startYears.hashCode);
    _$hash = $jc(_$hash, countries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserStatsData_User_statistics_anime')
          ..add('G__typename', G__typename)
          ..add('formats', formats)
          ..add('statuses', statuses)
          ..add('scores', scores)
          ..add('lengths', lengths)
          ..add('releaseYears', releaseYears)
          ..add('startYears', startYears)
          ..add('countries', countries))
        .toString();
  }
}

class GUserStatsData_User_statistics_animeBuilder
    implements
        Builder<GUserStatsData_User_statistics_anime,
            GUserStatsData_User_statistics_animeBuilder> {
  _$GUserStatsData_User_statistics_anime? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GUserStatsData_User_statistics_anime_formats?>? _formats;
  ListBuilder<GUserStatsData_User_statistics_anime_formats?> get formats =>
      _$this._formats ??=
          new ListBuilder<GUserStatsData_User_statistics_anime_formats?>();
  set formats(
          ListBuilder<GUserStatsData_User_statistics_anime_formats?>?
              formats) =>
      _$this._formats = formats;

  ListBuilder<GUserStatsData_User_statistics_anime_statuses?>? _statuses;
  ListBuilder<GUserStatsData_User_statistics_anime_statuses?> get statuses =>
      _$this._statuses ??=
          new ListBuilder<GUserStatsData_User_statistics_anime_statuses?>();
  set statuses(
          ListBuilder<GUserStatsData_User_statistics_anime_statuses?>?
              statuses) =>
      _$this._statuses = statuses;

  ListBuilder<GUserStatsData_User_statistics_anime_scores?>? _scores;
  ListBuilder<GUserStatsData_User_statistics_anime_scores?> get scores =>
      _$this._scores ??=
          new ListBuilder<GUserStatsData_User_statistics_anime_scores?>();
  set scores(
          ListBuilder<GUserStatsData_User_statistics_anime_scores?>? scores) =>
      _$this._scores = scores;

  ListBuilder<GUserStatsData_User_statistics_anime_lengths?>? _lengths;
  ListBuilder<GUserStatsData_User_statistics_anime_lengths?> get lengths =>
      _$this._lengths ??=
          new ListBuilder<GUserStatsData_User_statistics_anime_lengths?>();
  set lengths(
          ListBuilder<GUserStatsData_User_statistics_anime_lengths?>?
              lengths) =>
      _$this._lengths = lengths;

  ListBuilder<GUserStatsData_User_statistics_anime_releaseYears?>?
      _releaseYears;
  ListBuilder<GUserStatsData_User_statistics_anime_releaseYears?>
      get releaseYears => _$this._releaseYears ??=
          new ListBuilder<GUserStatsData_User_statistics_anime_releaseYears?>();
  set releaseYears(
          ListBuilder<GUserStatsData_User_statistics_anime_releaseYears?>?
              releaseYears) =>
      _$this._releaseYears = releaseYears;

  ListBuilder<GUserStatsData_User_statistics_anime_startYears?>? _startYears;
  ListBuilder<GUserStatsData_User_statistics_anime_startYears?>
      get startYears => _$this._startYears ??=
          new ListBuilder<GUserStatsData_User_statistics_anime_startYears?>();
  set startYears(
          ListBuilder<GUserStatsData_User_statistics_anime_startYears?>?
              startYears) =>
      _$this._startYears = startYears;

  ListBuilder<GUserStatsData_User_statistics_anime_countries?>? _countries;
  ListBuilder<GUserStatsData_User_statistics_anime_countries?> get countries =>
      _$this._countries ??=
          new ListBuilder<GUserStatsData_User_statistics_anime_countries?>();
  set countries(
          ListBuilder<GUserStatsData_User_statistics_anime_countries?>?
              countries) =>
      _$this._countries = countries;

  GUserStatsData_User_statistics_animeBuilder() {
    GUserStatsData_User_statistics_anime._initializeBuilder(this);
  }

  GUserStatsData_User_statistics_animeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _formats = $v.formats?.toBuilder();
      _statuses = $v.statuses?.toBuilder();
      _scores = $v.scores?.toBuilder();
      _lengths = $v.lengths?.toBuilder();
      _releaseYears = $v.releaseYears?.toBuilder();
      _startYears = $v.startYears?.toBuilder();
      _countries = $v.countries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserStatsData_User_statistics_anime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserStatsData_User_statistics_anime;
  }

  @override
  void update(
      void Function(GUserStatsData_User_statistics_animeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserStatsData_User_statistics_anime build() => _build();

  _$GUserStatsData_User_statistics_anime _build() {
    _$GUserStatsData_User_statistics_anime _$result;
    try {
      _$result = _$v ??
          new _$GUserStatsData_User_statistics_anime._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserStatsData_User_statistics_anime', 'G__typename'),
              formats: _formats?.build(),
              statuses: _statuses?.build(),
              scores: _scores?.build(),
              lengths: _lengths?.build(),
              releaseYears: _releaseYears?.build(),
              startYears: _startYears?.build(),
              countries: _countries?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'formats';
        _formats?.build();
        _$failedField = 'statuses';
        _statuses?.build();
        _$failedField = 'scores';
        _scores?.build();
        _$failedField = 'lengths';
        _lengths?.build();
        _$failedField = 'releaseYears';
        _releaseYears?.build();
        _$failedField = 'startYears';
        _startYears?.build();
        _$failedField = 'countries';
        _countries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserStatsData_User_statistics_anime',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserStatsData_User_statistics_anime_formats
    extends GUserStatsData_User_statistics_anime_formats {
  @override
  final String G__typename;
  @override
  final _i2.GMediaFormat? format;
  @override
  final int count;
  @override
  final double meanScore;
  @override
  final int minutesWatched;
  @override
  final int chaptersRead;
  @override
  final BuiltList<int?> mediaIds;

  factory _$GUserStatsData_User_statistics_anime_formats(
          [void Function(GUserStatsData_User_statistics_anime_formatsBuilder)?
              updates]) =>
      (new GUserStatsData_User_statistics_anime_formatsBuilder()
            ..update(updates))
          ._build();

  _$GUserStatsData_User_statistics_anime_formats._(
      {required this.G__typename,
      this.format,
      required this.count,
      required this.meanScore,
      required this.minutesWatched,
      required this.chaptersRead,
      required this.mediaIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserStatsData_User_statistics_anime_formats', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GUserStatsData_User_statistics_anime_formats', 'count');
    BuiltValueNullFieldError.checkNotNull(meanScore,
        r'GUserStatsData_User_statistics_anime_formats', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(minutesWatched,
        r'GUserStatsData_User_statistics_anime_formats', 'minutesWatched');
    BuiltValueNullFieldError.checkNotNull(chaptersRead,
        r'GUserStatsData_User_statistics_anime_formats', 'chaptersRead');
    BuiltValueNullFieldError.checkNotNull(
        mediaIds, r'GUserStatsData_User_statistics_anime_formats', 'mediaIds');
  }

  @override
  GUserStatsData_User_statistics_anime_formats rebuild(
          void Function(GUserStatsData_User_statistics_anime_formatsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserStatsData_User_statistics_anime_formatsBuilder toBuilder() =>
      new GUserStatsData_User_statistics_anime_formatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserStatsData_User_statistics_anime_formats &&
        G__typename == other.G__typename &&
        format == other.format &&
        count == other.count &&
        meanScore == other.meanScore &&
        minutesWatched == other.minutesWatched &&
        chaptersRead == other.chaptersRead &&
        mediaIds == other.mediaIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, minutesWatched.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, mediaIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserStatsData_User_statistics_anime_formats')
          ..add('G__typename', G__typename)
          ..add('format', format)
          ..add('count', count)
          ..add('meanScore', meanScore)
          ..add('minutesWatched', minutesWatched)
          ..add('chaptersRead', chaptersRead)
          ..add('mediaIds', mediaIds))
        .toString();
  }
}

class GUserStatsData_User_statistics_anime_formatsBuilder
    implements
        Builder<GUserStatsData_User_statistics_anime_formats,
            GUserStatsData_User_statistics_anime_formatsBuilder> {
  _$GUserStatsData_User_statistics_anime_formats? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GMediaFormat? _format;
  _i2.GMediaFormat? get format => _$this._format;
  set format(_i2.GMediaFormat? format) => _$this._format = format;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  int? _minutesWatched;
  int? get minutesWatched => _$this._minutesWatched;
  set minutesWatched(int? minutesWatched) =>
      _$this._minutesWatched = minutesWatched;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  ListBuilder<int?>? _mediaIds;
  ListBuilder<int?> get mediaIds =>
      _$this._mediaIds ??= new ListBuilder<int?>();
  set mediaIds(ListBuilder<int?>? mediaIds) => _$this._mediaIds = mediaIds;

  GUserStatsData_User_statistics_anime_formatsBuilder() {
    GUserStatsData_User_statistics_anime_formats._initializeBuilder(this);
  }

  GUserStatsData_User_statistics_anime_formatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _format = $v.format;
      _count = $v.count;
      _meanScore = $v.meanScore;
      _minutesWatched = $v.minutesWatched;
      _chaptersRead = $v.chaptersRead;
      _mediaIds = $v.mediaIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserStatsData_User_statistics_anime_formats other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserStatsData_User_statistics_anime_formats;
  }

  @override
  void update(
      void Function(GUserStatsData_User_statistics_anime_formatsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserStatsData_User_statistics_anime_formats build() => _build();

  _$GUserStatsData_User_statistics_anime_formats _build() {
    _$GUserStatsData_User_statistics_anime_formats _$result;
    try {
      _$result = _$v ??
          new _$GUserStatsData_User_statistics_anime_formats._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserStatsData_User_statistics_anime_formats',
                  'G__typename'),
              format: format,
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'GUserStatsData_User_statistics_anime_formats', 'count'),
              meanScore: BuiltValueNullFieldError.checkNotNull(meanScore,
                  r'GUserStatsData_User_statistics_anime_formats', 'meanScore'),
              minutesWatched: BuiltValueNullFieldError.checkNotNull(
                  minutesWatched,
                  r'GUserStatsData_User_statistics_anime_formats',
                  'minutesWatched'),
              chaptersRead: BuiltValueNullFieldError.checkNotNull(
                  chaptersRead,
                  r'GUserStatsData_User_statistics_anime_formats',
                  'chaptersRead'),
              mediaIds: mediaIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaIds';
        mediaIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserStatsData_User_statistics_anime_formats',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserStatsData_User_statistics_anime_statuses
    extends GUserStatsData_User_statistics_anime_statuses {
  @override
  final String G__typename;
  @override
  final _i2.GMediaListStatus? status;
  @override
  final int count;
  @override
  final double meanScore;
  @override
  final int minutesWatched;
  @override
  final int chaptersRead;
  @override
  final BuiltList<int?> mediaIds;

  factory _$GUserStatsData_User_statistics_anime_statuses(
          [void Function(GUserStatsData_User_statistics_anime_statusesBuilder)?
              updates]) =>
      (new GUserStatsData_User_statistics_anime_statusesBuilder()
            ..update(updates))
          ._build();

  _$GUserStatsData_User_statistics_anime_statuses._(
      {required this.G__typename,
      this.status,
      required this.count,
      required this.meanScore,
      required this.minutesWatched,
      required this.chaptersRead,
      required this.mediaIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserStatsData_User_statistics_anime_statuses', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GUserStatsData_User_statistics_anime_statuses', 'count');
    BuiltValueNullFieldError.checkNotNull(meanScore,
        r'GUserStatsData_User_statistics_anime_statuses', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(minutesWatched,
        r'GUserStatsData_User_statistics_anime_statuses', 'minutesWatched');
    BuiltValueNullFieldError.checkNotNull(chaptersRead,
        r'GUserStatsData_User_statistics_anime_statuses', 'chaptersRead');
    BuiltValueNullFieldError.checkNotNull(
        mediaIds, r'GUserStatsData_User_statistics_anime_statuses', 'mediaIds');
  }

  @override
  GUserStatsData_User_statistics_anime_statuses rebuild(
          void Function(GUserStatsData_User_statistics_anime_statusesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserStatsData_User_statistics_anime_statusesBuilder toBuilder() =>
      new GUserStatsData_User_statistics_anime_statusesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserStatsData_User_statistics_anime_statuses &&
        G__typename == other.G__typename &&
        status == other.status &&
        count == other.count &&
        meanScore == other.meanScore &&
        minutesWatched == other.minutesWatched &&
        chaptersRead == other.chaptersRead &&
        mediaIds == other.mediaIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, minutesWatched.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, mediaIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserStatsData_User_statistics_anime_statuses')
          ..add('G__typename', G__typename)
          ..add('status', status)
          ..add('count', count)
          ..add('meanScore', meanScore)
          ..add('minutesWatched', minutesWatched)
          ..add('chaptersRead', chaptersRead)
          ..add('mediaIds', mediaIds))
        .toString();
  }
}

class GUserStatsData_User_statistics_anime_statusesBuilder
    implements
        Builder<GUserStatsData_User_statistics_anime_statuses,
            GUserStatsData_User_statistics_anime_statusesBuilder> {
  _$GUserStatsData_User_statistics_anime_statuses? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GMediaListStatus? _status;
  _i2.GMediaListStatus? get status => _$this._status;
  set status(_i2.GMediaListStatus? status) => _$this._status = status;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  int? _minutesWatched;
  int? get minutesWatched => _$this._minutesWatched;
  set minutesWatched(int? minutesWatched) =>
      _$this._minutesWatched = minutesWatched;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  ListBuilder<int?>? _mediaIds;
  ListBuilder<int?> get mediaIds =>
      _$this._mediaIds ??= new ListBuilder<int?>();
  set mediaIds(ListBuilder<int?>? mediaIds) => _$this._mediaIds = mediaIds;

  GUserStatsData_User_statistics_anime_statusesBuilder() {
    GUserStatsData_User_statistics_anime_statuses._initializeBuilder(this);
  }

  GUserStatsData_User_statistics_anime_statusesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _status = $v.status;
      _count = $v.count;
      _meanScore = $v.meanScore;
      _minutesWatched = $v.minutesWatched;
      _chaptersRead = $v.chaptersRead;
      _mediaIds = $v.mediaIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserStatsData_User_statistics_anime_statuses other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserStatsData_User_statistics_anime_statuses;
  }

  @override
  void update(
      void Function(GUserStatsData_User_statistics_anime_statusesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserStatsData_User_statistics_anime_statuses build() => _build();

  _$GUserStatsData_User_statistics_anime_statuses _build() {
    _$GUserStatsData_User_statistics_anime_statuses _$result;
    try {
      _$result = _$v ??
          new _$GUserStatsData_User_statistics_anime_statuses._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserStatsData_User_statistics_anime_statuses',
                  'G__typename'),
              status: status,
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'GUserStatsData_User_statistics_anime_statuses', 'count'),
              meanScore: BuiltValueNullFieldError.checkNotNull(
                  meanScore,
                  r'GUserStatsData_User_statistics_anime_statuses',
                  'meanScore'),
              minutesWatched: BuiltValueNullFieldError.checkNotNull(
                  minutesWatched,
                  r'GUserStatsData_User_statistics_anime_statuses',
                  'minutesWatched'),
              chaptersRead: BuiltValueNullFieldError.checkNotNull(
                  chaptersRead,
                  r'GUserStatsData_User_statistics_anime_statuses',
                  'chaptersRead'),
              mediaIds: mediaIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaIds';
        mediaIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserStatsData_User_statistics_anime_statuses',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserStatsData_User_statistics_anime_scores
    extends GUserStatsData_User_statistics_anime_scores {
  @override
  final String G__typename;
  @override
  final int? score;
  @override
  final int count;
  @override
  final double meanScore;
  @override
  final int minutesWatched;
  @override
  final int chaptersRead;
  @override
  final BuiltList<int?> mediaIds;

  factory _$GUserStatsData_User_statistics_anime_scores(
          [void Function(GUserStatsData_User_statistics_anime_scoresBuilder)?
              updates]) =>
      (new GUserStatsData_User_statistics_anime_scoresBuilder()
            ..update(updates))
          ._build();

  _$GUserStatsData_User_statistics_anime_scores._(
      {required this.G__typename,
      this.score,
      required this.count,
      required this.meanScore,
      required this.minutesWatched,
      required this.chaptersRead,
      required this.mediaIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserStatsData_User_statistics_anime_scores', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GUserStatsData_User_statistics_anime_scores', 'count');
    BuiltValueNullFieldError.checkNotNull(
        meanScore, r'GUserStatsData_User_statistics_anime_scores', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(minutesWatched,
        r'GUserStatsData_User_statistics_anime_scores', 'minutesWatched');
    BuiltValueNullFieldError.checkNotNull(chaptersRead,
        r'GUserStatsData_User_statistics_anime_scores', 'chaptersRead');
    BuiltValueNullFieldError.checkNotNull(
        mediaIds, r'GUserStatsData_User_statistics_anime_scores', 'mediaIds');
  }

  @override
  GUserStatsData_User_statistics_anime_scores rebuild(
          void Function(GUserStatsData_User_statistics_anime_scoresBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserStatsData_User_statistics_anime_scoresBuilder toBuilder() =>
      new GUserStatsData_User_statistics_anime_scoresBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserStatsData_User_statistics_anime_scores &&
        G__typename == other.G__typename &&
        score == other.score &&
        count == other.count &&
        meanScore == other.meanScore &&
        minutesWatched == other.minutesWatched &&
        chaptersRead == other.chaptersRead &&
        mediaIds == other.mediaIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, minutesWatched.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, mediaIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserStatsData_User_statistics_anime_scores')
          ..add('G__typename', G__typename)
          ..add('score', score)
          ..add('count', count)
          ..add('meanScore', meanScore)
          ..add('minutesWatched', minutesWatched)
          ..add('chaptersRead', chaptersRead)
          ..add('mediaIds', mediaIds))
        .toString();
  }
}

class GUserStatsData_User_statistics_anime_scoresBuilder
    implements
        Builder<GUserStatsData_User_statistics_anime_scores,
            GUserStatsData_User_statistics_anime_scoresBuilder> {
  _$GUserStatsData_User_statistics_anime_scores? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  int? _minutesWatched;
  int? get minutesWatched => _$this._minutesWatched;
  set minutesWatched(int? minutesWatched) =>
      _$this._minutesWatched = minutesWatched;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  ListBuilder<int?>? _mediaIds;
  ListBuilder<int?> get mediaIds =>
      _$this._mediaIds ??= new ListBuilder<int?>();
  set mediaIds(ListBuilder<int?>? mediaIds) => _$this._mediaIds = mediaIds;

  GUserStatsData_User_statistics_anime_scoresBuilder() {
    GUserStatsData_User_statistics_anime_scores._initializeBuilder(this);
  }

  GUserStatsData_User_statistics_anime_scoresBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _score = $v.score;
      _count = $v.count;
      _meanScore = $v.meanScore;
      _minutesWatched = $v.minutesWatched;
      _chaptersRead = $v.chaptersRead;
      _mediaIds = $v.mediaIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserStatsData_User_statistics_anime_scores other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserStatsData_User_statistics_anime_scores;
  }

  @override
  void update(
      void Function(GUserStatsData_User_statistics_anime_scoresBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserStatsData_User_statistics_anime_scores build() => _build();

  _$GUserStatsData_User_statistics_anime_scores _build() {
    _$GUserStatsData_User_statistics_anime_scores _$result;
    try {
      _$result = _$v ??
          new _$GUserStatsData_User_statistics_anime_scores._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserStatsData_User_statistics_anime_scores',
                  'G__typename'),
              score: score,
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'GUserStatsData_User_statistics_anime_scores', 'count'),
              meanScore: BuiltValueNullFieldError.checkNotNull(meanScore,
                  r'GUserStatsData_User_statistics_anime_scores', 'meanScore'),
              minutesWatched: BuiltValueNullFieldError.checkNotNull(
                  minutesWatched,
                  r'GUserStatsData_User_statistics_anime_scores',
                  'minutesWatched'),
              chaptersRead: BuiltValueNullFieldError.checkNotNull(
                  chaptersRead,
                  r'GUserStatsData_User_statistics_anime_scores',
                  'chaptersRead'),
              mediaIds: mediaIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaIds';
        mediaIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserStatsData_User_statistics_anime_scores',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserStatsData_User_statistics_anime_lengths
    extends GUserStatsData_User_statistics_anime_lengths {
  @override
  final String G__typename;
  @override
  final String? length;
  @override
  final int count;
  @override
  final double meanScore;
  @override
  final int minutesWatched;
  @override
  final int chaptersRead;
  @override
  final BuiltList<int?> mediaIds;

  factory _$GUserStatsData_User_statistics_anime_lengths(
          [void Function(GUserStatsData_User_statistics_anime_lengthsBuilder)?
              updates]) =>
      (new GUserStatsData_User_statistics_anime_lengthsBuilder()
            ..update(updates))
          ._build();

  _$GUserStatsData_User_statistics_anime_lengths._(
      {required this.G__typename,
      this.length,
      required this.count,
      required this.meanScore,
      required this.minutesWatched,
      required this.chaptersRead,
      required this.mediaIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserStatsData_User_statistics_anime_lengths', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GUserStatsData_User_statistics_anime_lengths', 'count');
    BuiltValueNullFieldError.checkNotNull(meanScore,
        r'GUserStatsData_User_statistics_anime_lengths', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(minutesWatched,
        r'GUserStatsData_User_statistics_anime_lengths', 'minutesWatched');
    BuiltValueNullFieldError.checkNotNull(chaptersRead,
        r'GUserStatsData_User_statistics_anime_lengths', 'chaptersRead');
    BuiltValueNullFieldError.checkNotNull(
        mediaIds, r'GUserStatsData_User_statistics_anime_lengths', 'mediaIds');
  }

  @override
  GUserStatsData_User_statistics_anime_lengths rebuild(
          void Function(GUserStatsData_User_statistics_anime_lengthsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserStatsData_User_statistics_anime_lengthsBuilder toBuilder() =>
      new GUserStatsData_User_statistics_anime_lengthsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserStatsData_User_statistics_anime_lengths &&
        G__typename == other.G__typename &&
        length == other.length &&
        count == other.count &&
        meanScore == other.meanScore &&
        minutesWatched == other.minutesWatched &&
        chaptersRead == other.chaptersRead &&
        mediaIds == other.mediaIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, length.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, minutesWatched.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, mediaIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserStatsData_User_statistics_anime_lengths')
          ..add('G__typename', G__typename)
          ..add('length', length)
          ..add('count', count)
          ..add('meanScore', meanScore)
          ..add('minutesWatched', minutesWatched)
          ..add('chaptersRead', chaptersRead)
          ..add('mediaIds', mediaIds))
        .toString();
  }
}

class GUserStatsData_User_statistics_anime_lengthsBuilder
    implements
        Builder<GUserStatsData_User_statistics_anime_lengths,
            GUserStatsData_User_statistics_anime_lengthsBuilder> {
  _$GUserStatsData_User_statistics_anime_lengths? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _length;
  String? get length => _$this._length;
  set length(String? length) => _$this._length = length;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  int? _minutesWatched;
  int? get minutesWatched => _$this._minutesWatched;
  set minutesWatched(int? minutesWatched) =>
      _$this._minutesWatched = minutesWatched;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  ListBuilder<int?>? _mediaIds;
  ListBuilder<int?> get mediaIds =>
      _$this._mediaIds ??= new ListBuilder<int?>();
  set mediaIds(ListBuilder<int?>? mediaIds) => _$this._mediaIds = mediaIds;

  GUserStatsData_User_statistics_anime_lengthsBuilder() {
    GUserStatsData_User_statistics_anime_lengths._initializeBuilder(this);
  }

  GUserStatsData_User_statistics_anime_lengthsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _length = $v.length;
      _count = $v.count;
      _meanScore = $v.meanScore;
      _minutesWatched = $v.minutesWatched;
      _chaptersRead = $v.chaptersRead;
      _mediaIds = $v.mediaIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserStatsData_User_statistics_anime_lengths other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserStatsData_User_statistics_anime_lengths;
  }

  @override
  void update(
      void Function(GUserStatsData_User_statistics_anime_lengthsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserStatsData_User_statistics_anime_lengths build() => _build();

  _$GUserStatsData_User_statistics_anime_lengths _build() {
    _$GUserStatsData_User_statistics_anime_lengths _$result;
    try {
      _$result = _$v ??
          new _$GUserStatsData_User_statistics_anime_lengths._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserStatsData_User_statistics_anime_lengths',
                  'G__typename'),
              length: length,
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'GUserStatsData_User_statistics_anime_lengths', 'count'),
              meanScore: BuiltValueNullFieldError.checkNotNull(meanScore,
                  r'GUserStatsData_User_statistics_anime_lengths', 'meanScore'),
              minutesWatched: BuiltValueNullFieldError.checkNotNull(
                  minutesWatched,
                  r'GUserStatsData_User_statistics_anime_lengths',
                  'minutesWatched'),
              chaptersRead: BuiltValueNullFieldError.checkNotNull(
                  chaptersRead,
                  r'GUserStatsData_User_statistics_anime_lengths',
                  'chaptersRead'),
              mediaIds: mediaIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaIds';
        mediaIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserStatsData_User_statistics_anime_lengths',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserStatsData_User_statistics_anime_releaseYears
    extends GUserStatsData_User_statistics_anime_releaseYears {
  @override
  final String G__typename;
  @override
  final int? releaseYear;
  @override
  final int count;
  @override
  final double meanScore;
  @override
  final int minutesWatched;
  @override
  final int chaptersRead;
  @override
  final BuiltList<int?> mediaIds;

  factory _$GUserStatsData_User_statistics_anime_releaseYears(
          [void Function(
                  GUserStatsData_User_statistics_anime_releaseYearsBuilder)?
              updates]) =>
      (new GUserStatsData_User_statistics_anime_releaseYearsBuilder()
            ..update(updates))
          ._build();

  _$GUserStatsData_User_statistics_anime_releaseYears._(
      {required this.G__typename,
      this.releaseYear,
      required this.count,
      required this.meanScore,
      required this.minutesWatched,
      required this.chaptersRead,
      required this.mediaIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserStatsData_User_statistics_anime_releaseYears', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GUserStatsData_User_statistics_anime_releaseYears', 'count');
    BuiltValueNullFieldError.checkNotNull(meanScore,
        r'GUserStatsData_User_statistics_anime_releaseYears', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(minutesWatched,
        r'GUserStatsData_User_statistics_anime_releaseYears', 'minutesWatched');
    BuiltValueNullFieldError.checkNotNull(chaptersRead,
        r'GUserStatsData_User_statistics_anime_releaseYears', 'chaptersRead');
    BuiltValueNullFieldError.checkNotNull(mediaIds,
        r'GUserStatsData_User_statistics_anime_releaseYears', 'mediaIds');
  }

  @override
  GUserStatsData_User_statistics_anime_releaseYears rebuild(
          void Function(
                  GUserStatsData_User_statistics_anime_releaseYearsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserStatsData_User_statistics_anime_releaseYearsBuilder toBuilder() =>
      new GUserStatsData_User_statistics_anime_releaseYearsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserStatsData_User_statistics_anime_releaseYears &&
        G__typename == other.G__typename &&
        releaseYear == other.releaseYear &&
        count == other.count &&
        meanScore == other.meanScore &&
        minutesWatched == other.minutesWatched &&
        chaptersRead == other.chaptersRead &&
        mediaIds == other.mediaIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, releaseYear.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, minutesWatched.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, mediaIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserStatsData_User_statistics_anime_releaseYears')
          ..add('G__typename', G__typename)
          ..add('releaseYear', releaseYear)
          ..add('count', count)
          ..add('meanScore', meanScore)
          ..add('minutesWatched', minutesWatched)
          ..add('chaptersRead', chaptersRead)
          ..add('mediaIds', mediaIds))
        .toString();
  }
}

class GUserStatsData_User_statistics_anime_releaseYearsBuilder
    implements
        Builder<GUserStatsData_User_statistics_anime_releaseYears,
            GUserStatsData_User_statistics_anime_releaseYearsBuilder> {
  _$GUserStatsData_User_statistics_anime_releaseYears? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _releaseYear;
  int? get releaseYear => _$this._releaseYear;
  set releaseYear(int? releaseYear) => _$this._releaseYear = releaseYear;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  int? _minutesWatched;
  int? get minutesWatched => _$this._minutesWatched;
  set minutesWatched(int? minutesWatched) =>
      _$this._minutesWatched = minutesWatched;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  ListBuilder<int?>? _mediaIds;
  ListBuilder<int?> get mediaIds =>
      _$this._mediaIds ??= new ListBuilder<int?>();
  set mediaIds(ListBuilder<int?>? mediaIds) => _$this._mediaIds = mediaIds;

  GUserStatsData_User_statistics_anime_releaseYearsBuilder() {
    GUserStatsData_User_statistics_anime_releaseYears._initializeBuilder(this);
  }

  GUserStatsData_User_statistics_anime_releaseYearsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _releaseYear = $v.releaseYear;
      _count = $v.count;
      _meanScore = $v.meanScore;
      _minutesWatched = $v.minutesWatched;
      _chaptersRead = $v.chaptersRead;
      _mediaIds = $v.mediaIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserStatsData_User_statistics_anime_releaseYears other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserStatsData_User_statistics_anime_releaseYears;
  }

  @override
  void update(
      void Function(GUserStatsData_User_statistics_anime_releaseYearsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserStatsData_User_statistics_anime_releaseYears build() => _build();

  _$GUserStatsData_User_statistics_anime_releaseYears _build() {
    _$GUserStatsData_User_statistics_anime_releaseYears _$result;
    try {
      _$result = _$v ??
          new _$GUserStatsData_User_statistics_anime_releaseYears._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserStatsData_User_statistics_anime_releaseYears',
                  'G__typename'),
              releaseYear: releaseYear,
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'GUserStatsData_User_statistics_anime_releaseYears', 'count'),
              meanScore: BuiltValueNullFieldError.checkNotNull(meanScore,
                  r'GUserStatsData_User_statistics_anime_releaseYears', 'meanScore'),
              minutesWatched: BuiltValueNullFieldError.checkNotNull(
                  minutesWatched,
                  r'GUserStatsData_User_statistics_anime_releaseYears',
                  'minutesWatched'),
              chaptersRead: BuiltValueNullFieldError.checkNotNull(
                  chaptersRead,
                  r'GUserStatsData_User_statistics_anime_releaseYears',
                  'chaptersRead'),
              mediaIds: mediaIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaIds';
        mediaIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserStatsData_User_statistics_anime_releaseYears',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserStatsData_User_statistics_anime_startYears
    extends GUserStatsData_User_statistics_anime_startYears {
  @override
  final String G__typename;
  @override
  final int? startYear;
  @override
  final int count;
  @override
  final double meanScore;
  @override
  final int minutesWatched;
  @override
  final int chaptersRead;
  @override
  final BuiltList<int?> mediaIds;

  factory _$GUserStatsData_User_statistics_anime_startYears(
          [void Function(
                  GUserStatsData_User_statistics_anime_startYearsBuilder)?
              updates]) =>
      (new GUserStatsData_User_statistics_anime_startYearsBuilder()
            ..update(updates))
          ._build();

  _$GUserStatsData_User_statistics_anime_startYears._(
      {required this.G__typename,
      this.startYear,
      required this.count,
      required this.meanScore,
      required this.minutesWatched,
      required this.chaptersRead,
      required this.mediaIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserStatsData_User_statistics_anime_startYears', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GUserStatsData_User_statistics_anime_startYears', 'count');
    BuiltValueNullFieldError.checkNotNull(meanScore,
        r'GUserStatsData_User_statistics_anime_startYears', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(minutesWatched,
        r'GUserStatsData_User_statistics_anime_startYears', 'minutesWatched');
    BuiltValueNullFieldError.checkNotNull(chaptersRead,
        r'GUserStatsData_User_statistics_anime_startYears', 'chaptersRead');
    BuiltValueNullFieldError.checkNotNull(mediaIds,
        r'GUserStatsData_User_statistics_anime_startYears', 'mediaIds');
  }

  @override
  GUserStatsData_User_statistics_anime_startYears rebuild(
          void Function(GUserStatsData_User_statistics_anime_startYearsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserStatsData_User_statistics_anime_startYearsBuilder toBuilder() =>
      new GUserStatsData_User_statistics_anime_startYearsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserStatsData_User_statistics_anime_startYears &&
        G__typename == other.G__typename &&
        startYear == other.startYear &&
        count == other.count &&
        meanScore == other.meanScore &&
        minutesWatched == other.minutesWatched &&
        chaptersRead == other.chaptersRead &&
        mediaIds == other.mediaIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, startYear.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, minutesWatched.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, mediaIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserStatsData_User_statistics_anime_startYears')
          ..add('G__typename', G__typename)
          ..add('startYear', startYear)
          ..add('count', count)
          ..add('meanScore', meanScore)
          ..add('minutesWatched', minutesWatched)
          ..add('chaptersRead', chaptersRead)
          ..add('mediaIds', mediaIds))
        .toString();
  }
}

class GUserStatsData_User_statistics_anime_startYearsBuilder
    implements
        Builder<GUserStatsData_User_statistics_anime_startYears,
            GUserStatsData_User_statistics_anime_startYearsBuilder> {
  _$GUserStatsData_User_statistics_anime_startYears? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _startYear;
  int? get startYear => _$this._startYear;
  set startYear(int? startYear) => _$this._startYear = startYear;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  int? _minutesWatched;
  int? get minutesWatched => _$this._minutesWatched;
  set minutesWatched(int? minutesWatched) =>
      _$this._minutesWatched = minutesWatched;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  ListBuilder<int?>? _mediaIds;
  ListBuilder<int?> get mediaIds =>
      _$this._mediaIds ??= new ListBuilder<int?>();
  set mediaIds(ListBuilder<int?>? mediaIds) => _$this._mediaIds = mediaIds;

  GUserStatsData_User_statistics_anime_startYearsBuilder() {
    GUserStatsData_User_statistics_anime_startYears._initializeBuilder(this);
  }

  GUserStatsData_User_statistics_anime_startYearsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _startYear = $v.startYear;
      _count = $v.count;
      _meanScore = $v.meanScore;
      _minutesWatched = $v.minutesWatched;
      _chaptersRead = $v.chaptersRead;
      _mediaIds = $v.mediaIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserStatsData_User_statistics_anime_startYears other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserStatsData_User_statistics_anime_startYears;
  }

  @override
  void update(
      void Function(GUserStatsData_User_statistics_anime_startYearsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserStatsData_User_statistics_anime_startYears build() => _build();

  _$GUserStatsData_User_statistics_anime_startYears _build() {
    _$GUserStatsData_User_statistics_anime_startYears _$result;
    try {
      _$result = _$v ??
          new _$GUserStatsData_User_statistics_anime_startYears._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserStatsData_User_statistics_anime_startYears',
                  'G__typename'),
              startYear: startYear,
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'GUserStatsData_User_statistics_anime_startYears', 'count'),
              meanScore: BuiltValueNullFieldError.checkNotNull(
                  meanScore,
                  r'GUserStatsData_User_statistics_anime_startYears',
                  'meanScore'),
              minutesWatched: BuiltValueNullFieldError.checkNotNull(
                  minutesWatched,
                  r'GUserStatsData_User_statistics_anime_startYears',
                  'minutesWatched'),
              chaptersRead: BuiltValueNullFieldError.checkNotNull(
                  chaptersRead,
                  r'GUserStatsData_User_statistics_anime_startYears',
                  'chaptersRead'),
              mediaIds: mediaIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaIds';
        mediaIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserStatsData_User_statistics_anime_startYears',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserStatsData_User_statistics_anime_countries
    extends GUserStatsData_User_statistics_anime_countries {
  @override
  final String G__typename;
  @override
  final _i2.GCountryCode? country;
  @override
  final int count;
  @override
  final double meanScore;
  @override
  final int minutesWatched;
  @override
  final int chaptersRead;
  @override
  final BuiltList<int?> mediaIds;

  factory _$GUserStatsData_User_statistics_anime_countries(
          [void Function(GUserStatsData_User_statistics_anime_countriesBuilder)?
              updates]) =>
      (new GUserStatsData_User_statistics_anime_countriesBuilder()
            ..update(updates))
          ._build();

  _$GUserStatsData_User_statistics_anime_countries._(
      {required this.G__typename,
      this.country,
      required this.count,
      required this.meanScore,
      required this.minutesWatched,
      required this.chaptersRead,
      required this.mediaIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserStatsData_User_statistics_anime_countries', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        count, r'GUserStatsData_User_statistics_anime_countries', 'count');
    BuiltValueNullFieldError.checkNotNull(meanScore,
        r'GUserStatsData_User_statistics_anime_countries', 'meanScore');
    BuiltValueNullFieldError.checkNotNull(minutesWatched,
        r'GUserStatsData_User_statistics_anime_countries', 'minutesWatched');
    BuiltValueNullFieldError.checkNotNull(chaptersRead,
        r'GUserStatsData_User_statistics_anime_countries', 'chaptersRead');
    BuiltValueNullFieldError.checkNotNull(mediaIds,
        r'GUserStatsData_User_statistics_anime_countries', 'mediaIds');
  }

  @override
  GUserStatsData_User_statistics_anime_countries rebuild(
          void Function(GUserStatsData_User_statistics_anime_countriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserStatsData_User_statistics_anime_countriesBuilder toBuilder() =>
      new GUserStatsData_User_statistics_anime_countriesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserStatsData_User_statistics_anime_countries &&
        G__typename == other.G__typename &&
        country == other.country &&
        count == other.count &&
        meanScore == other.meanScore &&
        minutesWatched == other.minutesWatched &&
        chaptersRead == other.chaptersRead &&
        mediaIds == other.mediaIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, meanScore.hashCode);
    _$hash = $jc(_$hash, minutesWatched.hashCode);
    _$hash = $jc(_$hash, chaptersRead.hashCode);
    _$hash = $jc(_$hash, mediaIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserStatsData_User_statistics_anime_countries')
          ..add('G__typename', G__typename)
          ..add('country', country)
          ..add('count', count)
          ..add('meanScore', meanScore)
          ..add('minutesWatched', minutesWatched)
          ..add('chaptersRead', chaptersRead)
          ..add('mediaIds', mediaIds))
        .toString();
  }
}

class GUserStatsData_User_statistics_anime_countriesBuilder
    implements
        Builder<GUserStatsData_User_statistics_anime_countries,
            GUserStatsData_User_statistics_anime_countriesBuilder> {
  _$GUserStatsData_User_statistics_anime_countries? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GCountryCodeBuilder? _country;
  _i2.GCountryCodeBuilder get country =>
      _$this._country ??= new _i2.GCountryCodeBuilder();
  set country(_i2.GCountryCodeBuilder? country) => _$this._country = country;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  double? _meanScore;
  double? get meanScore => _$this._meanScore;
  set meanScore(double? meanScore) => _$this._meanScore = meanScore;

  int? _minutesWatched;
  int? get minutesWatched => _$this._minutesWatched;
  set minutesWatched(int? minutesWatched) =>
      _$this._minutesWatched = minutesWatched;

  int? _chaptersRead;
  int? get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int? chaptersRead) => _$this._chaptersRead = chaptersRead;

  ListBuilder<int?>? _mediaIds;
  ListBuilder<int?> get mediaIds =>
      _$this._mediaIds ??= new ListBuilder<int?>();
  set mediaIds(ListBuilder<int?>? mediaIds) => _$this._mediaIds = mediaIds;

  GUserStatsData_User_statistics_anime_countriesBuilder() {
    GUserStatsData_User_statistics_anime_countries._initializeBuilder(this);
  }

  GUserStatsData_User_statistics_anime_countriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _country = $v.country?.toBuilder();
      _count = $v.count;
      _meanScore = $v.meanScore;
      _minutesWatched = $v.minutesWatched;
      _chaptersRead = $v.chaptersRead;
      _mediaIds = $v.mediaIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserStatsData_User_statistics_anime_countries other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserStatsData_User_statistics_anime_countries;
  }

  @override
  void update(
      void Function(GUserStatsData_User_statistics_anime_countriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserStatsData_User_statistics_anime_countries build() => _build();

  _$GUserStatsData_User_statistics_anime_countries _build() {
    _$GUserStatsData_User_statistics_anime_countries _$result;
    try {
      _$result = _$v ??
          new _$GUserStatsData_User_statistics_anime_countries._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserStatsData_User_statistics_anime_countries',
                  'G__typename'),
              country: _country?.build(),
              count: BuiltValueNullFieldError.checkNotNull(
                  count, r'GUserStatsData_User_statistics_anime_countries', 'count'),
              meanScore: BuiltValueNullFieldError.checkNotNull(meanScore,
                  r'GUserStatsData_User_statistics_anime_countries', 'meanScore'),
              minutesWatched: BuiltValueNullFieldError.checkNotNull(
                  minutesWatched,
                  r'GUserStatsData_User_statistics_anime_countries',
                  'minutesWatched'),
              chaptersRead: BuiltValueNullFieldError.checkNotNull(
                  chaptersRead,
                  r'GUserStatsData_User_statistics_anime_countries',
                  'chaptersRead'),
              mediaIds: mediaIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'country';
        _country?.build();

        _$failedField = 'mediaIds';
        mediaIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserStatsData_User_statistics_anime_countries',
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
