// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/fuzzy_date.data.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i2;

part 'media.data.gql.g.dart';

abstract class GMediaData implements Built<GMediaData, GMediaDataBuilder> {
  GMediaData._();

  factory GMediaData([Function(GMediaDataBuilder b) updates]) = _$GMediaData;

  static void _initializeBuilder(GMediaDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaData_Media? get Media;
  static Serializer<GMediaData> get serializer => _$gMediaDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData.serializer,
        json,
      );
}

abstract class GMediaData_Media
    implements
        Built<GMediaData_Media, GMediaData_MediaBuilder>,
        _i2.GMediaFragment {
  GMediaData_Media._();

  factory GMediaData_Media([Function(GMediaData_MediaBuilder b) updates]) =
      _$GMediaData_Media;

  static void _initializeBuilder(GMediaData_MediaBuilder b) =>
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
  GMediaData_Media_title? get title;
  @override
  GMediaData_Media_coverImage? get coverImage;
  String? get bannerImage;
  int? get favourites;
  bool get isFavourite;
  bool get isFavouriteBlocked;
  int? get averageScore;
  int? get duration;
  _i3.GMediaStatus? get status;
  _i3.GMediaSeason? get season;
  int? get seasonYear;
  _i3.GMediaSource? get source;
  String? get hashtag;
  int? get volumes;
  int? get episodes;
  int? get chapters;
  GMediaData_Media_studios? get studios;
  GMediaData_Media_startDate? get startDate;
  GMediaData_Media_endDate? get endDate;
  BuiltList<GMediaData_Media_tags?>? get tags;
  GMediaData_Media_relations? get relations;
  BuiltList<GMediaData_Media_externalLinks?>? get externalLinks;
  GMediaData_Media_trailer? get trailer;
  GMediaData_Media_characters? get characters;
  GMediaData_Media_staff? get staff;
  GMediaData_Media_recommendations? get recommendations;
  GMediaData_Media_reviews? get reviews;
  GMediaData_Media_mediaListEntry? get mediaListEntry;
  static Serializer<GMediaData_Media> get serializer =>
      _$gMediaDataMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media.serializer,
        json,
      );
}

abstract class GMediaData_Media_title
    implements
        Built<GMediaData_Media_title, GMediaData_Media_titleBuilder>,
        _i2.GMediaFragment_title {
  GMediaData_Media_title._();

  factory GMediaData_Media_title(
          [Function(GMediaData_Media_titleBuilder b) updates]) =
      _$GMediaData_Media_title;

  static void _initializeBuilder(GMediaData_Media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  String? get english;
  String? get native;
  String? get romaji;
  static Serializer<GMediaData_Media_title> get serializer =>
      _$gMediaDataMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_title? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_title.serializer,
        json,
      );
}

abstract class GMediaData_Media_coverImage
    implements
        Built<GMediaData_Media_coverImage, GMediaData_Media_coverImageBuilder>,
        _i2.GMediaFragment_coverImage {
  GMediaData_Media_coverImage._();

  factory GMediaData_Media_coverImage(
          [Function(GMediaData_Media_coverImageBuilder b) updates]) =
      _$GMediaData_Media_coverImage;

  static void _initializeBuilder(GMediaData_Media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GMediaData_Media_coverImage> get serializer =>
      _$gMediaDataMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_coverImage? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_coverImage.serializer,
        json,
      );
}

abstract class GMediaData_Media_studios
    implements
        Built<GMediaData_Media_studios, GMediaData_Media_studiosBuilder> {
  GMediaData_Media_studios._();

  factory GMediaData_Media_studios(
          [Function(GMediaData_Media_studiosBuilder b) updates]) =
      _$GMediaData_Media_studios;

  static void _initializeBuilder(GMediaData_Media_studiosBuilder b) =>
      b..G__typename = 'StudioConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaData_Media_studios_nodes?>? get nodes;
  static Serializer<GMediaData_Media_studios> get serializer =>
      _$gMediaDataMediaStudiosSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_studios.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_studios? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_studios.serializer,
        json,
      );
}

abstract class GMediaData_Media_studios_nodes
    implements
        Built<GMediaData_Media_studios_nodes,
            GMediaData_Media_studios_nodesBuilder> {
  GMediaData_Media_studios_nodes._();

  factory GMediaData_Media_studios_nodes(
          [Function(GMediaData_Media_studios_nodesBuilder b) updates]) =
      _$GMediaData_Media_studios_nodes;

  static void _initializeBuilder(GMediaData_Media_studios_nodesBuilder b) =>
      b..G__typename = 'Studio';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get name;
  static Serializer<GMediaData_Media_studios_nodes> get serializer =>
      _$gMediaDataMediaStudiosNodesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_studios_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_studios_nodes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_studios_nodes.serializer,
        json,
      );
}

abstract class GMediaData_Media_startDate
    implements
        Built<GMediaData_Media_startDate, GMediaData_Media_startDateBuilder>,
        _i4.GFuzzyDate {
  GMediaData_Media_startDate._();

  factory GMediaData_Media_startDate(
          [Function(GMediaData_Media_startDateBuilder b) updates]) =
      _$GMediaData_Media_startDate;

  static void _initializeBuilder(GMediaData_Media_startDateBuilder b) =>
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
  static Serializer<GMediaData_Media_startDate> get serializer =>
      _$gMediaDataMediaStartDateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_startDate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_startDate? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_startDate.serializer,
        json,
      );
}

abstract class GMediaData_Media_endDate
    implements
        Built<GMediaData_Media_endDate, GMediaData_Media_endDateBuilder>,
        _i4.GFuzzyDate {
  GMediaData_Media_endDate._();

  factory GMediaData_Media_endDate(
          [Function(GMediaData_Media_endDateBuilder b) updates]) =
      _$GMediaData_Media_endDate;

  static void _initializeBuilder(GMediaData_Media_endDateBuilder b) =>
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
  static Serializer<GMediaData_Media_endDate> get serializer =>
      _$gMediaDataMediaEndDateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_endDate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_endDate? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_endDate.serializer,
        json,
      );
}

abstract class GMediaData_Media_tags
    implements Built<GMediaData_Media_tags, GMediaData_Media_tagsBuilder> {
  GMediaData_Media_tags._();

  factory GMediaData_Media_tags(
          [Function(GMediaData_Media_tagsBuilder b) updates]) =
      _$GMediaData_Media_tags;

  static void _initializeBuilder(GMediaData_Media_tagsBuilder b) =>
      b..G__typename = 'MediaTag';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  int? get rank;
  bool? get isMediaSpoiler;
  static Serializer<GMediaData_Media_tags> get serializer =>
      _$gMediaDataMediaTagsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_tags.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_tags? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_tags.serializer,
        json,
      );
}

abstract class GMediaData_Media_relations
    implements
        Built<GMediaData_Media_relations, GMediaData_Media_relationsBuilder> {
  GMediaData_Media_relations._();

  factory GMediaData_Media_relations(
          [Function(GMediaData_Media_relationsBuilder b) updates]) =
      _$GMediaData_Media_relations;

  static void _initializeBuilder(GMediaData_Media_relationsBuilder b) =>
      b..G__typename = 'MediaConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaData_Media_relations_edges?>? get edges;
  static Serializer<GMediaData_Media_relations> get serializer =>
      _$gMediaDataMediaRelationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_relations.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_relations? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_relations.serializer,
        json,
      );
}

abstract class GMediaData_Media_relations_edges
    implements
        Built<GMediaData_Media_relations_edges,
            GMediaData_Media_relations_edgesBuilder> {
  GMediaData_Media_relations_edges._();

  factory GMediaData_Media_relations_edges(
          [Function(GMediaData_Media_relations_edgesBuilder b) updates]) =
      _$GMediaData_Media_relations_edges;

  static void _initializeBuilder(GMediaData_Media_relations_edgesBuilder b) =>
      b..G__typename = 'MediaEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i3.GMediaRelation? get relationType;
  GMediaData_Media_relations_edges_node? get node;
  static Serializer<GMediaData_Media_relations_edges> get serializer =>
      _$gMediaDataMediaRelationsEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_relations_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_relations_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_relations_edges.serializer,
        json,
      );
}

abstract class GMediaData_Media_relations_edges_node
    implements
        Built<GMediaData_Media_relations_edges_node,
            GMediaData_Media_relations_edges_nodeBuilder>,
        _i2.GMediaFragment {
  GMediaData_Media_relations_edges_node._();

  factory GMediaData_Media_relations_edges_node(
          [Function(GMediaData_Media_relations_edges_nodeBuilder b) updates]) =
      _$GMediaData_Media_relations_edges_node;

  static void _initializeBuilder(
          GMediaData_Media_relations_edges_nodeBuilder b) =>
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
  GMediaData_Media_relations_edges_node_title? get title;
  @override
  GMediaData_Media_relations_edges_node_coverImage? get coverImage;
  static Serializer<GMediaData_Media_relations_edges_node> get serializer =>
      _$gMediaDataMediaRelationsEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_relations_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_relations_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_relations_edges_node.serializer,
        json,
      );
}

abstract class GMediaData_Media_relations_edges_node_title
    implements
        Built<GMediaData_Media_relations_edges_node_title,
            GMediaData_Media_relations_edges_node_titleBuilder>,
        _i2.GMediaFragment_title {
  GMediaData_Media_relations_edges_node_title._();

  factory GMediaData_Media_relations_edges_node_title(
      [Function(GMediaData_Media_relations_edges_node_titleBuilder b)
          updates]) = _$GMediaData_Media_relations_edges_node_title;

  static void _initializeBuilder(
          GMediaData_Media_relations_edges_node_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GMediaData_Media_relations_edges_node_title>
      get serializer => _$gMediaDataMediaRelationsEdgesNodeTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_relations_edges_node_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_relations_edges_node_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_relations_edges_node_title.serializer,
        json,
      );
}

abstract class GMediaData_Media_relations_edges_node_coverImage
    implements
        Built<GMediaData_Media_relations_edges_node_coverImage,
            GMediaData_Media_relations_edges_node_coverImageBuilder>,
        _i2.GMediaFragment_coverImage {
  GMediaData_Media_relations_edges_node_coverImage._();

  factory GMediaData_Media_relations_edges_node_coverImage(
      [Function(GMediaData_Media_relations_edges_node_coverImageBuilder b)
          updates]) = _$GMediaData_Media_relations_edges_node_coverImage;

  static void _initializeBuilder(
          GMediaData_Media_relations_edges_node_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GMediaData_Media_relations_edges_node_coverImage>
      get serializer => _$gMediaDataMediaRelationsEdgesNodeCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_relations_edges_node_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_relations_edges_node_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_relations_edges_node_coverImage.serializer,
        json,
      );
}

abstract class GMediaData_Media_externalLinks
    implements
        Built<GMediaData_Media_externalLinks,
            GMediaData_Media_externalLinksBuilder> {
  GMediaData_Media_externalLinks._();

  factory GMediaData_Media_externalLinks(
          [Function(GMediaData_Media_externalLinksBuilder b) updates]) =
      _$GMediaData_Media_externalLinks;

  static void _initializeBuilder(GMediaData_Media_externalLinksBuilder b) =>
      b..G__typename = 'MediaExternalLink';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get site;
  String? get url;
  String? get color;
  String? get icon;
  bool? get isDisabled;
  static Serializer<GMediaData_Media_externalLinks> get serializer =>
      _$gMediaDataMediaExternalLinksSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_externalLinks.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_externalLinks? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_externalLinks.serializer,
        json,
      );
}

abstract class GMediaData_Media_trailer
    implements
        Built<GMediaData_Media_trailer, GMediaData_Media_trailerBuilder> {
  GMediaData_Media_trailer._();

  factory GMediaData_Media_trailer(
          [Function(GMediaData_Media_trailerBuilder b) updates]) =
      _$GMediaData_Media_trailer;

  static void _initializeBuilder(GMediaData_Media_trailerBuilder b) =>
      b..G__typename = 'MediaTrailer';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get site;
  String? get id;
  String? get thumbnail;
  static Serializer<GMediaData_Media_trailer> get serializer =>
      _$gMediaDataMediaTrailerSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_trailer.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_trailer? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_trailer.serializer,
        json,
      );
}

abstract class GMediaData_Media_characters
    implements
        Built<GMediaData_Media_characters, GMediaData_Media_charactersBuilder> {
  GMediaData_Media_characters._();

  factory GMediaData_Media_characters(
          [Function(GMediaData_Media_charactersBuilder b) updates]) =
      _$GMediaData_Media_characters;

  static void _initializeBuilder(GMediaData_Media_charactersBuilder b) =>
      b..G__typename = 'CharacterConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaData_Media_characters_nodes?>? get nodes;
  static Serializer<GMediaData_Media_characters> get serializer =>
      _$gMediaDataMediaCharactersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_characters.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_characters? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_characters.serializer,
        json,
      );
}

abstract class GMediaData_Media_characters_nodes
    implements
        Built<GMediaData_Media_characters_nodes,
            GMediaData_Media_characters_nodesBuilder> {
  GMediaData_Media_characters_nodes._();

  factory GMediaData_Media_characters_nodes(
          [Function(GMediaData_Media_characters_nodesBuilder b) updates]) =
      _$GMediaData_Media_characters_nodes;

  static void _initializeBuilder(GMediaData_Media_characters_nodesBuilder b) =>
      b..G__typename = 'Character';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  static Serializer<GMediaData_Media_characters_nodes> get serializer =>
      _$gMediaDataMediaCharactersNodesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_characters_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_characters_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_characters_nodes.serializer,
        json,
      );
}

abstract class GMediaData_Media_staff
    implements Built<GMediaData_Media_staff, GMediaData_Media_staffBuilder> {
  GMediaData_Media_staff._();

  factory GMediaData_Media_staff(
          [Function(GMediaData_Media_staffBuilder b) updates]) =
      _$GMediaData_Media_staff;

  static void _initializeBuilder(GMediaData_Media_staffBuilder b) =>
      b..G__typename = 'StaffConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaData_Media_staff_nodes?>? get nodes;
  static Serializer<GMediaData_Media_staff> get serializer =>
      _$gMediaDataMediaStaffSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_staff.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_staff? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_staff.serializer,
        json,
      );
}

abstract class GMediaData_Media_staff_nodes
    implements
        Built<GMediaData_Media_staff_nodes,
            GMediaData_Media_staff_nodesBuilder> {
  GMediaData_Media_staff_nodes._();

  factory GMediaData_Media_staff_nodes(
          [Function(GMediaData_Media_staff_nodesBuilder b) updates]) =
      _$GMediaData_Media_staff_nodes;

  static void _initializeBuilder(GMediaData_Media_staff_nodesBuilder b) =>
      b..G__typename = 'Staff';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  static Serializer<GMediaData_Media_staff_nodes> get serializer =>
      _$gMediaDataMediaStaffNodesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_staff_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_staff_nodes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_staff_nodes.serializer,
        json,
      );
}

abstract class GMediaData_Media_recommendations
    implements
        Built<GMediaData_Media_recommendations,
            GMediaData_Media_recommendationsBuilder> {
  GMediaData_Media_recommendations._();

  factory GMediaData_Media_recommendations(
          [Function(GMediaData_Media_recommendationsBuilder b) updates]) =
      _$GMediaData_Media_recommendations;

  static void _initializeBuilder(GMediaData_Media_recommendationsBuilder b) =>
      b..G__typename = 'RecommendationConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaData_Media_recommendations_nodes?>? get nodes;
  static Serializer<GMediaData_Media_recommendations> get serializer =>
      _$gMediaDataMediaRecommendationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_recommendations.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_recommendations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_recommendations.serializer,
        json,
      );
}

abstract class GMediaData_Media_recommendations_nodes
    implements
        Built<GMediaData_Media_recommendations_nodes,
            GMediaData_Media_recommendations_nodesBuilder> {
  GMediaData_Media_recommendations_nodes._();

  factory GMediaData_Media_recommendations_nodes(
          [Function(GMediaData_Media_recommendations_nodesBuilder b) updates]) =
      _$GMediaData_Media_recommendations_nodes;

  static void _initializeBuilder(
          GMediaData_Media_recommendations_nodesBuilder b) =>
      b..G__typename = 'Recommendation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  static Serializer<GMediaData_Media_recommendations_nodes> get serializer =>
      _$gMediaDataMediaRecommendationsNodesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_recommendations_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_recommendations_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_recommendations_nodes.serializer,
        json,
      );
}

abstract class GMediaData_Media_reviews
    implements
        Built<GMediaData_Media_reviews, GMediaData_Media_reviewsBuilder> {
  GMediaData_Media_reviews._();

  factory GMediaData_Media_reviews(
          [Function(GMediaData_Media_reviewsBuilder b) updates]) =
      _$GMediaData_Media_reviews;

  static void _initializeBuilder(GMediaData_Media_reviewsBuilder b) =>
      b..G__typename = 'ReviewConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMediaData_Media_reviews_nodes?>? get nodes;
  static Serializer<GMediaData_Media_reviews> get serializer =>
      _$gMediaDataMediaReviewsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_reviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_reviews? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_reviews.serializer,
        json,
      );
}

abstract class GMediaData_Media_reviews_nodes
    implements
        Built<GMediaData_Media_reviews_nodes,
            GMediaData_Media_reviews_nodesBuilder> {
  GMediaData_Media_reviews_nodes._();

  factory GMediaData_Media_reviews_nodes(
          [Function(GMediaData_Media_reviews_nodesBuilder b) updates]) =
      _$GMediaData_Media_reviews_nodes;

  static void _initializeBuilder(GMediaData_Media_reviews_nodesBuilder b) =>
      b..G__typename = 'Review';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  static Serializer<GMediaData_Media_reviews_nodes> get serializer =>
      _$gMediaDataMediaReviewsNodesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_reviews_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_reviews_nodes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_reviews_nodes.serializer,
        json,
      );
}

abstract class GMediaData_Media_mediaListEntry
    implements
        Built<GMediaData_Media_mediaListEntry,
            GMediaData_Media_mediaListEntryBuilder> {
  GMediaData_Media_mediaListEntry._();

  factory GMediaData_Media_mediaListEntry(
          [Function(GMediaData_Media_mediaListEntryBuilder b) updates]) =
      _$GMediaData_Media_mediaListEntry;

  static void _initializeBuilder(GMediaData_Media_mediaListEntryBuilder b) =>
      b..G__typename = 'MediaList';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i3.GMediaListStatus? get status;
  static Serializer<GMediaData_Media_mediaListEntry> get serializer =>
      _$gMediaDataMediaMediaListEntrySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaData_Media_mediaListEntry.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaData_Media_mediaListEntry? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaData_Media_mediaListEntry.serializer,
        json,
      );
}

abstract class GToggleFavoriteData
    implements Built<GToggleFavoriteData, GToggleFavoriteDataBuilder> {
  GToggleFavoriteData._();

  factory GToggleFavoriteData(
      [Function(GToggleFavoriteDataBuilder b) updates]) = _$GToggleFavoriteData;

  static void _initializeBuilder(GToggleFavoriteDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToggleFavoriteData_ToggleFavourite? get ToggleFavourite;
  static Serializer<GToggleFavoriteData> get serializer =>
      _$gToggleFavoriteDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavoriteData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavoriteData.serializer,
        json,
      );
}

abstract class GToggleFavoriteData_ToggleFavourite
    implements
        Built<GToggleFavoriteData_ToggleFavourite,
            GToggleFavoriteData_ToggleFavouriteBuilder> {
  GToggleFavoriteData_ToggleFavourite._();

  factory GToggleFavoriteData_ToggleFavourite(
          [Function(GToggleFavoriteData_ToggleFavouriteBuilder b) updates]) =
      _$GToggleFavoriteData_ToggleFavourite;

  static void _initializeBuilder(
          GToggleFavoriteData_ToggleFavouriteBuilder b) =>
      b..G__typename = 'Favourites';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToggleFavoriteData_ToggleFavourite_anime? get anime;
  GToggleFavoriteData_ToggleFavourite_manga? get manga;
  GToggleFavoriteData_ToggleFavourite_characters? get characters;
  GToggleFavoriteData_ToggleFavourite_staff? get staff;
  GToggleFavoriteData_ToggleFavourite_studios? get studios;
  static Serializer<GToggleFavoriteData_ToggleFavourite> get serializer =>
      _$gToggleFavoriteDataToggleFavouriteSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavoriteData_ToggleFavourite.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteData_ToggleFavourite? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavoriteData_ToggleFavourite.serializer,
        json,
      );
}

abstract class GToggleFavoriteData_ToggleFavourite_anime
    implements
        Built<GToggleFavoriteData_ToggleFavourite_anime,
            GToggleFavoriteData_ToggleFavourite_animeBuilder> {
  GToggleFavoriteData_ToggleFavourite_anime._();

  factory GToggleFavoriteData_ToggleFavourite_anime(
      [Function(GToggleFavoriteData_ToggleFavourite_animeBuilder b)
          updates]) = _$GToggleFavoriteData_ToggleFavourite_anime;

  static void _initializeBuilder(
          GToggleFavoriteData_ToggleFavourite_animeBuilder b) =>
      b..G__typename = 'MediaConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToggleFavoriteData_ToggleFavourite_anime_pageInfo? get pageInfo;
  static Serializer<GToggleFavoriteData_ToggleFavourite_anime> get serializer =>
      _$gToggleFavoriteDataToggleFavouriteAnimeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavoriteData_ToggleFavourite_anime.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteData_ToggleFavourite_anime? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavoriteData_ToggleFavourite_anime.serializer,
        json,
      );
}

abstract class GToggleFavoriteData_ToggleFavourite_anime_pageInfo
    implements
        Built<GToggleFavoriteData_ToggleFavourite_anime_pageInfo,
            GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder> {
  GToggleFavoriteData_ToggleFavourite_anime_pageInfo._();

  factory GToggleFavoriteData_ToggleFavourite_anime_pageInfo(
      [Function(GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder b)
          updates]) = _$GToggleFavoriteData_ToggleFavourite_anime_pageInfo;

  static void _initializeBuilder(
          GToggleFavoriteData_ToggleFavourite_anime_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  static Serializer<GToggleFavoriteData_ToggleFavourite_anime_pageInfo>
      get serializer =>
          _$gToggleFavoriteDataToggleFavouriteAnimePageInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavoriteData_ToggleFavourite_anime_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteData_ToggleFavourite_anime_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavoriteData_ToggleFavourite_anime_pageInfo.serializer,
        json,
      );
}

abstract class GToggleFavoriteData_ToggleFavourite_manga
    implements
        Built<GToggleFavoriteData_ToggleFavourite_manga,
            GToggleFavoriteData_ToggleFavourite_mangaBuilder> {
  GToggleFavoriteData_ToggleFavourite_manga._();

  factory GToggleFavoriteData_ToggleFavourite_manga(
      [Function(GToggleFavoriteData_ToggleFavourite_mangaBuilder b)
          updates]) = _$GToggleFavoriteData_ToggleFavourite_manga;

  static void _initializeBuilder(
          GToggleFavoriteData_ToggleFavourite_mangaBuilder b) =>
      b..G__typename = 'MediaConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToggleFavoriteData_ToggleFavourite_manga_pageInfo? get pageInfo;
  static Serializer<GToggleFavoriteData_ToggleFavourite_manga> get serializer =>
      _$gToggleFavoriteDataToggleFavouriteMangaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavoriteData_ToggleFavourite_manga.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteData_ToggleFavourite_manga? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavoriteData_ToggleFavourite_manga.serializer,
        json,
      );
}

abstract class GToggleFavoriteData_ToggleFavourite_manga_pageInfo
    implements
        Built<GToggleFavoriteData_ToggleFavourite_manga_pageInfo,
            GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder> {
  GToggleFavoriteData_ToggleFavourite_manga_pageInfo._();

  factory GToggleFavoriteData_ToggleFavourite_manga_pageInfo(
      [Function(GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder b)
          updates]) = _$GToggleFavoriteData_ToggleFavourite_manga_pageInfo;

  static void _initializeBuilder(
          GToggleFavoriteData_ToggleFavourite_manga_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  static Serializer<GToggleFavoriteData_ToggleFavourite_manga_pageInfo>
      get serializer =>
          _$gToggleFavoriteDataToggleFavouriteMangaPageInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavoriteData_ToggleFavourite_manga_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteData_ToggleFavourite_manga_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavoriteData_ToggleFavourite_manga_pageInfo.serializer,
        json,
      );
}

abstract class GToggleFavoriteData_ToggleFavourite_characters
    implements
        Built<GToggleFavoriteData_ToggleFavourite_characters,
            GToggleFavoriteData_ToggleFavourite_charactersBuilder> {
  GToggleFavoriteData_ToggleFavourite_characters._();

  factory GToggleFavoriteData_ToggleFavourite_characters(
      [Function(GToggleFavoriteData_ToggleFavourite_charactersBuilder b)
          updates]) = _$GToggleFavoriteData_ToggleFavourite_characters;

  static void _initializeBuilder(
          GToggleFavoriteData_ToggleFavourite_charactersBuilder b) =>
      b..G__typename = 'CharacterConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToggleFavoriteData_ToggleFavourite_characters_pageInfo? get pageInfo;
  static Serializer<GToggleFavoriteData_ToggleFavourite_characters>
      get serializer =>
          _$gToggleFavoriteDataToggleFavouriteCharactersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavoriteData_ToggleFavourite_characters.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteData_ToggleFavourite_characters? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavoriteData_ToggleFavourite_characters.serializer,
        json,
      );
}

abstract class GToggleFavoriteData_ToggleFavourite_characters_pageInfo
    implements
        Built<GToggleFavoriteData_ToggleFavourite_characters_pageInfo,
            GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder> {
  GToggleFavoriteData_ToggleFavourite_characters_pageInfo._();

  factory GToggleFavoriteData_ToggleFavourite_characters_pageInfo(
      [Function(
              GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder b)
          updates]) = _$GToggleFavoriteData_ToggleFavourite_characters_pageInfo;

  static void _initializeBuilder(
          GToggleFavoriteData_ToggleFavourite_characters_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  static Serializer<GToggleFavoriteData_ToggleFavourite_characters_pageInfo>
      get serializer =>
          _$gToggleFavoriteDataToggleFavouriteCharactersPageInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavoriteData_ToggleFavourite_characters_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteData_ToggleFavourite_characters_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavoriteData_ToggleFavourite_characters_pageInfo.serializer,
        json,
      );
}

abstract class GToggleFavoriteData_ToggleFavourite_staff
    implements
        Built<GToggleFavoriteData_ToggleFavourite_staff,
            GToggleFavoriteData_ToggleFavourite_staffBuilder> {
  GToggleFavoriteData_ToggleFavourite_staff._();

  factory GToggleFavoriteData_ToggleFavourite_staff(
      [Function(GToggleFavoriteData_ToggleFavourite_staffBuilder b)
          updates]) = _$GToggleFavoriteData_ToggleFavourite_staff;

  static void _initializeBuilder(
          GToggleFavoriteData_ToggleFavourite_staffBuilder b) =>
      b..G__typename = 'StaffConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToggleFavoriteData_ToggleFavourite_staff_pageInfo? get pageInfo;
  static Serializer<GToggleFavoriteData_ToggleFavourite_staff> get serializer =>
      _$gToggleFavoriteDataToggleFavouriteStaffSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavoriteData_ToggleFavourite_staff.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteData_ToggleFavourite_staff? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavoriteData_ToggleFavourite_staff.serializer,
        json,
      );
}

abstract class GToggleFavoriteData_ToggleFavourite_staff_pageInfo
    implements
        Built<GToggleFavoriteData_ToggleFavourite_staff_pageInfo,
            GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder> {
  GToggleFavoriteData_ToggleFavourite_staff_pageInfo._();

  factory GToggleFavoriteData_ToggleFavourite_staff_pageInfo(
      [Function(GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder b)
          updates]) = _$GToggleFavoriteData_ToggleFavourite_staff_pageInfo;

  static void _initializeBuilder(
          GToggleFavoriteData_ToggleFavourite_staff_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  static Serializer<GToggleFavoriteData_ToggleFavourite_staff_pageInfo>
      get serializer =>
          _$gToggleFavoriteDataToggleFavouriteStaffPageInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavoriteData_ToggleFavourite_staff_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteData_ToggleFavourite_staff_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavoriteData_ToggleFavourite_staff_pageInfo.serializer,
        json,
      );
}

abstract class GToggleFavoriteData_ToggleFavourite_studios
    implements
        Built<GToggleFavoriteData_ToggleFavourite_studios,
            GToggleFavoriteData_ToggleFavourite_studiosBuilder> {
  GToggleFavoriteData_ToggleFavourite_studios._();

  factory GToggleFavoriteData_ToggleFavourite_studios(
      [Function(GToggleFavoriteData_ToggleFavourite_studiosBuilder b)
          updates]) = _$GToggleFavoriteData_ToggleFavourite_studios;

  static void _initializeBuilder(
          GToggleFavoriteData_ToggleFavourite_studiosBuilder b) =>
      b..G__typename = 'StudioConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToggleFavoriteData_ToggleFavourite_studios_pageInfo? get pageInfo;
  static Serializer<GToggleFavoriteData_ToggleFavourite_studios>
      get serializer => _$gToggleFavoriteDataToggleFavouriteStudiosSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavoriteData_ToggleFavourite_studios.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteData_ToggleFavourite_studios? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavoriteData_ToggleFavourite_studios.serializer,
        json,
      );
}

abstract class GToggleFavoriteData_ToggleFavourite_studios_pageInfo
    implements
        Built<GToggleFavoriteData_ToggleFavourite_studios_pageInfo,
            GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder> {
  GToggleFavoriteData_ToggleFavourite_studios_pageInfo._();

  factory GToggleFavoriteData_ToggleFavourite_studios_pageInfo(
      [Function(GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder b)
          updates]) = _$GToggleFavoriteData_ToggleFavourite_studios_pageInfo;

  static void _initializeBuilder(
          GToggleFavoriteData_ToggleFavourite_studios_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  static Serializer<GToggleFavoriteData_ToggleFavourite_studios_pageInfo>
      get serializer =>
          _$gToggleFavoriteDataToggleFavouriteStudiosPageInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavoriteData_ToggleFavourite_studios_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteData_ToggleFavourite_studios_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavoriteData_ToggleFavourite_studios_pageInfo.serializer,
        json,
      );
}
