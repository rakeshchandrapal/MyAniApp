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

abstract class GRecommendationsData
    implements Built<GRecommendationsData, GRecommendationsDataBuilder> {
  GRecommendationsData._();

  factory GRecommendationsData(
          [Function(GRecommendationsDataBuilder b) updates]) =
      _$GRecommendationsData;

  static void _initializeBuilder(GRecommendationsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRecommendationsData_Media? get Media;
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

abstract class GRecommendationsData_Media
    implements
        Built<GRecommendationsData_Media, GRecommendationsData_MediaBuilder> {
  GRecommendationsData_Media._();

  factory GRecommendationsData_Media(
          [Function(GRecommendationsData_MediaBuilder b) updates]) =
      _$GRecommendationsData_Media;

  static void _initializeBuilder(GRecommendationsData_MediaBuilder b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GRecommendationsData_Media_recommendations? get recommendations;
  static Serializer<GRecommendationsData_Media> get serializer =>
      _$gRecommendationsDataMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRecommendationsData_Media.serializer,
        json,
      );
}

abstract class GRecommendationsData_Media_recommendations
    implements
        Built<GRecommendationsData_Media_recommendations,
            GRecommendationsData_Media_recommendationsBuilder> {
  GRecommendationsData_Media_recommendations._();

  factory GRecommendationsData_Media_recommendations(
      [Function(GRecommendationsData_Media_recommendationsBuilder b)
          updates]) = _$GRecommendationsData_Media_recommendations;

  static void _initializeBuilder(
          GRecommendationsData_Media_recommendationsBuilder b) =>
      b..G__typename = 'RecommendationConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRecommendationsData_Media_recommendations_pageInfo? get pageInfo;
  BuiltList<GRecommendationsData_Media_recommendations_nodes?>? get nodes;
  static Serializer<GRecommendationsData_Media_recommendations>
      get serializer => _$gRecommendationsDataMediaRecommendationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Media_recommendations.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Media_recommendations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRecommendationsData_Media_recommendations.serializer,
        json,
      );
}

abstract class GRecommendationsData_Media_recommendations_pageInfo
    implements
        Built<GRecommendationsData_Media_recommendations_pageInfo,
            GRecommendationsData_Media_recommendations_pageInfoBuilder>,
        _i2.GPageInfo {
  GRecommendationsData_Media_recommendations_pageInfo._();

  factory GRecommendationsData_Media_recommendations_pageInfo(
      [Function(GRecommendationsData_Media_recommendations_pageInfoBuilder b)
          updates]) = _$GRecommendationsData_Media_recommendations_pageInfo;

  static void _initializeBuilder(
          GRecommendationsData_Media_recommendations_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GRecommendationsData_Media_recommendations_pageInfo>
      get serializer =>
          _$gRecommendationsDataMediaRecommendationsPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Media_recommendations_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Media_recommendations_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRecommendationsData_Media_recommendations_pageInfo.serializer,
        json,
      );
}

abstract class GRecommendationsData_Media_recommendations_nodes
    implements
        Built<GRecommendationsData_Media_recommendations_nodes,
            GRecommendationsData_Media_recommendations_nodesBuilder> {
  GRecommendationsData_Media_recommendations_nodes._();

  factory GRecommendationsData_Media_recommendations_nodes(
      [Function(GRecommendationsData_Media_recommendations_nodesBuilder b)
          updates]) = _$GRecommendationsData_Media_recommendations_nodes;

  static void _initializeBuilder(
          GRecommendationsData_Media_recommendations_nodesBuilder b) =>
      b..G__typename = 'Recommendation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRecommendationsData_Media_recommendations_nodes_mediaRecommendation?
      get mediaRecommendation;
  static Serializer<GRecommendationsData_Media_recommendations_nodes>
      get serializer =>
          _$gRecommendationsDataMediaRecommendationsNodesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Media_recommendations_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Media_recommendations_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRecommendationsData_Media_recommendations_nodes.serializer,
        json,
      );
}

abstract class GRecommendationsData_Media_recommendations_nodes_mediaRecommendation
    implements
        Built<
            GRecommendationsData_Media_recommendations_nodes_mediaRecommendation,
            GRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder>,
        _i3.GMediaFragment {
  GRecommendationsData_Media_recommendations_nodes_mediaRecommendation._();

  factory GRecommendationsData_Media_recommendations_nodes_mediaRecommendation(
          [Function(
                  GRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder
                      b)
              updates]) =
      _$GRecommendationsData_Media_recommendations_nodes_mediaRecommendation;

  static void _initializeBuilder(
          GRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder
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
  GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title?
      get title;
  @override
  GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage?
      get coverImage;
  static Serializer<
          GRecommendationsData_Media_recommendations_nodes_mediaRecommendation>
      get serializer =>
          _$gRecommendationsDataMediaRecommendationsNodesMediaRecommendationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Media_recommendations_nodes_mediaRecommendation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Media_recommendations_nodes_mediaRecommendation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GRecommendationsData_Media_recommendations_nodes_mediaRecommendation
                .serializer,
            json,
          );
}

abstract class GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
    implements
        Built<
            GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title,
            GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder>,
        _i3.GMediaFragment_title {
  GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title._();

  factory GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title(
          [Function(
                  GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder
                      b)
              updates]) =
      _$GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title;

  static void _initializeBuilder(
          GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<
          GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title>
      get serializer =>
          _$gRecommendationsDataMediaRecommendationsNodesMediaRecommendationTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
                .serializer,
            json,
          );
}

abstract class GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
    implements
        Built<
            GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage,
            GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder>,
        _i3.GMediaFragment_coverImage {
  GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage._();

  factory GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage(
          [Function(
                  GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder
                      b)
              updates]) =
      _$GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage;

  static void _initializeBuilder(
          GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<
          GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage>
      get serializer =>
          _$gRecommendationsDataMediaRecommendationsNodesMediaRecommendationCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
                .serializer,
            json,
          );
}
