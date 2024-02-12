// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/fuzzy_date.data.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i5;
import 'package:myaniapp/graphql/fragments/__generated__/media_entry.data.gql.dart'
    as _i2;

part 'list_group.data.gql.g.dart';

abstract class GListGroup {
  String get G__typename;
  String? get name;
  bool? get isCustomList;
  bool? get isSplitCompletedList;
  _i1.GMediaListStatus? get status;
  BuiltList<GListGroup_entries?>? get entries;
  Map<String, dynamic> toJson();
}

abstract class GListGroup_entries implements _i2.GMediaListEntry {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  int get mediaId;
  @override
  _i1.GMediaListStatus? get status;
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
  _i3.JsonObject? get customLists;
  @override
  GListGroup_entries_startedAt? get startedAt;
  @override
  GListGroup_entries_completedAt? get completedAt;
  @override
  GListGroup_entries_media? get media;
  @override
  Map<String, dynamic> toJson();
}

abstract class GListGroup_entries_startedAt
    implements _i2.GMediaListEntry_startedAt, _i4.GFuzzyDate {
  @override
  String get G__typename;
  @override
  int? get day;
  @override
  int? get month;
  @override
  int? get year;
  @override
  Map<String, dynamic> toJson();
}

abstract class GListGroup_entries_completedAt
    implements _i2.GMediaListEntry_completedAt, _i4.GFuzzyDate {
  @override
  String get G__typename;
  @override
  int? get day;
  @override
  int? get month;
  @override
  int? get year;
  @override
  Map<String, dynamic> toJson();
}

abstract class GListGroup_entries_media
    implements _i2.GMediaListEntry_media, _i5.GMediaFragment {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  _i1.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i1.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GListGroup_entries_media_title? get title;
  @override
  GListGroup_entries_media_coverImage? get coverImage;
  @override
  int? get episodes;
  @override
  int? get chapters;
  @override
  _i1.GMediaStatus? get status;
  @override
  int? get averageScore;
  @override
  int? get popularity;
  @override
  GListGroup_entries_media_startDate? get startDate;
  @override
  Map<String, dynamic> toJson();
}

abstract class GListGroup_entries_media_title
    implements _i2.GMediaListEntry_media_title, _i5.GMediaFragment_title {
  @override
  String get G__typename;
  @override
  String? get userPreferred;
  @override
  Map<String, dynamic> toJson();
}

abstract class GListGroup_entries_media_coverImage
    implements
        _i2.GMediaListEntry_media_coverImage,
        _i5.GMediaFragment_coverImage {
  @override
  String get G__typename;
  @override
  String? get extraLarge;
  @override
  Map<String, dynamic> toJson();
}

abstract class GListGroup_entries_media_startDate
    implements _i2.GMediaListEntry_media_startDate, _i4.GFuzzyDate {
  @override
  String get G__typename;
  @override
  int? get day;
  @override
  int? get month;
  @override
  int? get year;
  @override
  Map<String, dynamic> toJson();
}

abstract class GListGroupData
    implements Built<GListGroupData, GListGroupDataBuilder>, GListGroup {
  GListGroupData._();

  factory GListGroupData([Function(GListGroupDataBuilder b) updates]) =
      _$GListGroupData;

  static void _initializeBuilder(GListGroupDataBuilder b) =>
      b..G__typename = 'MediaListGroup';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get name;
  @override
  bool? get isCustomList;
  @override
  bool? get isSplitCompletedList;
  @override
  _i1.GMediaListStatus? get status;
  @override
  BuiltList<GListGroupData_entries?>? get entries;
  static Serializer<GListGroupData> get serializer =>
      _$gListGroupDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListGroupData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListGroupData? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListGroupData.serializer,
        json,
      );
}

abstract class GListGroupData_entries
    implements
        Built<GListGroupData_entries, GListGroupData_entriesBuilder>,
        GListGroup_entries,
        _i2.GMediaListEntry {
  GListGroupData_entries._();

  factory GListGroupData_entries(
          [Function(GListGroupData_entriesBuilder b) updates]) =
      _$GListGroupData_entries;

  static void _initializeBuilder(GListGroupData_entriesBuilder b) =>
      b..G__typename = 'MediaList';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  int get mediaId;
  @override
  _i1.GMediaListStatus? get status;
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
  _i3.JsonObject? get customLists;
  @override
  GListGroupData_entries_startedAt? get startedAt;
  @override
  GListGroupData_entries_completedAt? get completedAt;
  @override
  GListGroupData_entries_media? get media;
  static Serializer<GListGroupData_entries> get serializer =>
      _$gListGroupDataEntriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListGroupData_entries.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListGroupData_entries? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListGroupData_entries.serializer,
        json,
      );
}

abstract class GListGroupData_entries_startedAt
    implements
        Built<GListGroupData_entries_startedAt,
            GListGroupData_entries_startedAtBuilder>,
        GListGroup_entries_startedAt,
        _i2.GMediaListEntry_startedAt,
        _i4.GFuzzyDate {
  GListGroupData_entries_startedAt._();

  factory GListGroupData_entries_startedAt(
          [Function(GListGroupData_entries_startedAtBuilder b) updates]) =
      _$GListGroupData_entries_startedAt;

  static void _initializeBuilder(GListGroupData_entries_startedAtBuilder b) =>
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
  static Serializer<GListGroupData_entries_startedAt> get serializer =>
      _$gListGroupDataEntriesStartedAtSerializer;

  @override
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListGroupData_entries_startedAt.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListGroupData_entries_startedAt? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListGroupData_entries_startedAt.serializer,
        json,
      );
}

abstract class GListGroupData_entries_completedAt
    implements
        Built<GListGroupData_entries_completedAt,
            GListGroupData_entries_completedAtBuilder>,
        GListGroup_entries_completedAt,
        _i2.GMediaListEntry_completedAt,
        _i4.GFuzzyDate {
  GListGroupData_entries_completedAt._();

  factory GListGroupData_entries_completedAt(
          [Function(GListGroupData_entries_completedAtBuilder b) updates]) =
      _$GListGroupData_entries_completedAt;

  static void _initializeBuilder(GListGroupData_entries_completedAtBuilder b) =>
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
  static Serializer<GListGroupData_entries_completedAt> get serializer =>
      _$gListGroupDataEntriesCompletedAtSerializer;

  @override
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListGroupData_entries_completedAt.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListGroupData_entries_completedAt? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListGroupData_entries_completedAt.serializer,
        json,
      );
}

abstract class GListGroupData_entries_media
    implements
        Built<GListGroupData_entries_media,
            GListGroupData_entries_mediaBuilder>,
        GListGroup_entries_media,
        _i2.GMediaListEntry_media,
        _i5.GMediaFragment {
  GListGroupData_entries_media._();

  factory GListGroupData_entries_media(
          [Function(GListGroupData_entries_mediaBuilder b) updates]) =
      _$GListGroupData_entries_media;

  static void _initializeBuilder(GListGroupData_entries_mediaBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i1.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i1.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GListGroupData_entries_media_title? get title;
  @override
  GListGroupData_entries_media_coverImage? get coverImage;
  @override
  int? get episodes;
  @override
  int? get chapters;
  @override
  _i1.GMediaStatus? get status;
  @override
  int? get averageScore;
  @override
  int? get popularity;
  @override
  GListGroupData_entries_media_startDate? get startDate;
  static Serializer<GListGroupData_entries_media> get serializer =>
      _$gListGroupDataEntriesMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListGroupData_entries_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListGroupData_entries_media? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListGroupData_entries_media.serializer,
        json,
      );
}

abstract class GListGroupData_entries_media_title
    implements
        Built<GListGroupData_entries_media_title,
            GListGroupData_entries_media_titleBuilder>,
        GListGroup_entries_media_title,
        _i2.GMediaListEntry_media_title,
        _i5.GMediaFragment_title {
  GListGroupData_entries_media_title._();

  factory GListGroupData_entries_media_title(
          [Function(GListGroupData_entries_media_titleBuilder b) updates]) =
      _$GListGroupData_entries_media_title;

  static void _initializeBuilder(GListGroupData_entries_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GListGroupData_entries_media_title> get serializer =>
      _$gListGroupDataEntriesMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListGroupData_entries_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListGroupData_entries_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListGroupData_entries_media_title.serializer,
        json,
      );
}

abstract class GListGroupData_entries_media_coverImage
    implements
        Built<GListGroupData_entries_media_coverImage,
            GListGroupData_entries_media_coverImageBuilder>,
        GListGroup_entries_media_coverImage,
        _i2.GMediaListEntry_media_coverImage,
        _i5.GMediaFragment_coverImage {
  GListGroupData_entries_media_coverImage._();

  factory GListGroupData_entries_media_coverImage(
      [Function(GListGroupData_entries_media_coverImageBuilder b)
          updates]) = _$GListGroupData_entries_media_coverImage;

  static void _initializeBuilder(
          GListGroupData_entries_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GListGroupData_entries_media_coverImage> get serializer =>
      _$gListGroupDataEntriesMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListGroupData_entries_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListGroupData_entries_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListGroupData_entries_media_coverImage.serializer,
        json,
      );
}

abstract class GListGroupData_entries_media_startDate
    implements
        Built<GListGroupData_entries_media_startDate,
            GListGroupData_entries_media_startDateBuilder>,
        GListGroup_entries_media_startDate,
        _i2.GMediaListEntry_media_startDate,
        _i4.GFuzzyDate {
  GListGroupData_entries_media_startDate._();

  factory GListGroupData_entries_media_startDate(
          [Function(GListGroupData_entries_media_startDateBuilder b) updates]) =
      _$GListGroupData_entries_media_startDate;

  static void _initializeBuilder(
          GListGroupData_entries_media_startDateBuilder b) =>
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
  static Serializer<GListGroupData_entries_media_startDate> get serializer =>
      _$gListGroupDataEntriesMediaStartDateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListGroupData_entries_media_startDate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListGroupData_entries_media_startDate? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListGroupData_entries_media_startDate.serializer,
        json,
      );
}
