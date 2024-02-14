// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i5;
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/fuzzy_date.data.gql.dart'
    as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i7;
import 'package:myaniapp/graphql/fragments/__generated__/media_entry.data.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/releasing_media.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/review.data.gql.dart'
    as _i10;
import 'package:myaniapp/graphql/fragments/__generated__/thread.data.gql.dart'
    as _i8;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i9;

part 'overview.data.gql.g.dart';

abstract class GHomeOverviewData
    implements Built<GHomeOverviewData, GHomeOverviewDataBuilder> {
  GHomeOverviewData._();

  factory GHomeOverviewData([Function(GHomeOverviewDataBuilder b) updates]) =
      _$GHomeOverviewData;

  static void _initializeBuilder(GHomeOverviewDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GHomeOverviewData_releasing? get releasing;
  GHomeOverviewData_list? get list;
  GHomeOverviewData_forums? get forums;
  GHomeOverviewData_reviews? get reviews;
  static Serializer<GHomeOverviewData> get serializer =>
      _$gHomeOverviewDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData.serializer,
        json,
      );
}

abstract class GHomeOverviewData_releasing
    implements
        Built<GHomeOverviewData_releasing, GHomeOverviewData_releasingBuilder> {
  GHomeOverviewData_releasing._();

  factory GHomeOverviewData_releasing(
          [Function(GHomeOverviewData_releasingBuilder b) updates]) =
      _$GHomeOverviewData_releasing;

  static void _initializeBuilder(GHomeOverviewData_releasingBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GHomeOverviewData_releasing_media?>? get media;
  static Serializer<GHomeOverviewData_releasing> get serializer =>
      _$gHomeOverviewDataReleasingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_releasing.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_releasing? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_releasing.serializer,
        json,
      );
}

abstract class GHomeOverviewData_releasing_media
    implements
        Built<GHomeOverviewData_releasing_media,
            GHomeOverviewData_releasing_mediaBuilder>,
        _i2.GReleasingMedia {
  GHomeOverviewData_releasing_media._();

  factory GHomeOverviewData_releasing_media(
          [Function(GHomeOverviewData_releasing_mediaBuilder b) updates]) =
      _$GHomeOverviewData_releasing_media;

  static void _initializeBuilder(GHomeOverviewData_releasing_mediaBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GHomeOverviewData_releasing_media_nextAiringEpisode? get nextAiringEpisode;
  @override
  GHomeOverviewData_releasing_media_airingSchedule? get airingSchedule;
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
  GHomeOverviewData_releasing_media_title? get title;
  @override
  GHomeOverviewData_releasing_media_coverImage? get coverImage;
  static Serializer<GHomeOverviewData_releasing_media> get serializer =>
      _$gHomeOverviewDataReleasingMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_releasing_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_releasing_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_releasing_media.serializer,
        json,
      );
}

abstract class GHomeOverviewData_releasing_media_nextAiringEpisode
    implements
        Built<GHomeOverviewData_releasing_media_nextAiringEpisode,
            GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder>,
        _i2.GReleasingMedia_nextAiringEpisode {
  GHomeOverviewData_releasing_media_nextAiringEpisode._();

  factory GHomeOverviewData_releasing_media_nextAiringEpisode(
      [Function(GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder b)
          updates]) = _$GHomeOverviewData_releasing_media_nextAiringEpisode;

  static void _initializeBuilder(
          GHomeOverviewData_releasing_media_nextAiringEpisodeBuilder b) =>
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
  static Serializer<GHomeOverviewData_releasing_media_nextAiringEpisode>
      get serializer =>
          _$gHomeOverviewDataReleasingMediaNextAiringEpisodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_releasing_media_nextAiringEpisode.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_releasing_media_nextAiringEpisode? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_releasing_media_nextAiringEpisode.serializer,
        json,
      );
}

abstract class GHomeOverviewData_releasing_media_airingSchedule
    implements
        Built<GHomeOverviewData_releasing_media_airingSchedule,
            GHomeOverviewData_releasing_media_airingScheduleBuilder>,
        _i2.GReleasingMedia_airingSchedule {
  GHomeOverviewData_releasing_media_airingSchedule._();

  factory GHomeOverviewData_releasing_media_airingSchedule(
      [Function(GHomeOverviewData_releasing_media_airingScheduleBuilder b)
          updates]) = _$GHomeOverviewData_releasing_media_airingSchedule;

  static void _initializeBuilder(
          GHomeOverviewData_releasing_media_airingScheduleBuilder b) =>
      b..G__typename = 'AiringScheduleConnection';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GHomeOverviewData_releasing_media_airingSchedule_edges?>? get edges;
  static Serializer<GHomeOverviewData_releasing_media_airingSchedule>
      get serializer =>
          _$gHomeOverviewDataReleasingMediaAiringScheduleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_releasing_media_airingSchedule.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_releasing_media_airingSchedule? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_releasing_media_airingSchedule.serializer,
        json,
      );
}

abstract class GHomeOverviewData_releasing_media_airingSchedule_edges
    implements
        Built<GHomeOverviewData_releasing_media_airingSchedule_edges,
            GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder>,
        _i2.GReleasingMedia_airingSchedule_edges {
  GHomeOverviewData_releasing_media_airingSchedule_edges._();

  factory GHomeOverviewData_releasing_media_airingSchedule_edges(
      [Function(GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder b)
          updates]) = _$GHomeOverviewData_releasing_media_airingSchedule_edges;

  static void _initializeBuilder(
          GHomeOverviewData_releasing_media_airingSchedule_edgesBuilder b) =>
      b..G__typename = 'AiringScheduleEdge';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GHomeOverviewData_releasing_media_airingSchedule_edges_node? get node;
  static Serializer<GHomeOverviewData_releasing_media_airingSchedule_edges>
      get serializer =>
          _$gHomeOverviewDataReleasingMediaAiringScheduleEdgesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_releasing_media_airingSchedule_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_releasing_media_airingSchedule_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_releasing_media_airingSchedule_edges.serializer,
        json,
      );
}

abstract class GHomeOverviewData_releasing_media_airingSchedule_edges_node
    implements
        Built<GHomeOverviewData_releasing_media_airingSchedule_edges_node,
            GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder>,
        _i2.GReleasingMedia_airingSchedule_edges_node {
  GHomeOverviewData_releasing_media_airingSchedule_edges_node._();

  factory GHomeOverviewData_releasing_media_airingSchedule_edges_node(
      [Function(
              GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder
                  b)
          updates]) = _$GHomeOverviewData_releasing_media_airingSchedule_edges_node;

  static void _initializeBuilder(
          GHomeOverviewData_releasing_media_airingSchedule_edges_nodeBuilder
              b) =>
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
  static Serializer<GHomeOverviewData_releasing_media_airingSchedule_edges_node>
      get serializer =>
          _$gHomeOverviewDataReleasingMediaAiringScheduleEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_releasing_media_airingSchedule_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_releasing_media_airingSchedule_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_releasing_media_airingSchedule_edges_node.serializer,
        json,
      );
}

abstract class GHomeOverviewData_releasing_media_title
    implements
        Built<GHomeOverviewData_releasing_media_title,
            GHomeOverviewData_releasing_media_titleBuilder>,
        _i2.GReleasingMedia_title {
  GHomeOverviewData_releasing_media_title._();

  factory GHomeOverviewData_releasing_media_title(
      [Function(GHomeOverviewData_releasing_media_titleBuilder b)
          updates]) = _$GHomeOverviewData_releasing_media_title;

  static void _initializeBuilder(
          GHomeOverviewData_releasing_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GHomeOverviewData_releasing_media_title> get serializer =>
      _$gHomeOverviewDataReleasingMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_releasing_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_releasing_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_releasing_media_title.serializer,
        json,
      );
}

abstract class GHomeOverviewData_releasing_media_coverImage
    implements
        Built<GHomeOverviewData_releasing_media_coverImage,
            GHomeOverviewData_releasing_media_coverImageBuilder>,
        _i2.GReleasingMedia_coverImage {
  GHomeOverviewData_releasing_media_coverImage._();

  factory GHomeOverviewData_releasing_media_coverImage(
      [Function(GHomeOverviewData_releasing_media_coverImageBuilder b)
          updates]) = _$GHomeOverviewData_releasing_media_coverImage;

  static void _initializeBuilder(
          GHomeOverviewData_releasing_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GHomeOverviewData_releasing_media_coverImage>
      get serializer => _$gHomeOverviewDataReleasingMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_releasing_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_releasing_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_releasing_media_coverImage.serializer,
        json,
      );
}

abstract class GHomeOverviewData_list
    implements Built<GHomeOverviewData_list, GHomeOverviewData_listBuilder> {
  GHomeOverviewData_list._();

  factory GHomeOverviewData_list(
          [Function(GHomeOverviewData_listBuilder b) updates]) =
      _$GHomeOverviewData_list;

  static void _initializeBuilder(GHomeOverviewData_listBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GHomeOverviewData_list_mediaList?>? get mediaList;
  static Serializer<GHomeOverviewData_list> get serializer =>
      _$gHomeOverviewDataListSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_list.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_list? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_list.serializer,
        json,
      );
}

abstract class GHomeOverviewData_list_mediaList
    implements
        Built<GHomeOverviewData_list_mediaList,
            GHomeOverviewData_list_mediaListBuilder>,
        _i4.GMediaListEntry {
  GHomeOverviewData_list_mediaList._();

  factory GHomeOverviewData_list_mediaList(
          [Function(GHomeOverviewData_list_mediaListBuilder b) updates]) =
      _$GHomeOverviewData_list_mediaList;

  static void _initializeBuilder(GHomeOverviewData_list_mediaListBuilder b) =>
      b..G__typename = 'MediaList';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  int get mediaId;
  @override
  _i3.GMediaListStatus? get status;
  @override
  int? get updatedAt;
  @override
  int? get progress;
  @override
  int? get progressVolumes;
  @override
  int? get priority;
  @override
  String? get notes;
  @override
  bool? get hiddenFromStatusLists;
  @override
  bool? get private;
  @override
  int? get repeat;
  @override
  double? get score;
  @override
  _i5.JsonObject? get customLists;
  @override
  GHomeOverviewData_list_mediaList_startedAt? get startedAt;
  @override
  GHomeOverviewData_list_mediaList_completedAt? get completedAt;
  @override
  GHomeOverviewData_list_mediaList_media? get media;
  static Serializer<GHomeOverviewData_list_mediaList> get serializer =>
      _$gHomeOverviewDataListMediaListSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_list_mediaList.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_list_mediaList? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_list_mediaList.serializer,
        json,
      );
}

abstract class GHomeOverviewData_list_mediaList_startedAt
    implements
        Built<GHomeOverviewData_list_mediaList_startedAt,
            GHomeOverviewData_list_mediaList_startedAtBuilder>,
        _i4.GMediaListEntry_startedAt,
        _i6.GFuzzyDate {
  GHomeOverviewData_list_mediaList_startedAt._();

  factory GHomeOverviewData_list_mediaList_startedAt(
      [Function(GHomeOverviewData_list_mediaList_startedAtBuilder b)
          updates]) = _$GHomeOverviewData_list_mediaList_startedAt;

  static void _initializeBuilder(
          GHomeOverviewData_list_mediaList_startedAtBuilder b) =>
      b..G__typename = 'FuzzyDate';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get day;
  @override
  int? get month;
  @override
  int? get year;
  static Serializer<GHomeOverviewData_list_mediaList_startedAt>
      get serializer => _$gHomeOverviewDataListMediaListStartedAtSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_list_mediaList_startedAt.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_list_mediaList_startedAt? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_list_mediaList_startedAt.serializer,
        json,
      );
}

abstract class GHomeOverviewData_list_mediaList_completedAt
    implements
        Built<GHomeOverviewData_list_mediaList_completedAt,
            GHomeOverviewData_list_mediaList_completedAtBuilder>,
        _i4.GMediaListEntry_completedAt,
        _i6.GFuzzyDate {
  GHomeOverviewData_list_mediaList_completedAt._();

  factory GHomeOverviewData_list_mediaList_completedAt(
      [Function(GHomeOverviewData_list_mediaList_completedAtBuilder b)
          updates]) = _$GHomeOverviewData_list_mediaList_completedAt;

  static void _initializeBuilder(
          GHomeOverviewData_list_mediaList_completedAtBuilder b) =>
      b..G__typename = 'FuzzyDate';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get day;
  @override
  int? get month;
  @override
  int? get year;
  static Serializer<GHomeOverviewData_list_mediaList_completedAt>
      get serializer => _$gHomeOverviewDataListMediaListCompletedAtSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_list_mediaList_completedAt.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_list_mediaList_completedAt? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_list_mediaList_completedAt.serializer,
        json,
      );
}

abstract class GHomeOverviewData_list_mediaList_media
    implements
        Built<GHomeOverviewData_list_mediaList_media,
            GHomeOverviewData_list_mediaList_mediaBuilder>,
        _i4.GMediaListEntry_media,
        _i7.GMediaFragment {
  GHomeOverviewData_list_mediaList_media._();

  factory GHomeOverviewData_list_mediaList_media(
          [Function(GHomeOverviewData_list_mediaList_mediaBuilder b) updates]) =
      _$GHomeOverviewData_list_mediaList_media;

  static void _initializeBuilder(
          GHomeOverviewData_list_mediaList_mediaBuilder b) =>
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
  GHomeOverviewData_list_mediaList_media_title? get title;
  @override
  GHomeOverviewData_list_mediaList_media_coverImage? get coverImage;
  @override
  int? get episodes;
  @override
  int? get chapters;
  @override
  _i3.GMediaStatus? get status;
  @override
  int? get averageScore;
  @override
  int? get popularity;
  @override
  GHomeOverviewData_list_mediaList_media_startDate? get startDate;
  static Serializer<GHomeOverviewData_list_mediaList_media> get serializer =>
      _$gHomeOverviewDataListMediaListMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_list_mediaList_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_list_mediaList_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_list_mediaList_media.serializer,
        json,
      );
}

abstract class GHomeOverviewData_list_mediaList_media_title
    implements
        Built<GHomeOverviewData_list_mediaList_media_title,
            GHomeOverviewData_list_mediaList_media_titleBuilder>,
        _i4.GMediaListEntry_media_title,
        _i7.GMediaFragment_title {
  GHomeOverviewData_list_mediaList_media_title._();

  factory GHomeOverviewData_list_mediaList_media_title(
      [Function(GHomeOverviewData_list_mediaList_media_titleBuilder b)
          updates]) = _$GHomeOverviewData_list_mediaList_media_title;

  static void _initializeBuilder(
          GHomeOverviewData_list_mediaList_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GHomeOverviewData_list_mediaList_media_title>
      get serializer => _$gHomeOverviewDataListMediaListMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_list_mediaList_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_list_mediaList_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_list_mediaList_media_title.serializer,
        json,
      );
}

abstract class GHomeOverviewData_list_mediaList_media_coverImage
    implements
        Built<GHomeOverviewData_list_mediaList_media_coverImage,
            GHomeOverviewData_list_mediaList_media_coverImageBuilder>,
        _i4.GMediaListEntry_media_coverImage,
        _i7.GMediaFragment_coverImage {
  GHomeOverviewData_list_mediaList_media_coverImage._();

  factory GHomeOverviewData_list_mediaList_media_coverImage(
      [Function(GHomeOverviewData_list_mediaList_media_coverImageBuilder b)
          updates]) = _$GHomeOverviewData_list_mediaList_media_coverImage;

  static void _initializeBuilder(
          GHomeOverviewData_list_mediaList_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GHomeOverviewData_list_mediaList_media_coverImage>
      get serializer =>
          _$gHomeOverviewDataListMediaListMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_list_mediaList_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_list_mediaList_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_list_mediaList_media_coverImage.serializer,
        json,
      );
}

abstract class GHomeOverviewData_list_mediaList_media_startDate
    implements
        Built<GHomeOverviewData_list_mediaList_media_startDate,
            GHomeOverviewData_list_mediaList_media_startDateBuilder>,
        _i4.GMediaListEntry_media_startDate,
        _i6.GFuzzyDate {
  GHomeOverviewData_list_mediaList_media_startDate._();

  factory GHomeOverviewData_list_mediaList_media_startDate(
      [Function(GHomeOverviewData_list_mediaList_media_startDateBuilder b)
          updates]) = _$GHomeOverviewData_list_mediaList_media_startDate;

  static void _initializeBuilder(
          GHomeOverviewData_list_mediaList_media_startDateBuilder b) =>
      b..G__typename = 'FuzzyDate';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get day;
  @override
  int? get month;
  @override
  int? get year;
  static Serializer<GHomeOverviewData_list_mediaList_media_startDate>
      get serializer =>
          _$gHomeOverviewDataListMediaListMediaStartDateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_list_mediaList_media_startDate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_list_mediaList_media_startDate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_list_mediaList_media_startDate.serializer,
        json,
      );
}

abstract class GHomeOverviewData_forums
    implements
        Built<GHomeOverviewData_forums, GHomeOverviewData_forumsBuilder> {
  GHomeOverviewData_forums._();

  factory GHomeOverviewData_forums(
          [Function(GHomeOverviewData_forumsBuilder b) updates]) =
      _$GHomeOverviewData_forums;

  static void _initializeBuilder(GHomeOverviewData_forumsBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GHomeOverviewData_forums_threads?>? get threads;
  static Serializer<GHomeOverviewData_forums> get serializer =>
      _$gHomeOverviewDataForumsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_forums.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_forums? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_forums.serializer,
        json,
      );
}

abstract class GHomeOverviewData_forums_threads
    implements
        Built<GHomeOverviewData_forums_threads,
            GHomeOverviewData_forums_threadsBuilder>,
        _i8.GThreadFragment {
  GHomeOverviewData_forums_threads._();

  factory GHomeOverviewData_forums_threads(
          [Function(GHomeOverviewData_forums_threadsBuilder b) updates]) =
      _$GHomeOverviewData_forums_threads;

  static void _initializeBuilder(GHomeOverviewData_forums_threadsBuilder b) =>
      b..G__typename = 'Thread';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String? get title;
  @override
  int? get replyCount;
  @override
  int? get viewCount;
  @override
  int? get replyCommentId;
  @override
  int? get repliedAt;
  @override
  int get createdAt;
  @override
  bool? get isSticky;
  @override
  BuiltList<GHomeOverviewData_forums_threads_mediaCategories?>?
      get mediaCategories;
  @override
  BuiltList<GHomeOverviewData_forums_threads_categories?>? get categories;
  @override
  GHomeOverviewData_forums_threads_user? get user;
  @override
  GHomeOverviewData_forums_threads_replyUser? get replyUser;
  static Serializer<GHomeOverviewData_forums_threads> get serializer =>
      _$gHomeOverviewDataForumsThreadsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_forums_threads.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_forums_threads? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_forums_threads.serializer,
        json,
      );
}

abstract class GHomeOverviewData_forums_threads_mediaCategories
    implements
        Built<GHomeOverviewData_forums_threads_mediaCategories,
            GHomeOverviewData_forums_threads_mediaCategoriesBuilder>,
        _i8.GThreadFragment_mediaCategories,
        _i7.GMediaFragment {
  GHomeOverviewData_forums_threads_mediaCategories._();

  factory GHomeOverviewData_forums_threads_mediaCategories(
      [Function(GHomeOverviewData_forums_threads_mediaCategoriesBuilder b)
          updates]) = _$GHomeOverviewData_forums_threads_mediaCategories;

  static void _initializeBuilder(
          GHomeOverviewData_forums_threads_mediaCategoriesBuilder b) =>
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
  GHomeOverviewData_forums_threads_mediaCategories_title? get title;
  @override
  GHomeOverviewData_forums_threads_mediaCategories_coverImage? get coverImage;
  static Serializer<GHomeOverviewData_forums_threads_mediaCategories>
      get serializer =>
          _$gHomeOverviewDataForumsThreadsMediaCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_forums_threads_mediaCategories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_forums_threads_mediaCategories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_forums_threads_mediaCategories.serializer,
        json,
      );
}

abstract class GHomeOverviewData_forums_threads_mediaCategories_title
    implements
        Built<GHomeOverviewData_forums_threads_mediaCategories_title,
            GHomeOverviewData_forums_threads_mediaCategories_titleBuilder>,
        _i8.GThreadFragment_mediaCategories_title,
        _i7.GMediaFragment_title {
  GHomeOverviewData_forums_threads_mediaCategories_title._();

  factory GHomeOverviewData_forums_threads_mediaCategories_title(
      [Function(GHomeOverviewData_forums_threads_mediaCategories_titleBuilder b)
          updates]) = _$GHomeOverviewData_forums_threads_mediaCategories_title;

  static void _initializeBuilder(
          GHomeOverviewData_forums_threads_mediaCategories_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GHomeOverviewData_forums_threads_mediaCategories_title>
      get serializer =>
          _$gHomeOverviewDataForumsThreadsMediaCategoriesTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_forums_threads_mediaCategories_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_forums_threads_mediaCategories_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_forums_threads_mediaCategories_title.serializer,
        json,
      );
}

abstract class GHomeOverviewData_forums_threads_mediaCategories_coverImage
    implements
        Built<GHomeOverviewData_forums_threads_mediaCategories_coverImage,
            GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder>,
        _i8.GThreadFragment_mediaCategories_coverImage,
        _i7.GMediaFragment_coverImage {
  GHomeOverviewData_forums_threads_mediaCategories_coverImage._();

  factory GHomeOverviewData_forums_threads_mediaCategories_coverImage(
      [Function(
              GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder
                  b)
          updates]) = _$GHomeOverviewData_forums_threads_mediaCategories_coverImage;

  static void _initializeBuilder(
          GHomeOverviewData_forums_threads_mediaCategories_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GHomeOverviewData_forums_threads_mediaCategories_coverImage>
      get serializer =>
          _$gHomeOverviewDataForumsThreadsMediaCategoriesCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_forums_threads_mediaCategories_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_forums_threads_mediaCategories_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_forums_threads_mediaCategories_coverImage.serializer,
        json,
      );
}

abstract class GHomeOverviewData_forums_threads_categories
    implements
        Built<GHomeOverviewData_forums_threads_categories,
            GHomeOverviewData_forums_threads_categoriesBuilder>,
        _i8.GThreadFragment_categories {
  GHomeOverviewData_forums_threads_categories._();

  factory GHomeOverviewData_forums_threads_categories(
      [Function(GHomeOverviewData_forums_threads_categoriesBuilder b)
          updates]) = _$GHomeOverviewData_forums_threads_categories;

  static void _initializeBuilder(
          GHomeOverviewData_forums_threads_categoriesBuilder b) =>
      b..G__typename = 'ThreadCategory';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  static Serializer<GHomeOverviewData_forums_threads_categories>
      get serializer => _$gHomeOverviewDataForumsThreadsCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_forums_threads_categories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_forums_threads_categories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_forums_threads_categories.serializer,
        json,
      );
}

abstract class GHomeOverviewData_forums_threads_user
    implements
        Built<GHomeOverviewData_forums_threads_user,
            GHomeOverviewData_forums_threads_userBuilder>,
        _i8.GThreadFragment_user,
        _i9.GUserFragment {
  GHomeOverviewData_forums_threads_user._();

  factory GHomeOverviewData_forums_threads_user(
          [Function(GHomeOverviewData_forums_threads_userBuilder b) updates]) =
      _$GHomeOverviewData_forums_threads_user;

  static void _initializeBuilder(
          GHomeOverviewData_forums_threads_userBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  int? get donatorTier;
  @override
  String? get donatorBadge;
  @override
  BuiltList<_i3.GModRole?>? get moderatorRoles;
  @override
  GHomeOverviewData_forums_threads_user_avatar? get avatar;
  static Serializer<GHomeOverviewData_forums_threads_user> get serializer =>
      _$gHomeOverviewDataForumsThreadsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_forums_threads_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_forums_threads_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_forums_threads_user.serializer,
        json,
      );
}

abstract class GHomeOverviewData_forums_threads_user_avatar
    implements
        Built<GHomeOverviewData_forums_threads_user_avatar,
            GHomeOverviewData_forums_threads_user_avatarBuilder>,
        _i8.GThreadFragment_user_avatar,
        _i9.GUserFragment_avatar {
  GHomeOverviewData_forums_threads_user_avatar._();

  factory GHomeOverviewData_forums_threads_user_avatar(
      [Function(GHomeOverviewData_forums_threads_user_avatarBuilder b)
          updates]) = _$GHomeOverviewData_forums_threads_user_avatar;

  static void _initializeBuilder(
          GHomeOverviewData_forums_threads_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GHomeOverviewData_forums_threads_user_avatar>
      get serializer => _$gHomeOverviewDataForumsThreadsUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_forums_threads_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_forums_threads_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_forums_threads_user_avatar.serializer,
        json,
      );
}

abstract class GHomeOverviewData_forums_threads_replyUser
    implements
        Built<GHomeOverviewData_forums_threads_replyUser,
            GHomeOverviewData_forums_threads_replyUserBuilder>,
        _i8.GThreadFragment_replyUser,
        _i9.GUserFragment {
  GHomeOverviewData_forums_threads_replyUser._();

  factory GHomeOverviewData_forums_threads_replyUser(
      [Function(GHomeOverviewData_forums_threads_replyUserBuilder b)
          updates]) = _$GHomeOverviewData_forums_threads_replyUser;

  static void _initializeBuilder(
          GHomeOverviewData_forums_threads_replyUserBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  int? get donatorTier;
  @override
  String? get donatorBadge;
  @override
  BuiltList<_i3.GModRole?>? get moderatorRoles;
  @override
  GHomeOverviewData_forums_threads_replyUser_avatar? get avatar;
  static Serializer<GHomeOverviewData_forums_threads_replyUser>
      get serializer => _$gHomeOverviewDataForumsThreadsReplyUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_forums_threads_replyUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_forums_threads_replyUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_forums_threads_replyUser.serializer,
        json,
      );
}

abstract class GHomeOverviewData_forums_threads_replyUser_avatar
    implements
        Built<GHomeOverviewData_forums_threads_replyUser_avatar,
            GHomeOverviewData_forums_threads_replyUser_avatarBuilder>,
        _i8.GThreadFragment_replyUser_avatar,
        _i9.GUserFragment_avatar {
  GHomeOverviewData_forums_threads_replyUser_avatar._();

  factory GHomeOverviewData_forums_threads_replyUser_avatar(
      [Function(GHomeOverviewData_forums_threads_replyUser_avatarBuilder b)
          updates]) = _$GHomeOverviewData_forums_threads_replyUser_avatar;

  static void _initializeBuilder(
          GHomeOverviewData_forums_threads_replyUser_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GHomeOverviewData_forums_threads_replyUser_avatar>
      get serializer =>
          _$gHomeOverviewDataForumsThreadsReplyUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_forums_threads_replyUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_forums_threads_replyUser_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_forums_threads_replyUser_avatar.serializer,
        json,
      );
}

abstract class GHomeOverviewData_reviews
    implements
        Built<GHomeOverviewData_reviews, GHomeOverviewData_reviewsBuilder> {
  GHomeOverviewData_reviews._();

  factory GHomeOverviewData_reviews(
          [Function(GHomeOverviewData_reviewsBuilder b) updates]) =
      _$GHomeOverviewData_reviews;

  static void _initializeBuilder(GHomeOverviewData_reviewsBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GHomeOverviewData_reviews_reviews?>? get reviews;
  static Serializer<GHomeOverviewData_reviews> get serializer =>
      _$gHomeOverviewDataReviewsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_reviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_reviews? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_reviews.serializer,
        json,
      );
}

abstract class GHomeOverviewData_reviews_reviews
    implements
        Built<GHomeOverviewData_reviews_reviews,
            GHomeOverviewData_reviews_reviewsBuilder>,
        _i10.GReview {
  GHomeOverviewData_reviews_reviews._();

  factory GHomeOverviewData_reviews_reviews(
          [Function(GHomeOverviewData_reviews_reviewsBuilder b) updates]) =
      _$GHomeOverviewData_reviews_reviews;

  static void _initializeBuilder(GHomeOverviewData_reviews_reviewsBuilder b) =>
      b..G__typename = 'Review';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  int? get rating;
  @override
  int? get ratingAmount;
  @override
  String? get summary;
  @override
  GHomeOverviewData_reviews_reviews_media? get media;
  @override
  GHomeOverviewData_reviews_reviews_user? get user;
  static Serializer<GHomeOverviewData_reviews_reviews> get serializer =>
      _$gHomeOverviewDataReviewsReviewsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_reviews_reviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_reviews_reviews? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_reviews_reviews.serializer,
        json,
      );
}

abstract class GHomeOverviewData_reviews_reviews_media
    implements
        Built<GHomeOverviewData_reviews_reviews_media,
            GHomeOverviewData_reviews_reviews_mediaBuilder>,
        _i10.GReview_media {
  GHomeOverviewData_reviews_reviews_media._();

  factory GHomeOverviewData_reviews_reviews_media(
      [Function(GHomeOverviewData_reviews_reviews_mediaBuilder b)
          updates]) = _$GHomeOverviewData_reviews_reviews_media;

  static void _initializeBuilder(
          GHomeOverviewData_reviews_reviews_mediaBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GHomeOverviewData_reviews_reviews_media_title? get title;
  @override
  _i3.GMediaType? get type;
  @override
  String? get bannerImage;
  static Serializer<GHomeOverviewData_reviews_reviews_media> get serializer =>
      _$gHomeOverviewDataReviewsReviewsMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_reviews_reviews_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_reviews_reviews_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_reviews_reviews_media.serializer,
        json,
      );
}

abstract class GHomeOverviewData_reviews_reviews_media_title
    implements
        Built<GHomeOverviewData_reviews_reviews_media_title,
            GHomeOverviewData_reviews_reviews_media_titleBuilder>,
        _i10.GReview_media_title {
  GHomeOverviewData_reviews_reviews_media_title._();

  factory GHomeOverviewData_reviews_reviews_media_title(
      [Function(GHomeOverviewData_reviews_reviews_media_titleBuilder b)
          updates]) = _$GHomeOverviewData_reviews_reviews_media_title;

  static void _initializeBuilder(
          GHomeOverviewData_reviews_reviews_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GHomeOverviewData_reviews_reviews_media_title>
      get serializer => _$gHomeOverviewDataReviewsReviewsMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_reviews_reviews_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_reviews_reviews_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_reviews_reviews_media_title.serializer,
        json,
      );
}

abstract class GHomeOverviewData_reviews_reviews_user
    implements
        Built<GHomeOverviewData_reviews_reviews_user,
            GHomeOverviewData_reviews_reviews_userBuilder>,
        _i10.GReview_user,
        _i9.GUserFragment {
  GHomeOverviewData_reviews_reviews_user._();

  factory GHomeOverviewData_reviews_reviews_user(
          [Function(GHomeOverviewData_reviews_reviews_userBuilder b) updates]) =
      _$GHomeOverviewData_reviews_reviews_user;

  static void _initializeBuilder(
          GHomeOverviewData_reviews_reviews_userBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  int? get donatorTier;
  @override
  String? get donatorBadge;
  @override
  BuiltList<_i3.GModRole?>? get moderatorRoles;
  @override
  GHomeOverviewData_reviews_reviews_user_avatar? get avatar;
  static Serializer<GHomeOverviewData_reviews_reviews_user> get serializer =>
      _$gHomeOverviewDataReviewsReviewsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_reviews_reviews_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_reviews_reviews_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_reviews_reviews_user.serializer,
        json,
      );
}

abstract class GHomeOverviewData_reviews_reviews_user_avatar
    implements
        Built<GHomeOverviewData_reviews_reviews_user_avatar,
            GHomeOverviewData_reviews_reviews_user_avatarBuilder>,
        _i10.GReview_user_avatar,
        _i9.GUserFragment_avatar {
  GHomeOverviewData_reviews_reviews_user_avatar._();

  factory GHomeOverviewData_reviews_reviews_user_avatar(
      [Function(GHomeOverviewData_reviews_reviews_user_avatarBuilder b)
          updates]) = _$GHomeOverviewData_reviews_reviews_user_avatar;

  static void _initializeBuilder(
          GHomeOverviewData_reviews_reviews_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GHomeOverviewData_reviews_reviews_user_avatar>
      get serializer => _$gHomeOverviewDataReviewsReviewsUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeOverviewData_reviews_reviews_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewData_reviews_reviews_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeOverviewData_reviews_reviews_user_avatar.serializer,
        json,
      );
}
