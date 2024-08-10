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

abstract class GUserReviewsData
    implements Built<GUserReviewsData, GUserReviewsDataBuilder> {
  GUserReviewsData._();

  factory GUserReviewsData([void Function(GUserReviewsDataBuilder b) updates]) =
      _$GUserReviewsData;

  static void _initializeBuilder(GUserReviewsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserReviewsData_Page? get Page;
  static Serializer<GUserReviewsData> get serializer =>
      _$gUserReviewsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserReviewsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserReviewsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserReviewsData.serializer,
        json,
      );
}

abstract class GUserReviewsData_Page
    implements Built<GUserReviewsData_Page, GUserReviewsData_PageBuilder> {
  GUserReviewsData_Page._();

  factory GUserReviewsData_Page(
          [void Function(GUserReviewsData_PageBuilder b) updates]) =
      _$GUserReviewsData_Page;

  static void _initializeBuilder(GUserReviewsData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserReviewsData_Page_pageInfo? get pageInfo;
  BuiltList<GUserReviewsData_Page_reviews?>? get reviews;
  static Serializer<GUserReviewsData_Page> get serializer =>
      _$gUserReviewsDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserReviewsData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserReviewsData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserReviewsData_Page.serializer,
        json,
      );
}

abstract class GUserReviewsData_Page_pageInfo
    implements
        Built<GUserReviewsData_Page_pageInfo,
            GUserReviewsData_Page_pageInfoBuilder>,
        _i2.GPageInfo {
  GUserReviewsData_Page_pageInfo._();

  factory GUserReviewsData_Page_pageInfo(
          [void Function(GUserReviewsData_Page_pageInfoBuilder b) updates]) =
      _$GUserReviewsData_Page_pageInfo;

  static void _initializeBuilder(GUserReviewsData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GUserReviewsData_Page_pageInfo> get serializer =>
      _$gUserReviewsDataPagePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserReviewsData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserReviewsData_Page_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserReviewsData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GUserReviewsData_Page_reviews
    implements
        Built<GUserReviewsData_Page_reviews,
            GUserReviewsData_Page_reviewsBuilder>,
        _i3.GReviewFragment {
  GUserReviewsData_Page_reviews._();

  factory GUserReviewsData_Page_reviews(
          [void Function(GUserReviewsData_Page_reviewsBuilder b) updates]) =
      _$GUserReviewsData_Page_reviews;

  static void _initializeBuilder(GUserReviewsData_Page_reviewsBuilder b) =>
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
  GUserReviewsData_Page_reviews_media? get media;
  @override
  GUserReviewsData_Page_reviews_user? get user;
  static Serializer<GUserReviewsData_Page_reviews> get serializer =>
      _$gUserReviewsDataPageReviewsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserReviewsData_Page_reviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserReviewsData_Page_reviews? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserReviewsData_Page_reviews.serializer,
        json,
      );
}

abstract class GUserReviewsData_Page_reviews_media
    implements
        Built<GUserReviewsData_Page_reviews_media,
            GUserReviewsData_Page_reviews_mediaBuilder>,
        _i3.GReviewFragment_media {
  GUserReviewsData_Page_reviews_media._();

  factory GUserReviewsData_Page_reviews_media(
      [void Function(GUserReviewsData_Page_reviews_mediaBuilder b)
          updates]) = _$GUserReviewsData_Page_reviews_media;

  static void _initializeBuilder(
          GUserReviewsData_Page_reviews_mediaBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GUserReviewsData_Page_reviews_media_title? get title;
  @override
  _i4.GMediaType? get type;
  @override
  String? get bannerImage;
  static Serializer<GUserReviewsData_Page_reviews_media> get serializer =>
      _$gUserReviewsDataPageReviewsMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserReviewsData_Page_reviews_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserReviewsData_Page_reviews_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserReviewsData_Page_reviews_media.serializer,
        json,
      );
}

abstract class GUserReviewsData_Page_reviews_media_title
    implements
        Built<GUserReviewsData_Page_reviews_media_title,
            GUserReviewsData_Page_reviews_media_titleBuilder>,
        _i3.GReviewFragment_media_title {
  GUserReviewsData_Page_reviews_media_title._();

  factory GUserReviewsData_Page_reviews_media_title(
      [void Function(GUserReviewsData_Page_reviews_media_titleBuilder b)
          updates]) = _$GUserReviewsData_Page_reviews_media_title;

  static void _initializeBuilder(
          GUserReviewsData_Page_reviews_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GUserReviewsData_Page_reviews_media_title> get serializer =>
      _$gUserReviewsDataPageReviewsMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserReviewsData_Page_reviews_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserReviewsData_Page_reviews_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserReviewsData_Page_reviews_media_title.serializer,
        json,
      );
}

abstract class GUserReviewsData_Page_reviews_user
    implements
        Built<GUserReviewsData_Page_reviews_user,
            GUserReviewsData_Page_reviews_userBuilder>,
        _i3.GReviewFragment_user,
        _i5.GUserFragment {
  GUserReviewsData_Page_reviews_user._();

  factory GUserReviewsData_Page_reviews_user(
      [void Function(GUserReviewsData_Page_reviews_userBuilder b)
          updates]) = _$GUserReviewsData_Page_reviews_user;

  static void _initializeBuilder(GUserReviewsData_Page_reviews_userBuilder b) =>
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
  GUserReviewsData_Page_reviews_user_avatar? get avatar;
  static Serializer<GUserReviewsData_Page_reviews_user> get serializer =>
      _$gUserReviewsDataPageReviewsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserReviewsData_Page_reviews_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserReviewsData_Page_reviews_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserReviewsData_Page_reviews_user.serializer,
        json,
      );
}

abstract class GUserReviewsData_Page_reviews_user_avatar
    implements
        Built<GUserReviewsData_Page_reviews_user_avatar,
            GUserReviewsData_Page_reviews_user_avatarBuilder>,
        _i3.GReviewFragment_user_avatar,
        _i5.GUserFragment_avatar {
  GUserReviewsData_Page_reviews_user_avatar._();

  factory GUserReviewsData_Page_reviews_user_avatar(
      [void Function(GUserReviewsData_Page_reviews_user_avatarBuilder b)
          updates]) = _$GUserReviewsData_Page_reviews_user_avatar;

  static void _initializeBuilder(
          GUserReviewsData_Page_reviews_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GUserReviewsData_Page_reviews_user_avatar> get serializer =>
      _$gUserReviewsDataPageReviewsUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserReviewsData_Page_reviews_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserReviewsData_Page_reviews_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserReviewsData_Page_reviews_user_avatar.serializer,
        json,
      );
}
