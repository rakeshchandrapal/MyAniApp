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

abstract class GReviewsData
    implements Built<GReviewsData, GReviewsDataBuilder> {
  GReviewsData._();

  factory GReviewsData([void Function(GReviewsDataBuilder b) updates]) =
      _$GReviewsData;

  static void _initializeBuilder(GReviewsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GReviewsData_Page? get Page;
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

abstract class GReviewsData_Page
    implements Built<GReviewsData_Page, GReviewsData_PageBuilder> {
  GReviewsData_Page._();

  factory GReviewsData_Page(
          [void Function(GReviewsData_PageBuilder b) updates]) =
      _$GReviewsData_Page;

  static void _initializeBuilder(GReviewsData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GReviewsData_Page_pageInfo? get pageInfo;
  BuiltList<GReviewsData_Page_reviews?>? get reviews;
  static Serializer<GReviewsData_Page> get serializer =>
      _$gReviewsDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData_Page.serializer,
        json,
      );
}

abstract class GReviewsData_Page_pageInfo
    implements
        Built<GReviewsData_Page_pageInfo, GReviewsData_Page_pageInfoBuilder>,
        _i2.GPageInfo {
  GReviewsData_Page_pageInfo._();

  factory GReviewsData_Page_pageInfo(
          [void Function(GReviewsData_Page_pageInfoBuilder b) updates]) =
      _$GReviewsData_Page_pageInfo;

  static void _initializeBuilder(GReviewsData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GReviewsData_Page_pageInfo> get serializer =>
      _$gReviewsDataPagePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData_Page_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GReviewsData_Page_reviews
    implements
        Built<GReviewsData_Page_reviews, GReviewsData_Page_reviewsBuilder>,
        _i3.GReviewFragment {
  GReviewsData_Page_reviews._();

  factory GReviewsData_Page_reviews(
          [void Function(GReviewsData_Page_reviewsBuilder b) updates]) =
      _$GReviewsData_Page_reviews;

  static void _initializeBuilder(GReviewsData_Page_reviewsBuilder b) =>
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
  GReviewsData_Page_reviews_media? get media;
  @override
  GReviewsData_Page_reviews_user? get user;
  static Serializer<GReviewsData_Page_reviews> get serializer =>
      _$gReviewsDataPageReviewsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData_Page_reviews.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData_Page_reviews? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData_Page_reviews.serializer,
        json,
      );
}

abstract class GReviewsData_Page_reviews_media
    implements
        Built<GReviewsData_Page_reviews_media,
            GReviewsData_Page_reviews_mediaBuilder>,
        _i3.GReviewFragment_media {
  GReviewsData_Page_reviews_media._();

  factory GReviewsData_Page_reviews_media(
          [void Function(GReviewsData_Page_reviews_mediaBuilder b) updates]) =
      _$GReviewsData_Page_reviews_media;

  static void _initializeBuilder(GReviewsData_Page_reviews_mediaBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GReviewsData_Page_reviews_media_title? get title;
  @override
  _i4.GMediaType? get type;
  @override
  String? get bannerImage;
  static Serializer<GReviewsData_Page_reviews_media> get serializer =>
      _$gReviewsDataPageReviewsMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData_Page_reviews_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData_Page_reviews_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData_Page_reviews_media.serializer,
        json,
      );
}

abstract class GReviewsData_Page_reviews_media_title
    implements
        Built<GReviewsData_Page_reviews_media_title,
            GReviewsData_Page_reviews_media_titleBuilder>,
        _i3.GReviewFragment_media_title {
  GReviewsData_Page_reviews_media_title._();

  factory GReviewsData_Page_reviews_media_title(
      [void Function(GReviewsData_Page_reviews_media_titleBuilder b)
          updates]) = _$GReviewsData_Page_reviews_media_title;

  static void _initializeBuilder(
          GReviewsData_Page_reviews_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GReviewsData_Page_reviews_media_title> get serializer =>
      _$gReviewsDataPageReviewsMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData_Page_reviews_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData_Page_reviews_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData_Page_reviews_media_title.serializer,
        json,
      );
}

abstract class GReviewsData_Page_reviews_user
    implements
        Built<GReviewsData_Page_reviews_user,
            GReviewsData_Page_reviews_userBuilder>,
        _i3.GReviewFragment_user,
        _i5.GUserFragment {
  GReviewsData_Page_reviews_user._();

  factory GReviewsData_Page_reviews_user(
          [void Function(GReviewsData_Page_reviews_userBuilder b) updates]) =
      _$GReviewsData_Page_reviews_user;

  static void _initializeBuilder(GReviewsData_Page_reviews_userBuilder b) =>
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
  GReviewsData_Page_reviews_user_avatar? get avatar;
  static Serializer<GReviewsData_Page_reviews_user> get serializer =>
      _$gReviewsDataPageReviewsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData_Page_reviews_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData_Page_reviews_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData_Page_reviews_user.serializer,
        json,
      );
}

abstract class GReviewsData_Page_reviews_user_avatar
    implements
        Built<GReviewsData_Page_reviews_user_avatar,
            GReviewsData_Page_reviews_user_avatarBuilder>,
        _i3.GReviewFragment_user_avatar,
        _i5.GUserFragment_avatar {
  GReviewsData_Page_reviews_user_avatar._();

  factory GReviewsData_Page_reviews_user_avatar(
      [void Function(GReviewsData_Page_reviews_user_avatarBuilder b)
          updates]) = _$GReviewsData_Page_reviews_user_avatar;

  static void _initializeBuilder(
          GReviewsData_Page_reviews_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GReviewsData_Page_reviews_user_avatar> get serializer =>
      _$gReviewsDataPageReviewsUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewsData_Page_reviews_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewsData_Page_reviews_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewsData_Page_reviews_user_avatar.serializer,
        json,
      );
}
