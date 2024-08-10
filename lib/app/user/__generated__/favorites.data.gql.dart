// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/character.data.gql.dart'
    as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i5;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/staff.data.gql.dart'
    as _i7;
import 'package:myaniapp/graphql/fragments/__generated__/studio.data.gql.dart'
    as _i8;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i2;

part 'favorites.data.gql.g.dart';

abstract class GUserFavoritesData
    implements Built<GUserFavoritesData, GUserFavoritesDataBuilder> {
  GUserFavoritesData._();

  factory GUserFavoritesData(
          [void Function(GUserFavoritesDataBuilder b) updates]) =
      _$GUserFavoritesData;

  static void _initializeBuilder(GUserFavoritesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserFavoritesData_User? get User;
  static Serializer<GUserFavoritesData> get serializer =>
      _$gUserFavoritesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User
    implements
        Built<GUserFavoritesData_User, GUserFavoritesData_UserBuilder>,
        _i2.GUserFragment {
  GUserFavoritesData_User._();

  factory GUserFavoritesData_User(
          [void Function(GUserFavoritesData_UserBuilder b) updates]) =
      _$GUserFavoritesData_User;

  static void _initializeBuilder(GUserFavoritesData_UserBuilder b) =>
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
  GUserFavoritesData_User_avatar? get avatar;
  GUserFavoritesData_User_favourites? get favourites;
  static Serializer<GUserFavoritesData_User> get serializer =>
      _$gUserFavoritesDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_avatar
    implements
        Built<GUserFavoritesData_User_avatar,
            GUserFavoritesData_User_avatarBuilder>,
        _i2.GUserFragment_avatar {
  GUserFavoritesData_User_avatar._();

  factory GUserFavoritesData_User_avatar(
          [void Function(GUserFavoritesData_User_avatarBuilder b) updates]) =
      _$GUserFavoritesData_User_avatar;

  static void _initializeBuilder(GUserFavoritesData_User_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GUserFavoritesData_User_avatar> get serializer =>
      _$gUserFavoritesDataUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_avatar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_avatar.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites
    implements
        Built<GUserFavoritesData_User_favourites,
            GUserFavoritesData_User_favouritesBuilder> {
  GUserFavoritesData_User_favourites._();

  factory GUserFavoritesData_User_favourites(
      [void Function(GUserFavoritesData_User_favouritesBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites;

  static void _initializeBuilder(GUserFavoritesData_User_favouritesBuilder b) =>
      b..G__typename = 'Favourites';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserFavoritesData_User_favourites_anime? get anime;
  GUserFavoritesData_User_favourites_manga? get manga;
  GUserFavoritesData_User_favourites_characters? get characters;
  GUserFavoritesData_User_favourites_staff? get staff;
  GUserFavoritesData_User_favourites_studios? get studios;
  static Serializer<GUserFavoritesData_User_favourites> get serializer =>
      _$gUserFavoritesDataUserFavouritesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_anime
    implements
        Built<GUserFavoritesData_User_favourites_anime,
            GUserFavoritesData_User_favourites_animeBuilder> {
  GUserFavoritesData_User_favourites_anime._();

  factory GUserFavoritesData_User_favourites_anime(
      [void Function(GUserFavoritesData_User_favourites_animeBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_anime;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_animeBuilder b) =>
      b..G__typename = 'MediaConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserFavoritesData_User_favourites_anime_pageInfo? get pageInfo;
  BuiltList<GUserFavoritesData_User_favourites_anime_edges?>? get edges;
  static Serializer<GUserFavoritesData_User_favourites_anime> get serializer =>
      _$gUserFavoritesDataUserFavouritesAnimeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_anime.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_anime? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_anime.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_anime_pageInfo
    implements
        Built<GUserFavoritesData_User_favourites_anime_pageInfo,
            GUserFavoritesData_User_favourites_anime_pageInfoBuilder>,
        _i4.GPageInfo {
  GUserFavoritesData_User_favourites_anime_pageInfo._();

  factory GUserFavoritesData_User_favourites_anime_pageInfo(
      [void Function(GUserFavoritesData_User_favourites_anime_pageInfoBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_anime_pageInfo;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_anime_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GUserFavoritesData_User_favourites_anime_pageInfo>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesAnimePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_anime_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_anime_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_anime_pageInfo.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_anime_edges
    implements
        Built<GUserFavoritesData_User_favourites_anime_edges,
            GUserFavoritesData_User_favourites_anime_edgesBuilder> {
  GUserFavoritesData_User_favourites_anime_edges._();

  factory GUserFavoritesData_User_favourites_anime_edges(
      [void Function(GUserFavoritesData_User_favourites_anime_edgesBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_anime_edges;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_anime_edgesBuilder b) =>
      b..G__typename = 'MediaEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get favouriteOrder;
  GUserFavoritesData_User_favourites_anime_edges_node? get node;
  static Serializer<GUserFavoritesData_User_favourites_anime_edges>
      get serializer => _$gUserFavoritesDataUserFavouritesAnimeEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_anime_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_anime_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_anime_edges.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_anime_edges_node
    implements
        Built<GUserFavoritesData_User_favourites_anime_edges_node,
            GUserFavoritesData_User_favourites_anime_edges_nodeBuilder>,
        _i5.GMediaFragment {
  GUserFavoritesData_User_favourites_anime_edges_node._();

  factory GUserFavoritesData_User_favourites_anime_edges_node(
      [void Function(
              GUserFavoritesData_User_favourites_anime_edges_nodeBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_anime_edges_node;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_anime_edges_nodeBuilder b) =>
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
  GUserFavoritesData_User_favourites_anime_edges_node_title? get title;
  @override
  GUserFavoritesData_User_favourites_anime_edges_node_coverImage?
      get coverImage;
  static Serializer<GUserFavoritesData_User_favourites_anime_edges_node>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesAnimeEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_anime_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_anime_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_anime_edges_node.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_anime_edges_node_title
    implements
        Built<GUserFavoritesData_User_favourites_anime_edges_node_title,
            GUserFavoritesData_User_favourites_anime_edges_node_titleBuilder>,
        _i5.GMediaFragment_title {
  GUserFavoritesData_User_favourites_anime_edges_node_title._();

  factory GUserFavoritesData_User_favourites_anime_edges_node_title(
      [void Function(
              GUserFavoritesData_User_favourites_anime_edges_node_titleBuilder
                  b)
          updates]) = _$GUserFavoritesData_User_favourites_anime_edges_node_title;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_anime_edges_node_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GUserFavoritesData_User_favourites_anime_edges_node_title>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesAnimeEdgesNodeTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_anime_edges_node_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_anime_edges_node_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_anime_edges_node_title.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_anime_edges_node_coverImage
    implements
        Built<GUserFavoritesData_User_favourites_anime_edges_node_coverImage,
            GUserFavoritesData_User_favourites_anime_edges_node_coverImageBuilder>,
        _i5.GMediaFragment_coverImage {
  GUserFavoritesData_User_favourites_anime_edges_node_coverImage._();

  factory GUserFavoritesData_User_favourites_anime_edges_node_coverImage(
          [void Function(
                  GUserFavoritesData_User_favourites_anime_edges_node_coverImageBuilder
                      b)
              updates]) =
      _$GUserFavoritesData_User_favourites_anime_edges_node_coverImage;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_anime_edges_node_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<
          GUserFavoritesData_User_favourites_anime_edges_node_coverImage>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesAnimeEdgesNodeCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_anime_edges_node_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_anime_edges_node_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUserFavoritesData_User_favourites_anime_edges_node_coverImage
                .serializer,
            json,
          );
}

abstract class GUserFavoritesData_User_favourites_manga
    implements
        Built<GUserFavoritesData_User_favourites_manga,
            GUserFavoritesData_User_favourites_mangaBuilder> {
  GUserFavoritesData_User_favourites_manga._();

  factory GUserFavoritesData_User_favourites_manga(
      [void Function(GUserFavoritesData_User_favourites_mangaBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_manga;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_mangaBuilder b) =>
      b..G__typename = 'MediaConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserFavoritesData_User_favourites_manga_pageInfo? get pageInfo;
  BuiltList<GUserFavoritesData_User_favourites_manga_edges?>? get edges;
  static Serializer<GUserFavoritesData_User_favourites_manga> get serializer =>
      _$gUserFavoritesDataUserFavouritesMangaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_manga.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_manga? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_manga.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_manga_pageInfo
    implements
        Built<GUserFavoritesData_User_favourites_manga_pageInfo,
            GUserFavoritesData_User_favourites_manga_pageInfoBuilder>,
        _i4.GPageInfo {
  GUserFavoritesData_User_favourites_manga_pageInfo._();

  factory GUserFavoritesData_User_favourites_manga_pageInfo(
      [void Function(GUserFavoritesData_User_favourites_manga_pageInfoBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_manga_pageInfo;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_manga_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GUserFavoritesData_User_favourites_manga_pageInfo>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesMangaPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_manga_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_manga_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_manga_pageInfo.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_manga_edges
    implements
        Built<GUserFavoritesData_User_favourites_manga_edges,
            GUserFavoritesData_User_favourites_manga_edgesBuilder> {
  GUserFavoritesData_User_favourites_manga_edges._();

  factory GUserFavoritesData_User_favourites_manga_edges(
      [void Function(GUserFavoritesData_User_favourites_manga_edgesBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_manga_edges;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_manga_edgesBuilder b) =>
      b..G__typename = 'MediaEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get favouriteOrder;
  GUserFavoritesData_User_favourites_manga_edges_node? get node;
  static Serializer<GUserFavoritesData_User_favourites_manga_edges>
      get serializer => _$gUserFavoritesDataUserFavouritesMangaEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_manga_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_manga_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_manga_edges.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_manga_edges_node
    implements
        Built<GUserFavoritesData_User_favourites_manga_edges_node,
            GUserFavoritesData_User_favourites_manga_edges_nodeBuilder>,
        _i5.GMediaFragment {
  GUserFavoritesData_User_favourites_manga_edges_node._();

  factory GUserFavoritesData_User_favourites_manga_edges_node(
      [void Function(
              GUserFavoritesData_User_favourites_manga_edges_nodeBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_manga_edges_node;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_manga_edges_nodeBuilder b) =>
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
  GUserFavoritesData_User_favourites_manga_edges_node_title? get title;
  @override
  GUserFavoritesData_User_favourites_manga_edges_node_coverImage?
      get coverImage;
  static Serializer<GUserFavoritesData_User_favourites_manga_edges_node>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesMangaEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_manga_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_manga_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_manga_edges_node.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_manga_edges_node_title
    implements
        Built<GUserFavoritesData_User_favourites_manga_edges_node_title,
            GUserFavoritesData_User_favourites_manga_edges_node_titleBuilder>,
        _i5.GMediaFragment_title {
  GUserFavoritesData_User_favourites_manga_edges_node_title._();

  factory GUserFavoritesData_User_favourites_manga_edges_node_title(
      [void Function(
              GUserFavoritesData_User_favourites_manga_edges_node_titleBuilder
                  b)
          updates]) = _$GUserFavoritesData_User_favourites_manga_edges_node_title;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_manga_edges_node_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GUserFavoritesData_User_favourites_manga_edges_node_title>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesMangaEdgesNodeTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_manga_edges_node_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_manga_edges_node_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_manga_edges_node_title.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_manga_edges_node_coverImage
    implements
        Built<GUserFavoritesData_User_favourites_manga_edges_node_coverImage,
            GUserFavoritesData_User_favourites_manga_edges_node_coverImageBuilder>,
        _i5.GMediaFragment_coverImage {
  GUserFavoritesData_User_favourites_manga_edges_node_coverImage._();

  factory GUserFavoritesData_User_favourites_manga_edges_node_coverImage(
          [void Function(
                  GUserFavoritesData_User_favourites_manga_edges_node_coverImageBuilder
                      b)
              updates]) =
      _$GUserFavoritesData_User_favourites_manga_edges_node_coverImage;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_manga_edges_node_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<
          GUserFavoritesData_User_favourites_manga_edges_node_coverImage>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesMangaEdgesNodeCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_manga_edges_node_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_manga_edges_node_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUserFavoritesData_User_favourites_manga_edges_node_coverImage
                .serializer,
            json,
          );
}

abstract class GUserFavoritesData_User_favourites_characters
    implements
        Built<GUserFavoritesData_User_favourites_characters,
            GUserFavoritesData_User_favourites_charactersBuilder> {
  GUserFavoritesData_User_favourites_characters._();

  factory GUserFavoritesData_User_favourites_characters(
      [void Function(GUserFavoritesData_User_favourites_charactersBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_characters;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_charactersBuilder b) =>
      b..G__typename = 'CharacterConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserFavoritesData_User_favourites_characters_pageInfo? get pageInfo;
  BuiltList<GUserFavoritesData_User_favourites_characters_edges?>? get edges;
  static Serializer<GUserFavoritesData_User_favourites_characters>
      get serializer => _$gUserFavoritesDataUserFavouritesCharactersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_characters.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_characters? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_characters.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_characters_pageInfo
    implements
        Built<GUserFavoritesData_User_favourites_characters_pageInfo,
            GUserFavoritesData_User_favourites_characters_pageInfoBuilder>,
        _i4.GPageInfo {
  GUserFavoritesData_User_favourites_characters_pageInfo._();

  factory GUserFavoritesData_User_favourites_characters_pageInfo(
      [void Function(
              GUserFavoritesData_User_favourites_characters_pageInfoBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_characters_pageInfo;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_characters_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GUserFavoritesData_User_favourites_characters_pageInfo>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesCharactersPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_characters_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_characters_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_characters_pageInfo.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_characters_edges
    implements
        Built<GUserFavoritesData_User_favourites_characters_edges,
            GUserFavoritesData_User_favourites_characters_edgesBuilder> {
  GUserFavoritesData_User_favourites_characters_edges._();

  factory GUserFavoritesData_User_favourites_characters_edges(
      [void Function(
              GUserFavoritesData_User_favourites_characters_edgesBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_characters_edges;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_characters_edgesBuilder b) =>
      b..G__typename = 'CharacterEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get favouriteOrder;
  GUserFavoritesData_User_favourites_characters_edges_node? get node;
  static Serializer<GUserFavoritesData_User_favourites_characters_edges>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesCharactersEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_characters_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_characters_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_characters_edges.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_characters_edges_node
    implements
        Built<GUserFavoritesData_User_favourites_characters_edges_node,
            GUserFavoritesData_User_favourites_characters_edges_nodeBuilder>,
        _i6.GCharacterFragment {
  GUserFavoritesData_User_favourites_characters_edges_node._();

  factory GUserFavoritesData_User_favourites_characters_edges_node(
      [void Function(
              GUserFavoritesData_User_favourites_characters_edges_nodeBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_characters_edges_node;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_characters_edges_nodeBuilder b) =>
      b..G__typename = 'Character';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GUserFavoritesData_User_favourites_characters_edges_node_name? get name;
  @override
  GUserFavoritesData_User_favourites_characters_edges_node_image? get image;
  static Serializer<GUserFavoritesData_User_favourites_characters_edges_node>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesCharactersEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_characters_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_characters_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_characters_edges_node.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_characters_edges_node_name
    implements
        Built<GUserFavoritesData_User_favourites_characters_edges_node_name,
            GUserFavoritesData_User_favourites_characters_edges_node_nameBuilder>,
        _i6.GCharacterFragment_name {
  GUserFavoritesData_User_favourites_characters_edges_node_name._();

  factory GUserFavoritesData_User_favourites_characters_edges_node_name(
          [void Function(
                  GUserFavoritesData_User_favourites_characters_edges_node_nameBuilder
                      b)
              updates]) =
      _$GUserFavoritesData_User_favourites_characters_edges_node_name;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_characters_edges_node_nameBuilder
              b) =>
      b..G__typename = 'CharacterName';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<
          GUserFavoritesData_User_favourites_characters_edges_node_name>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesCharactersEdgesNodeNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_characters_edges_node_name
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_characters_edges_node_name?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUserFavoritesData_User_favourites_characters_edges_node_name
                .serializer,
            json,
          );
}

abstract class GUserFavoritesData_User_favourites_characters_edges_node_image
    implements
        Built<GUserFavoritesData_User_favourites_characters_edges_node_image,
            GUserFavoritesData_User_favourites_characters_edges_node_imageBuilder>,
        _i6.GCharacterFragment_image {
  GUserFavoritesData_User_favourites_characters_edges_node_image._();

  factory GUserFavoritesData_User_favourites_characters_edges_node_image(
          [void Function(
                  GUserFavoritesData_User_favourites_characters_edges_node_imageBuilder
                      b)
              updates]) =
      _$GUserFavoritesData_User_favourites_characters_edges_node_image;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_characters_edges_node_imageBuilder
              b) =>
      b..G__typename = 'CharacterImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GUserFavoritesData_User_favourites_characters_edges_node_image>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesCharactersEdgesNodeImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_characters_edges_node_image
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_characters_edges_node_image?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUserFavoritesData_User_favourites_characters_edges_node_image
                .serializer,
            json,
          );
}

abstract class GUserFavoritesData_User_favourites_staff
    implements
        Built<GUserFavoritesData_User_favourites_staff,
            GUserFavoritesData_User_favourites_staffBuilder> {
  GUserFavoritesData_User_favourites_staff._();

  factory GUserFavoritesData_User_favourites_staff(
      [void Function(GUserFavoritesData_User_favourites_staffBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_staff;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_staffBuilder b) =>
      b..G__typename = 'StaffConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserFavoritesData_User_favourites_staff_pageInfo? get pageInfo;
  BuiltList<GUserFavoritesData_User_favourites_staff_edges?>? get edges;
  static Serializer<GUserFavoritesData_User_favourites_staff> get serializer =>
      _$gUserFavoritesDataUserFavouritesStaffSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_staff.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_staff? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_staff.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_staff_pageInfo
    implements
        Built<GUserFavoritesData_User_favourites_staff_pageInfo,
            GUserFavoritesData_User_favourites_staff_pageInfoBuilder>,
        _i4.GPageInfo {
  GUserFavoritesData_User_favourites_staff_pageInfo._();

  factory GUserFavoritesData_User_favourites_staff_pageInfo(
      [void Function(GUserFavoritesData_User_favourites_staff_pageInfoBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_staff_pageInfo;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_staff_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GUserFavoritesData_User_favourites_staff_pageInfo>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesStaffPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_staff_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_staff_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_staff_pageInfo.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_staff_edges
    implements
        Built<GUserFavoritesData_User_favourites_staff_edges,
            GUserFavoritesData_User_favourites_staff_edgesBuilder> {
  GUserFavoritesData_User_favourites_staff_edges._();

  factory GUserFavoritesData_User_favourites_staff_edges(
      [void Function(GUserFavoritesData_User_favourites_staff_edgesBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_staff_edges;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_staff_edgesBuilder b) =>
      b..G__typename = 'StaffEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get favouriteOrder;
  GUserFavoritesData_User_favourites_staff_edges_node? get node;
  static Serializer<GUserFavoritesData_User_favourites_staff_edges>
      get serializer => _$gUserFavoritesDataUserFavouritesStaffEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_staff_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_staff_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_staff_edges.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_staff_edges_node
    implements
        Built<GUserFavoritesData_User_favourites_staff_edges_node,
            GUserFavoritesData_User_favourites_staff_edges_nodeBuilder>,
        _i7.GStaffFragment {
  GUserFavoritesData_User_favourites_staff_edges_node._();

  factory GUserFavoritesData_User_favourites_staff_edges_node(
      [void Function(
              GUserFavoritesData_User_favourites_staff_edges_nodeBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_staff_edges_node;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_staff_edges_nodeBuilder b) =>
      b..G__typename = 'Staff';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GUserFavoritesData_User_favourites_staff_edges_node_name? get name;
  @override
  GUserFavoritesData_User_favourites_staff_edges_node_image? get image;
  static Serializer<GUserFavoritesData_User_favourites_staff_edges_node>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesStaffEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_staff_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_staff_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_staff_edges_node.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_staff_edges_node_name
    implements
        Built<GUserFavoritesData_User_favourites_staff_edges_node_name,
            GUserFavoritesData_User_favourites_staff_edges_node_nameBuilder>,
        _i7.GStaffFragment_name {
  GUserFavoritesData_User_favourites_staff_edges_node_name._();

  factory GUserFavoritesData_User_favourites_staff_edges_node_name(
      [void Function(
              GUserFavoritesData_User_favourites_staff_edges_node_nameBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_staff_edges_node_name;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_staff_edges_node_nameBuilder b) =>
      b..G__typename = 'StaffName';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GUserFavoritesData_User_favourites_staff_edges_node_name>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesStaffEdgesNodeNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_staff_edges_node_name.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_staff_edges_node_name? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_staff_edges_node_name.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_staff_edges_node_image
    implements
        Built<GUserFavoritesData_User_favourites_staff_edges_node_image,
            GUserFavoritesData_User_favourites_staff_edges_node_imageBuilder>,
        _i7.GStaffFragment_image {
  GUserFavoritesData_User_favourites_staff_edges_node_image._();

  factory GUserFavoritesData_User_favourites_staff_edges_node_image(
      [void Function(
              GUserFavoritesData_User_favourites_staff_edges_node_imageBuilder
                  b)
          updates]) = _$GUserFavoritesData_User_favourites_staff_edges_node_image;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_staff_edges_node_imageBuilder b) =>
      b..G__typename = 'StaffImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GUserFavoritesData_User_favourites_staff_edges_node_image>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesStaffEdgesNodeImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_staff_edges_node_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_staff_edges_node_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_staff_edges_node_image.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_studios
    implements
        Built<GUserFavoritesData_User_favourites_studios,
            GUserFavoritesData_User_favourites_studiosBuilder> {
  GUserFavoritesData_User_favourites_studios._();

  factory GUserFavoritesData_User_favourites_studios(
      [void Function(GUserFavoritesData_User_favourites_studiosBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_studios;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_studiosBuilder b) =>
      b..G__typename = 'StudioConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserFavoritesData_User_favourites_studios_pageInfo? get pageInfo;
  BuiltList<GUserFavoritesData_User_favourites_studios_edges?>? get edges;
  static Serializer<GUserFavoritesData_User_favourites_studios>
      get serializer => _$gUserFavoritesDataUserFavouritesStudiosSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_studios.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_studios? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_studios.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_studios_pageInfo
    implements
        Built<GUserFavoritesData_User_favourites_studios_pageInfo,
            GUserFavoritesData_User_favourites_studios_pageInfoBuilder>,
        _i4.GPageInfo {
  GUserFavoritesData_User_favourites_studios_pageInfo._();

  factory GUserFavoritesData_User_favourites_studios_pageInfo(
      [void Function(
              GUserFavoritesData_User_favourites_studios_pageInfoBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_studios_pageInfo;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_studios_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GUserFavoritesData_User_favourites_studios_pageInfo>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesStudiosPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_studios_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_studios_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_studios_pageInfo.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_studios_edges
    implements
        Built<GUserFavoritesData_User_favourites_studios_edges,
            GUserFavoritesData_User_favourites_studios_edgesBuilder> {
  GUserFavoritesData_User_favourites_studios_edges._();

  factory GUserFavoritesData_User_favourites_studios_edges(
      [void Function(GUserFavoritesData_User_favourites_studios_edgesBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_studios_edges;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_studios_edgesBuilder b) =>
      b..G__typename = 'StudioEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get id;
  int? get favouriteOrder;
  GUserFavoritesData_User_favourites_studios_edges_node? get node;
  static Serializer<GUserFavoritesData_User_favourites_studios_edges>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesStudiosEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_studios_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_studios_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_studios_edges.serializer,
        json,
      );
}

abstract class GUserFavoritesData_User_favourites_studios_edges_node
    implements
        Built<GUserFavoritesData_User_favourites_studios_edges_node,
            GUserFavoritesData_User_favourites_studios_edges_nodeBuilder>,
        _i8.GStudioFragment {
  GUserFavoritesData_User_favourites_studios_edges_node._();

  factory GUserFavoritesData_User_favourites_studios_edges_node(
      [void Function(
              GUserFavoritesData_User_favourites_studios_edges_nodeBuilder b)
          updates]) = _$GUserFavoritesData_User_favourites_studios_edges_node;

  static void _initializeBuilder(
          GUserFavoritesData_User_favourites_studios_edges_nodeBuilder b) =>
      b..G__typename = 'Studio';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  static Serializer<GUserFavoritesData_User_favourites_studios_edges_node>
      get serializer =>
          _$gUserFavoritesDataUserFavouritesStudiosEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesData_User_favourites_studios_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesData_User_favourites_studios_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesData_User_favourites_studios_edges_node.serializer,
        json,
      );
}
