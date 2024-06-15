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

part 'calendar.data.gql.g.dart';

abstract class GCalendarScheduleData
    implements Built<GCalendarScheduleData, GCalendarScheduleDataBuilder> {
  GCalendarScheduleData._();

  factory GCalendarScheduleData(
          [void Function(GCalendarScheduleDataBuilder b) updates]) =
      _$GCalendarScheduleData;

  static void _initializeBuilder(GCalendarScheduleDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCalendarScheduleData_Page? get Page;
  static Serializer<GCalendarScheduleData> get serializer =>
      _$gCalendarScheduleDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCalendarScheduleData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCalendarScheduleData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCalendarScheduleData.serializer,
        json,
      );
}

abstract class GCalendarScheduleData_Page
    implements
        Built<GCalendarScheduleData_Page, GCalendarScheduleData_PageBuilder> {
  GCalendarScheduleData_Page._();

  factory GCalendarScheduleData_Page(
          [void Function(GCalendarScheduleData_PageBuilder b) updates]) =
      _$GCalendarScheduleData_Page;

  static void _initializeBuilder(GCalendarScheduleData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCalendarScheduleData_Page_pageInfo? get pageInfo;
  BuiltList<GCalendarScheduleData_Page_airingSchedules?>? get airingSchedules;
  static Serializer<GCalendarScheduleData_Page> get serializer =>
      _$gCalendarScheduleDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCalendarScheduleData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCalendarScheduleData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCalendarScheduleData_Page.serializer,
        json,
      );
}

abstract class GCalendarScheduleData_Page_pageInfo
    implements
        Built<GCalendarScheduleData_Page_pageInfo,
            GCalendarScheduleData_Page_pageInfoBuilder>,
        _i2.GPageInfo {
  GCalendarScheduleData_Page_pageInfo._();

  factory GCalendarScheduleData_Page_pageInfo(
      [void Function(GCalendarScheduleData_Page_pageInfoBuilder b)
          updates]) = _$GCalendarScheduleData_Page_pageInfo;

  static void _initializeBuilder(
          GCalendarScheduleData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GCalendarScheduleData_Page_pageInfo> get serializer =>
      _$gCalendarScheduleDataPagePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCalendarScheduleData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCalendarScheduleData_Page_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCalendarScheduleData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GCalendarScheduleData_Page_airingSchedules
    implements
        Built<GCalendarScheduleData_Page_airingSchedules,
            GCalendarScheduleData_Page_airingSchedulesBuilder> {
  GCalendarScheduleData_Page_airingSchedules._();

  factory GCalendarScheduleData_Page_airingSchedules(
      [void Function(GCalendarScheduleData_Page_airingSchedulesBuilder b)
          updates]) = _$GCalendarScheduleData_Page_airingSchedules;

  static void _initializeBuilder(
          GCalendarScheduleData_Page_airingSchedulesBuilder b) =>
      b..G__typename = 'AiringSchedule';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get episode;
  int get airingAt;
  GCalendarScheduleData_Page_airingSchedules_media? get media;
  static Serializer<GCalendarScheduleData_Page_airingSchedules>
      get serializer => _$gCalendarScheduleDataPageAiringSchedulesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCalendarScheduleData_Page_airingSchedules.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCalendarScheduleData_Page_airingSchedules? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCalendarScheduleData_Page_airingSchedules.serializer,
        json,
      );
}

abstract class GCalendarScheduleData_Page_airingSchedules_media
    implements
        Built<GCalendarScheduleData_Page_airingSchedules_media,
            GCalendarScheduleData_Page_airingSchedules_mediaBuilder>,
        _i3.GMediaFragment {
  GCalendarScheduleData_Page_airingSchedules_media._();

  factory GCalendarScheduleData_Page_airingSchedules_media(
      [void Function(GCalendarScheduleData_Page_airingSchedules_mediaBuilder b)
          updates]) = _$GCalendarScheduleData_Page_airingSchedules_media;

  static void _initializeBuilder(
          GCalendarScheduleData_Page_airingSchedules_mediaBuilder b) =>
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
  GCalendarScheduleData_Page_airingSchedules_media_title? get title;
  @override
  GCalendarScheduleData_Page_airingSchedules_media_coverImage? get coverImage;
  static Serializer<GCalendarScheduleData_Page_airingSchedules_media>
      get serializer =>
          _$gCalendarScheduleDataPageAiringSchedulesMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCalendarScheduleData_Page_airingSchedules_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCalendarScheduleData_Page_airingSchedules_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCalendarScheduleData_Page_airingSchedules_media.serializer,
        json,
      );
}

abstract class GCalendarScheduleData_Page_airingSchedules_media_title
    implements
        Built<GCalendarScheduleData_Page_airingSchedules_media_title,
            GCalendarScheduleData_Page_airingSchedules_media_titleBuilder>,
        _i3.GMediaFragment_title {
  GCalendarScheduleData_Page_airingSchedules_media_title._();

  factory GCalendarScheduleData_Page_airingSchedules_media_title(
      [void Function(
              GCalendarScheduleData_Page_airingSchedules_media_titleBuilder b)
          updates]) = _$GCalendarScheduleData_Page_airingSchedules_media_title;

  static void _initializeBuilder(
          GCalendarScheduleData_Page_airingSchedules_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GCalendarScheduleData_Page_airingSchedules_media_title>
      get serializer =>
          _$gCalendarScheduleDataPageAiringSchedulesMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCalendarScheduleData_Page_airingSchedules_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCalendarScheduleData_Page_airingSchedules_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCalendarScheduleData_Page_airingSchedules_media_title.serializer,
        json,
      );
}

abstract class GCalendarScheduleData_Page_airingSchedules_media_coverImage
    implements
        Built<GCalendarScheduleData_Page_airingSchedules_media_coverImage,
            GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder>,
        _i3.GMediaFragment_coverImage {
  GCalendarScheduleData_Page_airingSchedules_media_coverImage._();

  factory GCalendarScheduleData_Page_airingSchedules_media_coverImage(
      [void Function(
              GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder
                  b)
          updates]) = _$GCalendarScheduleData_Page_airingSchedules_media_coverImage;

  static void _initializeBuilder(
          GCalendarScheduleData_Page_airingSchedules_media_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GCalendarScheduleData_Page_airingSchedules_media_coverImage>
      get serializer =>
          _$gCalendarScheduleDataPageAiringSchedulesMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCalendarScheduleData_Page_airingSchedules_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCalendarScheduleData_Page_airingSchedules_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCalendarScheduleData_Page_airingSchedules_media_coverImage.serializer,
        json,
      );
}
