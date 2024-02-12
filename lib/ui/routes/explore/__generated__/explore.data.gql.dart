// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i2;

part 'explore.data.gql.g.dart';

abstract class GExploreData
    implements Built<GExploreData, GExploreDataBuilder> {
  GExploreData._();

  factory GExploreData([Function(GExploreDataBuilder b) updates]) =
      _$GExploreData;

  static void _initializeBuilder(GExploreDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GExploreData_trending? get trending;
  GExploreData_season? get season;
  GExploreData_nextSeason? get nextSeason;
  GExploreData_popular? get popular;
  GExploreData_recent? get recent;
  static Serializer<GExploreData> get serializer => _$gExploreDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData.serializer,
        json,
      );
}

abstract class GExploreData_trending
    implements Built<GExploreData_trending, GExploreData_trendingBuilder> {
  GExploreData_trending._();

  factory GExploreData_trending(
          [Function(GExploreData_trendingBuilder b) updates]) =
      _$GExploreData_trending;

  static void _initializeBuilder(GExploreData_trendingBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GExploreData_trending_media?>? get media;
  static Serializer<GExploreData_trending> get serializer =>
      _$gExploreDataTrendingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_trending.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_trending? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_trending.serializer,
        json,
      );
}

abstract class GExploreData_trending_media
    implements
        Built<GExploreData_trending_media, GExploreData_trending_mediaBuilder>,
        _i2.GMediaFragment {
  GExploreData_trending_media._();

  factory GExploreData_trending_media(
          [Function(GExploreData_trending_mediaBuilder b) updates]) =
      _$GExploreData_trending_media;

  static void _initializeBuilder(GExploreData_trending_mediaBuilder b) =>
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
  GExploreData_trending_media_title? get title;
  @override
  GExploreData_trending_media_coverImage? get coverImage;
  static Serializer<GExploreData_trending_media> get serializer =>
      _$gExploreDataTrendingMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_trending_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_trending_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_trending_media.serializer,
        json,
      );
}

abstract class GExploreData_trending_media_title
    implements
        Built<GExploreData_trending_media_title,
            GExploreData_trending_media_titleBuilder>,
        _i2.GMediaFragment_title {
  GExploreData_trending_media_title._();

  factory GExploreData_trending_media_title(
          [Function(GExploreData_trending_media_titleBuilder b) updates]) =
      _$GExploreData_trending_media_title;

  static void _initializeBuilder(GExploreData_trending_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GExploreData_trending_media_title> get serializer =>
      _$gExploreDataTrendingMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_trending_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_trending_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_trending_media_title.serializer,
        json,
      );
}

abstract class GExploreData_trending_media_coverImage
    implements
        Built<GExploreData_trending_media_coverImage,
            GExploreData_trending_media_coverImageBuilder>,
        _i2.GMediaFragment_coverImage {
  GExploreData_trending_media_coverImage._();

  factory GExploreData_trending_media_coverImage(
          [Function(GExploreData_trending_media_coverImageBuilder b) updates]) =
      _$GExploreData_trending_media_coverImage;

  static void _initializeBuilder(
          GExploreData_trending_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GExploreData_trending_media_coverImage> get serializer =>
      _$gExploreDataTrendingMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_trending_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_trending_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_trending_media_coverImage.serializer,
        json,
      );
}

abstract class GExploreData_season
    implements Built<GExploreData_season, GExploreData_seasonBuilder> {
  GExploreData_season._();

  factory GExploreData_season(
      [Function(GExploreData_seasonBuilder b) updates]) = _$GExploreData_season;

  static void _initializeBuilder(GExploreData_seasonBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GExploreData_season_media?>? get media;
  static Serializer<GExploreData_season> get serializer =>
      _$gExploreDataSeasonSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_season.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_season? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_season.serializer,
        json,
      );
}

abstract class GExploreData_season_media
    implements
        Built<GExploreData_season_media, GExploreData_season_mediaBuilder>,
        _i2.GMediaFragment {
  GExploreData_season_media._();

  factory GExploreData_season_media(
          [Function(GExploreData_season_mediaBuilder b) updates]) =
      _$GExploreData_season_media;

  static void _initializeBuilder(GExploreData_season_mediaBuilder b) =>
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
  GExploreData_season_media_title? get title;
  @override
  GExploreData_season_media_coverImage? get coverImage;
  static Serializer<GExploreData_season_media> get serializer =>
      _$gExploreDataSeasonMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_season_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_season_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_season_media.serializer,
        json,
      );
}

abstract class GExploreData_season_media_title
    implements
        Built<GExploreData_season_media_title,
            GExploreData_season_media_titleBuilder>,
        _i2.GMediaFragment_title {
  GExploreData_season_media_title._();

  factory GExploreData_season_media_title(
          [Function(GExploreData_season_media_titleBuilder b) updates]) =
      _$GExploreData_season_media_title;

  static void _initializeBuilder(GExploreData_season_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GExploreData_season_media_title> get serializer =>
      _$gExploreDataSeasonMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_season_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_season_media_title? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_season_media_title.serializer,
        json,
      );
}

abstract class GExploreData_season_media_coverImage
    implements
        Built<GExploreData_season_media_coverImage,
            GExploreData_season_media_coverImageBuilder>,
        _i2.GMediaFragment_coverImage {
  GExploreData_season_media_coverImage._();

  factory GExploreData_season_media_coverImage(
          [Function(GExploreData_season_media_coverImageBuilder b) updates]) =
      _$GExploreData_season_media_coverImage;

  static void _initializeBuilder(
          GExploreData_season_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GExploreData_season_media_coverImage> get serializer =>
      _$gExploreDataSeasonMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_season_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_season_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_season_media_coverImage.serializer,
        json,
      );
}

abstract class GExploreData_nextSeason
    implements Built<GExploreData_nextSeason, GExploreData_nextSeasonBuilder> {
  GExploreData_nextSeason._();

  factory GExploreData_nextSeason(
          [Function(GExploreData_nextSeasonBuilder b) updates]) =
      _$GExploreData_nextSeason;

  static void _initializeBuilder(GExploreData_nextSeasonBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GExploreData_nextSeason_media?>? get media;
  static Serializer<GExploreData_nextSeason> get serializer =>
      _$gExploreDataNextSeasonSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_nextSeason.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_nextSeason? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_nextSeason.serializer,
        json,
      );
}

abstract class GExploreData_nextSeason_media
    implements
        Built<GExploreData_nextSeason_media,
            GExploreData_nextSeason_mediaBuilder>,
        _i2.GMediaFragment {
  GExploreData_nextSeason_media._();

  factory GExploreData_nextSeason_media(
          [Function(GExploreData_nextSeason_mediaBuilder b) updates]) =
      _$GExploreData_nextSeason_media;

  static void _initializeBuilder(GExploreData_nextSeason_mediaBuilder b) =>
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
  GExploreData_nextSeason_media_title? get title;
  @override
  GExploreData_nextSeason_media_coverImage? get coverImage;
  static Serializer<GExploreData_nextSeason_media> get serializer =>
      _$gExploreDataNextSeasonMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_nextSeason_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_nextSeason_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_nextSeason_media.serializer,
        json,
      );
}

abstract class GExploreData_nextSeason_media_title
    implements
        Built<GExploreData_nextSeason_media_title,
            GExploreData_nextSeason_media_titleBuilder>,
        _i2.GMediaFragment_title {
  GExploreData_nextSeason_media_title._();

  factory GExploreData_nextSeason_media_title(
          [Function(GExploreData_nextSeason_media_titleBuilder b) updates]) =
      _$GExploreData_nextSeason_media_title;

  static void _initializeBuilder(
          GExploreData_nextSeason_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GExploreData_nextSeason_media_title> get serializer =>
      _$gExploreDataNextSeasonMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_nextSeason_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_nextSeason_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_nextSeason_media_title.serializer,
        json,
      );
}

abstract class GExploreData_nextSeason_media_coverImage
    implements
        Built<GExploreData_nextSeason_media_coverImage,
            GExploreData_nextSeason_media_coverImageBuilder>,
        _i2.GMediaFragment_coverImage {
  GExploreData_nextSeason_media_coverImage._();

  factory GExploreData_nextSeason_media_coverImage(
      [Function(GExploreData_nextSeason_media_coverImageBuilder b)
          updates]) = _$GExploreData_nextSeason_media_coverImage;

  static void _initializeBuilder(
          GExploreData_nextSeason_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GExploreData_nextSeason_media_coverImage> get serializer =>
      _$gExploreDataNextSeasonMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_nextSeason_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_nextSeason_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_nextSeason_media_coverImage.serializer,
        json,
      );
}

abstract class GExploreData_popular
    implements Built<GExploreData_popular, GExploreData_popularBuilder> {
  GExploreData_popular._();

  factory GExploreData_popular(
          [Function(GExploreData_popularBuilder b) updates]) =
      _$GExploreData_popular;

  static void _initializeBuilder(GExploreData_popularBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GExploreData_popular_media?>? get media;
  static Serializer<GExploreData_popular> get serializer =>
      _$gExploreDataPopularSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_popular.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_popular? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_popular.serializer,
        json,
      );
}

abstract class GExploreData_popular_media
    implements
        Built<GExploreData_popular_media, GExploreData_popular_mediaBuilder>,
        _i2.GMediaFragment {
  GExploreData_popular_media._();

  factory GExploreData_popular_media(
          [Function(GExploreData_popular_mediaBuilder b) updates]) =
      _$GExploreData_popular_media;

  static void _initializeBuilder(GExploreData_popular_mediaBuilder b) =>
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
  GExploreData_popular_media_title? get title;
  @override
  GExploreData_popular_media_coverImage? get coverImage;
  static Serializer<GExploreData_popular_media> get serializer =>
      _$gExploreDataPopularMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_popular_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_popular_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_popular_media.serializer,
        json,
      );
}

abstract class GExploreData_popular_media_title
    implements
        Built<GExploreData_popular_media_title,
            GExploreData_popular_media_titleBuilder>,
        _i2.GMediaFragment_title {
  GExploreData_popular_media_title._();

  factory GExploreData_popular_media_title(
          [Function(GExploreData_popular_media_titleBuilder b) updates]) =
      _$GExploreData_popular_media_title;

  static void _initializeBuilder(GExploreData_popular_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GExploreData_popular_media_title> get serializer =>
      _$gExploreDataPopularMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_popular_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_popular_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_popular_media_title.serializer,
        json,
      );
}

abstract class GExploreData_popular_media_coverImage
    implements
        Built<GExploreData_popular_media_coverImage,
            GExploreData_popular_media_coverImageBuilder>,
        _i2.GMediaFragment_coverImage {
  GExploreData_popular_media_coverImage._();

  factory GExploreData_popular_media_coverImage(
          [Function(GExploreData_popular_media_coverImageBuilder b) updates]) =
      _$GExploreData_popular_media_coverImage;

  static void _initializeBuilder(
          GExploreData_popular_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GExploreData_popular_media_coverImage> get serializer =>
      _$gExploreDataPopularMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_popular_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_popular_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_popular_media_coverImage.serializer,
        json,
      );
}

abstract class GExploreData_recent
    implements Built<GExploreData_recent, GExploreData_recentBuilder> {
  GExploreData_recent._();

  factory GExploreData_recent(
      [Function(GExploreData_recentBuilder b) updates]) = _$GExploreData_recent;

  static void _initializeBuilder(GExploreData_recentBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GExploreData_recent_media?>? get media;
  static Serializer<GExploreData_recent> get serializer =>
      _$gExploreDataRecentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_recent.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_recent? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_recent.serializer,
        json,
      );
}

abstract class GExploreData_recent_media
    implements
        Built<GExploreData_recent_media, GExploreData_recent_mediaBuilder>,
        _i2.GMediaFragment {
  GExploreData_recent_media._();

  factory GExploreData_recent_media(
          [Function(GExploreData_recent_mediaBuilder b) updates]) =
      _$GExploreData_recent_media;

  static void _initializeBuilder(GExploreData_recent_mediaBuilder b) =>
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
  GExploreData_recent_media_title? get title;
  @override
  GExploreData_recent_media_coverImage? get coverImage;
  static Serializer<GExploreData_recent_media> get serializer =>
      _$gExploreDataRecentMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_recent_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_recent_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_recent_media.serializer,
        json,
      );
}

abstract class GExploreData_recent_media_title
    implements
        Built<GExploreData_recent_media_title,
            GExploreData_recent_media_titleBuilder>,
        _i2.GMediaFragment_title {
  GExploreData_recent_media_title._();

  factory GExploreData_recent_media_title(
          [Function(GExploreData_recent_media_titleBuilder b) updates]) =
      _$GExploreData_recent_media_title;

  static void _initializeBuilder(GExploreData_recent_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GExploreData_recent_media_title> get serializer =>
      _$gExploreDataRecentMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_recent_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_recent_media_title? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_recent_media_title.serializer,
        json,
      );
}

abstract class GExploreData_recent_media_coverImage
    implements
        Built<GExploreData_recent_media_coverImage,
            GExploreData_recent_media_coverImageBuilder>,
        _i2.GMediaFragment_coverImage {
  GExploreData_recent_media_coverImage._();

  factory GExploreData_recent_media_coverImage(
          [Function(GExploreData_recent_media_coverImageBuilder b) updates]) =
      _$GExploreData_recent_media_coverImage;

  static void _initializeBuilder(
          GExploreData_recent_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GExploreData_recent_media_coverImage> get serializer =>
      _$gExploreDataRecentMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GExploreData_recent_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreData_recent_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GExploreData_recent_media_coverImage.serializer,
        json,
      );
}
