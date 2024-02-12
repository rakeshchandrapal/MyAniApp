// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'stats.data.gql.g.dart';

abstract class GUserStatsData
    implements Built<GUserStatsData, GUserStatsDataBuilder> {
  GUserStatsData._();

  factory GUserStatsData([Function(GUserStatsDataBuilder b) updates]) =
      _$GUserStatsData;

  static void _initializeBuilder(GUserStatsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserStatsData_User? get User;
  static Serializer<GUserStatsData> get serializer =>
      _$gUserStatsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserStatsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserStatsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserStatsData.serializer,
        json,
      );
}

abstract class GUserStatsData_User
    implements Built<GUserStatsData_User, GUserStatsData_UserBuilder> {
  GUserStatsData_User._();

  factory GUserStatsData_User(
      [Function(GUserStatsData_UserBuilder b) updates]) = _$GUserStatsData_User;

  static void _initializeBuilder(GUserStatsData_UserBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get name;
  GUserStatsData_User_statistics? get statistics;
  static Serializer<GUserStatsData_User> get serializer =>
      _$gUserStatsDataUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserStatsData_User.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserStatsData_User? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserStatsData_User.serializer,
        json,
      );
}

abstract class GUserStatsData_User_statistics
    implements
        Built<GUserStatsData_User_statistics,
            GUserStatsData_User_statisticsBuilder> {
  GUserStatsData_User_statistics._();

  factory GUserStatsData_User_statistics(
          [Function(GUserStatsData_User_statisticsBuilder b) updates]) =
      _$GUserStatsData_User_statistics;

  static void _initializeBuilder(GUserStatsData_User_statisticsBuilder b) =>
      b..G__typename = 'UserStatisticTypes';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserStatsData_User_statistics_anime? get anime;
  static Serializer<GUserStatsData_User_statistics> get serializer =>
      _$gUserStatsDataUserStatisticsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserStatsData_User_statistics.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserStatsData_User_statistics? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserStatsData_User_statistics.serializer,
        json,
      );
}

abstract class GUserStatsData_User_statistics_anime
    implements
        Built<GUserStatsData_User_statistics_anime,
            GUserStatsData_User_statistics_animeBuilder> {
  GUserStatsData_User_statistics_anime._();

  factory GUserStatsData_User_statistics_anime(
          [Function(GUserStatsData_User_statistics_animeBuilder b) updates]) =
      _$GUserStatsData_User_statistics_anime;

  static void _initializeBuilder(
          GUserStatsData_User_statistics_animeBuilder b) =>
      b..G__typename = 'UserStatistics';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GUserStatsData_User_statistics_anime_formats?>? get formats;
  BuiltList<GUserStatsData_User_statistics_anime_statuses?>? get statuses;
  BuiltList<GUserStatsData_User_statistics_anime_scores?>? get scores;
  BuiltList<GUserStatsData_User_statistics_anime_lengths?>? get lengths;
  BuiltList<GUserStatsData_User_statistics_anime_releaseYears?>?
      get releaseYears;
  BuiltList<GUserStatsData_User_statistics_anime_startYears?>? get startYears;
  BuiltList<GUserStatsData_User_statistics_anime_countries?>? get countries;
  static Serializer<GUserStatsData_User_statistics_anime> get serializer =>
      _$gUserStatsDataUserStatisticsAnimeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserStatsData_User_statistics_anime.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserStatsData_User_statistics_anime? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserStatsData_User_statistics_anime.serializer,
        json,
      );
}

abstract class GUserStatsData_User_statistics_anime_formats
    implements
        Built<GUserStatsData_User_statistics_anime_formats,
            GUserStatsData_User_statistics_anime_formatsBuilder> {
  GUserStatsData_User_statistics_anime_formats._();

  factory GUserStatsData_User_statistics_anime_formats(
      [Function(GUserStatsData_User_statistics_anime_formatsBuilder b)
          updates]) = _$GUserStatsData_User_statistics_anime_formats;

  static void _initializeBuilder(
          GUserStatsData_User_statistics_anime_formatsBuilder b) =>
      b..G__typename = 'UserFormatStatistic';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GMediaFormat? get format;
  int get count;
  double get meanScore;
  int get minutesWatched;
  int get chaptersRead;
  BuiltList<int?> get mediaIds;
  static Serializer<GUserStatsData_User_statistics_anime_formats>
      get serializer => _$gUserStatsDataUserStatisticsAnimeFormatsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserStatsData_User_statistics_anime_formats.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserStatsData_User_statistics_anime_formats? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserStatsData_User_statistics_anime_formats.serializer,
        json,
      );
}

abstract class GUserStatsData_User_statistics_anime_statuses
    implements
        Built<GUserStatsData_User_statistics_anime_statuses,
            GUserStatsData_User_statistics_anime_statusesBuilder> {
  GUserStatsData_User_statistics_anime_statuses._();

  factory GUserStatsData_User_statistics_anime_statuses(
      [Function(GUserStatsData_User_statistics_anime_statusesBuilder b)
          updates]) = _$GUserStatsData_User_statistics_anime_statuses;

  static void _initializeBuilder(
          GUserStatsData_User_statistics_anime_statusesBuilder b) =>
      b..G__typename = 'UserStatusStatistic';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GMediaListStatus? get status;
  int get count;
  double get meanScore;
  int get minutesWatched;
  int get chaptersRead;
  BuiltList<int?> get mediaIds;
  static Serializer<GUserStatsData_User_statistics_anime_statuses>
      get serializer => _$gUserStatsDataUserStatisticsAnimeStatusesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserStatsData_User_statistics_anime_statuses.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserStatsData_User_statistics_anime_statuses? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserStatsData_User_statistics_anime_statuses.serializer,
        json,
      );
}

abstract class GUserStatsData_User_statistics_anime_scores
    implements
        Built<GUserStatsData_User_statistics_anime_scores,
            GUserStatsData_User_statistics_anime_scoresBuilder> {
  GUserStatsData_User_statistics_anime_scores._();

  factory GUserStatsData_User_statistics_anime_scores(
      [Function(GUserStatsData_User_statistics_anime_scoresBuilder b)
          updates]) = _$GUserStatsData_User_statistics_anime_scores;

  static void _initializeBuilder(
          GUserStatsData_User_statistics_anime_scoresBuilder b) =>
      b..G__typename = 'UserScoreStatistic';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get score;
  int get count;
  double get meanScore;
  int get minutesWatched;
  int get chaptersRead;
  BuiltList<int?> get mediaIds;
  static Serializer<GUserStatsData_User_statistics_anime_scores>
      get serializer => _$gUserStatsDataUserStatisticsAnimeScoresSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserStatsData_User_statistics_anime_scores.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserStatsData_User_statistics_anime_scores? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserStatsData_User_statistics_anime_scores.serializer,
        json,
      );
}

abstract class GUserStatsData_User_statistics_anime_lengths
    implements
        Built<GUserStatsData_User_statistics_anime_lengths,
            GUserStatsData_User_statistics_anime_lengthsBuilder> {
  GUserStatsData_User_statistics_anime_lengths._();

  factory GUserStatsData_User_statistics_anime_lengths(
      [Function(GUserStatsData_User_statistics_anime_lengthsBuilder b)
          updates]) = _$GUserStatsData_User_statistics_anime_lengths;

  static void _initializeBuilder(
          GUserStatsData_User_statistics_anime_lengthsBuilder b) =>
      b..G__typename = 'UserLengthStatistic';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get length;
  int get count;
  double get meanScore;
  int get minutesWatched;
  int get chaptersRead;
  BuiltList<int?> get mediaIds;
  static Serializer<GUserStatsData_User_statistics_anime_lengths>
      get serializer => _$gUserStatsDataUserStatisticsAnimeLengthsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserStatsData_User_statistics_anime_lengths.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserStatsData_User_statistics_anime_lengths? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserStatsData_User_statistics_anime_lengths.serializer,
        json,
      );
}

abstract class GUserStatsData_User_statistics_anime_releaseYears
    implements
        Built<GUserStatsData_User_statistics_anime_releaseYears,
            GUserStatsData_User_statistics_anime_releaseYearsBuilder> {
  GUserStatsData_User_statistics_anime_releaseYears._();

  factory GUserStatsData_User_statistics_anime_releaseYears(
      [Function(GUserStatsData_User_statistics_anime_releaseYearsBuilder b)
          updates]) = _$GUserStatsData_User_statistics_anime_releaseYears;

  static void _initializeBuilder(
          GUserStatsData_User_statistics_anime_releaseYearsBuilder b) =>
      b..G__typename = 'UserReleaseYearStatistic';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get releaseYear;
  int get count;
  double get meanScore;
  int get minutesWatched;
  int get chaptersRead;
  BuiltList<int?> get mediaIds;
  static Serializer<GUserStatsData_User_statistics_anime_releaseYears>
      get serializer =>
          _$gUserStatsDataUserStatisticsAnimeReleaseYearsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserStatsData_User_statistics_anime_releaseYears.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserStatsData_User_statistics_anime_releaseYears? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserStatsData_User_statistics_anime_releaseYears.serializer,
        json,
      );
}

abstract class GUserStatsData_User_statistics_anime_startYears
    implements
        Built<GUserStatsData_User_statistics_anime_startYears,
            GUserStatsData_User_statistics_anime_startYearsBuilder> {
  GUserStatsData_User_statistics_anime_startYears._();

  factory GUserStatsData_User_statistics_anime_startYears(
      [Function(GUserStatsData_User_statistics_anime_startYearsBuilder b)
          updates]) = _$GUserStatsData_User_statistics_anime_startYears;

  static void _initializeBuilder(
          GUserStatsData_User_statistics_anime_startYearsBuilder b) =>
      b..G__typename = 'UserStartYearStatistic';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get startYear;
  int get count;
  double get meanScore;
  int get minutesWatched;
  int get chaptersRead;
  BuiltList<int?> get mediaIds;
  static Serializer<GUserStatsData_User_statistics_anime_startYears>
      get serializer => _$gUserStatsDataUserStatisticsAnimeStartYearsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserStatsData_User_statistics_anime_startYears.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserStatsData_User_statistics_anime_startYears? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserStatsData_User_statistics_anime_startYears.serializer,
        json,
      );
}

abstract class GUserStatsData_User_statistics_anime_countries
    implements
        Built<GUserStatsData_User_statistics_anime_countries,
            GUserStatsData_User_statistics_anime_countriesBuilder> {
  GUserStatsData_User_statistics_anime_countries._();

  factory GUserStatsData_User_statistics_anime_countries(
      [Function(GUserStatsData_User_statistics_anime_countriesBuilder b)
          updates]) = _$GUserStatsData_User_statistics_anime_countries;

  static void _initializeBuilder(
          GUserStatsData_User_statistics_anime_countriesBuilder b) =>
      b..G__typename = 'UserCountryStatistic';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GCountryCode? get country;
  int get count;
  double get meanScore;
  int get minutesWatched;
  int get chaptersRead;
  BuiltList<int?> get mediaIds;
  static Serializer<GUserStatsData_User_statistics_anime_countries>
      get serializer => _$gUserStatsDataUserStatisticsAnimeCountriesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserStatsData_User_statistics_anime_countries.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserStatsData_User_statistics_anime_countries? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserStatsData_User_statistics_anime_countries.serializer,
        json,
      );
}
