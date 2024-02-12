// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/releasing_media.data.gql.dart'
    as _i3;

part 'listReleases.data.gql.g.dart';

abstract class GReleasesListData
    implements Built<GReleasesListData, GReleasesListDataBuilder> {
  GReleasesListData._();

  factory GReleasesListData([Function(GReleasesListDataBuilder b) updates]) =
      _$GReleasesListData;

  static void _initializeBuilder(GReleasesListDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GReleasesListData_Page? get Page;
  static Serializer<GReleasesListData> get serializer =>
      _$gReleasesListDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReleasesListData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasesListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReleasesListData.serializer,
        json,
      );
}

abstract class GReleasesListData_Page
    implements Built<GReleasesListData_Page, GReleasesListData_PageBuilder> {
  GReleasesListData_Page._();

  factory GReleasesListData_Page(
          [Function(GReleasesListData_PageBuilder b) updates]) =
      _$GReleasesListData_Page;

  static void _initializeBuilder(GReleasesListData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GReleasesListData_Page_pageInfo? get pageInfo;
  BuiltList<GReleasesListData_Page_media?>? get media;
  static Serializer<GReleasesListData_Page> get serializer =>
      _$gReleasesListDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReleasesListData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasesListData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReleasesListData_Page.serializer,
        json,
      );
}

abstract class GReleasesListData_Page_pageInfo
    implements
        Built<GReleasesListData_Page_pageInfo,
            GReleasesListData_Page_pageInfoBuilder>,
        _i2.GPageInfo {
  GReleasesListData_Page_pageInfo._();

  factory GReleasesListData_Page_pageInfo(
          [Function(GReleasesListData_Page_pageInfoBuilder b) updates]) =
      _$GReleasesListData_Page_pageInfo;

  static void _initializeBuilder(GReleasesListData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GReleasesListData_Page_pageInfo> get serializer =>
      _$gReleasesListDataPagePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReleasesListData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasesListData_Page_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReleasesListData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GReleasesListData_Page_media
    implements
        Built<GReleasesListData_Page_media,
            GReleasesListData_Page_mediaBuilder>,
        _i3.GReleasingMedia {
  GReleasesListData_Page_media._();

  factory GReleasesListData_Page_media(
          [Function(GReleasesListData_Page_mediaBuilder b) updates]) =
      _$GReleasesListData_Page_media;

  static void _initializeBuilder(GReleasesListData_Page_mediaBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GReleasesListData_Page_media_nextAiringEpisode? get nextAiringEpisode;
  @override
  GReleasesListData_Page_media_airingSchedule? get airingSchedule;
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
  GReleasesListData_Page_media_title? get title;
  @override
  GReleasesListData_Page_media_coverImage? get coverImage;
  static Serializer<GReleasesListData_Page_media> get serializer =>
      _$gReleasesListDataPageMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReleasesListData_Page_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasesListData_Page_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReleasesListData_Page_media.serializer,
        json,
      );
}

abstract class GReleasesListData_Page_media_nextAiringEpisode
    implements
        Built<GReleasesListData_Page_media_nextAiringEpisode,
            GReleasesListData_Page_media_nextAiringEpisodeBuilder>,
        _i3.GReleasingMedia_nextAiringEpisode {
  GReleasesListData_Page_media_nextAiringEpisode._();

  factory GReleasesListData_Page_media_nextAiringEpisode(
      [Function(GReleasesListData_Page_media_nextAiringEpisodeBuilder b)
          updates]) = _$GReleasesListData_Page_media_nextAiringEpisode;

  static void _initializeBuilder(
          GReleasesListData_Page_media_nextAiringEpisodeBuilder b) =>
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
  static Serializer<GReleasesListData_Page_media_nextAiringEpisode>
      get serializer => _$gReleasesListDataPageMediaNextAiringEpisodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReleasesListData_Page_media_nextAiringEpisode.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasesListData_Page_media_nextAiringEpisode? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReleasesListData_Page_media_nextAiringEpisode.serializer,
        json,
      );
}

abstract class GReleasesListData_Page_media_airingSchedule
    implements
        Built<GReleasesListData_Page_media_airingSchedule,
            GReleasesListData_Page_media_airingScheduleBuilder>,
        _i3.GReleasingMedia_airingSchedule {
  GReleasesListData_Page_media_airingSchedule._();

  factory GReleasesListData_Page_media_airingSchedule(
      [Function(GReleasesListData_Page_media_airingScheduleBuilder b)
          updates]) = _$GReleasesListData_Page_media_airingSchedule;

  static void _initializeBuilder(
          GReleasesListData_Page_media_airingScheduleBuilder b) =>
      b..G__typename = 'AiringScheduleConnection';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GReleasesListData_Page_media_airingSchedule_edges?>? get edges;
  static Serializer<GReleasesListData_Page_media_airingSchedule>
      get serializer => _$gReleasesListDataPageMediaAiringScheduleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReleasesListData_Page_media_airingSchedule.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasesListData_Page_media_airingSchedule? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReleasesListData_Page_media_airingSchedule.serializer,
        json,
      );
}

abstract class GReleasesListData_Page_media_airingSchedule_edges
    implements
        Built<GReleasesListData_Page_media_airingSchedule_edges,
            GReleasesListData_Page_media_airingSchedule_edgesBuilder>,
        _i3.GReleasingMedia_airingSchedule_edges {
  GReleasesListData_Page_media_airingSchedule_edges._();

  factory GReleasesListData_Page_media_airingSchedule_edges(
      [Function(GReleasesListData_Page_media_airingSchedule_edgesBuilder b)
          updates]) = _$GReleasesListData_Page_media_airingSchedule_edges;

  static void _initializeBuilder(
          GReleasesListData_Page_media_airingSchedule_edgesBuilder b) =>
      b..G__typename = 'AiringScheduleEdge';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GReleasesListData_Page_media_airingSchedule_edges_node? get node;
  static Serializer<GReleasesListData_Page_media_airingSchedule_edges>
      get serializer =>
          _$gReleasesListDataPageMediaAiringScheduleEdgesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReleasesListData_Page_media_airingSchedule_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasesListData_Page_media_airingSchedule_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReleasesListData_Page_media_airingSchedule_edges.serializer,
        json,
      );
}

abstract class GReleasesListData_Page_media_airingSchedule_edges_node
    implements
        Built<GReleasesListData_Page_media_airingSchedule_edges_node,
            GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder>,
        _i3.GReleasingMedia_airingSchedule_edges_node {
  GReleasesListData_Page_media_airingSchedule_edges_node._();

  factory GReleasesListData_Page_media_airingSchedule_edges_node(
      [Function(GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder b)
          updates]) = _$GReleasesListData_Page_media_airingSchedule_edges_node;

  static void _initializeBuilder(
          GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder b) =>
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
  static Serializer<GReleasesListData_Page_media_airingSchedule_edges_node>
      get serializer =>
          _$gReleasesListDataPageMediaAiringScheduleEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReleasesListData_Page_media_airingSchedule_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasesListData_Page_media_airingSchedule_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReleasesListData_Page_media_airingSchedule_edges_node.serializer,
        json,
      );
}

abstract class GReleasesListData_Page_media_title
    implements
        Built<GReleasesListData_Page_media_title,
            GReleasesListData_Page_media_titleBuilder>,
        _i3.GReleasingMedia_title {
  GReleasesListData_Page_media_title._();

  factory GReleasesListData_Page_media_title(
          [Function(GReleasesListData_Page_media_titleBuilder b) updates]) =
      _$GReleasesListData_Page_media_title;

  static void _initializeBuilder(GReleasesListData_Page_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GReleasesListData_Page_media_title> get serializer =>
      _$gReleasesListDataPageMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReleasesListData_Page_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasesListData_Page_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReleasesListData_Page_media_title.serializer,
        json,
      );
}

abstract class GReleasesListData_Page_media_coverImage
    implements
        Built<GReleasesListData_Page_media_coverImage,
            GReleasesListData_Page_media_coverImageBuilder>,
        _i3.GReleasingMedia_coverImage {
  GReleasesListData_Page_media_coverImage._();

  factory GReleasesListData_Page_media_coverImage(
      [Function(GReleasesListData_Page_media_coverImageBuilder b)
          updates]) = _$GReleasesListData_Page_media_coverImage;

  static void _initializeBuilder(
          GReleasesListData_Page_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GReleasesListData_Page_media_coverImage> get serializer =>
      _$gReleasesListDataPageMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReleasesListData_Page_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasesListData_Page_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReleasesListData_Page_media_coverImage.serializer,
        json,
      );
}
