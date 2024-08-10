// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/character.data.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/staff.data.gql.dart'
    as _i5;

part 'characters.data.gql.g.dart';

abstract class GMediaCharactersData
    implements Built<GMediaCharactersData, GMediaCharactersDataBuilder> {
  GMediaCharactersData._();

  factory GMediaCharactersData(
          [void Function(GMediaCharactersDataBuilder b) updates]) =
      _$GMediaCharactersData;

  static void _initializeBuilder(GMediaCharactersDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaCharactersData_Media? get Media;
  static Serializer<GMediaCharactersData> get serializer =>
      _$gMediaCharactersDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaCharactersData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaCharactersData.serializer,
        json,
      );
}

abstract class GMediaCharactersData_Media
    implements
        Built<GMediaCharactersData_Media, GMediaCharactersData_MediaBuilder> {
  GMediaCharactersData_Media._();

  factory GMediaCharactersData_Media(
          [void Function(GMediaCharactersData_MediaBuilder b) updates]) =
      _$GMediaCharactersData_Media;

  static void _initializeBuilder(GMediaCharactersData_MediaBuilder b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i2.GCountryCode? get countryOfOrigin;
  GMediaCharactersData_Media_characters? get characters;
  static Serializer<GMediaCharactersData_Media> get serializer =>
      _$gMediaCharactersDataMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaCharactersData_Media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersData_Media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaCharactersData_Media.serializer,
        json,
      );
}

abstract class GMediaCharactersData_Media_characters
    implements
        Built<GMediaCharactersData_Media_characters,
            GMediaCharactersData_Media_charactersBuilder> {
  GMediaCharactersData_Media_characters._();

  factory GMediaCharactersData_Media_characters(
      [void Function(GMediaCharactersData_Media_charactersBuilder b)
          updates]) = _$GMediaCharactersData_Media_characters;

  static void _initializeBuilder(
          GMediaCharactersData_Media_charactersBuilder b) =>
      b..G__typename = 'CharacterConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaCharactersData_Media_characters_pageInfo? get pageInfo;
  BuiltList<GMediaCharactersData_Media_characters_edges?>? get edges;
  static Serializer<GMediaCharactersData_Media_characters> get serializer =>
      _$gMediaCharactersDataMediaCharactersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaCharactersData_Media_characters.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersData_Media_characters? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaCharactersData_Media_characters.serializer,
        json,
      );
}

abstract class GMediaCharactersData_Media_characters_pageInfo
    implements
        Built<GMediaCharactersData_Media_characters_pageInfo,
            GMediaCharactersData_Media_characters_pageInfoBuilder>,
        _i3.GPageInfo {
  GMediaCharactersData_Media_characters_pageInfo._();

  factory GMediaCharactersData_Media_characters_pageInfo(
      [void Function(GMediaCharactersData_Media_characters_pageInfoBuilder b)
          updates]) = _$GMediaCharactersData_Media_characters_pageInfo;

  static void _initializeBuilder(
          GMediaCharactersData_Media_characters_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GMediaCharactersData_Media_characters_pageInfo>
      get serializer => _$gMediaCharactersDataMediaCharactersPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaCharactersData_Media_characters_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersData_Media_characters_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaCharactersData_Media_characters_pageInfo.serializer,
        json,
      );
}

abstract class GMediaCharactersData_Media_characters_edges
    implements
        Built<GMediaCharactersData_Media_characters_edges,
            GMediaCharactersData_Media_characters_edgesBuilder> {
  GMediaCharactersData_Media_characters_edges._();

  factory GMediaCharactersData_Media_characters_edges(
      [void Function(GMediaCharactersData_Media_characters_edgesBuilder b)
          updates]) = _$GMediaCharactersData_Media_characters_edges;

  static void _initializeBuilder(
          GMediaCharactersData_Media_characters_edgesBuilder b) =>
      b..G__typename = 'CharacterEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  _i2.GCharacterRole? get role;
  GMediaCharactersData_Media_characters_edges_node? get node;
  BuiltList<GMediaCharactersData_Media_characters_edges_voiceActorRoles?>?
      get voiceActorRoles;
  static Serializer<GMediaCharactersData_Media_characters_edges>
      get serializer => _$gMediaCharactersDataMediaCharactersEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaCharactersData_Media_characters_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersData_Media_characters_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaCharactersData_Media_characters_edges.serializer,
        json,
      );
}

abstract class GMediaCharactersData_Media_characters_edges_node
    implements
        Built<GMediaCharactersData_Media_characters_edges_node,
            GMediaCharactersData_Media_characters_edges_nodeBuilder>,
        _i4.GCharacterFragment {
  GMediaCharactersData_Media_characters_edges_node._();

  factory GMediaCharactersData_Media_characters_edges_node(
      [void Function(GMediaCharactersData_Media_characters_edges_nodeBuilder b)
          updates]) = _$GMediaCharactersData_Media_characters_edges_node;

  static void _initializeBuilder(
          GMediaCharactersData_Media_characters_edges_nodeBuilder b) =>
      b..G__typename = 'Character';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  GMediaCharactersData_Media_characters_edges_node_name? get name;
  @override
  GMediaCharactersData_Media_characters_edges_node_image? get image;
  static Serializer<GMediaCharactersData_Media_characters_edges_node>
      get serializer =>
          _$gMediaCharactersDataMediaCharactersEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaCharactersData_Media_characters_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersData_Media_characters_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaCharactersData_Media_characters_edges_node.serializer,
        json,
      );
}

abstract class GMediaCharactersData_Media_characters_edges_node_name
    implements
        Built<GMediaCharactersData_Media_characters_edges_node_name,
            GMediaCharactersData_Media_characters_edges_node_nameBuilder>,
        _i4.GCharacterFragment_name {
  GMediaCharactersData_Media_characters_edges_node_name._();

  factory GMediaCharactersData_Media_characters_edges_node_name(
      [void Function(
              GMediaCharactersData_Media_characters_edges_node_nameBuilder b)
          updates]) = _$GMediaCharactersData_Media_characters_edges_node_name;

  static void _initializeBuilder(
          GMediaCharactersData_Media_characters_edges_node_nameBuilder b) =>
      b..G__typename = 'CharacterName';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  String? get first;
  String? get full;
  static Serializer<GMediaCharactersData_Media_characters_edges_node_name>
      get serializer =>
          _$gMediaCharactersDataMediaCharactersEdgesNodeNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaCharactersData_Media_characters_edges_node_name.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersData_Media_characters_edges_node_name? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaCharactersData_Media_characters_edges_node_name.serializer,
        json,
      );
}

abstract class GMediaCharactersData_Media_characters_edges_node_image
    implements
        Built<GMediaCharactersData_Media_characters_edges_node_image,
            GMediaCharactersData_Media_characters_edges_node_imageBuilder>,
        _i4.GCharacterFragment_image {
  GMediaCharactersData_Media_characters_edges_node_image._();

  factory GMediaCharactersData_Media_characters_edges_node_image(
      [void Function(
              GMediaCharactersData_Media_characters_edges_node_imageBuilder b)
          updates]) = _$GMediaCharactersData_Media_characters_edges_node_image;

  static void _initializeBuilder(
          GMediaCharactersData_Media_characters_edges_node_imageBuilder b) =>
      b..G__typename = 'CharacterImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GMediaCharactersData_Media_characters_edges_node_image>
      get serializer =>
          _$gMediaCharactersDataMediaCharactersEdgesNodeImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaCharactersData_Media_characters_edges_node_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersData_Media_characters_edges_node_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaCharactersData_Media_characters_edges_node_image.serializer,
        json,
      );
}

abstract class GMediaCharactersData_Media_characters_edges_voiceActorRoles
    implements
        Built<GMediaCharactersData_Media_characters_edges_voiceActorRoles,
            GMediaCharactersData_Media_characters_edges_voiceActorRolesBuilder> {
  GMediaCharactersData_Media_characters_edges_voiceActorRoles._();

  factory GMediaCharactersData_Media_characters_edges_voiceActorRoles(
      [void Function(
              GMediaCharactersData_Media_characters_edges_voiceActorRolesBuilder
                  b)
          updates]) = _$GMediaCharactersData_Media_characters_edges_voiceActorRoles;

  static void _initializeBuilder(
          GMediaCharactersData_Media_characters_edges_voiceActorRolesBuilder
              b) =>
      b..G__typename = 'StaffRoleType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get roleNotes;
  String? get dubGroup;
  GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor?
      get voiceActor;
  static Serializer<GMediaCharactersData_Media_characters_edges_voiceActorRoles>
      get serializer =>
          _$gMediaCharactersDataMediaCharactersEdgesVoiceActorRolesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaCharactersData_Media_characters_edges_voiceActorRoles.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersData_Media_characters_edges_voiceActorRoles? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaCharactersData_Media_characters_edges_voiceActorRoles.serializer,
        json,
      );
}

abstract class GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor
    implements
        Built<
            GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor,
            GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder>,
        _i5.GStaffFragment {
  GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor._();

  factory GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor(
          [void Function(
                  GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder
                      b)
              updates]) =
      _$GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor;

  static void _initializeBuilder(
          GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder
              b) =>
      b..G__typename = 'Staff';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name?
      get name;
  @override
  GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image?
      get image;
  String? get languageV2;
  static Serializer<
          GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor>
      get serializer =>
          _$gMediaCharactersDataMediaCharactersEdgesVoiceActorRolesVoiceActorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor
                .serializer,
            json,
          );
}

abstract class GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
    implements
        Built<
            GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name,
            GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder>,
        _i5.GStaffFragment_name {
  GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name._();

  factory GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name(
          [void Function(
                  GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder
                      b)
              updates]) =
      _$GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name;

  static void _initializeBuilder(
          GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder
              b) =>
      b..G__typename = 'StaffName';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<
          GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name>
      get serializer =>
          _$gMediaCharactersDataMediaCharactersEdgesVoiceActorRolesVoiceActorNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
                .serializer,
            json,
          );
}

abstract class GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
    implements
        Built<
            GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image,
            GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder>,
        _i5.GStaffFragment_image {
  GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image._();

  factory GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image(
          [void Function(
                  GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder
                      b)
              updates]) =
      _$GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image;

  static void _initializeBuilder(
          GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder
              b) =>
      b..G__typename = 'StaffImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image>
      get serializer =>
          _$gMediaCharactersDataMediaCharactersEdgesVoiceActorRolesVoiceActorImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GMediaCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
                .serializer,
            json,
          );
}
