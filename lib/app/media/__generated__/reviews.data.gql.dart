// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/review.data.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i5;

part 'reviews.data.gql.g.dart';

abstract class GMediaReviewsData
    implements Built<GMediaReviewsData, GMediaReviewsDataBuilder> {
  GMediaReviewsData._();

  factory GMediaReviewsData(
          [void Function(GMediaReviewsDataBuilder b) updates]) =
      _$GMediaReviewsData;

  static void _initializeBuilder(GMediaReviewsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaReviewsData_Media? get Media;
  static Serializer<GMediaReviewsData> get serializer =>
      _$gMediaReviewsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaReviewsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaReviewsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaReviewsData.serializer,
        json,
      );
}

abstract class GMediaReviewsData_Media
    implements Built<GMediaReviewsData_Media, GMediaReviewsData_MediaBuilder> {
  GMediaReviewsData_Media._();

  factory GMediaReviewsData_Media(
          [void Function(GMediaReviewsData_MediaBuilder b) updates]) =
      _$GMediaReviewsData_Media;

  static void _initializeBuilder(GMediaReviewsData_MediaBuilder b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GMediaReviewsData_Media_reviews? get reviews;
  static Serializer<GMediaReviewsData_Media> get serializer =>
      _$gMediaReviewsDataMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaReviewsData_Media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaReviewsData_Media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaReviewsData_Media.serializer,
        json,
      );
}

abstract class GMediaReviewsData_Media_reviews
    implements
        Built<GMediaReviewsData_Media_reviews,
            GMediaReviewsData_Media_reviewsBuilder> {
  GMediaReviewsData_Media_reviews._();

  factory GMediaReviewsData_Media_reviews(
          [void Function(GMediaReviewsData_Media_reviewsBuilder b) updates]) =
      _$GMediaReviewsData_Media_reviews;

  static void _initializeBuilder(GMediaReviewsData_Media_reviewsBuilder b) =>
      b..G__typename = 'ReviewConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaReviewsData_Media_reviews_pageInfo? get pageInfo;
  BuiltList<GMediaReviewsData_Media_reviews_nodes?>? get nodes;
  static Serializer<GMediaReviewsData_Media_reviews> get serializer =>
      _$gMediaReviewsDataMediaReviewsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaReviewsData_Media_reviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaReviewsData_Media_reviews? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaReviewsData_Media_reviews.serializer,
        json,
      );
}

abstract class GMediaReviewsData_Media_reviews_pageInfo
    implements
        Built<GMediaReviewsData_Media_reviews_pageInfo,
            GMediaReviewsData_Media_reviews_pageInfoBuilder>,
        _i2.GPageInfo {
  GMediaReviewsData_Media_reviews_pageInfo._();

  factory GMediaReviewsData_Media_reviews_pageInfo(
      [void Function(GMediaReviewsData_Media_reviews_pageInfoBuilder b)
          updates]) = _$GMediaReviewsData_Media_reviews_pageInfo;

  static void _initializeBuilder(
          GMediaReviewsData_Media_reviews_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GMediaReviewsData_Media_reviews_pageInfo> get serializer =>
      _$gMediaReviewsDataMediaReviewsPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaReviewsData_Media_reviews_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaReviewsData_Media_reviews_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaReviewsData_Media_reviews_pageInfo.serializer,
        json,
      );
}

abstract class GMediaReviewsData_Media_reviews_nodes
    implements
        Built<GMediaReviewsData_Media_reviews_nodes,
            GMediaReviewsData_Media_reviews_nodesBuilder>,
        _i3.GReviewFragment {
  GMediaReviewsData_Media_reviews_nodes._();

  factory GMediaReviewsData_Media_reviews_nodes(
      [void Function(GMediaReviewsData_Media_reviews_nodesBuilder b)
          updates]) = _$GMediaReviewsData_Media_reviews_nodes;

  static void _initializeBuilder(
          GMediaReviewsData_Media_reviews_nodesBuilder b) =>
      b..G__typename = 'Review';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  int? get rating;
  @override
  int? get ratingAmount;
  @override
  String? get summary;
  @override
  GMediaReviewsData_Media_reviews_nodes_media? get media;
  @override
  GMediaReviewsData_Media_reviews_nodes_user? get user;
  int? get score;
  _i4.GReviewRating? get userRating;
  static Serializer<GMediaReviewsData_Media_reviews_nodes> get serializer =>
      _$gMediaReviewsDataMediaReviewsNodesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaReviewsData_Media_reviews_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaReviewsData_Media_reviews_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaReviewsData_Media_reviews_nodes.serializer,
        json,
      );
}

abstract class GMediaReviewsData_Media_reviews_nodes_media
    implements
        Built<GMediaReviewsData_Media_reviews_nodes_media,
            GMediaReviewsData_Media_reviews_nodes_mediaBuilder>,
        _i3.GReviewFragment_media {
  GMediaReviewsData_Media_reviews_nodes_media._();

  factory GMediaReviewsData_Media_reviews_nodes_media(
      [void Function(GMediaReviewsData_Media_reviews_nodes_mediaBuilder b)
          updates]) = _$GMediaReviewsData_Media_reviews_nodes_media;

  static void _initializeBuilder(
          GMediaReviewsData_Media_reviews_nodes_mediaBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GMediaReviewsData_Media_reviews_nodes_media_title? get title;
  @override
  _i4.GMediaType? get type;
  @override
  String? get bannerImage;
  static Serializer<GMediaReviewsData_Media_reviews_nodes_media>
      get serializer => _$gMediaReviewsDataMediaReviewsNodesMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaReviewsData_Media_reviews_nodes_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaReviewsData_Media_reviews_nodes_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaReviewsData_Media_reviews_nodes_media.serializer,
        json,
      );
}

abstract class GMediaReviewsData_Media_reviews_nodes_media_title
    implements
        Built<GMediaReviewsData_Media_reviews_nodes_media_title,
            GMediaReviewsData_Media_reviews_nodes_media_titleBuilder>,
        _i3.GReviewFragment_media_title {
  GMediaReviewsData_Media_reviews_nodes_media_title._();

  factory GMediaReviewsData_Media_reviews_nodes_media_title(
      [void Function(GMediaReviewsData_Media_reviews_nodes_media_titleBuilder b)
          updates]) = _$GMediaReviewsData_Media_reviews_nodes_media_title;

  static void _initializeBuilder(
          GMediaReviewsData_Media_reviews_nodes_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GMediaReviewsData_Media_reviews_nodes_media_title>
      get serializer =>
          _$gMediaReviewsDataMediaReviewsNodesMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaReviewsData_Media_reviews_nodes_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaReviewsData_Media_reviews_nodes_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaReviewsData_Media_reviews_nodes_media_title.serializer,
        json,
      );
}

abstract class GMediaReviewsData_Media_reviews_nodes_user
    implements
        Built<GMediaReviewsData_Media_reviews_nodes_user,
            GMediaReviewsData_Media_reviews_nodes_userBuilder>,
        _i3.GReviewFragment_user,
        _i5.GUserFragment {
  GMediaReviewsData_Media_reviews_nodes_user._();

  factory GMediaReviewsData_Media_reviews_nodes_user(
      [void Function(GMediaReviewsData_Media_reviews_nodes_userBuilder b)
          updates]) = _$GMediaReviewsData_Media_reviews_nodes_user;

  static void _initializeBuilder(
          GMediaReviewsData_Media_reviews_nodes_userBuilder b) =>
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
  BuiltList<_i4.GModRole?>? get moderatorRoles;
  @override
  GMediaReviewsData_Media_reviews_nodes_user_avatar? get avatar;
  static Serializer<GMediaReviewsData_Media_reviews_nodes_user>
      get serializer => _$gMediaReviewsDataMediaReviewsNodesUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaReviewsData_Media_reviews_nodes_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaReviewsData_Media_reviews_nodes_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaReviewsData_Media_reviews_nodes_user.serializer,
        json,
      );
}

abstract class GMediaReviewsData_Media_reviews_nodes_user_avatar
    implements
        Built<GMediaReviewsData_Media_reviews_nodes_user_avatar,
            GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder>,
        _i3.GReviewFragment_user_avatar,
        _i5.GUserFragment_avatar {
  GMediaReviewsData_Media_reviews_nodes_user_avatar._();

  factory GMediaReviewsData_Media_reviews_nodes_user_avatar(
      [void Function(GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder b)
          updates]) = _$GMediaReviewsData_Media_reviews_nodes_user_avatar;

  static void _initializeBuilder(
          GMediaReviewsData_Media_reviews_nodes_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GMediaReviewsData_Media_reviews_nodes_user_avatar>
      get serializer =>
          _$gMediaReviewsDataMediaReviewsNodesUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaReviewsData_Media_reviews_nodes_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaReviewsData_Media_reviews_nodes_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaReviewsData_Media_reviews_nodes_user_avatar.serializer,
        json,
      );
}
