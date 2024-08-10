// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i5;
import 'package:myaniapp/graphql/fragments/__generated__/fuzzy_date.data.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i4;

part 'media_entry.data.gql.g.dart';

abstract class GMediaListEntry {
  String get G__typename;
  int get id;
  int get mediaId;
  _i1.GMediaListStatus? get status;
  int? get updatedAt;
  int? get progress;
  int? get progressVolumes;
  int? get priority;
  String? get notes;
  bool? get hiddenFromStatusLists;
  bool? get private;
  int? get repeat;
  double? get score;
  _i2.JsonObject? get customLists;
  GMediaListEntry_startedAt? get startedAt;
  GMediaListEntry_completedAt? get completedAt;
  GMediaListEntry_media? get media;
  Map<String, dynamic> toJson();
}

abstract class GMediaListEntry_startedAt implements _i3.GFuzzyDate {
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

abstract class GMediaListEntry_completedAt implements _i3.GFuzzyDate {
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

abstract class GMediaListEntry_media implements _i4.GMediaFragment {
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
  GMediaListEntry_media_title? get title;
  @override
  GMediaListEntry_media_coverImage? get coverImage;
  int? get episodes;
  int? get chapters;
  _i1.GMediaStatus? get status;
  int? get averageScore;
  int? get popularity;
  GMediaListEntry_media_startDate? get startDate;
  @override
  Map<String, dynamic> toJson();
}

abstract class GMediaListEntry_media_title implements _i4.GMediaFragment_title {
  @override
  String get G__typename;
  @override
  String? get userPreferred;
  @override
  Map<String, dynamic> toJson();
}

abstract class GMediaListEntry_media_coverImage
    implements _i4.GMediaFragment_coverImage {
  @override
  String get G__typename;
  @override
  String? get extraLarge;
  @override
  Map<String, dynamic> toJson();
}

abstract class GMediaListEntry_media_startDate implements _i3.GFuzzyDate {
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

abstract class GMediaListEntryData
    implements
        Built<GMediaListEntryData, GMediaListEntryDataBuilder>,
        GMediaListEntry {
  GMediaListEntryData._();

  factory GMediaListEntryData(
          [void Function(GMediaListEntryDataBuilder b) updates]) =
      _$GMediaListEntryData;

  static void _initializeBuilder(GMediaListEntryDataBuilder b) =>
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
  _i2.JsonObject? get customLists;
  @override
  GMediaListEntryData_startedAt? get startedAt;
  @override
  GMediaListEntryData_completedAt? get completedAt;
  @override
  GMediaListEntryData_media? get media;
  static Serializer<GMediaListEntryData> get serializer =>
      _$gMediaListEntryDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GMediaListEntryData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListEntryData? fromJson(Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GMediaListEntryData.serializer,
        json,
      );
}

abstract class GMediaListEntryData_startedAt
    implements
        Built<GMediaListEntryData_startedAt,
            GMediaListEntryData_startedAtBuilder>,
        GMediaListEntry_startedAt,
        _i3.GFuzzyDate {
  GMediaListEntryData_startedAt._();

  factory GMediaListEntryData_startedAt(
          [void Function(GMediaListEntryData_startedAtBuilder b) updates]) =
      _$GMediaListEntryData_startedAt;

  static void _initializeBuilder(GMediaListEntryData_startedAtBuilder b) =>
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
  static Serializer<GMediaListEntryData_startedAt> get serializer =>
      _$gMediaListEntryDataStartedAtSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GMediaListEntryData_startedAt.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListEntryData_startedAt? fromJson(Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GMediaListEntryData_startedAt.serializer,
        json,
      );
}

abstract class GMediaListEntryData_completedAt
    implements
        Built<GMediaListEntryData_completedAt,
            GMediaListEntryData_completedAtBuilder>,
        GMediaListEntry_completedAt,
        _i3.GFuzzyDate {
  GMediaListEntryData_completedAt._();

  factory GMediaListEntryData_completedAt(
          [void Function(GMediaListEntryData_completedAtBuilder b) updates]) =
      _$GMediaListEntryData_completedAt;

  static void _initializeBuilder(GMediaListEntryData_completedAtBuilder b) =>
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
  static Serializer<GMediaListEntryData_completedAt> get serializer =>
      _$gMediaListEntryDataCompletedAtSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GMediaListEntryData_completedAt.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListEntryData_completedAt? fromJson(Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GMediaListEntryData_completedAt.serializer,
        json,
      );
}

abstract class GMediaListEntryData_media
    implements
        Built<GMediaListEntryData_media, GMediaListEntryData_mediaBuilder>,
        GMediaListEntry_media,
        _i4.GMediaFragment {
  GMediaListEntryData_media._();

  factory GMediaListEntryData_media(
          [void Function(GMediaListEntryData_mediaBuilder b) updates]) =
      _$GMediaListEntryData_media;

  static void _initializeBuilder(GMediaListEntryData_mediaBuilder b) =>
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
  GMediaListEntryData_media_title? get title;
  @override
  GMediaListEntryData_media_coverImage? get coverImage;
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
  GMediaListEntryData_media_startDate? get startDate;
  static Serializer<GMediaListEntryData_media> get serializer =>
      _$gMediaListEntryDataMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GMediaListEntryData_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListEntryData_media? fromJson(Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GMediaListEntryData_media.serializer,
        json,
      );
}

abstract class GMediaListEntryData_media_title
    implements
        Built<GMediaListEntryData_media_title,
            GMediaListEntryData_media_titleBuilder>,
        GMediaListEntry_media_title,
        _i4.GMediaFragment_title {
  GMediaListEntryData_media_title._();

  factory GMediaListEntryData_media_title(
          [void Function(GMediaListEntryData_media_titleBuilder b) updates]) =
      _$GMediaListEntryData_media_title;

  static void _initializeBuilder(GMediaListEntryData_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GMediaListEntryData_media_title> get serializer =>
      _$gMediaListEntryDataMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GMediaListEntryData_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListEntryData_media_title? fromJson(Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GMediaListEntryData_media_title.serializer,
        json,
      );
}

abstract class GMediaListEntryData_media_coverImage
    implements
        Built<GMediaListEntryData_media_coverImage,
            GMediaListEntryData_media_coverImageBuilder>,
        GMediaListEntry_media_coverImage,
        _i4.GMediaFragment_coverImage {
  GMediaListEntryData_media_coverImage._();

  factory GMediaListEntryData_media_coverImage(
      [void Function(GMediaListEntryData_media_coverImageBuilder b)
          updates]) = _$GMediaListEntryData_media_coverImage;

  static void _initializeBuilder(
          GMediaListEntryData_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GMediaListEntryData_media_coverImage> get serializer =>
      _$gMediaListEntryDataMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GMediaListEntryData_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListEntryData_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GMediaListEntryData_media_coverImage.serializer,
        json,
      );
}

abstract class GMediaListEntryData_media_startDate
    implements
        Built<GMediaListEntryData_media_startDate,
            GMediaListEntryData_media_startDateBuilder>,
        GMediaListEntry_media_startDate,
        _i3.GFuzzyDate {
  GMediaListEntryData_media_startDate._();

  factory GMediaListEntryData_media_startDate(
      [void Function(GMediaListEntryData_media_startDateBuilder b)
          updates]) = _$GMediaListEntryData_media_startDate;

  static void _initializeBuilder(
          GMediaListEntryData_media_startDateBuilder b) =>
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
  static Serializer<GMediaListEntryData_media_startDate> get serializer =>
      _$gMediaListEntryDataMediaStartDateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
        GMediaListEntryData_media_startDate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListEntryData_media_startDate? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
        GMediaListEntryData_media_startDate.serializer,
        json,
      );
}
