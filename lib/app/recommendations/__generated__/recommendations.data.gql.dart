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
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i2;

part 'recommendations.data.gql.g.dart';

abstract class GRecommendationsData
    implements Built<GRecommendationsData, GRecommendationsDataBuilder> {
  GRecommendationsData._();

  factory GRecommendationsData(
          [void Function(GRecommendationsDataBuilder b) updates]) =
      _$GRecommendationsData;

  static void _initializeBuilder(GRecommendationsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRecommendationsData_Page? get Page;
  static Serializer<GRecommendationsData> get serializer =>
      _$gRecommendationsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRecommendationsData.serializer,
        json,
      );
}

abstract class GRecommendationsData_Page
    implements
        Built<GRecommendationsData_Page, GRecommendationsData_PageBuilder> {
  GRecommendationsData_Page._();

  factory GRecommendationsData_Page(
          [void Function(GRecommendationsData_PageBuilder b) updates]) =
      _$GRecommendationsData_Page;

  static void _initializeBuilder(GRecommendationsData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRecommendationsData_Page_pageInfo? get pageInfo;
  BuiltList<GRecommendationsData_Page_recommendations?>? get recommendations;
  static Serializer<GRecommendationsData_Page> get serializer =>
      _$gRecommendationsDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRecommendationsData_Page.serializer,
        json,
      );
}

abstract class GRecommendationsData_Page_pageInfo
    implements
        Built<GRecommendationsData_Page_pageInfo,
            GRecommendationsData_Page_pageInfoBuilder>,
        _i2.GPageInfo {
  GRecommendationsData_Page_pageInfo._();

  factory GRecommendationsData_Page_pageInfo(
      [void Function(GRecommendationsData_Page_pageInfoBuilder b)
          updates]) = _$GRecommendationsData_Page_pageInfo;

  static void _initializeBuilder(GRecommendationsData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GRecommendationsData_Page_pageInfo> get serializer =>
      _$gRecommendationsDataPagePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Page_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRecommendationsData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GRecommendationsData_Page_recommendations
    implements
        Built<GRecommendationsData_Page_recommendations,
            GRecommendationsData_Page_recommendationsBuilder> {
  GRecommendationsData_Page_recommendations._();

  factory GRecommendationsData_Page_recommendations(
      [void Function(GRecommendationsData_Page_recommendationsBuilder b)
          updates]) = _$GRecommendationsData_Page_recommendations;

  static void _initializeBuilder(
          GRecommendationsData_Page_recommendationsBuilder b) =>
      b..G__typename = 'Recommendation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get rating;
  _i3.GRecommendationRating? get userRating;
  GRecommendationsData_Page_recommendations_media? get media;
  GRecommendationsData_Page_recommendations_mediaRecommendation?
      get mediaRecommendation;
  static Serializer<GRecommendationsData_Page_recommendations> get serializer =>
      _$gRecommendationsDataPageRecommendationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Page_recommendations.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Page_recommendations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRecommendationsData_Page_recommendations.serializer,
        json,
      );
}

abstract class GRecommendationsData_Page_recommendations_media
    implements
        Built<GRecommendationsData_Page_recommendations_media,
            GRecommendationsData_Page_recommendations_mediaBuilder>,
        _i4.GMediaFragment {
  GRecommendationsData_Page_recommendations_media._();

  factory GRecommendationsData_Page_recommendations_media(
      [void Function(GRecommendationsData_Page_recommendations_mediaBuilder b)
          updates]) = _$GRecommendationsData_Page_recommendations_media;

  static void _initializeBuilder(
          GRecommendationsData_Page_recommendations_mediaBuilder b) =>
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
  GRecommendationsData_Page_recommendations_media_title? get title;
  @override
  GRecommendationsData_Page_recommendations_media_coverImage? get coverImage;
  static Serializer<GRecommendationsData_Page_recommendations_media>
      get serializer =>
          _$gRecommendationsDataPageRecommendationsMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Page_recommendations_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Page_recommendations_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRecommendationsData_Page_recommendations_media.serializer,
        json,
      );
}

abstract class GRecommendationsData_Page_recommendations_media_title
    implements
        Built<GRecommendationsData_Page_recommendations_media_title,
            GRecommendationsData_Page_recommendations_media_titleBuilder>,
        _i4.GMediaFragment_title {
  GRecommendationsData_Page_recommendations_media_title._();

  factory GRecommendationsData_Page_recommendations_media_title(
      [void Function(
              GRecommendationsData_Page_recommendations_media_titleBuilder b)
          updates]) = _$GRecommendationsData_Page_recommendations_media_title;

  static void _initializeBuilder(
          GRecommendationsData_Page_recommendations_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GRecommendationsData_Page_recommendations_media_title>
      get serializer =>
          _$gRecommendationsDataPageRecommendationsMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Page_recommendations_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Page_recommendations_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRecommendationsData_Page_recommendations_media_title.serializer,
        json,
      );
}

abstract class GRecommendationsData_Page_recommendations_media_coverImage
    implements
        Built<GRecommendationsData_Page_recommendations_media_coverImage,
            GRecommendationsData_Page_recommendations_media_coverImageBuilder>,
        _i4.GMediaFragment_coverImage {
  GRecommendationsData_Page_recommendations_media_coverImage._();

  factory GRecommendationsData_Page_recommendations_media_coverImage(
      [void Function(
              GRecommendationsData_Page_recommendations_media_coverImageBuilder
                  b)
          updates]) = _$GRecommendationsData_Page_recommendations_media_coverImage;

  static void _initializeBuilder(
          GRecommendationsData_Page_recommendations_media_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GRecommendationsData_Page_recommendations_media_coverImage>
      get serializer =>
          _$gRecommendationsDataPageRecommendationsMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Page_recommendations_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Page_recommendations_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRecommendationsData_Page_recommendations_media_coverImage.serializer,
        json,
      );
}

abstract class GRecommendationsData_Page_recommendations_mediaRecommendation
    implements
        Built<GRecommendationsData_Page_recommendations_mediaRecommendation,
            GRecommendationsData_Page_recommendations_mediaRecommendationBuilder>,
        _i4.GMediaFragment {
  GRecommendationsData_Page_recommendations_mediaRecommendation._();

  factory GRecommendationsData_Page_recommendations_mediaRecommendation(
          [void Function(
                  GRecommendationsData_Page_recommendations_mediaRecommendationBuilder
                      b)
              updates]) =
      _$GRecommendationsData_Page_recommendations_mediaRecommendation;

  static void _initializeBuilder(
          GRecommendationsData_Page_recommendations_mediaRecommendationBuilder
              b) =>
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
  GRecommendationsData_Page_recommendations_mediaRecommendation_title?
      get title;
  @override
  GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage?
      get coverImage;
  static Serializer<
          GRecommendationsData_Page_recommendations_mediaRecommendation>
      get serializer =>
          _$gRecommendationsDataPageRecommendationsMediaRecommendationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Page_recommendations_mediaRecommendation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Page_recommendations_mediaRecommendation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GRecommendationsData_Page_recommendations_mediaRecommendation
                .serializer,
            json,
          );
}

abstract class GRecommendationsData_Page_recommendations_mediaRecommendation_title
    implements
        Built<
            GRecommendationsData_Page_recommendations_mediaRecommendation_title,
            GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder>,
        _i4.GMediaFragment_title {
  GRecommendationsData_Page_recommendations_mediaRecommendation_title._();

  factory GRecommendationsData_Page_recommendations_mediaRecommendation_title(
          [void Function(
                  GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder
                      b)
              updates]) =
      _$GRecommendationsData_Page_recommendations_mediaRecommendation_title;

  static void _initializeBuilder(
          GRecommendationsData_Page_recommendations_mediaRecommendation_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<
          GRecommendationsData_Page_recommendations_mediaRecommendation_title>
      get serializer =>
          _$gRecommendationsDataPageRecommendationsMediaRecommendationTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Page_recommendations_mediaRecommendation_title
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Page_recommendations_mediaRecommendation_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GRecommendationsData_Page_recommendations_mediaRecommendation_title
                .serializer,
            json,
          );
}

abstract class GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage
    implements
        Built<
            GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage,
            GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder>,
        _i4.GMediaFragment_coverImage {
  GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage._();

  factory GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage(
          [void Function(
                  GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder
                      b)
              updates]) =
      _$GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage;

  static void _initializeBuilder(
          GRecommendationsData_Page_recommendations_mediaRecommendation_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<
          GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage>
      get serializer =>
          _$gRecommendationsDataPageRecommendationsMediaRecommendationCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage
                .serializer,
            json,
          );
}

abstract class GSaveRecommendationData
    implements Built<GSaveRecommendationData, GSaveRecommendationDataBuilder> {
  GSaveRecommendationData._();

  factory GSaveRecommendationData(
          [void Function(GSaveRecommendationDataBuilder b) updates]) =
      _$GSaveRecommendationData;

  static void _initializeBuilder(GSaveRecommendationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSaveRecommendationData_SaveRecommendation? get SaveRecommendation;
  static Serializer<GSaveRecommendationData> get serializer =>
      _$gSaveRecommendationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveRecommendationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveRecommendationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveRecommendationData.serializer,
        json,
      );
}

abstract class GSaveRecommendationData_SaveRecommendation
    implements
        Built<GSaveRecommendationData_SaveRecommendation,
            GSaveRecommendationData_SaveRecommendationBuilder> {
  GSaveRecommendationData_SaveRecommendation._();

  factory GSaveRecommendationData_SaveRecommendation(
      [void Function(GSaveRecommendationData_SaveRecommendationBuilder b)
          updates]) = _$GSaveRecommendationData_SaveRecommendation;

  static void _initializeBuilder(
          GSaveRecommendationData_SaveRecommendationBuilder b) =>
      b..G__typename = 'Recommendation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get rating;
  _i3.GRecommendationRating? get userRating;
  GSaveRecommendationData_SaveRecommendation_media? get media;
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation?
      get mediaRecommendation;
  static Serializer<GSaveRecommendationData_SaveRecommendation>
      get serializer => _$gSaveRecommendationDataSaveRecommendationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveRecommendationData_SaveRecommendation.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveRecommendationData_SaveRecommendation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveRecommendationData_SaveRecommendation.serializer,
        json,
      );
}

abstract class GSaveRecommendationData_SaveRecommendation_media
    implements
        Built<GSaveRecommendationData_SaveRecommendation_media,
            GSaveRecommendationData_SaveRecommendation_mediaBuilder>,
        _i4.GMediaFragment {
  GSaveRecommendationData_SaveRecommendation_media._();

  factory GSaveRecommendationData_SaveRecommendation_media(
      [void Function(GSaveRecommendationData_SaveRecommendation_mediaBuilder b)
          updates]) = _$GSaveRecommendationData_SaveRecommendation_media;

  static void _initializeBuilder(
          GSaveRecommendationData_SaveRecommendation_mediaBuilder b) =>
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
  GSaveRecommendationData_SaveRecommendation_media_title? get title;
  @override
  GSaveRecommendationData_SaveRecommendation_media_coverImage? get coverImage;
  static Serializer<GSaveRecommendationData_SaveRecommendation_media>
      get serializer =>
          _$gSaveRecommendationDataSaveRecommendationMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveRecommendationData_SaveRecommendation_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveRecommendationData_SaveRecommendation_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveRecommendationData_SaveRecommendation_media.serializer,
        json,
      );
}

abstract class GSaveRecommendationData_SaveRecommendation_media_title
    implements
        Built<GSaveRecommendationData_SaveRecommendation_media_title,
            GSaveRecommendationData_SaveRecommendation_media_titleBuilder>,
        _i4.GMediaFragment_title {
  GSaveRecommendationData_SaveRecommendation_media_title._();

  factory GSaveRecommendationData_SaveRecommendation_media_title(
      [void Function(
              GSaveRecommendationData_SaveRecommendation_media_titleBuilder b)
          updates]) = _$GSaveRecommendationData_SaveRecommendation_media_title;

  static void _initializeBuilder(
          GSaveRecommendationData_SaveRecommendation_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GSaveRecommendationData_SaveRecommendation_media_title>
      get serializer =>
          _$gSaveRecommendationDataSaveRecommendationMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveRecommendationData_SaveRecommendation_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveRecommendationData_SaveRecommendation_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveRecommendationData_SaveRecommendation_media_title.serializer,
        json,
      );
}

abstract class GSaveRecommendationData_SaveRecommendation_media_coverImage
    implements
        Built<GSaveRecommendationData_SaveRecommendation_media_coverImage,
            GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder>,
        _i4.GMediaFragment_coverImage {
  GSaveRecommendationData_SaveRecommendation_media_coverImage._();

  factory GSaveRecommendationData_SaveRecommendation_media_coverImage(
      [void Function(
              GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder
                  b)
          updates]) = _$GSaveRecommendationData_SaveRecommendation_media_coverImage;

  static void _initializeBuilder(
          GSaveRecommendationData_SaveRecommendation_media_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GSaveRecommendationData_SaveRecommendation_media_coverImage>
      get serializer =>
          _$gSaveRecommendationDataSaveRecommendationMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveRecommendationData_SaveRecommendation_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveRecommendationData_SaveRecommendation_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveRecommendationData_SaveRecommendation_media_coverImage.serializer,
        json,
      );
}

abstract class GSaveRecommendationData_SaveRecommendation_mediaRecommendation
    implements
        Built<GSaveRecommendationData_SaveRecommendation_mediaRecommendation,
            GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder>,
        _i4.GMediaFragment {
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation._();

  factory GSaveRecommendationData_SaveRecommendation_mediaRecommendation(
          [void Function(
                  GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder
                      b)
              updates]) =
      _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation;

  static void _initializeBuilder(
          GSaveRecommendationData_SaveRecommendation_mediaRecommendationBuilder
              b) =>
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
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title?
      get title;
  @override
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage?
      get coverImage;
  static Serializer<
          GSaveRecommendationData_SaveRecommendation_mediaRecommendation>
      get serializer =>
          _$gSaveRecommendationDataSaveRecommendationMediaRecommendationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveRecommendationData_SaveRecommendation_mediaRecommendation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveRecommendationData_SaveRecommendation_mediaRecommendation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation
                .serializer,
            json,
          );
}

abstract class GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title
    implements
        Built<
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title,
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder>,
        _i4.GMediaFragment_title {
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title._();

  factory GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title(
          [void Function(
                  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder
                      b)
              updates]) =
      _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title;

  static void _initializeBuilder(
          GSaveRecommendationData_SaveRecommendation_mediaRecommendation_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<
          GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title>
      get serializer =>
          _$gSaveRecommendationDataSaveRecommendationMediaRecommendationTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title
                .serializer,
            json,
          );
}

abstract class GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage
    implements
        Built<
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage,
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder>,
        _i4.GMediaFragment_coverImage {
  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage._();

  factory GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage(
          [void Function(
                  GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder
                      b)
              updates]) =
      _$GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage;

  static void _initializeBuilder(
          GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<
          GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage>
      get serializer =>
          _$gSaveRecommendationDataSaveRecommendationMediaRecommendationCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage
                .serializer,
            json,
          );
}
