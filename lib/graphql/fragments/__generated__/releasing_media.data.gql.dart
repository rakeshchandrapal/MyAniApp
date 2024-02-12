// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i1;

part 'releasing_media.data.gql.g.dart';

abstract class GReleasingMedia implements _i1.GMediaFragment {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  _i2.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i2.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GReleasingMedia_title? get title;
  @override
  GReleasingMedia_coverImage? get coverImage;
  GReleasingMedia_nextAiringEpisode? get nextAiringEpisode;
  GReleasingMedia_airingSchedule? get airingSchedule;
  @override
  Map<String, dynamic> toJson();
}

abstract class GReleasingMedia_title implements _i1.GMediaFragment_title {
  @override
  String get G__typename;
  @override
  String? get userPreferred;
  @override
  Map<String, dynamic> toJson();
}

abstract class GReleasingMedia_coverImage
    implements _i1.GMediaFragment_coverImage {
  @override
  String get G__typename;
  @override
  String? get extraLarge;
  @override
  Map<String, dynamic> toJson();
}

abstract class GReleasingMedia_nextAiringEpisode {
  String get G__typename;
  int get airingAt;
  int get timeUntilAiring;
  int get episode;
  Map<String, dynamic> toJson();
}

abstract class GReleasingMedia_airingSchedule {
  String get G__typename;
  BuiltList<GReleasingMedia_airingSchedule_edges?>? get edges;
  Map<String, dynamic> toJson();
}

abstract class GReleasingMedia_airingSchedule_edges {
  String get G__typename;
  GReleasingMedia_airingSchedule_edges_node? get node;
  Map<String, dynamic> toJson();
}

abstract class GReleasingMedia_airingSchedule_edges_node {
  String get G__typename;
  int get airingAt;
  int get timeUntilAiring;
  int get episode;
  Map<String, dynamic> toJson();
}

abstract class GReleasingMediaData
    implements
        Built<GReleasingMediaData, GReleasingMediaDataBuilder>,
        GReleasingMedia,
        _i1.GMediaFragment {
  GReleasingMediaData._();

  factory GReleasingMediaData(
      [Function(GReleasingMediaDataBuilder b) updates]) = _$GReleasingMediaData;

  static void _initializeBuilder(GReleasingMediaDataBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i2.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i2.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GReleasingMediaData_title? get title;
  @override
  GReleasingMediaData_coverImage? get coverImage;
  @override
  GReleasingMediaData_nextAiringEpisode? get nextAiringEpisode;
  @override
  GReleasingMediaData_airingSchedule? get airingSchedule;
  static Serializer<GReleasingMediaData> get serializer =>
      _$gReleasingMediaDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReleasingMediaData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasingMediaData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReleasingMediaData.serializer,
        json,
      );
}

abstract class GReleasingMediaData_title
    implements
        Built<GReleasingMediaData_title, GReleasingMediaData_titleBuilder>,
        GReleasingMedia_title,
        _i1.GMediaFragment_title {
  GReleasingMediaData_title._();

  factory GReleasingMediaData_title(
          [Function(GReleasingMediaData_titleBuilder b) updates]) =
      _$GReleasingMediaData_title;

  static void _initializeBuilder(GReleasingMediaData_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GReleasingMediaData_title> get serializer =>
      _$gReleasingMediaDataTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReleasingMediaData_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasingMediaData_title? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReleasingMediaData_title.serializer,
        json,
      );
}

abstract class GReleasingMediaData_coverImage
    implements
        Built<GReleasingMediaData_coverImage,
            GReleasingMediaData_coverImageBuilder>,
        GReleasingMedia_coverImage,
        _i1.GMediaFragment_coverImage {
  GReleasingMediaData_coverImage._();

  factory GReleasingMediaData_coverImage(
          [Function(GReleasingMediaData_coverImageBuilder b) updates]) =
      _$GReleasingMediaData_coverImage;

  static void _initializeBuilder(GReleasingMediaData_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GReleasingMediaData_coverImage> get serializer =>
      _$gReleasingMediaDataCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReleasingMediaData_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasingMediaData_coverImage? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReleasingMediaData_coverImage.serializer,
        json,
      );
}

abstract class GReleasingMediaData_nextAiringEpisode
    implements
        Built<GReleasingMediaData_nextAiringEpisode,
            GReleasingMediaData_nextAiringEpisodeBuilder>,
        GReleasingMedia_nextAiringEpisode {
  GReleasingMediaData_nextAiringEpisode._();

  factory GReleasingMediaData_nextAiringEpisode(
          [Function(GReleasingMediaData_nextAiringEpisodeBuilder b) updates]) =
      _$GReleasingMediaData_nextAiringEpisode;

  static void _initializeBuilder(
          GReleasingMediaData_nextAiringEpisodeBuilder b) =>
      b..G__typename = 'AiringSchedule';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get airingAt;
  @override
  int get timeUntilAiring;
  @override
  int get episode;
  static Serializer<GReleasingMediaData_nextAiringEpisode> get serializer =>
      _$gReleasingMediaDataNextAiringEpisodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReleasingMediaData_nextAiringEpisode.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasingMediaData_nextAiringEpisode? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReleasingMediaData_nextAiringEpisode.serializer,
        json,
      );
}

abstract class GReleasingMediaData_airingSchedule
    implements
        Built<GReleasingMediaData_airingSchedule,
            GReleasingMediaData_airingScheduleBuilder>,
        GReleasingMedia_airingSchedule {
  GReleasingMediaData_airingSchedule._();

  factory GReleasingMediaData_airingSchedule(
          [Function(GReleasingMediaData_airingScheduleBuilder b) updates]) =
      _$GReleasingMediaData_airingSchedule;

  static void _initializeBuilder(GReleasingMediaData_airingScheduleBuilder b) =>
      b..G__typename = 'AiringScheduleConnection';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GReleasingMediaData_airingSchedule_edges?>? get edges;
  static Serializer<GReleasingMediaData_airingSchedule> get serializer =>
      _$gReleasingMediaDataAiringScheduleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReleasingMediaData_airingSchedule.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasingMediaData_airingSchedule? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReleasingMediaData_airingSchedule.serializer,
        json,
      );
}

abstract class GReleasingMediaData_airingSchedule_edges
    implements
        Built<GReleasingMediaData_airingSchedule_edges,
            GReleasingMediaData_airingSchedule_edgesBuilder>,
        GReleasingMedia_airingSchedule_edges {
  GReleasingMediaData_airingSchedule_edges._();

  factory GReleasingMediaData_airingSchedule_edges(
      [Function(GReleasingMediaData_airingSchedule_edgesBuilder b)
          updates]) = _$GReleasingMediaData_airingSchedule_edges;

  static void _initializeBuilder(
          GReleasingMediaData_airingSchedule_edgesBuilder b) =>
      b..G__typename = 'AiringScheduleEdge';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GReleasingMediaData_airingSchedule_edges_node? get node;
  static Serializer<GReleasingMediaData_airingSchedule_edges> get serializer =>
      _$gReleasingMediaDataAiringScheduleEdgesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReleasingMediaData_airingSchedule_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasingMediaData_airingSchedule_edges? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReleasingMediaData_airingSchedule_edges.serializer,
        json,
      );
}

abstract class GReleasingMediaData_airingSchedule_edges_node
    implements
        Built<GReleasingMediaData_airingSchedule_edges_node,
            GReleasingMediaData_airingSchedule_edges_nodeBuilder>,
        GReleasingMedia_airingSchedule_edges_node {
  GReleasingMediaData_airingSchedule_edges_node._();

  factory GReleasingMediaData_airingSchedule_edges_node(
      [Function(GReleasingMediaData_airingSchedule_edges_nodeBuilder b)
          updates]) = _$GReleasingMediaData_airingSchedule_edges_node;

  static void _initializeBuilder(
          GReleasingMediaData_airingSchedule_edges_nodeBuilder b) =>
      b..G__typename = 'AiringSchedule';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get airingAt;
  @override
  int get timeUntilAiring;
  @override
  int get episode;
  static Serializer<GReleasingMediaData_airingSchedule_edges_node>
      get serializer => _$gReleasingMediaDataAiringScheduleEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReleasingMediaData_airingSchedule_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasingMediaData_airingSchedule_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReleasingMediaData_airingSchedule_edges_node.serializer,
        json,
      );
}
