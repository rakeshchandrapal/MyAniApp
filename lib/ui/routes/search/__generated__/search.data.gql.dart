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

part 'search.data.gql.g.dart';

abstract class GGenreCollectionData
    implements Built<GGenreCollectionData, GGenreCollectionDataBuilder> {
  GGenreCollectionData._();

  factory GGenreCollectionData(
          [Function(GGenreCollectionDataBuilder b) updates]) =
      _$GGenreCollectionData;

  static void _initializeBuilder(GGenreCollectionDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<String?>? get genres;
  BuiltList<GGenreCollectionData_tags?>? get tags;
  static Serializer<GGenreCollectionData> get serializer =>
      _$gGenreCollectionDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGenreCollectionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGenreCollectionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGenreCollectionData.serializer,
        json,
      );
}

abstract class GGenreCollectionData_tags
    implements
        Built<GGenreCollectionData_tags, GGenreCollectionData_tagsBuilder> {
  GGenreCollectionData_tags._();

  factory GGenreCollectionData_tags(
          [Function(GGenreCollectionData_tagsBuilder b) updates]) =
      _$GGenreCollectionData_tags;

  static void _initializeBuilder(GGenreCollectionData_tagsBuilder b) =>
      b..G__typename = 'MediaTag';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String? get description;
  String? get category;
  bool? get isAdult;
  static Serializer<GGenreCollectionData_tags> get serializer =>
      _$gGenreCollectionDataTagsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGenreCollectionData_tags.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGenreCollectionData_tags? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGenreCollectionData_tags.serializer,
        json,
      );
}

abstract class GSearchData implements Built<GSearchData, GSearchDataBuilder> {
  GSearchData._();

  factory GSearchData([Function(GSearchDataBuilder b) updates]) = _$GSearchData;

  static void _initializeBuilder(GSearchDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSearchData_Page? get Page;
  static Serializer<GSearchData> get serializer => _$gSearchDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchData.serializer,
        json,
      );
}

abstract class GSearchData_Page
    implements Built<GSearchData_Page, GSearchData_PageBuilder> {
  GSearchData_Page._();

  factory GSearchData_Page([Function(GSearchData_PageBuilder b) updates]) =
      _$GSearchData_Page;

  static void _initializeBuilder(GSearchData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSearchData_Page_pageInfo? get pageInfo;
  BuiltList<GSearchData_Page_media?>? get media;
  static Serializer<GSearchData_Page> get serializer =>
      _$gSearchDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchData_Page.serializer,
        json,
      );
}

abstract class GSearchData_Page_pageInfo
    implements
        Built<GSearchData_Page_pageInfo, GSearchData_Page_pageInfoBuilder>,
        _i2.GPageInfo {
  GSearchData_Page_pageInfo._();

  factory GSearchData_Page_pageInfo(
          [Function(GSearchData_Page_pageInfoBuilder b) updates]) =
      _$GSearchData_Page_pageInfo;

  static void _initializeBuilder(GSearchData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GSearchData_Page_pageInfo> get serializer =>
      _$gSearchDataPagePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchData_Page_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GSearchData_Page_media
    implements
        Built<GSearchData_Page_media, GSearchData_Page_mediaBuilder>,
        _i3.GMediaFragment {
  GSearchData_Page_media._();

  factory GSearchData_Page_media(
          [Function(GSearchData_Page_mediaBuilder b) updates]) =
      _$GSearchData_Page_media;

  static void _initializeBuilder(GSearchData_Page_mediaBuilder b) =>
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
  GSearchData_Page_media_title? get title;
  @override
  GSearchData_Page_media_coverImage? get coverImage;
  static Serializer<GSearchData_Page_media> get serializer =>
      _$gSearchDataPageMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchData_Page_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchData_Page_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchData_Page_media.serializer,
        json,
      );
}

abstract class GSearchData_Page_media_title
    implements
        Built<GSearchData_Page_media_title,
            GSearchData_Page_media_titleBuilder>,
        _i3.GMediaFragment_title {
  GSearchData_Page_media_title._();

  factory GSearchData_Page_media_title(
          [Function(GSearchData_Page_media_titleBuilder b) updates]) =
      _$GSearchData_Page_media_title;

  static void _initializeBuilder(GSearchData_Page_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GSearchData_Page_media_title> get serializer =>
      _$gSearchDataPageMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchData_Page_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchData_Page_media_title? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchData_Page_media_title.serializer,
        json,
      );
}

abstract class GSearchData_Page_media_coverImage
    implements
        Built<GSearchData_Page_media_coverImage,
            GSearchData_Page_media_coverImageBuilder>,
        _i3.GMediaFragment_coverImage {
  GSearchData_Page_media_coverImage._();

  factory GSearchData_Page_media_coverImage(
          [Function(GSearchData_Page_media_coverImageBuilder b) updates]) =
      _$GSearchData_Page_media_coverImage;

  static void _initializeBuilder(GSearchData_Page_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GSearchData_Page_media_coverImage> get serializer =>
      _$gSearchDataPageMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchData_Page_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchData_Page_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchData_Page_media_coverImage.serializer,
        json,
      );
}
