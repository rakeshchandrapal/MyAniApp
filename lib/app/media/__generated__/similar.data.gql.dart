// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i2;

part 'similar.data.gql.g.dart';

abstract class GMediaSimilarData
    implements Built<GMediaSimilarData, GMediaSimilarDataBuilder> {
  GMediaSimilarData._();

  factory GMediaSimilarData(
          [void Function(GMediaSimilarDataBuilder b) updates]) =
      _$GMediaSimilarData;

  static void _initializeBuilder(GMediaSimilarDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaSimilarData_Media? get Media;
  static Serializer<GMediaSimilarData> get serializer =>
      _$gMediaSimilarDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaSimilarData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaSimilarData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaSimilarData.serializer,
        json,
      );
}

abstract class GMediaSimilarData_Media
    implements Built<GMediaSimilarData_Media, GMediaSimilarData_MediaBuilder> {
  GMediaSimilarData_Media._();

  factory GMediaSimilarData_Media(
          [void Function(GMediaSimilarData_MediaBuilder b) updates]) =
      _$GMediaSimilarData_Media;

  static void _initializeBuilder(GMediaSimilarData_MediaBuilder b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GMediaSimilarData_Media_recommendations? get recommendations;
  static Serializer<GMediaSimilarData_Media> get serializer =>
      _$gMediaSimilarDataMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaSimilarData_Media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaSimilarData_Media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaSimilarData_Media.serializer,
        json,
      );
}

abstract class GMediaSimilarData_Media_recommendations
    implements
        Built<GMediaSimilarData_Media_recommendations,
            GMediaSimilarData_Media_recommendationsBuilder> {
  GMediaSimilarData_Media_recommendations._();

  factory GMediaSimilarData_Media_recommendations(
      [void Function(GMediaSimilarData_Media_recommendationsBuilder b)
          updates]) = _$GMediaSimilarData_Media_recommendations;

  static void _initializeBuilder(
          GMediaSimilarData_Media_recommendationsBuilder b) =>
      b..G__typename = 'RecommendationConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaSimilarData_Media_recommendations_pageInfo? get pageInfo;
  BuiltList<GMediaSimilarData_Media_recommendations_nodes?>? get nodes;
  static Serializer<GMediaSimilarData_Media_recommendations> get serializer =>
      _$gMediaSimilarDataMediaRecommendationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaSimilarData_Media_recommendations.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaSimilarData_Media_recommendations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaSimilarData_Media_recommendations.serializer,
        json,
      );
}

abstract class GMediaSimilarData_Media_recommendations_pageInfo
    implements
        Built<GMediaSimilarData_Media_recommendations_pageInfo,
            GMediaSimilarData_Media_recommendations_pageInfoBuilder>,
        _i2.GPageInfo {
  GMediaSimilarData_Media_recommendations_pageInfo._();

  factory GMediaSimilarData_Media_recommendations_pageInfo(
      [void Function(GMediaSimilarData_Media_recommendations_pageInfoBuilder b)
          updates]) = _$GMediaSimilarData_Media_recommendations_pageInfo;

  static void _initializeBuilder(
          GMediaSimilarData_Media_recommendations_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GMediaSimilarData_Media_recommendations_pageInfo>
      get serializer =>
          _$gMediaSimilarDataMediaRecommendationsPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaSimilarData_Media_recommendations_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaSimilarData_Media_recommendations_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaSimilarData_Media_recommendations_pageInfo.serializer,
        json,
      );
}

abstract class GMediaSimilarData_Media_recommendations_nodes
    implements
        Built<GMediaSimilarData_Media_recommendations_nodes,
            GMediaSimilarData_Media_recommendations_nodesBuilder> {
  GMediaSimilarData_Media_recommendations_nodes._();

  factory GMediaSimilarData_Media_recommendations_nodes(
      [void Function(GMediaSimilarData_Media_recommendations_nodesBuilder b)
          updates]) = _$GMediaSimilarData_Media_recommendations_nodes;

  static void _initializeBuilder(
          GMediaSimilarData_Media_recommendations_nodesBuilder b) =>
      b..G__typename = 'Recommendation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation?
      get mediaRecommendation;
  static Serializer<GMediaSimilarData_Media_recommendations_nodes>
      get serializer => _$gMediaSimilarDataMediaRecommendationsNodesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaSimilarData_Media_recommendations_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaSimilarData_Media_recommendations_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaSimilarData_Media_recommendations_nodes.serializer,
        json,
      );
}

abstract class GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation
    implements
        Built<GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation,
            GMediaSimilarData_Media_recommendations_nodes_mediaRecommendationBuilder>,
        _i3.GMediaFragment {
  GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation._();

  factory GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation(
          [void Function(
                  GMediaSimilarData_Media_recommendations_nodes_mediaRecommendationBuilder
                      b)
              updates]) =
      _$GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation;

  static void _initializeBuilder(
          GMediaSimilarData_Media_recommendations_nodes_mediaRecommendationBuilder
              b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i4.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i4.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_title?
      get title;
  @override
  GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_coverImage?
      get coverImage;
  static Serializer<
          GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation>
      get serializer =>
          _$gMediaSimilarDataMediaRecommendationsNodesMediaRecommendationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation
                .serializer,
            json,
          );
}

abstract class GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_title
    implements
        Built<
            GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_title,
            GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_titleBuilder>,
        _i3.GMediaFragment_title {
  GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_title._();

  factory GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_title(
          [void Function(
                  GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_titleBuilder
                      b)
              updates]) =
      _$GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_title;

  static void _initializeBuilder(
          GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<
          GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_title>
      get serializer =>
          _$gMediaSimilarDataMediaRecommendationsNodesMediaRecommendationTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_title
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_title
                .serializer,
            json,
          );
}

abstract class GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_coverImage
    implements
        Built<
            GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_coverImage,
            GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder>,
        _i3.GMediaFragment_coverImage {
  GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_coverImage._();

  factory GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_coverImage(
          [void Function(
                  GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder
                      b)
              updates]) =
      _$GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_coverImage;

  static void _initializeBuilder(
          GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<
          GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_coverImage>
      get serializer =>
          _$gMediaSimilarDataMediaRecommendationsNodesMediaRecommendationCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaSimilarData_Media_recommendations_nodes_mediaRecommendation_coverImage
                .serializer,
            json,
          );
}
