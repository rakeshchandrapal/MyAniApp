// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i3;

part 'thread.data.gql.g.dart';

abstract class GThreadFragment {
  String get G__typename;
  int get id;
  String? get title;
  int? get replyCount;
  int? get viewCount;
  int? get replyCommentId;
  int? get repliedAt;
  int get createdAt;
  bool? get isSticky;
  BuiltList<GThreadFragment_mediaCategories?>? get mediaCategories;
  BuiltList<GThreadFragment_categories?>? get categories;
  GThreadFragment_user? get user;
  GThreadFragment_replyUser? get replyUser;
  Map<String, dynamic> toJson();
}

abstract class GThreadFragment_mediaCategories implements _i1.GMediaFragment {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  _i2.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i2.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GThreadFragment_mediaCategories_title? get title;
  @override
  GThreadFragment_mediaCategories_coverImage? get coverImage;
  @override
  Map<String, dynamic> toJson();
}

abstract class GThreadFragment_mediaCategories_title
    implements _i1.GMediaFragment_title {
  @override
  String get G__typename;
  @override
  String? get userPreferred;
  @override
  Map<String, dynamic> toJson();
}

abstract class GThreadFragment_mediaCategories_coverImage
    implements _i1.GMediaFragment_coverImage {
  @override
  String get G__typename;
  @override
  String? get extraLarge;
  @override
  Map<String, dynamic> toJson();
}

abstract class GThreadFragment_categories {
  String get G__typename;
  int get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GThreadFragment_user implements _i3.GUserFragment {
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
  BuiltList<_i2.GModRole?>? get moderatorRoles;
  @override
  GThreadFragment_user_avatar? get avatar;
  @override
  Map<String, dynamic> toJson();
}

abstract class GThreadFragment_user_avatar implements _i3.GUserFragment_avatar {
  @override
  String get G__typename;
  @override
  String? get large;
  @override
  Map<String, dynamic> toJson();
}

abstract class GThreadFragment_replyUser implements _i3.GUserFragment {
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
  BuiltList<_i2.GModRole?>? get moderatorRoles;
  @override
  GThreadFragment_replyUser_avatar? get avatar;
  @override
  Map<String, dynamic> toJson();
}

abstract class GThreadFragment_replyUser_avatar
    implements _i3.GUserFragment_avatar {
  @override
  String get G__typename;
  @override
  String? get large;
  @override
  Map<String, dynamic> toJson();
}

abstract class GThreadFragmentData
    implements
        Built<GThreadFragmentData, GThreadFragmentDataBuilder>,
        GThreadFragment {
  GThreadFragmentData._();

  factory GThreadFragmentData(
          [void Function(GThreadFragmentDataBuilder b) updates]) =
      _$GThreadFragmentData;

  static void _initializeBuilder(GThreadFragmentDataBuilder b) =>
      b..G__typename = 'Thread';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String? get title;
  @override
  int? get replyCount;
  @override
  int? get viewCount;
  @override
  int? get replyCommentId;
  @override
  int? get repliedAt;
  @override
  int get createdAt;
  @override
  bool? get isSticky;
  @override
  BuiltList<GThreadFragmentData_mediaCategories?>? get mediaCategories;
  @override
  BuiltList<GThreadFragmentData_categories?>? get categories;
  @override
  GThreadFragmentData_user? get user;
  @override
  GThreadFragmentData_replyUser? get replyUser;
  static Serializer<GThreadFragmentData> get serializer =>
      _$gThreadFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GThreadFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadFragmentData? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GThreadFragmentData.serializer,
        json,
      );
}

abstract class GThreadFragmentData_mediaCategories
    implements
        Built<GThreadFragmentData_mediaCategories,
            GThreadFragmentData_mediaCategoriesBuilder>,
        GThreadFragment_mediaCategories,
        _i1.GMediaFragment {
  GThreadFragmentData_mediaCategories._();

  factory GThreadFragmentData_mediaCategories(
      [void Function(GThreadFragmentData_mediaCategoriesBuilder b)
          updates]) = _$GThreadFragmentData_mediaCategories;

  static void _initializeBuilder(
          GThreadFragmentData_mediaCategoriesBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i2.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i2.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GThreadFragmentData_mediaCategories_title? get title;
  @override
  GThreadFragmentData_mediaCategories_coverImage? get coverImage;
  static Serializer<GThreadFragmentData_mediaCategories> get serializer =>
      _$gThreadFragmentDataMediaCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GThreadFragmentData_mediaCategories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadFragmentData_mediaCategories? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GThreadFragmentData_mediaCategories.serializer,
        json,
      );
}

abstract class GThreadFragmentData_mediaCategories_title
    implements
        Built<GThreadFragmentData_mediaCategories_title,
            GThreadFragmentData_mediaCategories_titleBuilder>,
        GThreadFragment_mediaCategories_title,
        _i1.GMediaFragment_title {
  GThreadFragmentData_mediaCategories_title._();

  factory GThreadFragmentData_mediaCategories_title(
      [void Function(GThreadFragmentData_mediaCategories_titleBuilder b)
          updates]) = _$GThreadFragmentData_mediaCategories_title;

  static void _initializeBuilder(
          GThreadFragmentData_mediaCategories_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GThreadFragmentData_mediaCategories_title> get serializer =>
      _$gThreadFragmentDataMediaCategoriesTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GThreadFragmentData_mediaCategories_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadFragmentData_mediaCategories_title? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GThreadFragmentData_mediaCategories_title.serializer,
        json,
      );
}

abstract class GThreadFragmentData_mediaCategories_coverImage
    implements
        Built<GThreadFragmentData_mediaCategories_coverImage,
            GThreadFragmentData_mediaCategories_coverImageBuilder>,
        GThreadFragment_mediaCategories_coverImage,
        _i1.GMediaFragment_coverImage {
  GThreadFragmentData_mediaCategories_coverImage._();

  factory GThreadFragmentData_mediaCategories_coverImage(
      [void Function(GThreadFragmentData_mediaCategories_coverImageBuilder b)
          updates]) = _$GThreadFragmentData_mediaCategories_coverImage;

  static void _initializeBuilder(
          GThreadFragmentData_mediaCategories_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GThreadFragmentData_mediaCategories_coverImage>
      get serializer =>
          _$gThreadFragmentDataMediaCategoriesCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GThreadFragmentData_mediaCategories_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadFragmentData_mediaCategories_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GThreadFragmentData_mediaCategories_coverImage.serializer,
        json,
      );
}

abstract class GThreadFragmentData_categories
    implements
        Built<GThreadFragmentData_categories,
            GThreadFragmentData_categoriesBuilder>,
        GThreadFragment_categories {
  GThreadFragmentData_categories._();

  factory GThreadFragmentData_categories(
          [void Function(GThreadFragmentData_categoriesBuilder b) updates]) =
      _$GThreadFragmentData_categories;

  static void _initializeBuilder(GThreadFragmentData_categoriesBuilder b) =>
      b..G__typename = 'ThreadCategory';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  static Serializer<GThreadFragmentData_categories> get serializer =>
      _$gThreadFragmentDataCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GThreadFragmentData_categories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadFragmentData_categories? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GThreadFragmentData_categories.serializer,
        json,
      );
}

abstract class GThreadFragmentData_user
    implements
        Built<GThreadFragmentData_user, GThreadFragmentData_userBuilder>,
        GThreadFragment_user,
        _i3.GUserFragment {
  GThreadFragmentData_user._();

  factory GThreadFragmentData_user(
          [void Function(GThreadFragmentData_userBuilder b) updates]) =
      _$GThreadFragmentData_user;

  static void _initializeBuilder(GThreadFragmentData_userBuilder b) =>
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
  BuiltList<_i2.GModRole?>? get moderatorRoles;
  @override
  GThreadFragmentData_user_avatar? get avatar;
  static Serializer<GThreadFragmentData_user> get serializer =>
      _$gThreadFragmentDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GThreadFragmentData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadFragmentData_user? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GThreadFragmentData_user.serializer,
        json,
      );
}

abstract class GThreadFragmentData_user_avatar
    implements
        Built<GThreadFragmentData_user_avatar,
            GThreadFragmentData_user_avatarBuilder>,
        GThreadFragment_user_avatar,
        _i3.GUserFragment_avatar {
  GThreadFragmentData_user_avatar._();

  factory GThreadFragmentData_user_avatar(
          [void Function(GThreadFragmentData_user_avatarBuilder b) updates]) =
      _$GThreadFragmentData_user_avatar;

  static void _initializeBuilder(GThreadFragmentData_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GThreadFragmentData_user_avatar> get serializer =>
      _$gThreadFragmentDataUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GThreadFragmentData_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadFragmentData_user_avatar? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GThreadFragmentData_user_avatar.serializer,
        json,
      );
}

abstract class GThreadFragmentData_replyUser
    implements
        Built<GThreadFragmentData_replyUser,
            GThreadFragmentData_replyUserBuilder>,
        GThreadFragment_replyUser,
        _i3.GUserFragment {
  GThreadFragmentData_replyUser._();

  factory GThreadFragmentData_replyUser(
          [void Function(GThreadFragmentData_replyUserBuilder b) updates]) =
      _$GThreadFragmentData_replyUser;

  static void _initializeBuilder(GThreadFragmentData_replyUserBuilder b) =>
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
  BuiltList<_i2.GModRole?>? get moderatorRoles;
  @override
  GThreadFragmentData_replyUser_avatar? get avatar;
  static Serializer<GThreadFragmentData_replyUser> get serializer =>
      _$gThreadFragmentDataReplyUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GThreadFragmentData_replyUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadFragmentData_replyUser? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GThreadFragmentData_replyUser.serializer,
        json,
      );
}

abstract class GThreadFragmentData_replyUser_avatar
    implements
        Built<GThreadFragmentData_replyUser_avatar,
            GThreadFragmentData_replyUser_avatarBuilder>,
        GThreadFragment_replyUser_avatar,
        _i3.GUserFragment_avatar {
  GThreadFragmentData_replyUser_avatar._();

  factory GThreadFragmentData_replyUser_avatar(
      [void Function(GThreadFragmentData_replyUser_avatarBuilder b)
          updates]) = _$GThreadFragmentData_replyUser_avatar;

  static void _initializeBuilder(
          GThreadFragmentData_replyUser_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GThreadFragmentData_replyUser_avatar> get serializer =>
      _$gThreadFragmentDataReplyUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GThreadFragmentData_replyUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadFragmentData_replyUser_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GThreadFragmentData_replyUser_avatar.serializer,
        json,
      );
}
