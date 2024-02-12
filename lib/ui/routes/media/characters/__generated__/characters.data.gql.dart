// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i3;

part 'characters.data.gql.g.dart';

abstract class GCharactersData
    implements Built<GCharactersData, GCharactersDataBuilder> {
  GCharactersData._();

  factory GCharactersData([Function(GCharactersDataBuilder b) updates]) =
      _$GCharactersData;

  static void _initializeBuilder(GCharactersDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCharactersData_Media? get Media;
  static Serializer<GCharactersData> get serializer =>
      _$gCharactersDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharactersData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharactersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharactersData.serializer,
        json,
      );
}

abstract class GCharactersData_Media
    implements Built<GCharactersData_Media, GCharactersData_MediaBuilder> {
  GCharactersData_Media._();

  factory GCharactersData_Media(
          [Function(GCharactersData_MediaBuilder b) updates]) =
      _$GCharactersData_Media;

  static void _initializeBuilder(GCharactersData_MediaBuilder b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i2.GCountryCode? get countryOfOrigin;
  GCharactersData_Media_characters? get characters;
  static Serializer<GCharactersData_Media> get serializer =>
      _$gCharactersDataMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharactersData_Media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharactersData_Media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharactersData_Media.serializer,
        json,
      );
}

abstract class GCharactersData_Media_characters
    implements
        Built<GCharactersData_Media_characters,
            GCharactersData_Media_charactersBuilder> {
  GCharactersData_Media_characters._();

  factory GCharactersData_Media_characters(
          [Function(GCharactersData_Media_charactersBuilder b) updates]) =
      _$GCharactersData_Media_characters;

  static void _initializeBuilder(GCharactersData_Media_charactersBuilder b) =>
      b..G__typename = 'CharacterConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCharactersData_Media_characters_pageInfo? get pageInfo;
  BuiltList<GCharactersData_Media_characters_edges?>? get edges;
  static Serializer<GCharactersData_Media_characters> get serializer =>
      _$gCharactersDataMediaCharactersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharactersData_Media_characters.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharactersData_Media_characters? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharactersData_Media_characters.serializer,
        json,
      );
}

abstract class GCharactersData_Media_characters_pageInfo
    implements
        Built<GCharactersData_Media_characters_pageInfo,
            GCharactersData_Media_characters_pageInfoBuilder>,
        _i3.GPageInfo {
  GCharactersData_Media_characters_pageInfo._();

  factory GCharactersData_Media_characters_pageInfo(
      [Function(GCharactersData_Media_characters_pageInfoBuilder b)
          updates]) = _$GCharactersData_Media_characters_pageInfo;

  static void _initializeBuilder(
          GCharactersData_Media_characters_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GCharactersData_Media_characters_pageInfo> get serializer =>
      _$gCharactersDataMediaCharactersPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharactersData_Media_characters_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharactersData_Media_characters_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharactersData_Media_characters_pageInfo.serializer,
        json,
      );
}

abstract class GCharactersData_Media_characters_edges
    implements
        Built<GCharactersData_Media_characters_edges,
            GCharactersData_Media_characters_edgesBuilder> {
  GCharactersData_Media_characters_edges._();

  factory GCharactersData_Media_characters_edges(
          [Function(GCharactersData_Media_characters_edgesBuilder b) updates]) =
      _$GCharactersData_Media_characters_edges;

  static void _initializeBuilder(
          GCharactersData_Media_characters_edgesBuilder b) =>
      b..G__typename = 'CharacterEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  _i2.GCharacterRole? get role;
  GCharactersData_Media_characters_edges_node? get node;
  BuiltList<GCharactersData_Media_characters_edges_voiceActorRoles?>?
      get voiceActorRoles;
  static Serializer<GCharactersData_Media_characters_edges> get serializer =>
      _$gCharactersDataMediaCharactersEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharactersData_Media_characters_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharactersData_Media_characters_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharactersData_Media_characters_edges.serializer,
        json,
      );
}

abstract class GCharactersData_Media_characters_edges_node
    implements
        Built<GCharactersData_Media_characters_edges_node,
            GCharactersData_Media_characters_edges_nodeBuilder> {
  GCharactersData_Media_characters_edges_node._();

  factory GCharactersData_Media_characters_edges_node(
      [Function(GCharactersData_Media_characters_edges_nodeBuilder b)
          updates]) = _$GCharactersData_Media_characters_edges_node;

  static void _initializeBuilder(
          GCharactersData_Media_characters_edges_nodeBuilder b) =>
      b..G__typename = 'Character';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GCharactersData_Media_characters_edges_node_name? get name;
  GCharactersData_Media_characters_edges_node_image? get image;
  static Serializer<GCharactersData_Media_characters_edges_node>
      get serializer => _$gCharactersDataMediaCharactersEdgesNodeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharactersData_Media_characters_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharactersData_Media_characters_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharactersData_Media_characters_edges_node.serializer,
        json,
      );
}

abstract class GCharactersData_Media_characters_edges_node_name
    implements
        Built<GCharactersData_Media_characters_edges_node_name,
            GCharactersData_Media_characters_edges_node_nameBuilder> {
  GCharactersData_Media_characters_edges_node_name._();

  factory GCharactersData_Media_characters_edges_node_name(
      [Function(GCharactersData_Media_characters_edges_node_nameBuilder b)
          updates]) = _$GCharactersData_Media_characters_edges_node_name;

  static void _initializeBuilder(
          GCharactersData_Media_characters_edges_node_nameBuilder b) =>
      b..G__typename = 'CharacterName';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get first;
  String? get full;
  String? get userPreferred;
  static Serializer<GCharactersData_Media_characters_edges_node_name>
      get serializer => _$gCharactersDataMediaCharactersEdgesNodeNameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharactersData_Media_characters_edges_node_name.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharactersData_Media_characters_edges_node_name? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharactersData_Media_characters_edges_node_name.serializer,
        json,
      );
}

abstract class GCharactersData_Media_characters_edges_node_image
    implements
        Built<GCharactersData_Media_characters_edges_node_image,
            GCharactersData_Media_characters_edges_node_imageBuilder> {
  GCharactersData_Media_characters_edges_node_image._();

  factory GCharactersData_Media_characters_edges_node_image(
      [Function(GCharactersData_Media_characters_edges_node_imageBuilder b)
          updates]) = _$GCharactersData_Media_characters_edges_node_image;

  static void _initializeBuilder(
          GCharactersData_Media_characters_edges_node_imageBuilder b) =>
      b..G__typename = 'CharacterImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<GCharactersData_Media_characters_edges_node_image>
      get serializer =>
          _$gCharactersDataMediaCharactersEdgesNodeImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharactersData_Media_characters_edges_node_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharactersData_Media_characters_edges_node_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharactersData_Media_characters_edges_node_image.serializer,
        json,
      );
}

abstract class GCharactersData_Media_characters_edges_voiceActorRoles
    implements
        Built<GCharactersData_Media_characters_edges_voiceActorRoles,
            GCharactersData_Media_characters_edges_voiceActorRolesBuilder> {
  GCharactersData_Media_characters_edges_voiceActorRoles._();

  factory GCharactersData_Media_characters_edges_voiceActorRoles(
      [Function(GCharactersData_Media_characters_edges_voiceActorRolesBuilder b)
          updates]) = _$GCharactersData_Media_characters_edges_voiceActorRoles;

  static void _initializeBuilder(
          GCharactersData_Media_characters_edges_voiceActorRolesBuilder b) =>
      b..G__typename = 'StaffRoleType';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get roleNotes;
  String? get dubGroup;
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor?
      get voiceActor;
  static Serializer<GCharactersData_Media_characters_edges_voiceActorRoles>
      get serializer =>
          _$gCharactersDataMediaCharactersEdgesVoiceActorRolesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharactersData_Media_characters_edges_voiceActorRoles.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharactersData_Media_characters_edges_voiceActorRoles? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharactersData_Media_characters_edges_voiceActorRoles.serializer,
        json,
      );
}

abstract class GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor
    implements
        Built<GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor,
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder> {
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor._();

  factory GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor(
          [Function(
                  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder
                      b)
              updates]) =
      _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor;

  static void _initializeBuilder(
          GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder
              b) =>
      b..G__typename = 'Staff';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name?
      get name;
  String? get languageV2;
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image?
      get image;
  static Serializer<
          GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor>
      get serializer =>
          _$gCharactersDataMediaCharactersEdgesVoiceActorRolesVoiceActorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor
                .serializer,
            json,
          );
}

abstract class GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
    implements
        Built<
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name,
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder> {
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name._();

  factory GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name(
          [Function(
                  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder
                      b)
              updates]) =
      _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name;

  static void _initializeBuilder(
          GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder
              b) =>
      b..G__typename = 'StaffName';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<
          GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name>
      get serializer =>
          _$gCharactersDataMediaCharactersEdgesVoiceActorRolesVoiceActorNameSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
                .serializer,
            json,
          );
}

abstract class GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
    implements
        Built<
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image,
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder> {
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image._();

  factory GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image(
          [Function(
                  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder
                      b)
              updates]) =
      _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image;

  static void _initializeBuilder(
          GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder
              b) =>
      b..G__typename = 'StaffImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<
          GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image>
      get serializer =>
          _$gCharactersDataMediaCharactersEdgesVoiceActorRolesVoiceActorImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
                .serializer,
            json,
          );
}
