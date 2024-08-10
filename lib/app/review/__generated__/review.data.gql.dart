// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/review.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i4;

part 'review.data.gql.g.dart';

abstract class GReviewData implements Built<GReviewData, GReviewDataBuilder> {
  GReviewData._();

  factory GReviewData([void Function(GReviewDataBuilder b) updates]) =
      _$GReviewData;

  static void _initializeBuilder(GReviewDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GReviewData_Review? get Review;
  static Serializer<GReviewData> get serializer => _$gReviewDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewData.serializer,
        json,
      );
}

abstract class GReviewData_Review
    implements
        Built<GReviewData_Review, GReviewData_ReviewBuilder>,
        _i2.GReviewFragment {
  GReviewData_Review._();

  factory GReviewData_Review(
          [void Function(GReviewData_ReviewBuilder b) updates]) =
      _$GReviewData_Review;

  static void _initializeBuilder(GReviewData_ReviewBuilder b) =>
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
  GReviewData_Review_media? get media;
  @override
  GReviewData_Review_user? get user;
  String? get body;
  _i3.GReviewRating? get userRating;
  int? get score;
  int get createdAt;
  static Serializer<GReviewData_Review> get serializer =>
      _$gReviewDataReviewSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewData_Review.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewData_Review? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewData_Review.serializer,
        json,
      );
}

abstract class GReviewData_Review_media
    implements
        Built<GReviewData_Review_media, GReviewData_Review_mediaBuilder>,
        _i2.GReviewFragment_media {
  GReviewData_Review_media._();

  factory GReviewData_Review_media(
          [void Function(GReviewData_Review_mediaBuilder b) updates]) =
      _$GReviewData_Review_media;

  static void _initializeBuilder(GReviewData_Review_mediaBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GReviewData_Review_media_title? get title;
  @override
  _i3.GMediaType? get type;
  @override
  String? get bannerImage;
  static Serializer<GReviewData_Review_media> get serializer =>
      _$gReviewDataReviewMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewData_Review_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewData_Review_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewData_Review_media.serializer,
        json,
      );
}

abstract class GReviewData_Review_media_title
    implements
        Built<GReviewData_Review_media_title,
            GReviewData_Review_media_titleBuilder>,
        _i2.GReviewFragment_media_title {
  GReviewData_Review_media_title._();

  factory GReviewData_Review_media_title(
          [void Function(GReviewData_Review_media_titleBuilder b) updates]) =
      _$GReviewData_Review_media_title;

  static void _initializeBuilder(GReviewData_Review_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GReviewData_Review_media_title> get serializer =>
      _$gReviewDataReviewMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewData_Review_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewData_Review_media_title? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewData_Review_media_title.serializer,
        json,
      );
}

abstract class GReviewData_Review_user
    implements
        Built<GReviewData_Review_user, GReviewData_Review_userBuilder>,
        _i2.GReviewFragment_user,
        _i4.GUserFragment {
  GReviewData_Review_user._();

  factory GReviewData_Review_user(
          [void Function(GReviewData_Review_userBuilder b) updates]) =
      _$GReviewData_Review_user;

  static void _initializeBuilder(GReviewData_Review_userBuilder b) =>
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
  GReviewData_Review_user_avatar? get avatar;
  static Serializer<GReviewData_Review_user> get serializer =>
      _$gReviewDataReviewUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewData_Review_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewData_Review_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewData_Review_user.serializer,
        json,
      );
}

abstract class GReviewData_Review_user_avatar
    implements
        Built<GReviewData_Review_user_avatar,
            GReviewData_Review_user_avatarBuilder>,
        _i2.GReviewFragment_user_avatar,
        _i4.GUserFragment_avatar {
  GReviewData_Review_user_avatar._();

  factory GReviewData_Review_user_avatar(
          [void Function(GReviewData_Review_user_avatarBuilder b) updates]) =
      _$GReviewData_Review_user_avatar;

  static void _initializeBuilder(GReviewData_Review_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GReviewData_Review_user_avatar> get serializer =>
      _$gReviewDataReviewUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewData_Review_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewData_Review_user_avatar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewData_Review_user_avatar.serializer,
        json,
      );
}

abstract class GRateReviewData
    implements Built<GRateReviewData, GRateReviewDataBuilder> {
  GRateReviewData._();

  factory GRateReviewData([void Function(GRateReviewDataBuilder b) updates]) =
      _$GRateReviewData;

  static void _initializeBuilder(GRateReviewDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRateReviewData_RateReview? get RateReview;
  static Serializer<GRateReviewData> get serializer =>
      _$gRateReviewDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRateReviewData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRateReviewData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRateReviewData.serializer,
        json,
      );
}

abstract class GRateReviewData_RateReview
    implements
        Built<GRateReviewData_RateReview, GRateReviewData_RateReviewBuilder> {
  GRateReviewData_RateReview._();

  factory GRateReviewData_RateReview(
          [void Function(GRateReviewData_RateReviewBuilder b) updates]) =
      _$GRateReviewData_RateReview;

  static void _initializeBuilder(GRateReviewData_RateReviewBuilder b) =>
      b..G__typename = 'Review';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get rating;
  int? get ratingAmount;
  _i3.GReviewRating? get userRating;
  static Serializer<GRateReviewData_RateReview> get serializer =>
      _$gRateReviewDataRateReviewSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRateReviewData_RateReview.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRateReviewData_RateReview? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRateReviewData_RateReview.serializer,
        json,
      );
}
