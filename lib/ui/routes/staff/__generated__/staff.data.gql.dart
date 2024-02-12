// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/fuzzy_date.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i3;

part 'staff.data.gql.g.dart';

abstract class GStaffData implements Built<GStaffData, GStaffDataBuilder> {
  GStaffData._();

  factory GStaffData([Function(GStaffDataBuilder b) updates]) = _$GStaffData;

  static void _initializeBuilder(GStaffDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GStaffData_Staff? get Staff;
  static Serializer<GStaffData> get serializer => _$gStaffDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData.serializer,
        json,
      );
}

abstract class GStaffData_Staff
    implements Built<GStaffData_Staff, GStaffData_StaffBuilder> {
  GStaffData_Staff._();

  factory GStaffData_Staff([Function(GStaffData_StaffBuilder b) updates]) =
      _$GStaffData_Staff;

  static void _initializeBuilder(GStaffData_StaffBuilder b) =>
      b..G__typename = 'Staff';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String? get description;
  String? get gender;
  String? get language;
  GStaffData_Staff_dateOfBirth? get dateOfBirth;
  GStaffData_Staff_dateOfDeath? get dateOfDeath;
  int? get age;
  BuiltList<int?>? get yearsActive;
  String? get homeTown;
  String? get bloodType;
  bool get isFavourite;
  bool get isFavouriteBlocked;
  GStaffData_Staff_name? get name;
  GStaffData_Staff_image? get image;
  GStaffData_Staff_characterMedia? get characterMedia;
  GStaffData_Staff_staffMedia? get staffMedia;
  static Serializer<GStaffData_Staff> get serializer =>
      _$gStaffDataStaffSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff.serializer,
        json,
      );
}

abstract class GStaffData_Staff_dateOfBirth
    implements
        Built<GStaffData_Staff_dateOfBirth,
            GStaffData_Staff_dateOfBirthBuilder>,
        _i2.GFuzzyDate {
  GStaffData_Staff_dateOfBirth._();

  factory GStaffData_Staff_dateOfBirth(
          [Function(GStaffData_Staff_dateOfBirthBuilder b) updates]) =
      _$GStaffData_Staff_dateOfBirth;

  static void _initializeBuilder(GStaffData_Staff_dateOfBirthBuilder b) =>
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
  static Serializer<GStaffData_Staff_dateOfBirth> get serializer =>
      _$gStaffDataStaffDateOfBirthSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_dateOfBirth.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_dateOfBirth? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_dateOfBirth.serializer,
        json,
      );
}

abstract class GStaffData_Staff_dateOfDeath
    implements
        Built<GStaffData_Staff_dateOfDeath,
            GStaffData_Staff_dateOfDeathBuilder>,
        _i2.GFuzzyDate {
  GStaffData_Staff_dateOfDeath._();

  factory GStaffData_Staff_dateOfDeath(
          [Function(GStaffData_Staff_dateOfDeathBuilder b) updates]) =
      _$GStaffData_Staff_dateOfDeath;

  static void _initializeBuilder(GStaffData_Staff_dateOfDeathBuilder b) =>
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
  static Serializer<GStaffData_Staff_dateOfDeath> get serializer =>
      _$gStaffDataStaffDateOfDeathSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_dateOfDeath.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_dateOfDeath? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_dateOfDeath.serializer,
        json,
      );
}

abstract class GStaffData_Staff_name
    implements Built<GStaffData_Staff_name, GStaffData_Staff_nameBuilder> {
  GStaffData_Staff_name._();

  factory GStaffData_Staff_name(
          [Function(GStaffData_Staff_nameBuilder b) updates]) =
      _$GStaffData_Staff_name;

  static void _initializeBuilder(GStaffData_Staff_nameBuilder b) =>
      b..G__typename = 'StaffName';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<GStaffData_Staff_name> get serializer =>
      _$gStaffDataStaffNameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_name.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_name? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_name.serializer,
        json,
      );
}

abstract class GStaffData_Staff_image
    implements Built<GStaffData_Staff_image, GStaffData_Staff_imageBuilder> {
  GStaffData_Staff_image._();

  factory GStaffData_Staff_image(
          [Function(GStaffData_Staff_imageBuilder b) updates]) =
      _$GStaffData_Staff_image;

  static void _initializeBuilder(GStaffData_Staff_imageBuilder b) =>
      b..G__typename = 'StaffImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<GStaffData_Staff_image> get serializer =>
      _$gStaffDataStaffImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_image? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_image.serializer,
        json,
      );
}

abstract class GStaffData_Staff_characterMedia
    implements
        Built<GStaffData_Staff_characterMedia,
            GStaffData_Staff_characterMediaBuilder> {
  GStaffData_Staff_characterMedia._();

  factory GStaffData_Staff_characterMedia(
          [Function(GStaffData_Staff_characterMediaBuilder b) updates]) =
      _$GStaffData_Staff_characterMedia;

  static void _initializeBuilder(GStaffData_Staff_characterMediaBuilder b) =>
      b..G__typename = 'MediaConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GStaffData_Staff_characterMedia_pageInfo? get pageInfo;
  BuiltList<GStaffData_Staff_characterMedia_edges?>? get edges;
  static Serializer<GStaffData_Staff_characterMedia> get serializer =>
      _$gStaffDataStaffCharacterMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_characterMedia.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_characterMedia? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_characterMedia.serializer,
        json,
      );
}

abstract class GStaffData_Staff_characterMedia_pageInfo
    implements
        Built<GStaffData_Staff_characterMedia_pageInfo,
            GStaffData_Staff_characterMedia_pageInfoBuilder>,
        _i3.GPageInfo {
  GStaffData_Staff_characterMedia_pageInfo._();

  factory GStaffData_Staff_characterMedia_pageInfo(
      [Function(GStaffData_Staff_characterMedia_pageInfoBuilder b)
          updates]) = _$GStaffData_Staff_characterMedia_pageInfo;

  static void _initializeBuilder(
          GStaffData_Staff_characterMedia_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GStaffData_Staff_characterMedia_pageInfo> get serializer =>
      _$gStaffDataStaffCharacterMediaPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_characterMedia_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_characterMedia_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_characterMedia_pageInfo.serializer,
        json,
      );
}

abstract class GStaffData_Staff_characterMedia_edges
    implements
        Built<GStaffData_Staff_characterMedia_edges,
            GStaffData_Staff_characterMedia_edgesBuilder> {
  GStaffData_Staff_characterMedia_edges._();

  factory GStaffData_Staff_characterMedia_edges(
          [Function(GStaffData_Staff_characterMedia_edgesBuilder b) updates]) =
      _$GStaffData_Staff_characterMedia_edges;

  static void _initializeBuilder(
          GStaffData_Staff_characterMedia_edgesBuilder b) =>
      b..G__typename = 'MediaEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GStaffData_Staff_characterMedia_edges_node? get node;
  BuiltList<GStaffData_Staff_characterMedia_edges_characters?>? get characters;
  static Serializer<GStaffData_Staff_characterMedia_edges> get serializer =>
      _$gStaffDataStaffCharacterMediaEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_characterMedia_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_characterMedia_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_characterMedia_edges.serializer,
        json,
      );
}

abstract class GStaffData_Staff_characterMedia_edges_node
    implements
        Built<GStaffData_Staff_characterMedia_edges_node,
            GStaffData_Staff_characterMedia_edges_nodeBuilder>,
        _i4.GMediaFragment {
  GStaffData_Staff_characterMedia_edges_node._();

  factory GStaffData_Staff_characterMedia_edges_node(
      [Function(GStaffData_Staff_characterMedia_edges_nodeBuilder b)
          updates]) = _$GStaffData_Staff_characterMedia_edges_node;

  static void _initializeBuilder(
          GStaffData_Staff_characterMedia_edges_nodeBuilder b) =>
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
  GStaffData_Staff_characterMedia_edges_node_title? get title;
  @override
  GStaffData_Staff_characterMedia_edges_node_coverImage? get coverImage;
  GStaffData_Staff_characterMedia_edges_node_startDate? get startDate;
  static Serializer<GStaffData_Staff_characterMedia_edges_node>
      get serializer => _$gStaffDataStaffCharacterMediaEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_characterMedia_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_characterMedia_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_characterMedia_edges_node.serializer,
        json,
      );
}

abstract class GStaffData_Staff_characterMedia_edges_node_title
    implements
        Built<GStaffData_Staff_characterMedia_edges_node_title,
            GStaffData_Staff_characterMedia_edges_node_titleBuilder>,
        _i4.GMediaFragment_title {
  GStaffData_Staff_characterMedia_edges_node_title._();

  factory GStaffData_Staff_characterMedia_edges_node_title(
      [Function(GStaffData_Staff_characterMedia_edges_node_titleBuilder b)
          updates]) = _$GStaffData_Staff_characterMedia_edges_node_title;

  static void _initializeBuilder(
          GStaffData_Staff_characterMedia_edges_node_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GStaffData_Staff_characterMedia_edges_node_title>
      get serializer => _$gStaffDataStaffCharacterMediaEdgesNodeTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_characterMedia_edges_node_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_characterMedia_edges_node_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_characterMedia_edges_node_title.serializer,
        json,
      );
}

abstract class GStaffData_Staff_characterMedia_edges_node_coverImage
    implements
        Built<GStaffData_Staff_characterMedia_edges_node_coverImage,
            GStaffData_Staff_characterMedia_edges_node_coverImageBuilder>,
        _i4.GMediaFragment_coverImage {
  GStaffData_Staff_characterMedia_edges_node_coverImage._();

  factory GStaffData_Staff_characterMedia_edges_node_coverImage(
      [Function(GStaffData_Staff_characterMedia_edges_node_coverImageBuilder b)
          updates]) = _$GStaffData_Staff_characterMedia_edges_node_coverImage;

  static void _initializeBuilder(
          GStaffData_Staff_characterMedia_edges_node_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GStaffData_Staff_characterMedia_edges_node_coverImage>
      get serializer =>
          _$gStaffDataStaffCharacterMediaEdgesNodeCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_characterMedia_edges_node_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_characterMedia_edges_node_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_characterMedia_edges_node_coverImage.serializer,
        json,
      );
}

abstract class GStaffData_Staff_characterMedia_edges_node_startDate
    implements
        Built<GStaffData_Staff_characterMedia_edges_node_startDate,
            GStaffData_Staff_characterMedia_edges_node_startDateBuilder> {
  GStaffData_Staff_characterMedia_edges_node_startDate._();

  factory GStaffData_Staff_characterMedia_edges_node_startDate(
      [Function(GStaffData_Staff_characterMedia_edges_node_startDateBuilder b)
          updates]) = _$GStaffData_Staff_characterMedia_edges_node_startDate;

  static void _initializeBuilder(
          GStaffData_Staff_characterMedia_edges_node_startDateBuilder b) =>
      b..G__typename = 'FuzzyDate';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get year;
  static Serializer<GStaffData_Staff_characterMedia_edges_node_startDate>
      get serializer =>
          _$gStaffDataStaffCharacterMediaEdgesNodeStartDateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_characterMedia_edges_node_startDate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_characterMedia_edges_node_startDate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_characterMedia_edges_node_startDate.serializer,
        json,
      );
}

abstract class GStaffData_Staff_characterMedia_edges_characters
    implements
        Built<GStaffData_Staff_characterMedia_edges_characters,
            GStaffData_Staff_characterMedia_edges_charactersBuilder> {
  GStaffData_Staff_characterMedia_edges_characters._();

  factory GStaffData_Staff_characterMedia_edges_characters(
      [Function(GStaffData_Staff_characterMedia_edges_charactersBuilder b)
          updates]) = _$GStaffData_Staff_characterMedia_edges_characters;

  static void _initializeBuilder(
          GStaffData_Staff_characterMedia_edges_charactersBuilder b) =>
      b..G__typename = 'Character';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GStaffData_Staff_characterMedia_edges_characters_name? get name;
  GStaffData_Staff_characterMedia_edges_characters_image? get image;
  static Serializer<GStaffData_Staff_characterMedia_edges_characters>
      get serializer =>
          _$gStaffDataStaffCharacterMediaEdgesCharactersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_characterMedia_edges_characters.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_characterMedia_edges_characters? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_characterMedia_edges_characters.serializer,
        json,
      );
}

abstract class GStaffData_Staff_characterMedia_edges_characters_name
    implements
        Built<GStaffData_Staff_characterMedia_edges_characters_name,
            GStaffData_Staff_characterMedia_edges_characters_nameBuilder> {
  GStaffData_Staff_characterMedia_edges_characters_name._();

  factory GStaffData_Staff_characterMedia_edges_characters_name(
      [Function(GStaffData_Staff_characterMedia_edges_characters_nameBuilder b)
          updates]) = _$GStaffData_Staff_characterMedia_edges_characters_name;

  static void _initializeBuilder(
          GStaffData_Staff_characterMedia_edges_characters_nameBuilder b) =>
      b..G__typename = 'CharacterName';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<GStaffData_Staff_characterMedia_edges_characters_name>
      get serializer =>
          _$gStaffDataStaffCharacterMediaEdgesCharactersNameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_characterMedia_edges_characters_name.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_characterMedia_edges_characters_name? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_characterMedia_edges_characters_name.serializer,
        json,
      );
}

abstract class GStaffData_Staff_characterMedia_edges_characters_image
    implements
        Built<GStaffData_Staff_characterMedia_edges_characters_image,
            GStaffData_Staff_characterMedia_edges_characters_imageBuilder> {
  GStaffData_Staff_characterMedia_edges_characters_image._();

  factory GStaffData_Staff_characterMedia_edges_characters_image(
      [Function(GStaffData_Staff_characterMedia_edges_characters_imageBuilder b)
          updates]) = _$GStaffData_Staff_characterMedia_edges_characters_image;

  static void _initializeBuilder(
          GStaffData_Staff_characterMedia_edges_characters_imageBuilder b) =>
      b..G__typename = 'CharacterImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<GStaffData_Staff_characterMedia_edges_characters_image>
      get serializer =>
          _$gStaffDataStaffCharacterMediaEdgesCharactersImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_characterMedia_edges_characters_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_characterMedia_edges_characters_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_characterMedia_edges_characters_image.serializer,
        json,
      );
}

abstract class GStaffData_Staff_staffMedia
    implements
        Built<GStaffData_Staff_staffMedia, GStaffData_Staff_staffMediaBuilder> {
  GStaffData_Staff_staffMedia._();

  factory GStaffData_Staff_staffMedia(
          [Function(GStaffData_Staff_staffMediaBuilder b) updates]) =
      _$GStaffData_Staff_staffMedia;

  static void _initializeBuilder(GStaffData_Staff_staffMediaBuilder b) =>
      b..G__typename = 'MediaConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GStaffData_Staff_staffMedia_pageInfo? get pageInfo;
  BuiltList<GStaffData_Staff_staffMedia_edges?>? get edges;
  static Serializer<GStaffData_Staff_staffMedia> get serializer =>
      _$gStaffDataStaffStaffMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_staffMedia.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_staffMedia? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_staffMedia.serializer,
        json,
      );
}

abstract class GStaffData_Staff_staffMedia_pageInfo
    implements
        Built<GStaffData_Staff_staffMedia_pageInfo,
            GStaffData_Staff_staffMedia_pageInfoBuilder>,
        _i3.GPageInfo {
  GStaffData_Staff_staffMedia_pageInfo._();

  factory GStaffData_Staff_staffMedia_pageInfo(
          [Function(GStaffData_Staff_staffMedia_pageInfoBuilder b) updates]) =
      _$GStaffData_Staff_staffMedia_pageInfo;

  static void _initializeBuilder(
          GStaffData_Staff_staffMedia_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GStaffData_Staff_staffMedia_pageInfo> get serializer =>
      _$gStaffDataStaffStaffMediaPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_staffMedia_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_staffMedia_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_staffMedia_pageInfo.serializer,
        json,
      );
}

abstract class GStaffData_Staff_staffMedia_edges
    implements
        Built<GStaffData_Staff_staffMedia_edges,
            GStaffData_Staff_staffMedia_edgesBuilder> {
  GStaffData_Staff_staffMedia_edges._();

  factory GStaffData_Staff_staffMedia_edges(
          [Function(GStaffData_Staff_staffMedia_edgesBuilder b) updates]) =
      _$GStaffData_Staff_staffMedia_edges;

  static void _initializeBuilder(GStaffData_Staff_staffMedia_edgesBuilder b) =>
      b..G__typename = 'MediaEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GStaffData_Staff_staffMedia_edges_node? get node;
  String? get staffRole;
  static Serializer<GStaffData_Staff_staffMedia_edges> get serializer =>
      _$gStaffDataStaffStaffMediaEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_staffMedia_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_staffMedia_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_staffMedia_edges.serializer,
        json,
      );
}

abstract class GStaffData_Staff_staffMedia_edges_node
    implements
        Built<GStaffData_Staff_staffMedia_edges_node,
            GStaffData_Staff_staffMedia_edges_nodeBuilder>,
        _i4.GMediaFragment {
  GStaffData_Staff_staffMedia_edges_node._();

  factory GStaffData_Staff_staffMedia_edges_node(
          [Function(GStaffData_Staff_staffMedia_edges_nodeBuilder b) updates]) =
      _$GStaffData_Staff_staffMedia_edges_node;

  static void _initializeBuilder(
          GStaffData_Staff_staffMedia_edges_nodeBuilder b) =>
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
  GStaffData_Staff_staffMedia_edges_node_title? get title;
  @override
  GStaffData_Staff_staffMedia_edges_node_coverImage? get coverImage;
  static Serializer<GStaffData_Staff_staffMedia_edges_node> get serializer =>
      _$gStaffDataStaffStaffMediaEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_staffMedia_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_staffMedia_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_staffMedia_edges_node.serializer,
        json,
      );
}

abstract class GStaffData_Staff_staffMedia_edges_node_title
    implements
        Built<GStaffData_Staff_staffMedia_edges_node_title,
            GStaffData_Staff_staffMedia_edges_node_titleBuilder>,
        _i4.GMediaFragment_title {
  GStaffData_Staff_staffMedia_edges_node_title._();

  factory GStaffData_Staff_staffMedia_edges_node_title(
      [Function(GStaffData_Staff_staffMedia_edges_node_titleBuilder b)
          updates]) = _$GStaffData_Staff_staffMedia_edges_node_title;

  static void _initializeBuilder(
          GStaffData_Staff_staffMedia_edges_node_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GStaffData_Staff_staffMedia_edges_node_title>
      get serializer => _$gStaffDataStaffStaffMediaEdgesNodeTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_staffMedia_edges_node_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_staffMedia_edges_node_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_staffMedia_edges_node_title.serializer,
        json,
      );
}

abstract class GStaffData_Staff_staffMedia_edges_node_coverImage
    implements
        Built<GStaffData_Staff_staffMedia_edges_node_coverImage,
            GStaffData_Staff_staffMedia_edges_node_coverImageBuilder>,
        _i4.GMediaFragment_coverImage {
  GStaffData_Staff_staffMedia_edges_node_coverImage._();

  factory GStaffData_Staff_staffMedia_edges_node_coverImage(
      [Function(GStaffData_Staff_staffMedia_edges_node_coverImageBuilder b)
          updates]) = _$GStaffData_Staff_staffMedia_edges_node_coverImage;

  static void _initializeBuilder(
          GStaffData_Staff_staffMedia_edges_node_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GStaffData_Staff_staffMedia_edges_node_coverImage>
      get serializer =>
          _$gStaffDataStaffStaffMediaEdgesNodeCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffData_Staff_staffMedia_edges_node_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffData_Staff_staffMedia_edges_node_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffData_Staff_staffMedia_edges_node_coverImage.serializer,
        json,
      );
}
