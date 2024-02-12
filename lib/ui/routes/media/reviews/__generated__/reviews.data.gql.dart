// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i2;

part 'reviews.data.gql.g.dart';

abstract class GReviewsData
    implements Built<GReviewsData, GReviewsDataBuilder> {
  GReviewsData._();

  factory GReviewsData([Function(GReviewsDataBuilder b) updates]) =
      _$GReviewsData;

  static void _initializeBuilder(GReviewsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GReviewsData_Media? get Media;
  static Serializer<GReviewsData> get serializer => _$gReviewsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData.serializer,
        json,
      );
}

abstract class GReviewsData_Media
    implements Built<GReviewsData_Media, GReviewsData_MediaBuilder> {
  GReviewsData_Media._();

  factory GReviewsData_Media([Function(GReviewsData_MediaBuilder b) updates]) =
      _$GReviewsData_Media;

  static void _initializeBuilder(GReviewsData_MediaBuilder b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GReviewsData_Media_reviews? get reviews;
  static Serializer<GReviewsData_Media> get serializer =>
      _$gReviewsDataMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData_Media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData_Media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData_Media.serializer,
        json,
      );
}

abstract class GReviewsData_Media_reviews
    implements
        Built<GReviewsData_Media_reviews, GReviewsData_Media_reviewsBuilder> {
  GReviewsData_Media_reviews._();

  factory GReviewsData_Media_reviews(
          [Function(GReviewsData_Media_reviewsBuilder b) updates]) =
      _$GReviewsData_Media_reviews;

  static void _initializeBuilder(GReviewsData_Media_reviewsBuilder b) =>
      b..G__typename = 'ReviewConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GReviewsData_Media_reviews_pageInfo? get pageInfo;
  BuiltList<GReviewsData_Media_reviews_nodes?>? get nodes;
  static Serializer<GReviewsData_Media_reviews> get serializer =>
      _$gReviewsDataMediaReviewsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData_Media_reviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData_Media_reviews? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData_Media_reviews.serializer,
        json,
      );
}

abstract class GReviewsData_Media_reviews_pageInfo
    implements
        Built<GReviewsData_Media_reviews_pageInfo,
            GReviewsData_Media_reviews_pageInfoBuilder>,
        _i2.GPageInfo {
  GReviewsData_Media_reviews_pageInfo._();

  factory GReviewsData_Media_reviews_pageInfo(
          [Function(GReviewsData_Media_reviews_pageInfoBuilder b) updates]) =
      _$GReviewsData_Media_reviews_pageInfo;

  static void _initializeBuilder(
          GReviewsData_Media_reviews_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GReviewsData_Media_reviews_pageInfo> get serializer =>
      _$gReviewsDataMediaReviewsPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData_Media_reviews_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData_Media_reviews_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData_Media_reviews_pageInfo.serializer,
        json,
      );
}

abstract class GReviewsData_Media_reviews_nodes
    implements
        Built<GReviewsData_Media_reviews_nodes,
            GReviewsData_Media_reviews_nodesBuilder> {
  GReviewsData_Media_reviews_nodes._();

  factory GReviewsData_Media_reviews_nodes(
          [Function(GReviewsData_Media_reviews_nodesBuilder b) updates]) =
      _$GReviewsData_Media_reviews_nodes;

  static void _initializeBuilder(GReviewsData_Media_reviews_nodesBuilder b) =>
      b..G__typename = 'Review';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String? get summary;
  int? get rating;
  int? get score;
  GReviewsData_Media_reviews_nodes_user? get user;
  static Serializer<GReviewsData_Media_reviews_nodes> get serializer =>
      _$gReviewsDataMediaReviewsNodesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData_Media_reviews_nodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData_Media_reviews_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData_Media_reviews_nodes.serializer,
        json,
      );
}

abstract class GReviewsData_Media_reviews_nodes_user
    implements
        Built<GReviewsData_Media_reviews_nodes_user,
            GReviewsData_Media_reviews_nodes_userBuilder> {
  GReviewsData_Media_reviews_nodes_user._();

  factory GReviewsData_Media_reviews_nodes_user(
          [Function(GReviewsData_Media_reviews_nodes_userBuilder b) updates]) =
      _$GReviewsData_Media_reviews_nodes_user;

  static void _initializeBuilder(
          GReviewsData_Media_reviews_nodes_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get name;
  GReviewsData_Media_reviews_nodes_user_avatar? get avatar;
  static Serializer<GReviewsData_Media_reviews_nodes_user> get serializer =>
      _$gReviewsDataMediaReviewsNodesUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData_Media_reviews_nodes_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData_Media_reviews_nodes_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData_Media_reviews_nodes_user.serializer,
        json,
      );
}

abstract class GReviewsData_Media_reviews_nodes_user_avatar
    implements
        Built<GReviewsData_Media_reviews_nodes_user_avatar,
            GReviewsData_Media_reviews_nodes_user_avatarBuilder> {
  GReviewsData_Media_reviews_nodes_user_avatar._();

  factory GReviewsData_Media_reviews_nodes_user_avatar(
      [Function(GReviewsData_Media_reviews_nodes_user_avatarBuilder b)
          updates]) = _$GReviewsData_Media_reviews_nodes_user_avatar;

  static void _initializeBuilder(
          GReviewsData_Media_reviews_nodes_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<GReviewsData_Media_reviews_nodes_user_avatar>
      get serializer => _$gReviewsDataMediaReviewsNodesUserAvatarSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData_Media_reviews_nodes_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData_Media_reviews_nodes_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData_Media_reviews_nodes_user_avatar.serializer,
        json,
      );
}
