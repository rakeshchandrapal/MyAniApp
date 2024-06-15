// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i7;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/character.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/fuzzy_date.data.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/staff.data.gql.dart'
    as _i5;

part 'character.data.gql.g.dart';

abstract class GCharacterData
    implements Built<GCharacterData, GCharacterDataBuilder> {
  GCharacterData._();

  factory GCharacterData([void Function(GCharacterDataBuilder b) updates]) =
      _$GCharacterData;

  static void _initializeBuilder(GCharacterDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCharacterData_Character? get Character;
  static Serializer<GCharacterData> get serializer =>
      _$gCharacterDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterData.serializer,
        json,
      );
}

abstract class GCharacterData_Character
    implements
        Built<GCharacterData_Character, GCharacterData_CharacterBuilder>,
        _i2.GCharacterFragment {
  GCharacterData_Character._();

  factory GCharacterData_Character(
          [void Function(GCharacterData_CharacterBuilder b) updates]) =
      _$GCharacterData_Character;

  static void _initializeBuilder(GCharacterData_CharacterBuilder b) =>
      b..G__typename = 'Character';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GCharacterData_Character_name? get name;
  @override
  GCharacterData_Character_image? get image;
  String? get description;
  String? get gender;
  String? get age;
  String? get bloodType;
  bool get isFavourite;
  String? get siteUrl;
  bool get isFavouriteBlocked;
  int? get favourites;
  GCharacterData_Character_dateOfBirth? get dateOfBirth;
  GCharacterData_Character_media? get media;
  static Serializer<GCharacterData_Character> get serializer =>
      _$gCharacterDataCharacterSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterData_Character.serializer,
        json,
      );
}

abstract class GCharacterData_Character_name
    implements
        Built<GCharacterData_Character_name,
            GCharacterData_Character_nameBuilder>,
        _i2.GCharacterFragment_name {
  GCharacterData_Character_name._();

  factory GCharacterData_Character_name(
          [void Function(GCharacterData_Character_nameBuilder b) updates]) =
      _$GCharacterData_Character_name;

  static void _initializeBuilder(GCharacterData_Character_nameBuilder b) =>
      b..G__typename = 'CharacterName';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GCharacterData_Character_name> get serializer =>
      _$gCharacterDataCharacterNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character_name.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character_name? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterData_Character_name.serializer,
        json,
      );
}

abstract class GCharacterData_Character_image
    implements
        Built<GCharacterData_Character_image,
            GCharacterData_Character_imageBuilder>,
        _i2.GCharacterFragment_image {
  GCharacterData_Character_image._();

  factory GCharacterData_Character_image(
          [void Function(GCharacterData_Character_imageBuilder b) updates]) =
      _$GCharacterData_Character_image;

  static void _initializeBuilder(GCharacterData_Character_imageBuilder b) =>
      b..G__typename = 'CharacterImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GCharacterData_Character_image> get serializer =>
      _$gCharacterDataCharacterImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character_image? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterData_Character_image.serializer,
        json,
      );
}

abstract class GCharacterData_Character_dateOfBirth
    implements
        Built<GCharacterData_Character_dateOfBirth,
            GCharacterData_Character_dateOfBirthBuilder>,
        _i3.GFuzzyDate {
  GCharacterData_Character_dateOfBirth._();

  factory GCharacterData_Character_dateOfBirth(
      [void Function(GCharacterData_Character_dateOfBirthBuilder b)
          updates]) = _$GCharacterData_Character_dateOfBirth;

  static void _initializeBuilder(
          GCharacterData_Character_dateOfBirthBuilder b) =>
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
  static Serializer<GCharacterData_Character_dateOfBirth> get serializer =>
      _$gCharacterDataCharacterDateOfBirthSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character_dateOfBirth.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character_dateOfBirth? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterData_Character_dateOfBirth.serializer,
        json,
      );
}

abstract class GCharacterData_Character_media
    implements
        Built<GCharacterData_Character_media,
            GCharacterData_Character_mediaBuilder> {
  GCharacterData_Character_media._();

  factory GCharacterData_Character_media(
          [void Function(GCharacterData_Character_mediaBuilder b) updates]) =
      _$GCharacterData_Character_media;

  static void _initializeBuilder(GCharacterData_Character_mediaBuilder b) =>
      b..G__typename = 'MediaConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCharacterData_Character_media_pageInfo? get pageInfo;
  BuiltList<GCharacterData_Character_media_edges?>? get edges;
  static Serializer<GCharacterData_Character_media> get serializer =>
      _$gCharacterDataCharacterMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterData_Character_media.serializer,
        json,
      );
}

abstract class GCharacterData_Character_media_pageInfo
    implements
        Built<GCharacterData_Character_media_pageInfo,
            GCharacterData_Character_media_pageInfoBuilder>,
        _i4.GPageInfo {
  GCharacterData_Character_media_pageInfo._();

  factory GCharacterData_Character_media_pageInfo(
      [void Function(GCharacterData_Character_media_pageInfoBuilder b)
          updates]) = _$GCharacterData_Character_media_pageInfo;

  static void _initializeBuilder(
          GCharacterData_Character_media_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GCharacterData_Character_media_pageInfo> get serializer =>
      _$gCharacterDataCharacterMediaPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character_media_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character_media_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterData_Character_media_pageInfo.serializer,
        json,
      );
}

abstract class GCharacterData_Character_media_edges
    implements
        Built<GCharacterData_Character_media_edges,
            GCharacterData_Character_media_edgesBuilder> {
  GCharacterData_Character_media_edges._();

  factory GCharacterData_Character_media_edges(
      [void Function(GCharacterData_Character_media_edgesBuilder b)
          updates]) = _$GCharacterData_Character_media_edges;

  static void _initializeBuilder(
          GCharacterData_Character_media_edgesBuilder b) =>
      b..G__typename = 'MediaEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GCharacterData_Character_media_edges_voiceActorRoles?>?
      get voiceActorRoles;
  GCharacterData_Character_media_edges_node? get node;
  static Serializer<GCharacterData_Character_media_edges> get serializer =>
      _$gCharacterDataCharacterMediaEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character_media_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character_media_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterData_Character_media_edges.serializer,
        json,
      );
}

abstract class GCharacterData_Character_media_edges_voiceActorRoles
    implements
        Built<GCharacterData_Character_media_edges_voiceActorRoles,
            GCharacterData_Character_media_edges_voiceActorRolesBuilder> {
  GCharacterData_Character_media_edges_voiceActorRoles._();

  factory GCharacterData_Character_media_edges_voiceActorRoles(
      [void Function(
              GCharacterData_Character_media_edges_voiceActorRolesBuilder b)
          updates]) = _$GCharacterData_Character_media_edges_voiceActorRoles;

  static void _initializeBuilder(
          GCharacterData_Character_media_edges_voiceActorRolesBuilder b) =>
      b..G__typename = 'StaffRoleType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get roleNotes;
  String? get dubGroup;
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor?
      get voiceActor;
  static Serializer<GCharacterData_Character_media_edges_voiceActorRoles>
      get serializer =>
          _$gCharacterDataCharacterMediaEdgesVoiceActorRolesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character_media_edges_voiceActorRoles.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character_media_edges_voiceActorRoles? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterData_Character_media_edges_voiceActorRoles.serializer,
        json,
      );
}

abstract class GCharacterData_Character_media_edges_voiceActorRoles_voiceActor
    implements
        Built<GCharacterData_Character_media_edges_voiceActorRoles_voiceActor,
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder>,
        _i5.GStaffFragment {
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor._();

  factory GCharacterData_Character_media_edges_voiceActorRoles_voiceActor(
          [void Function(
                  GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder
                      b)
              updates]) =
      _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor;

  static void _initializeBuilder(
          GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder
              b) =>
      b..G__typename = 'Staff';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name?
      get name;
  @override
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image?
      get image;
  String? get languageV2;
  static Serializer<
          GCharacterData_Character_media_edges_voiceActorRoles_voiceActor>
      get serializer =>
          _$gCharacterDataCharacterMediaEdgesVoiceActorRolesVoiceActorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character_media_edges_voiceActorRoles_voiceActor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character_media_edges_voiceActorRoles_voiceActor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor
                .serializer,
            json,
          );
}

abstract class GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name
    implements
        Built<
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name,
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder>,
        _i5.GStaffFragment_name {
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name._();

  factory GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name(
          [void Function(
                  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder
                      b)
              updates]) =
      _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name;

  static void _initializeBuilder(
          GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder
              b) =>
      b..G__typename = 'StaffName';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<
          GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name>
      get serializer =>
          _$gCharacterDataCharacterMediaEdgesVoiceActorRolesVoiceActorNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name
                .serializer,
            json,
          );
}

abstract class GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image
    implements
        Built<
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image,
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder>,
        _i5.GStaffFragment_image {
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image._();

  factory GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image(
          [void Function(
                  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder
                      b)
              updates]) =
      _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image;

  static void _initializeBuilder(
          GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder
              b) =>
      b..G__typename = 'StaffImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image>
      get serializer =>
          _$gCharacterDataCharacterMediaEdgesVoiceActorRolesVoiceActorImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image
                .serializer,
            json,
          );
}

abstract class GCharacterData_Character_media_edges_node
    implements
        Built<GCharacterData_Character_media_edges_node,
            GCharacterData_Character_media_edges_nodeBuilder>,
        _i6.GMediaFragment {
  GCharacterData_Character_media_edges_node._();

  factory GCharacterData_Character_media_edges_node(
      [void Function(GCharacterData_Character_media_edges_nodeBuilder b)
          updates]) = _$GCharacterData_Character_media_edges_node;

  static void _initializeBuilder(
          GCharacterData_Character_media_edges_nodeBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i7.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i7.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GCharacterData_Character_media_edges_node_title? get title;
  @override
  GCharacterData_Character_media_edges_node_coverImage? get coverImage;
  static Serializer<GCharacterData_Character_media_edges_node> get serializer =>
      _$gCharacterDataCharacterMediaEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character_media_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character_media_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterData_Character_media_edges_node.serializer,
        json,
      );
}

abstract class GCharacterData_Character_media_edges_node_title
    implements
        Built<GCharacterData_Character_media_edges_node_title,
            GCharacterData_Character_media_edges_node_titleBuilder>,
        _i6.GMediaFragment_title {
  GCharacterData_Character_media_edges_node_title._();

  factory GCharacterData_Character_media_edges_node_title(
      [void Function(GCharacterData_Character_media_edges_node_titleBuilder b)
          updates]) = _$GCharacterData_Character_media_edges_node_title;

  static void _initializeBuilder(
          GCharacterData_Character_media_edges_node_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GCharacterData_Character_media_edges_node_title>
      get serializer => _$gCharacterDataCharacterMediaEdgesNodeTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character_media_edges_node_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character_media_edges_node_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterData_Character_media_edges_node_title.serializer,
        json,
      );
}

abstract class GCharacterData_Character_media_edges_node_coverImage
    implements
        Built<GCharacterData_Character_media_edges_node_coverImage,
            GCharacterData_Character_media_edges_node_coverImageBuilder>,
        _i6.GMediaFragment_coverImage {
  GCharacterData_Character_media_edges_node_coverImage._();

  factory GCharacterData_Character_media_edges_node_coverImage(
      [void Function(
              GCharacterData_Character_media_edges_node_coverImageBuilder b)
          updates]) = _$GCharacterData_Character_media_edges_node_coverImage;

  static void _initializeBuilder(
          GCharacterData_Character_media_edges_node_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GCharacterData_Character_media_edges_node_coverImage>
      get serializer =>
          _$gCharacterDataCharacterMediaEdgesNodeCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterData_Character_media_edges_node_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterData_Character_media_edges_node_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterData_Character_media_edges_node_coverImage.serializer,
        json,
      );
}
