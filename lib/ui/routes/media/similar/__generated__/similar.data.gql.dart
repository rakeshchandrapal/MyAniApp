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

abstract class GMediaRecommendationsData
    implements
        Built<GMediaRecommendationsData, GMediaRecommendationsDataBuilder> {
  GMediaRecommendationsData._();

  factory GMediaRecommendationsData(
          [Function(GMediaRecommendationsDataBuilder b) updates]) =
      _$GMediaRecommendationsData;

  static void _initializeBuilder(GMediaRecommendationsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaRecommendationsData_Media? get Media;
  static Serializer<GMediaRecommendationsData> get serializer =>
      _$gMediaRecommendationsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaRecommendationsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaRecommendationsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaRecommendationsData.serializer,
        json,
      );
}

abstract class GMediaRecommendationsData_Media
    implements
        Built<GMediaRecommendationsData_Media,
            GMediaRecommendationsData_MediaBuilder> {
  GMediaRecommendationsData_Media._();

  factory GMediaRecommendationsData_Media(
          [Function(GMediaRecommendationsData_MediaBuilder b) updates]) =
      _$GMediaRecommendationsData_Media;

  static void _initializeBuilder(GMediaRecommendationsData_MediaBuilder b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GMediaRecommendationsData_Media_recommendations? get recommendations;
  static Serializer<GMediaRecommendationsData_Media> get serializer =>
      _$gMediaRecommendationsDataMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaRecommendationsData_Media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaRecommendationsData_Media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaRecommendationsData_Media.serializer,
        json,
      );
}

abstract class GMediaRecommendationsData_Media_recommendations
    implements
        Built<GMediaRecommendationsData_Media_recommendations,
            GMediaRecommendationsData_Media_recommendationsBuilder> {
  GMediaRecommendationsData_Media_recommendations._();

  factory GMediaRecommendationsData_Media_recommendations(
      [Function(GMediaRecommendationsData_Media_recommendationsBuilder b)
          updates]) = _$GMediaRecommendationsData_Media_recommendations;

  static void _initializeBuilder(
          GMediaRecommendationsData_Media_recommendationsBuilder b) =>
      b..G__typename = 'RecommendationConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaRecommendationsData_Media_recommendations_pageInfo? get pageInfo;
  BuiltList<GMediaRecommendationsData_Media_recommendations_nodes?>? get nodes;
  static Serializer<GMediaRecommendationsData_Media_recommendations>
      get serializer =>
          _$gMediaRecommendationsDataMediaRecommendationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaRecommendationsData_Media_recommendations.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaRecommendationsData_Media_recommendations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaRecommendationsData_Media_recommendations.serializer,
        json,
      );
}

abstract class GMediaRecommendationsData_Media_recommendations_pageInfo
    implements
        Built<GMediaRecommendationsData_Media_recommendations_pageInfo,
            GMediaRecommendationsData_Media_recommendations_pageInfoBuilder>,
        _i2.GPageInfo {
  GMediaRecommendationsData_Media_recommendations_pageInfo._();

  factory GMediaRecommendationsData_Media_recommendations_pageInfo(
      [Function(
              GMediaRecommendationsData_Media_recommendations_pageInfoBuilder b)
          updates]) = _$GMediaRecommendationsData_Media_recommendations_pageInfo;

  static void _initializeBuilder(
          GMediaRecommendationsData_Media_recommendations_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GMediaRecommendationsData_Media_recommendations_pageInfo>
      get serializer =>
          _$gMediaRecommendationsDataMediaRecommendationsPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaRecommendationsData_Media_recommendations_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaRecommendationsData_Media_recommendations_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaRecommendationsData_Media_recommendations_pageInfo.serializer,
        json,
      );
}

abstract class GMediaRecommendationsData_Media_recommendations_nodes
    implements
        Built<GMediaRecommendationsData_Media_recommendations_nodes,
            GMediaRecommendationsData_Media_recommendations_nodesBuilder> {
  GMediaRecommendationsData_Media_recommendations_nodes._();

  factory GMediaRecommendationsData_Media_recommendations_nodes(
      [Function(GMediaRecommendationsData_Media_recommendations_nodesBuilder b)
          updates]) = _$GMediaRecommendationsData_Media_recommendations_nodes;

  static void _initializeBuilder(
          GMediaRecommendationsData_Media_recommendations_nodesBuilder b) =>
      b..G__typename = 'Recommendation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation?
      get mediaRecommendation;
  static Serializer<GMediaRecommendationsData_Media_recommendations_nodes>
      get serializer =>
          _$gMediaRecommendationsDataMediaRecommendationsNodesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaRecommendationsData_Media_recommendations_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaRecommendationsData_Media_recommendations_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaRecommendationsData_Media_recommendations_nodes.serializer,
        json,
      );
}

abstract class GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
    implements
        Built<
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation,
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder>,
        _i3.GMediaFragment {
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation._();

  factory GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation(
          [Function(
                  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder
                      b)
              updates]) =
      _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation;

  static void _initializeBuilder(
          GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendationBuilder
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
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title?
      get title;
  @override
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage?
      get coverImage;
  static Serializer<
          GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation>
      get serializer =>
          _$gMediaRecommendationsDataMediaRecommendationsNodesMediaRecommendationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
                .serializer,
            json,
          );
}

abstract class GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
    implements
        Built<
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title,
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder>,
        _i3.GMediaFragment_title {
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title._();

  factory GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title(
          [Function(
                  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder
                      b)
              updates]) =
      _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title;

  static void _initializeBuilder(
          GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<
          GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title>
      get serializer =>
          _$gMediaRecommendationsDataMediaRecommendationsNodesMediaRecommendationTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
                .serializer,
            json,
          );
}

abstract class GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
    implements
        Built<
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage,
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder>,
        _i3.GMediaFragment_coverImage {
  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage._();

  factory GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage(
          [Function(
                  GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder
                      b)
              updates]) =
      _$GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage;

  static void _initializeBuilder(
          GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<
          GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage>
      get serializer =>
          _$gMediaRecommendationsDataMediaRecommendationsNodesMediaRecommendationCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
                .serializer,
            json,
          );
}
