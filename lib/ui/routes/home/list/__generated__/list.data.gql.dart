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
import 'package:myaniapp/graphql/fragments/__generated__/list_group.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i7;
import 'package:myaniapp/graphql/fragments/__generated__/media_entry.data.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/media_list_option.data.gql.dart'
    as _i8;

part 'list.data.gql.g.dart';

abstract class GMediaListData
    implements Built<GMediaListData, GMediaListDataBuilder> {
  GMediaListData._();

  factory GMediaListData([Function(GMediaListDataBuilder b) updates]) =
      _$GMediaListData;

  static void _initializeBuilder(GMediaListDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaListData_MediaListCollection? get MediaListCollection;
  static Serializer<GMediaListData> get serializer =>
      _$gMediaListDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListData.serializer,
        json,
      );
}

abstract class GMediaListData_MediaListCollection
    implements
        Built<GMediaListData_MediaListCollection,
            GMediaListData_MediaListCollectionBuilder> {
  GMediaListData_MediaListCollection._();

  factory GMediaListData_MediaListCollection(
          [Function(GMediaListData_MediaListCollectionBuilder b) updates]) =
      _$GMediaListData_MediaListCollection;

  static void _initializeBuilder(GMediaListData_MediaListCollectionBuilder b) =>
      b..G__typename = 'MediaListCollection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaListData_MediaListCollection_lists?>? get lists;
  GMediaListData_MediaListCollection_user? get user;
  static Serializer<GMediaListData_MediaListCollection> get serializer =>
      _$gMediaListDataMediaListCollectionSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData_MediaListCollection.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData_MediaListCollection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListData_MediaListCollection.serializer,
        json,
      );
}

abstract class GMediaListData_MediaListCollection_lists
    implements
        Built<GMediaListData_MediaListCollection_lists,
            GMediaListData_MediaListCollection_listsBuilder>,
        _i2.GListGroup {
  GMediaListData_MediaListCollection_lists._();

  factory GMediaListData_MediaListCollection_lists(
      [Function(GMediaListData_MediaListCollection_listsBuilder b)
          updates]) = _$GMediaListData_MediaListCollection_lists;

  static void _initializeBuilder(
          GMediaListData_MediaListCollection_listsBuilder b) =>
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
  _i3.GMediaListStatus? get status;
  @override
  BuiltList<GMediaListData_MediaListCollection_lists_entries?>? get entries;
  static Serializer<GMediaListData_MediaListCollection_lists> get serializer =>
      _$gMediaListDataMediaListCollectionListsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData_MediaListCollection_lists.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData_MediaListCollection_lists? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListData_MediaListCollection_lists.serializer,
        json,
      );
}

abstract class GMediaListData_MediaListCollection_lists_entries
    implements
        Built<GMediaListData_MediaListCollection_lists_entries,
            GMediaListData_MediaListCollection_lists_entriesBuilder>,
        _i2.GListGroup_entries,
        _i4.GMediaListEntry {
  GMediaListData_MediaListCollection_lists_entries._();

  factory GMediaListData_MediaListCollection_lists_entries(
      [Function(GMediaListData_MediaListCollection_lists_entriesBuilder b)
          updates]) = _$GMediaListData_MediaListCollection_lists_entries;

  static void _initializeBuilder(
          GMediaListData_MediaListCollection_lists_entriesBuilder b) =>
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
  GMediaListData_MediaListCollection_lists_entries_startedAt? get startedAt;
  @override
  GMediaListData_MediaListCollection_lists_entries_completedAt? get completedAt;
  @override
  GMediaListData_MediaListCollection_lists_entries_media? get media;
  static Serializer<GMediaListData_MediaListCollection_lists_entries>
      get serializer =>
          _$gMediaListDataMediaListCollectionListsEntriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData_MediaListCollection_lists_entries.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData_MediaListCollection_lists_entries? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListData_MediaListCollection_lists_entries.serializer,
        json,
      );
}

abstract class GMediaListData_MediaListCollection_lists_entries_startedAt
    implements
        Built<GMediaListData_MediaListCollection_lists_entries_startedAt,
            GMediaListData_MediaListCollection_lists_entries_startedAtBuilder>,
        _i2.GListGroup_entries_startedAt,
        _i4.GMediaListEntry_startedAt,
        _i6.GFuzzyDate {
  GMediaListData_MediaListCollection_lists_entries_startedAt._();

  factory GMediaListData_MediaListCollection_lists_entries_startedAt(
      [Function(
              GMediaListData_MediaListCollection_lists_entries_startedAtBuilder
                  b)
          updates]) = _$GMediaListData_MediaListCollection_lists_entries_startedAt;

  static void _initializeBuilder(
          GMediaListData_MediaListCollection_lists_entries_startedAtBuilder
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
  static Serializer<GMediaListData_MediaListCollection_lists_entries_startedAt>
      get serializer =>
          _$gMediaListDataMediaListCollectionListsEntriesStartedAtSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData_MediaListCollection_lists_entries_startedAt.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData_MediaListCollection_lists_entries_startedAt? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListData_MediaListCollection_lists_entries_startedAt.serializer,
        json,
      );
}

abstract class GMediaListData_MediaListCollection_lists_entries_completedAt
    implements
        Built<GMediaListData_MediaListCollection_lists_entries_completedAt,
            GMediaListData_MediaListCollection_lists_entries_completedAtBuilder>,
        _i2.GListGroup_entries_completedAt,
        _i4.GMediaListEntry_completedAt,
        _i6.GFuzzyDate {
  GMediaListData_MediaListCollection_lists_entries_completedAt._();

  factory GMediaListData_MediaListCollection_lists_entries_completedAt(
          [Function(
                  GMediaListData_MediaListCollection_lists_entries_completedAtBuilder
                      b)
              updates]) =
      _$GMediaListData_MediaListCollection_lists_entries_completedAt;

  static void _initializeBuilder(
          GMediaListData_MediaListCollection_lists_entries_completedAtBuilder
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
  static Serializer<
          GMediaListData_MediaListCollection_lists_entries_completedAt>
      get serializer =>
          _$gMediaListDataMediaListCollectionListsEntriesCompletedAtSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData_MediaListCollection_lists_entries_completedAt.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData_MediaListCollection_lists_entries_completedAt? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListData_MediaListCollection_lists_entries_completedAt.serializer,
        json,
      );
}

abstract class GMediaListData_MediaListCollection_lists_entries_media
    implements
        Built<GMediaListData_MediaListCollection_lists_entries_media,
            GMediaListData_MediaListCollection_lists_entries_mediaBuilder>,
        _i2.GListGroup_entries_media,
        _i4.GMediaListEntry_media,
        _i7.GMediaFragment {
  GMediaListData_MediaListCollection_lists_entries_media._();

  factory GMediaListData_MediaListCollection_lists_entries_media(
      [Function(GMediaListData_MediaListCollection_lists_entries_mediaBuilder b)
          updates]) = _$GMediaListData_MediaListCollection_lists_entries_media;

  static void _initializeBuilder(
          GMediaListData_MediaListCollection_lists_entries_mediaBuilder b) =>
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
  GMediaListData_MediaListCollection_lists_entries_media_title? get title;
  @override
  GMediaListData_MediaListCollection_lists_entries_media_coverImage?
      get coverImage;
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
  GMediaListData_MediaListCollection_lists_entries_media_startDate?
      get startDate;
  static Serializer<GMediaListData_MediaListCollection_lists_entries_media>
      get serializer =>
          _$gMediaListDataMediaListCollectionListsEntriesMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData_MediaListCollection_lists_entries_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData_MediaListCollection_lists_entries_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListData_MediaListCollection_lists_entries_media.serializer,
        json,
      );
}

abstract class GMediaListData_MediaListCollection_lists_entries_media_title
    implements
        Built<GMediaListData_MediaListCollection_lists_entries_media_title,
            GMediaListData_MediaListCollection_lists_entries_media_titleBuilder>,
        _i2.GListGroup_entries_media_title,
        _i4.GMediaListEntry_media_title,
        _i7.GMediaFragment_title {
  GMediaListData_MediaListCollection_lists_entries_media_title._();

  factory GMediaListData_MediaListCollection_lists_entries_media_title(
          [Function(
                  GMediaListData_MediaListCollection_lists_entries_media_titleBuilder
                      b)
              updates]) =
      _$GMediaListData_MediaListCollection_lists_entries_media_title;

  static void _initializeBuilder(
          GMediaListData_MediaListCollection_lists_entries_media_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<
          GMediaListData_MediaListCollection_lists_entries_media_title>
      get serializer =>
          _$gMediaListDataMediaListCollectionListsEntriesMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData_MediaListCollection_lists_entries_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData_MediaListCollection_lists_entries_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListData_MediaListCollection_lists_entries_media_title.serializer,
        json,
      );
}

abstract class GMediaListData_MediaListCollection_lists_entries_media_coverImage
    implements
        Built<GMediaListData_MediaListCollection_lists_entries_media_coverImage,
            GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder>,
        _i2.GListGroup_entries_media_coverImage,
        _i4.GMediaListEntry_media_coverImage,
        _i7.GMediaFragment_coverImage {
  GMediaListData_MediaListCollection_lists_entries_media_coverImage._();

  factory GMediaListData_MediaListCollection_lists_entries_media_coverImage(
          [Function(
                  GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder
                      b)
              updates]) =
      _$GMediaListData_MediaListCollection_lists_entries_media_coverImage;

  static void _initializeBuilder(
          GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<
          GMediaListData_MediaListCollection_lists_entries_media_coverImage>
      get serializer =>
          _$gMediaListDataMediaListCollectionListsEntriesMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData_MediaListCollection_lists_entries_media_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData_MediaListCollection_lists_entries_media_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaListData_MediaListCollection_lists_entries_media_coverImage
                .serializer,
            json,
          );
}

abstract class GMediaListData_MediaListCollection_lists_entries_media_startDate
    implements
        Built<GMediaListData_MediaListCollection_lists_entries_media_startDate,
            GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder>,
        _i2.GListGroup_entries_media_startDate,
        _i4.GMediaListEntry_media_startDate,
        _i6.GFuzzyDate {
  GMediaListData_MediaListCollection_lists_entries_media_startDate._();

  factory GMediaListData_MediaListCollection_lists_entries_media_startDate(
          [Function(
                  GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder
                      b)
              updates]) =
      _$GMediaListData_MediaListCollection_lists_entries_media_startDate;

  static void _initializeBuilder(
          GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder
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
  static Serializer<
          GMediaListData_MediaListCollection_lists_entries_media_startDate>
      get serializer =>
          _$gMediaListDataMediaListCollectionListsEntriesMediaStartDateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData_MediaListCollection_lists_entries_media_startDate
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData_MediaListCollection_lists_entries_media_startDate?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaListData_MediaListCollection_lists_entries_media_startDate
                .serializer,
            json,
          );
}

abstract class GMediaListData_MediaListCollection_user
    implements
        Built<GMediaListData_MediaListCollection_user,
            GMediaListData_MediaListCollection_userBuilder> {
  GMediaListData_MediaListCollection_user._();

  factory GMediaListData_MediaListCollection_user(
      [Function(GMediaListData_MediaListCollection_userBuilder b)
          updates]) = _$GMediaListData_MediaListCollection_user;

  static void _initializeBuilder(
          GMediaListData_MediaListCollection_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GMediaListData_MediaListCollection_user_mediaListOptions?
      get mediaListOptions;
  static Serializer<GMediaListData_MediaListCollection_user> get serializer =>
      _$gMediaListDataMediaListCollectionUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData_MediaListCollection_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData_MediaListCollection_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListData_MediaListCollection_user.serializer,
        json,
      );
}

abstract class GMediaListData_MediaListCollection_user_mediaListOptions
    implements
        Built<GMediaListData_MediaListCollection_user_mediaListOptions,
            GMediaListData_MediaListCollection_user_mediaListOptionsBuilder> {
  GMediaListData_MediaListCollection_user_mediaListOptions._();

  factory GMediaListData_MediaListCollection_user_mediaListOptions(
      [Function(
              GMediaListData_MediaListCollection_user_mediaListOptionsBuilder b)
          updates]) = _$GMediaListData_MediaListCollection_user_mediaListOptions;

  static void _initializeBuilder(
          GMediaListData_MediaListCollection_user_mediaListOptionsBuilder b) =>
      b..G__typename = 'MediaListOptions';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i3.GScoreFormat? get scoreFormat;
  String? get rowOrder;
  GMediaListData_MediaListCollection_user_mediaListOptions_animeList?
      get animeList;
  GMediaListData_MediaListCollection_user_mediaListOptions_mangaList?
      get mangaList;
  static Serializer<GMediaListData_MediaListCollection_user_mediaListOptions>
      get serializer =>
          _$gMediaListDataMediaListCollectionUserMediaListOptionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData_MediaListCollection_user_mediaListOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData_MediaListCollection_user_mediaListOptions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListData_MediaListCollection_user_mediaListOptions.serializer,
        json,
      );
}

abstract class GMediaListData_MediaListCollection_user_mediaListOptions_animeList
    implements
        Built<
            GMediaListData_MediaListCollection_user_mediaListOptions_animeList,
            GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder>,
        _i8.GMediaListOptions {
  GMediaListData_MediaListCollection_user_mediaListOptions_animeList._();

  factory GMediaListData_MediaListCollection_user_mediaListOptions_animeList(
          [Function(
                  GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder
                      b)
              updates]) =
      _$GMediaListData_MediaListCollection_user_mediaListOptions_animeList;

  static void _initializeBuilder(
          GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder
              b) =>
      b..G__typename = 'MediaListTypeOptions';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<String?>? get sectionOrder;
  @override
  BuiltList<String?>? get customLists;
  static Serializer<
          GMediaListData_MediaListCollection_user_mediaListOptions_animeList>
      get serializer =>
          _$gMediaListDataMediaListCollectionUserMediaListOptionsAnimeListSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData_MediaListCollection_user_mediaListOptions_animeList
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData_MediaListCollection_user_mediaListOptions_animeList?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaListData_MediaListCollection_user_mediaListOptions_animeList
                .serializer,
            json,
          );
}

abstract class GMediaListData_MediaListCollection_user_mediaListOptions_mangaList
    implements
        Built<
            GMediaListData_MediaListCollection_user_mediaListOptions_mangaList,
            GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder>,
        _i8.GMediaListOptions {
  GMediaListData_MediaListCollection_user_mediaListOptions_mangaList._();

  factory GMediaListData_MediaListCollection_user_mediaListOptions_mangaList(
          [Function(
                  GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder
                      b)
              updates]) =
      _$GMediaListData_MediaListCollection_user_mediaListOptions_mangaList;

  static void _initializeBuilder(
          GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder
              b) =>
      b..G__typename = 'MediaListTypeOptions';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<String?>? get sectionOrder;
  @override
  BuiltList<String?>? get customLists;
  static Serializer<
          GMediaListData_MediaListCollection_user_mediaListOptions_mangaList>
      get serializer =>
          _$gMediaListDataMediaListCollectionUserMediaListOptionsMangaListSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListData_MediaListCollection_user_mediaListOptions_mangaList
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListData_MediaListCollection_user_mediaListOptions_mangaList?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaListData_MediaListCollection_user_mediaListOptions_mangaList
                .serializer,
            json,
          );
}
