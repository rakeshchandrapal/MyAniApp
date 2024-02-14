// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i2;

part 'review.data.gql.g.dart';

abstract class GReview {
  String get G__typename;
  int get id;
  int? get rating;
  int? get ratingAmount;
  String? get summary;
  GReview_media? get media;
  GReview_user? get user;
  Map<String, dynamic> toJson();
}

abstract class GReview_media {
  String get G__typename;
  int get id;
  GReview_media_title? get title;
  _i1.GMediaType? get type;
  String? get bannerImage;
  Map<String, dynamic> toJson();
}

abstract class GReview_media_title {
  String get G__typename;
  String? get userPreferred;
  Map<String, dynamic> toJson();
}

abstract class GReview_user implements _i2.GUserFragment {
  @override
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
  BuiltList<_i1.GModRole?>? get moderatorRoles;
  @override
  GReview_user_avatar? get avatar;
  @override
  Map<String, dynamic> toJson();
}

abstract class GReview_user_avatar implements _i2.GUserFragment_avatar {
  @override
  String get G__typename;
  @override
  String? get large;
  @override
  Map<String, dynamic> toJson();
}

abstract class GReviewData
    implements Built<GReviewData, GReviewDataBuilder>, GReview {
  GReviewData._();

  factory GReviewData([Function(GReviewDataBuilder b) updates]) = _$GReviewData;

  static void _initializeBuilder(GReviewDataBuilder b) =>
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
  GReviewData_media? get media;
  @override
  GReviewData_user? get user;
  static Serializer<GReviewData> get serializer => _$gReviewDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReviewData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReviewData.serializer,
        json,
      );
}

abstract class GReviewData_media
    implements
        Built<GReviewData_media, GReviewData_mediaBuilder>,
        GReview_media {
  GReviewData_media._();

  factory GReviewData_media([Function(GReviewData_mediaBuilder b) updates]) =
      _$GReviewData_media;

  static void _initializeBuilder(GReviewData_mediaBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GReviewData_media_title? get title;
  @override
  _i1.GMediaType? get type;
  @override
  String? get bannerImage;
  static Serializer<GReviewData_media> get serializer =>
      _$gReviewDataMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReviewData_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewData_media? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReviewData_media.serializer,
        json,
      );
}

abstract class GReviewData_media_title
    implements
        Built<GReviewData_media_title, GReviewData_media_titleBuilder>,
        GReview_media_title {
  GReviewData_media_title._();

  factory GReviewData_media_title(
          [Function(GReviewData_media_titleBuilder b) updates]) =
      _$GReviewData_media_title;

  static void _initializeBuilder(GReviewData_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GReviewData_media_title> get serializer =>
      _$gReviewDataMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReviewData_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewData_media_title? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReviewData_media_title.serializer,
        json,
      );
}

abstract class GReviewData_user
    implements
        Built<GReviewData_user, GReviewData_userBuilder>,
        GReview_user,
        _i2.GUserFragment {
  GReviewData_user._();

  factory GReviewData_user([Function(GReviewData_userBuilder b) updates]) =
      _$GReviewData_user;

  static void _initializeBuilder(GReviewData_userBuilder b) =>
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
  BuiltList<_i1.GModRole?>? get moderatorRoles;
  @override
  GReviewData_user_avatar? get avatar;
  static Serializer<GReviewData_user> get serializer =>
      _$gReviewDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReviewData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewData_user? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReviewData_user.serializer,
        json,
      );
}

abstract class GReviewData_user_avatar
    implements
        Built<GReviewData_user_avatar, GReviewData_user_avatarBuilder>,
        GReview_user_avatar,
        _i2.GUserFragment_avatar {
  GReviewData_user_avatar._();

  factory GReviewData_user_avatar(
          [Function(GReviewData_user_avatarBuilder b) updates]) =
      _$GReviewData_user_avatar;

  static void _initializeBuilder(GReviewData_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GReviewData_user_avatar> get serializer =>
      _$gReviewDataUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReviewData_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewData_user_avatar? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReviewData_user_avatar.serializer,
        json,
      );
}
