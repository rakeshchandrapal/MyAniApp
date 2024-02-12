// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'viewer.data.gql.g.dart';

abstract class GViewerData implements Built<GViewerData, GViewerDataBuilder> {
  GViewerData._();

  factory GViewerData([Function(GViewerDataBuilder b) updates]) = _$GViewerData;

  static void _initializeBuilder(GViewerDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GViewerData_Viewer? get Viewer;
  static Serializer<GViewerData> get serializer => _$gViewerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GViewerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GViewerData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GViewerData.serializer,
        json,
      );
}

abstract class GViewerData_Viewer
    implements Built<GViewerData_Viewer, GViewerData_ViewerBuilder>, GThisUser {
  GViewerData_Viewer._();

  factory GViewerData_Viewer([Function(GViewerData_ViewerBuilder b) updates]) =
      _$GViewerData_Viewer;

  static void _initializeBuilder(GViewerData_ViewerBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String? get about;
  @override
  String? get bannerImage;
  @override
  int? get unreadNotificationCount;
  @override
  GViewerData_Viewer_avatar? get avatar;
  @override
  GViewerData_Viewer_statistics? get statistics;
  @override
  GViewerData_Viewer_options? get options;
  @override
  GViewerData_Viewer_mediaListOptions? get mediaListOptions;
  static Serializer<GViewerData_Viewer> get serializer =>
      _$gViewerDataViewerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GViewerData_Viewer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GViewerData_Viewer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GViewerData_Viewer.serializer,
        json,
      );
}

abstract class GViewerData_Viewer_avatar
    implements
        Built<GViewerData_Viewer_avatar, GViewerData_Viewer_avatarBuilder>,
        GThisUser_avatar {
  GViewerData_Viewer_avatar._();

  factory GViewerData_Viewer_avatar(
          [Function(GViewerData_Viewer_avatarBuilder b) updates]) =
      _$GViewerData_Viewer_avatar;

  static void _initializeBuilder(GViewerData_Viewer_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GViewerData_Viewer_avatar> get serializer =>
      _$gViewerDataViewerAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GViewerData_Viewer_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GViewerData_Viewer_avatar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GViewerData_Viewer_avatar.serializer,
        json,
      );
}

abstract class GViewerData_Viewer_statistics
    implements
        Built<GViewerData_Viewer_statistics,
            GViewerData_Viewer_statisticsBuilder>,
        GThisUser_statistics {
  GViewerData_Viewer_statistics._();

  factory GViewerData_Viewer_statistics(
          [Function(GViewerData_Viewer_statisticsBuilder b) updates]) =
      _$GViewerData_Viewer_statistics;

  static void _initializeBuilder(GViewerData_Viewer_statisticsBuilder b) =>
      b..G__typename = 'UserStatisticTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GViewerData_Viewer_statistics_anime? get anime;
  @override
  GViewerData_Viewer_statistics_manga? get manga;
  static Serializer<GViewerData_Viewer_statistics> get serializer =>
      _$gViewerDataViewerStatisticsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GViewerData_Viewer_statistics.serializer,
        this,
      ) as Map<String, dynamic>);

  static GViewerData_Viewer_statistics? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GViewerData_Viewer_statistics.serializer,
        json,
      );
}

abstract class GViewerData_Viewer_statistics_anime
    implements
        Built<GViewerData_Viewer_statistics_anime,
            GViewerData_Viewer_statistics_animeBuilder>,
        GThisUser_statistics_anime {
  GViewerData_Viewer_statistics_anime._();

  factory GViewerData_Viewer_statistics_anime(
          [Function(GViewerData_Viewer_statistics_animeBuilder b) updates]) =
      _$GViewerData_Viewer_statistics_anime;

  static void _initializeBuilder(
          GViewerData_Viewer_statistics_animeBuilder b) =>
      b..G__typename = 'UserStatistics';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get count;
  @override
  int get episodesWatched;
  @override
  int get minutesWatched;
  @override
  double get meanScore;
  @override
  double get standardDeviation;
  static Serializer<GViewerData_Viewer_statistics_anime> get serializer =>
      _$gViewerDataViewerStatisticsAnimeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GViewerData_Viewer_statistics_anime.serializer,
        this,
      ) as Map<String, dynamic>);

  static GViewerData_Viewer_statistics_anime? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GViewerData_Viewer_statistics_anime.serializer,
        json,
      );
}

abstract class GViewerData_Viewer_statistics_manga
    implements
        Built<GViewerData_Viewer_statistics_manga,
            GViewerData_Viewer_statistics_mangaBuilder>,
        GThisUser_statistics_manga {
  GViewerData_Viewer_statistics_manga._();

  factory GViewerData_Viewer_statistics_manga(
          [Function(GViewerData_Viewer_statistics_mangaBuilder b) updates]) =
      _$GViewerData_Viewer_statistics_manga;

  static void _initializeBuilder(
          GViewerData_Viewer_statistics_mangaBuilder b) =>
      b..G__typename = 'UserStatistics';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get count;
  @override
  int get chaptersRead;
  @override
  int get volumesRead;
  @override
  double get meanScore;
  @override
  double get standardDeviation;
  static Serializer<GViewerData_Viewer_statistics_manga> get serializer =>
      _$gViewerDataViewerStatisticsMangaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GViewerData_Viewer_statistics_manga.serializer,
        this,
      ) as Map<String, dynamic>);

  static GViewerData_Viewer_statistics_manga? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GViewerData_Viewer_statistics_manga.serializer,
        json,
      );
}

abstract class GViewerData_Viewer_options
    implements
        Built<GViewerData_Viewer_options, GViewerData_Viewer_optionsBuilder>,
        GThisUser_options {
  GViewerData_Viewer_options._();

  factory GViewerData_Viewer_options(
          [Function(GViewerData_Viewer_optionsBuilder b) updates]) =
      _$GViewerData_Viewer_options;

  static void _initializeBuilder(GViewerData_Viewer_optionsBuilder b) =>
      b..G__typename = 'UserOptions';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  bool? get displayAdultContent;
  @override
  bool? get airingNotifications;
  @override
  _i2.GUserTitleLanguage? get titleLanguage;
  @override
  _i2.GUserStaffNameLanguage? get staffNameLanguage;
  @override
  int? get activityMergeTime;
  @override
  bool? get restrictMessagesToFollowing;
  static Serializer<GViewerData_Viewer_options> get serializer =>
      _$gViewerDataViewerOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GViewerData_Viewer_options.serializer,
        this,
      ) as Map<String, dynamic>);

  static GViewerData_Viewer_options? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GViewerData_Viewer_options.serializer,
        json,
      );
}

abstract class GViewerData_Viewer_mediaListOptions
    implements
        Built<GViewerData_Viewer_mediaListOptions,
            GViewerData_Viewer_mediaListOptionsBuilder>,
        GThisUser_mediaListOptions {
  GViewerData_Viewer_mediaListOptions._();

  factory GViewerData_Viewer_mediaListOptions(
          [Function(GViewerData_Viewer_mediaListOptionsBuilder b) updates]) =
      _$GViewerData_Viewer_mediaListOptions;

  static void _initializeBuilder(
          GViewerData_Viewer_mediaListOptionsBuilder b) =>
      b..G__typename = 'MediaListOptions';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GScoreFormat? get scoreFormat;
  @override
  String? get rowOrder;
  @override
  GViewerData_Viewer_mediaListOptions_animeList? get animeList;
  static Serializer<GViewerData_Viewer_mediaListOptions> get serializer =>
      _$gViewerDataViewerMediaListOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GViewerData_Viewer_mediaListOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GViewerData_Viewer_mediaListOptions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GViewerData_Viewer_mediaListOptions.serializer,
        json,
      );
}

abstract class GViewerData_Viewer_mediaListOptions_animeList
    implements
        Built<GViewerData_Viewer_mediaListOptions_animeList,
            GViewerData_Viewer_mediaListOptions_animeListBuilder>,
        GThisUser_mediaListOptions_animeList {
  GViewerData_Viewer_mediaListOptions_animeList._();

  factory GViewerData_Viewer_mediaListOptions_animeList(
      [Function(GViewerData_Viewer_mediaListOptions_animeListBuilder b)
          updates]) = _$GViewerData_Viewer_mediaListOptions_animeList;

  static void _initializeBuilder(
          GViewerData_Viewer_mediaListOptions_animeListBuilder b) =>
      b..G__typename = 'MediaListTypeOptions';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<String?>? get sectionOrder;
  static Serializer<GViewerData_Viewer_mediaListOptions_animeList>
      get serializer => _$gViewerDataViewerMediaListOptionsAnimeListSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GViewerData_Viewer_mediaListOptions_animeList.serializer,
        this,
      ) as Map<String, dynamic>);

  static GViewerData_Viewer_mediaListOptions_animeList? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GViewerData_Viewer_mediaListOptions_animeList.serializer,
        json,
      );
}

abstract class GNotificationCountData
    implements Built<GNotificationCountData, GNotificationCountDataBuilder> {
  GNotificationCountData._();

  factory GNotificationCountData(
          [Function(GNotificationCountDataBuilder b) updates]) =
      _$GNotificationCountData;

  static void _initializeBuilder(GNotificationCountDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GNotificationCountData_Viewer? get Viewer;
  static Serializer<GNotificationCountData> get serializer =>
      _$gNotificationCountDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationCountData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationCountData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationCountData.serializer,
        json,
      );
}

abstract class GNotificationCountData_Viewer
    implements
        Built<GNotificationCountData_Viewer,
            GNotificationCountData_ViewerBuilder> {
  GNotificationCountData_Viewer._();

  factory GNotificationCountData_Viewer(
          [Function(GNotificationCountData_ViewerBuilder b) updates]) =
      _$GNotificationCountData_Viewer;

  static void _initializeBuilder(GNotificationCountData_ViewerBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get unreadNotificationCount;
  GNotificationCountData_Viewer_options? get options;
  static Serializer<GNotificationCountData_Viewer> get serializer =>
      _$gNotificationCountDataViewerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationCountData_Viewer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationCountData_Viewer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationCountData_Viewer.serializer,
        json,
      );
}

abstract class GNotificationCountData_Viewer_options
    implements
        Built<GNotificationCountData_Viewer_options,
            GNotificationCountData_Viewer_optionsBuilder> {
  GNotificationCountData_Viewer_options._();

  factory GNotificationCountData_Viewer_options(
          [Function(GNotificationCountData_Viewer_optionsBuilder b) updates]) =
      _$GNotificationCountData_Viewer_options;

  static void _initializeBuilder(
          GNotificationCountData_Viewer_optionsBuilder b) =>
      b..G__typename = 'UserOptions';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get airingNotifications;
  static Serializer<GNotificationCountData_Viewer_options> get serializer =>
      _$gNotificationCountDataViewerOptionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationCountData_Viewer_options.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationCountData_Viewer_options? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationCountData_Viewer_options.serializer,
        json,
      );
}

abstract class GUpdateUserData
    implements Built<GUpdateUserData, GUpdateUserDataBuilder> {
  GUpdateUserData._();

  factory GUpdateUserData([Function(GUpdateUserDataBuilder b) updates]) =
      _$GUpdateUserData;

  static void _initializeBuilder(GUpdateUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateUserData_UpdateUser? get UpdateUser;
  static Serializer<GUpdateUserData> get serializer =>
      _$gUpdateUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData.serializer,
        json,
      );
}

abstract class GUpdateUserData_UpdateUser
    implements
        Built<GUpdateUserData_UpdateUser, GUpdateUserData_UpdateUserBuilder>,
        GThisUser {
  GUpdateUserData_UpdateUser._();

  factory GUpdateUserData_UpdateUser(
          [Function(GUpdateUserData_UpdateUserBuilder b) updates]) =
      _$GUpdateUserData_UpdateUser;

  static void _initializeBuilder(GUpdateUserData_UpdateUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String? get about;
  @override
  String? get bannerImage;
  @override
  int? get unreadNotificationCount;
  @override
  GUpdateUserData_UpdateUser_avatar? get avatar;
  @override
  GUpdateUserData_UpdateUser_statistics? get statistics;
  @override
  GUpdateUserData_UpdateUser_options? get options;
  @override
  GUpdateUserData_UpdateUser_mediaListOptions? get mediaListOptions;
  static Serializer<GUpdateUserData_UpdateUser> get serializer =>
      _$gUpdateUserDataUpdateUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_UpdateUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData_UpdateUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_UpdateUser.serializer,
        json,
      );
}

abstract class GUpdateUserData_UpdateUser_avatar
    implements
        Built<GUpdateUserData_UpdateUser_avatar,
            GUpdateUserData_UpdateUser_avatarBuilder>,
        GThisUser_avatar {
  GUpdateUserData_UpdateUser_avatar._();

  factory GUpdateUserData_UpdateUser_avatar(
          [Function(GUpdateUserData_UpdateUser_avatarBuilder b) updates]) =
      _$GUpdateUserData_UpdateUser_avatar;

  static void _initializeBuilder(GUpdateUserData_UpdateUser_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GUpdateUserData_UpdateUser_avatar> get serializer =>
      _$gUpdateUserDataUpdateUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_UpdateUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData_UpdateUser_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_UpdateUser_avatar.serializer,
        json,
      );
}

abstract class GUpdateUserData_UpdateUser_statistics
    implements
        Built<GUpdateUserData_UpdateUser_statistics,
            GUpdateUserData_UpdateUser_statisticsBuilder>,
        GThisUser_statistics {
  GUpdateUserData_UpdateUser_statistics._();

  factory GUpdateUserData_UpdateUser_statistics(
          [Function(GUpdateUserData_UpdateUser_statisticsBuilder b) updates]) =
      _$GUpdateUserData_UpdateUser_statistics;

  static void _initializeBuilder(
          GUpdateUserData_UpdateUser_statisticsBuilder b) =>
      b..G__typename = 'UserStatisticTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GUpdateUserData_UpdateUser_statistics_anime? get anime;
  @override
  GUpdateUserData_UpdateUser_statistics_manga? get manga;
  static Serializer<GUpdateUserData_UpdateUser_statistics> get serializer =>
      _$gUpdateUserDataUpdateUserStatisticsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_UpdateUser_statistics.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData_UpdateUser_statistics? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_UpdateUser_statistics.serializer,
        json,
      );
}

abstract class GUpdateUserData_UpdateUser_statistics_anime
    implements
        Built<GUpdateUserData_UpdateUser_statistics_anime,
            GUpdateUserData_UpdateUser_statistics_animeBuilder>,
        GThisUser_statistics_anime {
  GUpdateUserData_UpdateUser_statistics_anime._();

  factory GUpdateUserData_UpdateUser_statistics_anime(
      [Function(GUpdateUserData_UpdateUser_statistics_animeBuilder b)
          updates]) = _$GUpdateUserData_UpdateUser_statistics_anime;

  static void _initializeBuilder(
          GUpdateUserData_UpdateUser_statistics_animeBuilder b) =>
      b..G__typename = 'UserStatistics';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get count;
  @override
  int get episodesWatched;
  @override
  int get minutesWatched;
  @override
  double get meanScore;
  @override
  double get standardDeviation;
  static Serializer<GUpdateUserData_UpdateUser_statistics_anime>
      get serializer => _$gUpdateUserDataUpdateUserStatisticsAnimeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_UpdateUser_statistics_anime.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData_UpdateUser_statistics_anime? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_UpdateUser_statistics_anime.serializer,
        json,
      );
}

abstract class GUpdateUserData_UpdateUser_statistics_manga
    implements
        Built<GUpdateUserData_UpdateUser_statistics_manga,
            GUpdateUserData_UpdateUser_statistics_mangaBuilder>,
        GThisUser_statistics_manga {
  GUpdateUserData_UpdateUser_statistics_manga._();

  factory GUpdateUserData_UpdateUser_statistics_manga(
      [Function(GUpdateUserData_UpdateUser_statistics_mangaBuilder b)
          updates]) = _$GUpdateUserData_UpdateUser_statistics_manga;

  static void _initializeBuilder(
          GUpdateUserData_UpdateUser_statistics_mangaBuilder b) =>
      b..G__typename = 'UserStatistics';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get count;
  @override
  int get chaptersRead;
  @override
  int get volumesRead;
  @override
  double get meanScore;
  @override
  double get standardDeviation;
  static Serializer<GUpdateUserData_UpdateUser_statistics_manga>
      get serializer => _$gUpdateUserDataUpdateUserStatisticsMangaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_UpdateUser_statistics_manga.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData_UpdateUser_statistics_manga? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_UpdateUser_statistics_manga.serializer,
        json,
      );
}

abstract class GUpdateUserData_UpdateUser_options
    implements
        Built<GUpdateUserData_UpdateUser_options,
            GUpdateUserData_UpdateUser_optionsBuilder>,
        GThisUser_options {
  GUpdateUserData_UpdateUser_options._();

  factory GUpdateUserData_UpdateUser_options(
          [Function(GUpdateUserData_UpdateUser_optionsBuilder b) updates]) =
      _$GUpdateUserData_UpdateUser_options;

  static void _initializeBuilder(GUpdateUserData_UpdateUser_optionsBuilder b) =>
      b..G__typename = 'UserOptions';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  bool? get displayAdultContent;
  @override
  bool? get airingNotifications;
  @override
  _i2.GUserTitleLanguage? get titleLanguage;
  @override
  _i2.GUserStaffNameLanguage? get staffNameLanguage;
  @override
  int? get activityMergeTime;
  @override
  bool? get restrictMessagesToFollowing;
  static Serializer<GUpdateUserData_UpdateUser_options> get serializer =>
      _$gUpdateUserDataUpdateUserOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_UpdateUser_options.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData_UpdateUser_options? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_UpdateUser_options.serializer,
        json,
      );
}

abstract class GUpdateUserData_UpdateUser_mediaListOptions
    implements
        Built<GUpdateUserData_UpdateUser_mediaListOptions,
            GUpdateUserData_UpdateUser_mediaListOptionsBuilder>,
        GThisUser_mediaListOptions {
  GUpdateUserData_UpdateUser_mediaListOptions._();

  factory GUpdateUserData_UpdateUser_mediaListOptions(
      [Function(GUpdateUserData_UpdateUser_mediaListOptionsBuilder b)
          updates]) = _$GUpdateUserData_UpdateUser_mediaListOptions;

  static void _initializeBuilder(
          GUpdateUserData_UpdateUser_mediaListOptionsBuilder b) =>
      b..G__typename = 'MediaListOptions';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GScoreFormat? get scoreFormat;
  @override
  String? get rowOrder;
  @override
  GUpdateUserData_UpdateUser_mediaListOptions_animeList? get animeList;
  static Serializer<GUpdateUserData_UpdateUser_mediaListOptions>
      get serializer => _$gUpdateUserDataUpdateUserMediaListOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_UpdateUser_mediaListOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData_UpdateUser_mediaListOptions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_UpdateUser_mediaListOptions.serializer,
        json,
      );
}

abstract class GUpdateUserData_UpdateUser_mediaListOptions_animeList
    implements
        Built<GUpdateUserData_UpdateUser_mediaListOptions_animeList,
            GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder>,
        GThisUser_mediaListOptions_animeList {
  GUpdateUserData_UpdateUser_mediaListOptions_animeList._();

  factory GUpdateUserData_UpdateUser_mediaListOptions_animeList(
      [Function(GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder b)
          updates]) = _$GUpdateUserData_UpdateUser_mediaListOptions_animeList;

  static void _initializeBuilder(
          GUpdateUserData_UpdateUser_mediaListOptions_animeListBuilder b) =>
      b..G__typename = 'MediaListTypeOptions';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<String?>? get sectionOrder;
  static Serializer<GUpdateUserData_UpdateUser_mediaListOptions_animeList>
      get serializer =>
          _$gUpdateUserDataUpdateUserMediaListOptionsAnimeListSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserData_UpdateUser_mediaListOptions_animeList.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserData_UpdateUser_mediaListOptions_animeList? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserData_UpdateUser_mediaListOptions_animeList.serializer,
        json,
      );
}

abstract class GThisUser {
  String get G__typename;
  int get id;
  String get name;
  String? get about;
  String? get bannerImage;
  int? get unreadNotificationCount;
  GThisUser_avatar? get avatar;
  GThisUser_statistics? get statistics;
  GThisUser_options? get options;
  GThisUser_mediaListOptions? get mediaListOptions;
  Map<String, dynamic> toJson();
}

abstract class GThisUser_avatar {
  String get G__typename;
  String? get large;
  Map<String, dynamic> toJson();
}

abstract class GThisUser_statistics {
  String get G__typename;
  GThisUser_statistics_anime? get anime;
  GThisUser_statistics_manga? get manga;
  Map<String, dynamic> toJson();
}

abstract class GThisUser_statistics_anime {
  String get G__typename;
  int get count;
  int get episodesWatched;
  int get minutesWatched;
  double get meanScore;
  double get standardDeviation;
  Map<String, dynamic> toJson();
}

abstract class GThisUser_statistics_manga {
  String get G__typename;
  int get count;
  int get chaptersRead;
  int get volumesRead;
  double get meanScore;
  double get standardDeviation;
  Map<String, dynamic> toJson();
}

abstract class GThisUser_options {
  String get G__typename;
  bool? get displayAdultContent;
  bool? get airingNotifications;
  _i2.GUserTitleLanguage? get titleLanguage;
  _i2.GUserStaffNameLanguage? get staffNameLanguage;
  int? get activityMergeTime;
  bool? get restrictMessagesToFollowing;
  Map<String, dynamic> toJson();
}

abstract class GThisUser_mediaListOptions {
  String get G__typename;
  _i2.GScoreFormat? get scoreFormat;
  String? get rowOrder;
  GThisUser_mediaListOptions_animeList? get animeList;
  Map<String, dynamic> toJson();
}

abstract class GThisUser_mediaListOptions_animeList {
  String get G__typename;
  BuiltList<String?>? get sectionOrder;
  Map<String, dynamic> toJson();
}

abstract class GThisUserData
    implements Built<GThisUserData, GThisUserDataBuilder>, GThisUser {
  GThisUserData._();

  factory GThisUserData([Function(GThisUserDataBuilder b) updates]) =
      _$GThisUserData;

  static void _initializeBuilder(GThisUserDataBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  String? get about;
  @override
  String? get bannerImage;
  @override
  int? get unreadNotificationCount;
  @override
  GThisUserData_avatar? get avatar;
  @override
  GThisUserData_statistics? get statistics;
  @override
  GThisUserData_options? get options;
  @override
  GThisUserData_mediaListOptions? get mediaListOptions;
  static Serializer<GThisUserData> get serializer => _$gThisUserDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThisUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThisUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThisUserData.serializer,
        json,
      );
}

abstract class GThisUserData_avatar
    implements
        Built<GThisUserData_avatar, GThisUserData_avatarBuilder>,
        GThisUser_avatar {
  GThisUserData_avatar._();

  factory GThisUserData_avatar(
          [Function(GThisUserData_avatarBuilder b) updates]) =
      _$GThisUserData_avatar;

  static void _initializeBuilder(GThisUserData_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GThisUserData_avatar> get serializer =>
      _$gThisUserDataAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThisUserData_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThisUserData_avatar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThisUserData_avatar.serializer,
        json,
      );
}

abstract class GThisUserData_statistics
    implements
        Built<GThisUserData_statistics, GThisUserData_statisticsBuilder>,
        GThisUser_statistics {
  GThisUserData_statistics._();

  factory GThisUserData_statistics(
          [Function(GThisUserData_statisticsBuilder b) updates]) =
      _$GThisUserData_statistics;

  static void _initializeBuilder(GThisUserData_statisticsBuilder b) =>
      b..G__typename = 'UserStatisticTypes';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GThisUserData_statistics_anime? get anime;
  @override
  GThisUserData_statistics_manga? get manga;
  static Serializer<GThisUserData_statistics> get serializer =>
      _$gThisUserDataStatisticsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThisUserData_statistics.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThisUserData_statistics? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThisUserData_statistics.serializer,
        json,
      );
}

abstract class GThisUserData_statistics_anime
    implements
        Built<GThisUserData_statistics_anime,
            GThisUserData_statistics_animeBuilder>,
        GThisUser_statistics_anime {
  GThisUserData_statistics_anime._();

  factory GThisUserData_statistics_anime(
          [Function(GThisUserData_statistics_animeBuilder b) updates]) =
      _$GThisUserData_statistics_anime;

  static void _initializeBuilder(GThisUserData_statistics_animeBuilder b) =>
      b..G__typename = 'UserStatistics';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get count;
  @override
  int get episodesWatched;
  @override
  int get minutesWatched;
  @override
  double get meanScore;
  @override
  double get standardDeviation;
  static Serializer<GThisUserData_statistics_anime> get serializer =>
      _$gThisUserDataStatisticsAnimeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThisUserData_statistics_anime.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThisUserData_statistics_anime? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThisUserData_statistics_anime.serializer,
        json,
      );
}

abstract class GThisUserData_statistics_manga
    implements
        Built<GThisUserData_statistics_manga,
            GThisUserData_statistics_mangaBuilder>,
        GThisUser_statistics_manga {
  GThisUserData_statistics_manga._();

  factory GThisUserData_statistics_manga(
          [Function(GThisUserData_statistics_mangaBuilder b) updates]) =
      _$GThisUserData_statistics_manga;

  static void _initializeBuilder(GThisUserData_statistics_mangaBuilder b) =>
      b..G__typename = 'UserStatistics';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get count;
  @override
  int get chaptersRead;
  @override
  int get volumesRead;
  @override
  double get meanScore;
  @override
  double get standardDeviation;
  static Serializer<GThisUserData_statistics_manga> get serializer =>
      _$gThisUserDataStatisticsMangaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThisUserData_statistics_manga.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThisUserData_statistics_manga? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThisUserData_statistics_manga.serializer,
        json,
      );
}

abstract class GThisUserData_options
    implements
        Built<GThisUserData_options, GThisUserData_optionsBuilder>,
        GThisUser_options {
  GThisUserData_options._();

  factory GThisUserData_options(
          [Function(GThisUserData_optionsBuilder b) updates]) =
      _$GThisUserData_options;

  static void _initializeBuilder(GThisUserData_optionsBuilder b) =>
      b..G__typename = 'UserOptions';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  bool? get displayAdultContent;
  @override
  bool? get airingNotifications;
  @override
  _i2.GUserTitleLanguage? get titleLanguage;
  @override
  _i2.GUserStaffNameLanguage? get staffNameLanguage;
  @override
  int? get activityMergeTime;
  @override
  bool? get restrictMessagesToFollowing;
  static Serializer<GThisUserData_options> get serializer =>
      _$gThisUserDataOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThisUserData_options.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThisUserData_options? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThisUserData_options.serializer,
        json,
      );
}

abstract class GThisUserData_mediaListOptions
    implements
        Built<GThisUserData_mediaListOptions,
            GThisUserData_mediaListOptionsBuilder>,
        GThisUser_mediaListOptions {
  GThisUserData_mediaListOptions._();

  factory GThisUserData_mediaListOptions(
          [Function(GThisUserData_mediaListOptionsBuilder b) updates]) =
      _$GThisUserData_mediaListOptions;

  static void _initializeBuilder(GThisUserData_mediaListOptionsBuilder b) =>
      b..G__typename = 'MediaListOptions';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GScoreFormat? get scoreFormat;
  @override
  String? get rowOrder;
  @override
  GThisUserData_mediaListOptions_animeList? get animeList;
  static Serializer<GThisUserData_mediaListOptions> get serializer =>
      _$gThisUserDataMediaListOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThisUserData_mediaListOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThisUserData_mediaListOptions? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThisUserData_mediaListOptions.serializer,
        json,
      );
}

abstract class GThisUserData_mediaListOptions_animeList
    implements
        Built<GThisUserData_mediaListOptions_animeList,
            GThisUserData_mediaListOptions_animeListBuilder>,
        GThisUser_mediaListOptions_animeList {
  GThisUserData_mediaListOptions_animeList._();

  factory GThisUserData_mediaListOptions_animeList(
      [Function(GThisUserData_mediaListOptions_animeListBuilder b)
          updates]) = _$GThisUserData_mediaListOptions_animeList;

  static void _initializeBuilder(
          GThisUserData_mediaListOptions_animeListBuilder b) =>
      b..G__typename = 'MediaListTypeOptions';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<String?>? get sectionOrder;
  static Serializer<GThisUserData_mediaListOptions_animeList> get serializer =>
      _$gThisUserDataMediaListOptionsAnimeListSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThisUserData_mediaListOptions_animeList.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThisUserData_mediaListOptions_animeList? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThisUserData_mediaListOptions_animeList.serializer,
        json,
      );
}
