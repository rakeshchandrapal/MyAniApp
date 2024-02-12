// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i2;

part 'user.data.gql.g.dart';

abstract class GUserData implements Built<GUserData, GUserDataBuilder> {
  GUserData._();

  factory GUserData([Function(GUserDataBuilder b) updates]) = _$GUserData;

  static void _initializeBuilder(GUserDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserData_User? get User;
  static Serializer<GUserData> get serializer => _$gUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData.serializer,
        json,
      );
}

abstract class GUserData_User
    implements Built<GUserData_User, GUserData_UserBuilder>, _i2.GUserFragment {
  GUserData_User._();

  factory GUserData_User([Function(GUserData_UserBuilder b) updates]) =
      _$GUserData_User;

  static void _initializeBuilder(GUserData_UserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  int? get donatorTier;
  @override
  String? get donatorBadge;
  @override
  BuiltList<_i3.GModRole?>? get moderatorRoles;
  @override
  GUserData_User_avatar? get avatar;
  String? get bannerImage;
  String? get about;
  GUserData_User_mediaListOptions? get mediaListOptions;
  GUserData_User_statistics? get statistics;
  GUserData_User_favourites? get favourites;
  static Serializer<GUserData_User> get serializer => _$gUserDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User.serializer,
        json,
      );
}

abstract class GUserData_User_avatar
    implements
        Built<GUserData_User_avatar, GUserData_User_avatarBuilder>,
        _i2.GUserFragment_avatar {
  GUserData_User_avatar._();

  factory GUserData_User_avatar(
          [Function(GUserData_User_avatarBuilder b) updates]) =
      _$GUserData_User_avatar;

  static void _initializeBuilder(GUserData_User_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GUserData_User_avatar> get serializer =>
      _$gUserDataUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_avatar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_avatar.serializer,
        json,
      );
}

abstract class GUserData_User_mediaListOptions
    implements
        Built<GUserData_User_mediaListOptions,
            GUserData_User_mediaListOptionsBuilder> {
  GUserData_User_mediaListOptions._();

  factory GUserData_User_mediaListOptions(
          [Function(GUserData_User_mediaListOptionsBuilder b) updates]) =
      _$GUserData_User_mediaListOptions;

  static void _initializeBuilder(GUserData_User_mediaListOptionsBuilder b) =>
      b..G__typename = 'MediaListOptions';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i3.GScoreFormat? get scoreFormat;
  static Serializer<GUserData_User_mediaListOptions> get serializer =>
      _$gUserDataUserMediaListOptionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_mediaListOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_mediaListOptions? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_mediaListOptions.serializer,
        json,
      );
}

abstract class GUserData_User_statistics
    implements
        Built<GUserData_User_statistics, GUserData_User_statisticsBuilder> {
  GUserData_User_statistics._();

  factory GUserData_User_statistics(
          [Function(GUserData_User_statisticsBuilder b) updates]) =
      _$GUserData_User_statistics;

  static void _initializeBuilder(GUserData_User_statisticsBuilder b) =>
      b..G__typename = 'UserStatisticTypes';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserData_User_statistics_anime? get anime;
  GUserData_User_statistics_manga? get manga;
  static Serializer<GUserData_User_statistics> get serializer =>
      _$gUserDataUserStatisticsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_statistics.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_statistics? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_statistics.serializer,
        json,
      );
}

abstract class GUserData_User_statistics_anime
    implements
        Built<GUserData_User_statistics_anime,
            GUserData_User_statistics_animeBuilder> {
  GUserData_User_statistics_anime._();

  factory GUserData_User_statistics_anime(
          [Function(GUserData_User_statistics_animeBuilder b) updates]) =
      _$GUserData_User_statistics_anime;

  static void _initializeBuilder(GUserData_User_statistics_animeBuilder b) =>
      b..G__typename = 'UserStatistics';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get count;
  int get episodesWatched;
  int get minutesWatched;
  double get standardDeviation;
  double get meanScore;
  BuiltList<GUserData_User_statistics_anime_genres?>? get genres;
  static Serializer<GUserData_User_statistics_anime> get serializer =>
      _$gUserDataUserStatisticsAnimeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_statistics_anime.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_statistics_anime? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_statistics_anime.serializer,
        json,
      );
}

abstract class GUserData_User_statistics_anime_genres
    implements
        Built<GUserData_User_statistics_anime_genres,
            GUserData_User_statistics_anime_genresBuilder>,
        GGenreStat {
  GUserData_User_statistics_anime_genres._();

  factory GUserData_User_statistics_anime_genres(
          [Function(GUserData_User_statistics_anime_genresBuilder b) updates]) =
      _$GUserData_User_statistics_anime_genres;

  static void _initializeBuilder(
          GUserData_User_statistics_anime_genresBuilder b) =>
      b..G__typename = 'UserGenreStatistic';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get genre;
  @override
  int get count;
  static Serializer<GUserData_User_statistics_anime_genres> get serializer =>
      _$gUserDataUserStatisticsAnimeGenresSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_statistics_anime_genres.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_statistics_anime_genres? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_statistics_anime_genres.serializer,
        json,
      );
}

abstract class GUserData_User_statistics_manga
    implements
        Built<GUserData_User_statistics_manga,
            GUserData_User_statistics_mangaBuilder> {
  GUserData_User_statistics_manga._();

  factory GUserData_User_statistics_manga(
          [Function(GUserData_User_statistics_mangaBuilder b) updates]) =
      _$GUserData_User_statistics_manga;

  static void _initializeBuilder(GUserData_User_statistics_mangaBuilder b) =>
      b..G__typename = 'UserStatistics';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get count;
  int get chaptersRead;
  int get volumesRead;
  double get standardDeviation;
  double get meanScore;
  BuiltList<GUserData_User_statistics_manga_genres?>? get genres;
  static Serializer<GUserData_User_statistics_manga> get serializer =>
      _$gUserDataUserStatisticsMangaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_statistics_manga.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_statistics_manga? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_statistics_manga.serializer,
        json,
      );
}

abstract class GUserData_User_statistics_manga_genres
    implements
        Built<GUserData_User_statistics_manga_genres,
            GUserData_User_statistics_manga_genresBuilder>,
        GGenreStat {
  GUserData_User_statistics_manga_genres._();

  factory GUserData_User_statistics_manga_genres(
          [Function(GUserData_User_statistics_manga_genresBuilder b) updates]) =
      _$GUserData_User_statistics_manga_genres;

  static void _initializeBuilder(
          GUserData_User_statistics_manga_genresBuilder b) =>
      b..G__typename = 'UserGenreStatistic';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get genre;
  @override
  int get count;
  static Serializer<GUserData_User_statistics_manga_genres> get serializer =>
      _$gUserDataUserStatisticsMangaGenresSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_statistics_manga_genres.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_statistics_manga_genres? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_statistics_manga_genres.serializer,
        json,
      );
}

abstract class GUserData_User_favourites
    implements
        Built<GUserData_User_favourites, GUserData_User_favouritesBuilder> {
  GUserData_User_favourites._();

  factory GUserData_User_favourites(
          [Function(GUserData_User_favouritesBuilder b) updates]) =
      _$GUserData_User_favourites;

  static void _initializeBuilder(GUserData_User_favouritesBuilder b) =>
      b..G__typename = 'Favourites';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserData_User_favourites_anime? get anime;
  GUserData_User_favourites_manga? get manga;
  static Serializer<GUserData_User_favourites> get serializer =>
      _$gUserDataUserFavouritesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_favourites.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_favourites? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_favourites.serializer,
        json,
      );
}

abstract class GUserData_User_favourites_anime
    implements
        Built<GUserData_User_favourites_anime,
            GUserData_User_favourites_animeBuilder> {
  GUserData_User_favourites_anime._();

  factory GUserData_User_favourites_anime(
          [Function(GUserData_User_favourites_animeBuilder b) updates]) =
      _$GUserData_User_favourites_anime;

  static void _initializeBuilder(GUserData_User_favourites_animeBuilder b) =>
      b..G__typename = 'MediaConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GUserData_User_favourites_anime_nodes?>? get nodes;
  static Serializer<GUserData_User_favourites_anime> get serializer =>
      _$gUserDataUserFavouritesAnimeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_favourites_anime.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_favourites_anime? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_favourites_anime.serializer,
        json,
      );
}

abstract class GUserData_User_favourites_anime_nodes
    implements
        Built<GUserData_User_favourites_anime_nodes,
            GUserData_User_favourites_anime_nodesBuilder>,
        _i4.GMediaFragment {
  GUserData_User_favourites_anime_nodes._();

  factory GUserData_User_favourites_anime_nodes(
          [Function(GUserData_User_favourites_anime_nodesBuilder b) updates]) =
      _$GUserData_User_favourites_anime_nodes;

  static void _initializeBuilder(
          GUserData_User_favourites_anime_nodesBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i3.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i3.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GUserData_User_favourites_anime_nodes_title? get title;
  @override
  GUserData_User_favourites_anime_nodes_coverImage? get coverImage;
  static Serializer<GUserData_User_favourites_anime_nodes> get serializer =>
      _$gUserDataUserFavouritesAnimeNodesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_favourites_anime_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_favourites_anime_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_favourites_anime_nodes.serializer,
        json,
      );
}

abstract class GUserData_User_favourites_anime_nodes_title
    implements
        Built<GUserData_User_favourites_anime_nodes_title,
            GUserData_User_favourites_anime_nodes_titleBuilder>,
        _i4.GMediaFragment_title {
  GUserData_User_favourites_anime_nodes_title._();

  factory GUserData_User_favourites_anime_nodes_title(
      [Function(GUserData_User_favourites_anime_nodes_titleBuilder b)
          updates]) = _$GUserData_User_favourites_anime_nodes_title;

  static void _initializeBuilder(
          GUserData_User_favourites_anime_nodes_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GUserData_User_favourites_anime_nodes_title>
      get serializer => _$gUserDataUserFavouritesAnimeNodesTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_favourites_anime_nodes_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_favourites_anime_nodes_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_favourites_anime_nodes_title.serializer,
        json,
      );
}

abstract class GUserData_User_favourites_anime_nodes_coverImage
    implements
        Built<GUserData_User_favourites_anime_nodes_coverImage,
            GUserData_User_favourites_anime_nodes_coverImageBuilder>,
        _i4.GMediaFragment_coverImage {
  GUserData_User_favourites_anime_nodes_coverImage._();

  factory GUserData_User_favourites_anime_nodes_coverImage(
      [Function(GUserData_User_favourites_anime_nodes_coverImageBuilder b)
          updates]) = _$GUserData_User_favourites_anime_nodes_coverImage;

  static void _initializeBuilder(
          GUserData_User_favourites_anime_nodes_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GUserData_User_favourites_anime_nodes_coverImage>
      get serializer => _$gUserDataUserFavouritesAnimeNodesCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_favourites_anime_nodes_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_favourites_anime_nodes_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_favourites_anime_nodes_coverImage.serializer,
        json,
      );
}

abstract class GUserData_User_favourites_manga
    implements
        Built<GUserData_User_favourites_manga,
            GUserData_User_favourites_mangaBuilder> {
  GUserData_User_favourites_manga._();

  factory GUserData_User_favourites_manga(
          [Function(GUserData_User_favourites_mangaBuilder b) updates]) =
      _$GUserData_User_favourites_manga;

  static void _initializeBuilder(GUserData_User_favourites_mangaBuilder b) =>
      b..G__typename = 'MediaConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GUserData_User_favourites_manga_nodes?>? get nodes;
  static Serializer<GUserData_User_favourites_manga> get serializer =>
      _$gUserDataUserFavouritesMangaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_favourites_manga.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_favourites_manga? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_favourites_manga.serializer,
        json,
      );
}

abstract class GUserData_User_favourites_manga_nodes
    implements
        Built<GUserData_User_favourites_manga_nodes,
            GUserData_User_favourites_manga_nodesBuilder>,
        _i4.GMediaFragment {
  GUserData_User_favourites_manga_nodes._();

  factory GUserData_User_favourites_manga_nodes(
          [Function(GUserData_User_favourites_manga_nodesBuilder b) updates]) =
      _$GUserData_User_favourites_manga_nodes;

  static void _initializeBuilder(
          GUserData_User_favourites_manga_nodesBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i3.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i3.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GUserData_User_favourites_manga_nodes_title? get title;
  @override
  GUserData_User_favourites_manga_nodes_coverImage? get coverImage;
  static Serializer<GUserData_User_favourites_manga_nodes> get serializer =>
      _$gUserDataUserFavouritesMangaNodesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_favourites_manga_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_favourites_manga_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_favourites_manga_nodes.serializer,
        json,
      );
}

abstract class GUserData_User_favourites_manga_nodes_title
    implements
        Built<GUserData_User_favourites_manga_nodes_title,
            GUserData_User_favourites_manga_nodes_titleBuilder>,
        _i4.GMediaFragment_title {
  GUserData_User_favourites_manga_nodes_title._();

  factory GUserData_User_favourites_manga_nodes_title(
      [Function(GUserData_User_favourites_manga_nodes_titleBuilder b)
          updates]) = _$GUserData_User_favourites_manga_nodes_title;

  static void _initializeBuilder(
          GUserData_User_favourites_manga_nodes_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GUserData_User_favourites_manga_nodes_title>
      get serializer => _$gUserDataUserFavouritesMangaNodesTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_favourites_manga_nodes_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_favourites_manga_nodes_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_favourites_manga_nodes_title.serializer,
        json,
      );
}

abstract class GUserData_User_favourites_manga_nodes_coverImage
    implements
        Built<GUserData_User_favourites_manga_nodes_coverImage,
            GUserData_User_favourites_manga_nodes_coverImageBuilder>,
        _i4.GMediaFragment_coverImage {
  GUserData_User_favourites_manga_nodes_coverImage._();

  factory GUserData_User_favourites_manga_nodes_coverImage(
      [Function(GUserData_User_favourites_manga_nodes_coverImageBuilder b)
          updates]) = _$GUserData_User_favourites_manga_nodes_coverImage;

  static void _initializeBuilder(
          GUserData_User_favourites_manga_nodes_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GUserData_User_favourites_manga_nodes_coverImage>
      get serializer => _$gUserDataUserFavouritesMangaNodesCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserData_User_favourites_manga_nodes_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserData_User_favourites_manga_nodes_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserData_User_favourites_manga_nodes_coverImage.serializer,
        json,
      );
}

abstract class GGenreStat {
  String get G__typename;
  String? get genre;
  int get count;
  Map<String, dynamic> toJson();
}

abstract class GGenreStatData
    implements Built<GGenreStatData, GGenreStatDataBuilder>, GGenreStat {
  GGenreStatData._();

  factory GGenreStatData([Function(GGenreStatDataBuilder b) updates]) =
      _$GGenreStatData;

  static void _initializeBuilder(GGenreStatDataBuilder b) =>
      b..G__typename = 'UserGenreStatistic';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get genre;
  @override
  int get count;
  static Serializer<GGenreStatData> get serializer =>
      _$gGenreStatDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGenreStatData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGenreStatData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGenreStatData.serializer,
        json,
      );
}
