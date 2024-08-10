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

abstract class GReviewFragment {
  String get G__typename;
  int get id;
  int? get rating;
  int? get ratingAmount;
  String? get summary;
  GReviewFragment_media? get media;
  GReviewFragment_user? get user;
  Map<String, dynamic> toJson();
}

abstract class GReviewFragment_media {
  String get G__typename;
  int get id;
  GReviewFragment_media_title? get title;
  _i1.GMediaType? get type;
  String? get bannerImage;
  Map<String, dynamic> toJson();
}

abstract class GReviewFragment_media_title {
  String get G__typename;
  String? get userPreferred;
  Map<String, dynamic> toJson();
}

abstract class GReviewFragment_user implements _i2.GUserFragment {
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
  GReviewFragment_user_avatar? get avatar;
  @override
  Map<String, dynamic> toJson();
}

abstract class GReviewFragment_user_avatar implements _i2.GUserFragment_avatar {
  @override
  String get G__typename;
  @override
  String? get large;
  @override
  Map<String, dynamic> toJson();
}

abstract class GReviewFragmentData
    implements
        Built<GReviewFragmentData, GReviewFragmentDataBuilder>,
        GReviewFragment {
  GReviewFragmentData._();

  factory GReviewFragmentData(
          [void Function(GReviewFragmentDataBuilder b) updates]) =
      _$GReviewFragmentData;

  static void _initializeBuilder(GReviewFragmentDataBuilder b) =>
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
  GReviewFragmentData_media? get media;
  @override
  GReviewFragmentData_user? get user;
  static Serializer<GReviewFragmentData> get serializer =>
      _$gReviewFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReviewFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewFragmentData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReviewFragmentData.serializer,
        json,
      );
}

abstract class GReviewFragmentData_media
    implements
        Built<GReviewFragmentData_media, GReviewFragmentData_mediaBuilder>,
        GReviewFragment_media {
  GReviewFragmentData_media._();

  factory GReviewFragmentData_media(
          [void Function(GReviewFragmentData_mediaBuilder b) updates]) =
      _$GReviewFragmentData_media;

  static void _initializeBuilder(GReviewFragmentData_mediaBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GReviewFragmentData_media_title? get title;
  @override
  _i1.GMediaType? get type;
  @override
  String? get bannerImage;
  static Serializer<GReviewFragmentData_media> get serializer =>
      _$gReviewFragmentDataMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReviewFragmentData_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewFragmentData_media? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReviewFragmentData_media.serializer,
        json,
      );
}

abstract class GReviewFragmentData_media_title
    implements
        Built<GReviewFragmentData_media_title,
            GReviewFragmentData_media_titleBuilder>,
        GReviewFragment_media_title {
  GReviewFragmentData_media_title._();

  factory GReviewFragmentData_media_title(
          [void Function(GReviewFragmentData_media_titleBuilder b) updates]) =
      _$GReviewFragmentData_media_title;

  static void _initializeBuilder(GReviewFragmentData_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GReviewFragmentData_media_title> get serializer =>
      _$gReviewFragmentDataMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReviewFragmentData_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewFragmentData_media_title? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReviewFragmentData_media_title.serializer,
        json,
      );
}

abstract class GReviewFragmentData_user
    implements
        Built<GReviewFragmentData_user, GReviewFragmentData_userBuilder>,
        GReviewFragment_user,
        _i2.GUserFragment {
  GReviewFragmentData_user._();

  factory GReviewFragmentData_user(
          [void Function(GReviewFragmentData_userBuilder b) updates]) =
      _$GReviewFragmentData_user;

  static void _initializeBuilder(GReviewFragmentData_userBuilder b) =>
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
  GReviewFragmentData_user_avatar? get avatar;
  static Serializer<GReviewFragmentData_user> get serializer =>
      _$gReviewFragmentDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReviewFragmentData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewFragmentData_user? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReviewFragmentData_user.serializer,
        json,
      );
}

abstract class GReviewFragmentData_user_avatar
    implements
        Built<GReviewFragmentData_user_avatar,
            GReviewFragmentData_user_avatarBuilder>,
        GReviewFragment_user_avatar,
        _i2.GUserFragment_avatar {
  GReviewFragmentData_user_avatar._();

  factory GReviewFragmentData_user_avatar(
          [void Function(GReviewFragmentData_user_avatarBuilder b) updates]) =
      _$GReviewFragmentData_user_avatar;

  static void _initializeBuilder(GReviewFragmentData_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GReviewFragmentData_user_avatar> get serializer =>
      _$gReviewFragmentDataUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GReviewFragmentData_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewFragmentData_user_avatar? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GReviewFragmentData_user_avatar.serializer,
        json,
      );
}
