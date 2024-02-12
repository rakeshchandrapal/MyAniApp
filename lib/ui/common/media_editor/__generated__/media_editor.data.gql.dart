// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/fuzzy_date.data.gql.dart'
    as _i5;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/media_entry.data.gql.dart'
    as _i2;

part 'media_editor.data.gql.g.dart';

abstract class GMediaEntryData
    implements Built<GMediaEntryData, GMediaEntryDataBuilder> {
  GMediaEntryData._();

  factory GMediaEntryData([Function(GMediaEntryDataBuilder b) updates]) =
      _$GMediaEntryData;

  static void _initializeBuilder(GMediaEntryDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaEntryData_MediaList? get MediaList;
  static Serializer<GMediaEntryData> get serializer =>
      _$gMediaEntryDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaEntryData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaEntryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaEntryData.serializer,
        json,
      );
}

abstract class GMediaEntryData_MediaList
    implements
        Built<GMediaEntryData_MediaList, GMediaEntryData_MediaListBuilder>,
        _i2.GMediaListEntry {
  GMediaEntryData_MediaList._();

  factory GMediaEntryData_MediaList(
          [Function(GMediaEntryData_MediaListBuilder b) updates]) =
      _$GMediaEntryData_MediaList;

  static void _initializeBuilder(GMediaEntryData_MediaListBuilder b) =>
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
  _i4.JsonObject? get customLists;
  @override
  GMediaEntryData_MediaList_startedAt? get startedAt;
  @override
  GMediaEntryData_MediaList_completedAt? get completedAt;
  @override
  GMediaEntryData_MediaList_media? get media;
  static Serializer<GMediaEntryData_MediaList> get serializer =>
      _$gMediaEntryDataMediaListSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaEntryData_MediaList.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaEntryData_MediaList? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaEntryData_MediaList.serializer,
        json,
      );
}

abstract class GMediaEntryData_MediaList_startedAt
    implements
        Built<GMediaEntryData_MediaList_startedAt,
            GMediaEntryData_MediaList_startedAtBuilder>,
        _i2.GMediaListEntry_startedAt,
        _i5.GFuzzyDate {
  GMediaEntryData_MediaList_startedAt._();

  factory GMediaEntryData_MediaList_startedAt(
          [Function(GMediaEntryData_MediaList_startedAtBuilder b) updates]) =
      _$GMediaEntryData_MediaList_startedAt;

  static void _initializeBuilder(
          GMediaEntryData_MediaList_startedAtBuilder b) =>
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
  static Serializer<GMediaEntryData_MediaList_startedAt> get serializer =>
      _$gMediaEntryDataMediaListStartedAtSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaEntryData_MediaList_startedAt.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaEntryData_MediaList_startedAt? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaEntryData_MediaList_startedAt.serializer,
        json,
      );
}

abstract class GMediaEntryData_MediaList_completedAt
    implements
        Built<GMediaEntryData_MediaList_completedAt,
            GMediaEntryData_MediaList_completedAtBuilder>,
        _i2.GMediaListEntry_completedAt,
        _i5.GFuzzyDate {
  GMediaEntryData_MediaList_completedAt._();

  factory GMediaEntryData_MediaList_completedAt(
          [Function(GMediaEntryData_MediaList_completedAtBuilder b) updates]) =
      _$GMediaEntryData_MediaList_completedAt;

  static void _initializeBuilder(
          GMediaEntryData_MediaList_completedAtBuilder b) =>
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
  static Serializer<GMediaEntryData_MediaList_completedAt> get serializer =>
      _$gMediaEntryDataMediaListCompletedAtSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaEntryData_MediaList_completedAt.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaEntryData_MediaList_completedAt? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaEntryData_MediaList_completedAt.serializer,
        json,
      );
}

abstract class GMediaEntryData_MediaList_media
    implements
        Built<GMediaEntryData_MediaList_media,
            GMediaEntryData_MediaList_mediaBuilder>,
        _i2.GMediaListEntry_media,
        _i6.GMediaFragment {
  GMediaEntryData_MediaList_media._();

  factory GMediaEntryData_MediaList_media(
          [Function(GMediaEntryData_MediaList_mediaBuilder b) updates]) =
      _$GMediaEntryData_MediaList_media;

  static void _initializeBuilder(GMediaEntryData_MediaList_mediaBuilder b) =>
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
  GMediaEntryData_MediaList_media_title? get title;
  @override
  GMediaEntryData_MediaList_media_coverImage? get coverImage;
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
  GMediaEntryData_MediaList_media_startDate? get startDate;
  static Serializer<GMediaEntryData_MediaList_media> get serializer =>
      _$gMediaEntryDataMediaListMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaEntryData_MediaList_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaEntryData_MediaList_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaEntryData_MediaList_media.serializer,
        json,
      );
}

abstract class GMediaEntryData_MediaList_media_title
    implements
        Built<GMediaEntryData_MediaList_media_title,
            GMediaEntryData_MediaList_media_titleBuilder>,
        _i2.GMediaListEntry_media_title,
        _i6.GMediaFragment_title {
  GMediaEntryData_MediaList_media_title._();

  factory GMediaEntryData_MediaList_media_title(
          [Function(GMediaEntryData_MediaList_media_titleBuilder b) updates]) =
      _$GMediaEntryData_MediaList_media_title;

  static void _initializeBuilder(
          GMediaEntryData_MediaList_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GMediaEntryData_MediaList_media_title> get serializer =>
      _$gMediaEntryDataMediaListMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaEntryData_MediaList_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaEntryData_MediaList_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaEntryData_MediaList_media_title.serializer,
        json,
      );
}

abstract class GMediaEntryData_MediaList_media_coverImage
    implements
        Built<GMediaEntryData_MediaList_media_coverImage,
            GMediaEntryData_MediaList_media_coverImageBuilder>,
        _i2.GMediaListEntry_media_coverImage,
        _i6.GMediaFragment_coverImage {
  GMediaEntryData_MediaList_media_coverImage._();

  factory GMediaEntryData_MediaList_media_coverImage(
      [Function(GMediaEntryData_MediaList_media_coverImageBuilder b)
          updates]) = _$GMediaEntryData_MediaList_media_coverImage;

  static void _initializeBuilder(
          GMediaEntryData_MediaList_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GMediaEntryData_MediaList_media_coverImage>
      get serializer => _$gMediaEntryDataMediaListMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaEntryData_MediaList_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaEntryData_MediaList_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaEntryData_MediaList_media_coverImage.serializer,
        json,
      );
}

abstract class GMediaEntryData_MediaList_media_startDate
    implements
        Built<GMediaEntryData_MediaList_media_startDate,
            GMediaEntryData_MediaList_media_startDateBuilder>,
        _i2.GMediaListEntry_media_startDate,
        _i5.GFuzzyDate {
  GMediaEntryData_MediaList_media_startDate._();

  factory GMediaEntryData_MediaList_media_startDate(
      [Function(GMediaEntryData_MediaList_media_startDateBuilder b)
          updates]) = _$GMediaEntryData_MediaList_media_startDate;

  static void _initializeBuilder(
          GMediaEntryData_MediaList_media_startDateBuilder b) =>
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
  static Serializer<GMediaEntryData_MediaList_media_startDate> get serializer =>
      _$gMediaEntryDataMediaListMediaStartDateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaEntryData_MediaList_media_startDate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaEntryData_MediaList_media_startDate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaEntryData_MediaList_media_startDate.serializer,
        json,
      );
}

abstract class GSaveMediaListEntryData
    implements Built<GSaveMediaListEntryData, GSaveMediaListEntryDataBuilder> {
  GSaveMediaListEntryData._();

  factory GSaveMediaListEntryData(
          [Function(GSaveMediaListEntryDataBuilder b) updates]) =
      _$GSaveMediaListEntryData;

  static void _initializeBuilder(GSaveMediaListEntryDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSaveMediaListEntryData_SaveMediaListEntry? get SaveMediaListEntry;
  static Serializer<GSaveMediaListEntryData> get serializer =>
      _$gSaveMediaListEntryDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMediaListEntryData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMediaListEntryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMediaListEntryData.serializer,
        json,
      );
}

abstract class GSaveMediaListEntryData_SaveMediaListEntry
    implements
        Built<GSaveMediaListEntryData_SaveMediaListEntry,
            GSaveMediaListEntryData_SaveMediaListEntryBuilder>,
        _i2.GMediaListEntry {
  GSaveMediaListEntryData_SaveMediaListEntry._();

  factory GSaveMediaListEntryData_SaveMediaListEntry(
      [Function(GSaveMediaListEntryData_SaveMediaListEntryBuilder b)
          updates]) = _$GSaveMediaListEntryData_SaveMediaListEntry;

  static void _initializeBuilder(
          GSaveMediaListEntryData_SaveMediaListEntryBuilder b) =>
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
  _i4.JsonObject? get customLists;
  @override
  GSaveMediaListEntryData_SaveMediaListEntry_startedAt? get startedAt;
  @override
  GSaveMediaListEntryData_SaveMediaListEntry_completedAt? get completedAt;
  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media? get media;
  static Serializer<GSaveMediaListEntryData_SaveMediaListEntry>
      get serializer => _$gSaveMediaListEntryDataSaveMediaListEntrySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMediaListEntryData_SaveMediaListEntry? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry.serializer,
        json,
      );
}

abstract class GSaveMediaListEntryData_SaveMediaListEntry_startedAt
    implements
        Built<GSaveMediaListEntryData_SaveMediaListEntry_startedAt,
            GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder>,
        _i2.GMediaListEntry_startedAt,
        _i5.GFuzzyDate {
  GSaveMediaListEntryData_SaveMediaListEntry_startedAt._();

  factory GSaveMediaListEntryData_SaveMediaListEntry_startedAt(
      [Function(GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder b)
          updates]) = _$GSaveMediaListEntryData_SaveMediaListEntry_startedAt;

  static void _initializeBuilder(
          GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder b) =>
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
  static Serializer<GSaveMediaListEntryData_SaveMediaListEntry_startedAt>
      get serializer =>
          _$gSaveMediaListEntryDataSaveMediaListEntryStartedAtSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry_startedAt.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMediaListEntryData_SaveMediaListEntry_startedAt? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry_startedAt.serializer,
        json,
      );
}

abstract class GSaveMediaListEntryData_SaveMediaListEntry_completedAt
    implements
        Built<GSaveMediaListEntryData_SaveMediaListEntry_completedAt,
            GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder>,
        _i2.GMediaListEntry_completedAt,
        _i5.GFuzzyDate {
  GSaveMediaListEntryData_SaveMediaListEntry_completedAt._();

  factory GSaveMediaListEntryData_SaveMediaListEntry_completedAt(
      [Function(GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder b)
          updates]) = _$GSaveMediaListEntryData_SaveMediaListEntry_completedAt;

  static void _initializeBuilder(
          GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder b) =>
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
  static Serializer<GSaveMediaListEntryData_SaveMediaListEntry_completedAt>
      get serializer =>
          _$gSaveMediaListEntryDataSaveMediaListEntryCompletedAtSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry_completedAt.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMediaListEntryData_SaveMediaListEntry_completedAt? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry_completedAt.serializer,
        json,
      );
}

abstract class GSaveMediaListEntryData_SaveMediaListEntry_media
    implements
        Built<GSaveMediaListEntryData_SaveMediaListEntry_media,
            GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder>,
        _i2.GMediaListEntry_media,
        _i6.GMediaFragment {
  GSaveMediaListEntryData_SaveMediaListEntry_media._();

  factory GSaveMediaListEntryData_SaveMediaListEntry_media(
      [Function(GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder b)
          updates]) = _$GSaveMediaListEntryData_SaveMediaListEntry_media;

  static void _initializeBuilder(
          GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder b) =>
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
  GSaveMediaListEntryData_SaveMediaListEntry_media_title? get title;
  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage? get coverImage;
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
  GSaveMediaListEntryData_SaveMediaListEntry_media_startDate? get startDate;
  static Serializer<GSaveMediaListEntryData_SaveMediaListEntry_media>
      get serializer =>
          _$gSaveMediaListEntryDataSaveMediaListEntryMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMediaListEntryData_SaveMediaListEntry_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry_media.serializer,
        json,
      );
}

abstract class GSaveMediaListEntryData_SaveMediaListEntry_media_title
    implements
        Built<GSaveMediaListEntryData_SaveMediaListEntry_media_title,
            GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder>,
        _i2.GMediaListEntry_media_title,
        _i6.GMediaFragment_title {
  GSaveMediaListEntryData_SaveMediaListEntry_media_title._();

  factory GSaveMediaListEntryData_SaveMediaListEntry_media_title(
      [Function(GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder b)
          updates]) = _$GSaveMediaListEntryData_SaveMediaListEntry_media_title;

  static void _initializeBuilder(
          GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GSaveMediaListEntryData_SaveMediaListEntry_media_title>
      get serializer =>
          _$gSaveMediaListEntryDataSaveMediaListEntryMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMediaListEntryData_SaveMediaListEntry_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry_media_title.serializer,
        json,
      );
}

abstract class GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage
    implements
        Built<GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage,
            GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder>,
        _i2.GMediaListEntry_media_coverImage,
        _i6.GMediaFragment_coverImage {
  GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage._();

  factory GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage(
      [Function(
              GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder
                  b)
          updates]) = _$GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage;

  static void _initializeBuilder(
          GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage>
      get serializer =>
          _$gSaveMediaListEntryDataSaveMediaListEntryMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage.serializer,
        json,
      );
}

abstract class GSaveMediaListEntryData_SaveMediaListEntry_media_startDate
    implements
        Built<GSaveMediaListEntryData_SaveMediaListEntry_media_startDate,
            GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder>,
        _i2.GMediaListEntry_media_startDate,
        _i5.GFuzzyDate {
  GSaveMediaListEntryData_SaveMediaListEntry_media_startDate._();

  factory GSaveMediaListEntryData_SaveMediaListEntry_media_startDate(
      [Function(
              GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder
                  b)
          updates]) = _$GSaveMediaListEntryData_SaveMediaListEntry_media_startDate;

  static void _initializeBuilder(
          GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder
              b) =>
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
  static Serializer<GSaveMediaListEntryData_SaveMediaListEntry_media_startDate>
      get serializer =>
          _$gSaveMediaListEntryDataSaveMediaListEntryMediaStartDateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry_media_startDate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMediaListEntryData_SaveMediaListEntry_media_startDate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMediaListEntryData_SaveMediaListEntry_media_startDate.serializer,
        json,
      );
}

abstract class GDeleteMediaListEntryData
    implements
        Built<GDeleteMediaListEntryData, GDeleteMediaListEntryDataBuilder> {
  GDeleteMediaListEntryData._();

  factory GDeleteMediaListEntryData(
          [Function(GDeleteMediaListEntryDataBuilder b) updates]) =
      _$GDeleteMediaListEntryData;

  static void _initializeBuilder(GDeleteMediaListEntryDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDeleteMediaListEntryData_DeleteMediaListEntry? get DeleteMediaListEntry;
  static Serializer<GDeleteMediaListEntryData> get serializer =>
      _$gDeleteMediaListEntryDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteMediaListEntryData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteMediaListEntryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteMediaListEntryData.serializer,
        json,
      );
}

abstract class GDeleteMediaListEntryData_DeleteMediaListEntry
    implements
        Built<GDeleteMediaListEntryData_DeleteMediaListEntry,
            GDeleteMediaListEntryData_DeleteMediaListEntryBuilder> {
  GDeleteMediaListEntryData_DeleteMediaListEntry._();

  factory GDeleteMediaListEntryData_DeleteMediaListEntry(
      [Function(GDeleteMediaListEntryData_DeleteMediaListEntryBuilder b)
          updates]) = _$GDeleteMediaListEntryData_DeleteMediaListEntry;

  static void _initializeBuilder(
          GDeleteMediaListEntryData_DeleteMediaListEntryBuilder b) =>
      b..G__typename = 'Deleted';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get deleted;
  static Serializer<GDeleteMediaListEntryData_DeleteMediaListEntry>
      get serializer =>
          _$gDeleteMediaListEntryDataDeleteMediaListEntrySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteMediaListEntryData_DeleteMediaListEntry.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteMediaListEntryData_DeleteMediaListEntry? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteMediaListEntryData_DeleteMediaListEntry.serializer,
        json,
      );
}
