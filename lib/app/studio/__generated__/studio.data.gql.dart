// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/studio.data.gql.dart'
    as _i2;

part 'studio.data.gql.g.dart';

abstract class GStudioData implements Built<GStudioData, GStudioDataBuilder> {
  GStudioData._();

  factory GStudioData([void Function(GStudioDataBuilder b) updates]) =
      _$GStudioData;

  static void _initializeBuilder(GStudioDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GStudioData_Studio? get Studio;
  static Serializer<GStudioData> get serializer => _$gStudioDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStudioData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStudioData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStudioData.serializer,
        json,
      );
}

abstract class GStudioData_Studio
    implements
        Built<GStudioData_Studio, GStudioData_StudioBuilder>,
        _i2.GStudioFragment {
  GStudioData_Studio._();

  factory GStudioData_Studio(
          [void Function(GStudioData_StudioBuilder b) updates]) =
      _$GStudioData_Studio;

  static void _initializeBuilder(GStudioData_StudioBuilder b) =>
      b..G__typename = 'Studio';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  GStudioData_Studio_media? get media;
  static Serializer<GStudioData_Studio> get serializer =>
      _$gStudioDataStudioSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStudioData_Studio.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStudioData_Studio? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStudioData_Studio.serializer,
        json,
      );
}

abstract class GStudioData_Studio_media
    implements
        Built<GStudioData_Studio_media, GStudioData_Studio_mediaBuilder> {
  GStudioData_Studio_media._();

  factory GStudioData_Studio_media(
          [void Function(GStudioData_Studio_mediaBuilder b) updates]) =
      _$GStudioData_Studio_media;

  static void _initializeBuilder(GStudioData_Studio_mediaBuilder b) =>
      b..G__typename = 'MediaConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GStudioData_Studio_media_pageInfo? get pageInfo;
  BuiltList<GStudioData_Studio_media_nodes?>? get nodes;
  static Serializer<GStudioData_Studio_media> get serializer =>
      _$gStudioDataStudioMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStudioData_Studio_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStudioData_Studio_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStudioData_Studio_media.serializer,
        json,
      );
}

abstract class GStudioData_Studio_media_pageInfo
    implements
        Built<GStudioData_Studio_media_pageInfo,
            GStudioData_Studio_media_pageInfoBuilder>,
        _i3.GPageInfo {
  GStudioData_Studio_media_pageInfo._();

  factory GStudioData_Studio_media_pageInfo(
          [void Function(GStudioData_Studio_media_pageInfoBuilder b) updates]) =
      _$GStudioData_Studio_media_pageInfo;

  static void _initializeBuilder(GStudioData_Studio_media_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GStudioData_Studio_media_pageInfo> get serializer =>
      _$gStudioDataStudioMediaPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStudioData_Studio_media_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStudioData_Studio_media_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStudioData_Studio_media_pageInfo.serializer,
        json,
      );
}

abstract class GStudioData_Studio_media_nodes
    implements
        Built<GStudioData_Studio_media_nodes,
            GStudioData_Studio_media_nodesBuilder>,
        _i4.GMediaFragment {
  GStudioData_Studio_media_nodes._();

  factory GStudioData_Studio_media_nodes(
          [void Function(GStudioData_Studio_media_nodesBuilder b) updates]) =
      _$GStudioData_Studio_media_nodes;

  static void _initializeBuilder(GStudioData_Studio_media_nodesBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i5.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i5.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GStudioData_Studio_media_nodes_title? get title;
  @override
  GStudioData_Studio_media_nodes_coverImage? get coverImage;
  static Serializer<GStudioData_Studio_media_nodes> get serializer =>
      _$gStudioDataStudioMediaNodesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStudioData_Studio_media_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStudioData_Studio_media_nodes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStudioData_Studio_media_nodes.serializer,
        json,
      );
}

abstract class GStudioData_Studio_media_nodes_title
    implements
        Built<GStudioData_Studio_media_nodes_title,
            GStudioData_Studio_media_nodes_titleBuilder>,
        _i4.GMediaFragment_title {
  GStudioData_Studio_media_nodes_title._();

  factory GStudioData_Studio_media_nodes_title(
      [void Function(GStudioData_Studio_media_nodes_titleBuilder b)
          updates]) = _$GStudioData_Studio_media_nodes_title;

  static void _initializeBuilder(
          GStudioData_Studio_media_nodes_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GStudioData_Studio_media_nodes_title> get serializer =>
      _$gStudioDataStudioMediaNodesTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStudioData_Studio_media_nodes_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStudioData_Studio_media_nodes_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStudioData_Studio_media_nodes_title.serializer,
        json,
      );
}

abstract class GStudioData_Studio_media_nodes_coverImage
    implements
        Built<GStudioData_Studio_media_nodes_coverImage,
            GStudioData_Studio_media_nodes_coverImageBuilder>,
        _i4.GMediaFragment_coverImage {
  GStudioData_Studio_media_nodes_coverImage._();

  factory GStudioData_Studio_media_nodes_coverImage(
      [void Function(GStudioData_Studio_media_nodes_coverImageBuilder b)
          updates]) = _$GStudioData_Studio_media_nodes_coverImage;

  static void _initializeBuilder(
          GStudioData_Studio_media_nodes_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GStudioData_Studio_media_nodes_coverImage> get serializer =>
      _$gStudioDataStudioMediaNodesCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStudioData_Studio_media_nodes_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStudioData_Studio_media_nodes_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStudioData_Studio_media_nodes_coverImage.serializer,
        json,
      );
}
