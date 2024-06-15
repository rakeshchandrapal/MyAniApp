// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/thread.data.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i6;

part 'forums.data.gql.g.dart';

abstract class GForumsData implements Built<GForumsData, GForumsDataBuilder> {
  GForumsData._();

  factory GForumsData([void Function(GForumsDataBuilder b) updates]) =
      _$GForumsData;

  static void _initializeBuilder(GForumsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GForumsData_Page? get Page;
  static Serializer<GForumsData> get serializer => _$gForumsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumsData.serializer,
        json,
      );
}

abstract class GForumsData_Page
    implements Built<GForumsData_Page, GForumsData_PageBuilder> {
  GForumsData_Page._();

  factory GForumsData_Page([void Function(GForumsData_PageBuilder b) updates]) =
      _$GForumsData_Page;

  static void _initializeBuilder(GForumsData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GForumsData_Page_pageInfo? get pageInfo;
  BuiltList<GForumsData_Page_threads?>? get threads;
  static Serializer<GForumsData_Page> get serializer =>
      _$gForumsDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumsData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumsData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumsData_Page.serializer,
        json,
      );
}

abstract class GForumsData_Page_pageInfo
    implements
        Built<GForumsData_Page_pageInfo, GForumsData_Page_pageInfoBuilder>,
        _i2.GPageInfo {
  GForumsData_Page_pageInfo._();

  factory GForumsData_Page_pageInfo(
          [void Function(GForumsData_Page_pageInfoBuilder b) updates]) =
      _$GForumsData_Page_pageInfo;

  static void _initializeBuilder(GForumsData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GForumsData_Page_pageInfo> get serializer =>
      _$gForumsDataPagePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumsData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumsData_Page_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumsData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GForumsData_Page_threads
    implements
        Built<GForumsData_Page_threads, GForumsData_Page_threadsBuilder>,
        _i3.GThreadFragment {
  GForumsData_Page_threads._();

  factory GForumsData_Page_threads(
          [void Function(GForumsData_Page_threadsBuilder b) updates]) =
      _$GForumsData_Page_threads;

  static void _initializeBuilder(GForumsData_Page_threadsBuilder b) =>
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
  BuiltList<GForumsData_Page_threads_mediaCategories?>? get mediaCategories;
  @override
  BuiltList<GForumsData_Page_threads_categories?>? get categories;
  @override
  GForumsData_Page_threads_user? get user;
  @override
  GForumsData_Page_threads_replyUser? get replyUser;
  static Serializer<GForumsData_Page_threads> get serializer =>
      _$gForumsDataPageThreadsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumsData_Page_threads.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumsData_Page_threads? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumsData_Page_threads.serializer,
        json,
      );
}

abstract class GForumsData_Page_threads_mediaCategories
    implements
        Built<GForumsData_Page_threads_mediaCategories,
            GForumsData_Page_threads_mediaCategoriesBuilder>,
        _i3.GThreadFragment_mediaCategories,
        _i4.GMediaFragment {
  GForumsData_Page_threads_mediaCategories._();

  factory GForumsData_Page_threads_mediaCategories(
      [void Function(GForumsData_Page_threads_mediaCategoriesBuilder b)
          updates]) = _$GForumsData_Page_threads_mediaCategories;

  static void _initializeBuilder(
          GForumsData_Page_threads_mediaCategoriesBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i5.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i5.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GForumsData_Page_threads_mediaCategories_title? get title;
  @override
  GForumsData_Page_threads_mediaCategories_coverImage? get coverImage;
  static Serializer<GForumsData_Page_threads_mediaCategories> get serializer =>
      _$gForumsDataPageThreadsMediaCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumsData_Page_threads_mediaCategories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumsData_Page_threads_mediaCategories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumsData_Page_threads_mediaCategories.serializer,
        json,
      );
}

abstract class GForumsData_Page_threads_mediaCategories_title
    implements
        Built<GForumsData_Page_threads_mediaCategories_title,
            GForumsData_Page_threads_mediaCategories_titleBuilder>,
        _i3.GThreadFragment_mediaCategories_title,
        _i4.GMediaFragment_title {
  GForumsData_Page_threads_mediaCategories_title._();

  factory GForumsData_Page_threads_mediaCategories_title(
      [void Function(GForumsData_Page_threads_mediaCategories_titleBuilder b)
          updates]) = _$GForumsData_Page_threads_mediaCategories_title;

  static void _initializeBuilder(
          GForumsData_Page_threads_mediaCategories_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GForumsData_Page_threads_mediaCategories_title>
      get serializer => _$gForumsDataPageThreadsMediaCategoriesTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumsData_Page_threads_mediaCategories_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumsData_Page_threads_mediaCategories_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumsData_Page_threads_mediaCategories_title.serializer,
        json,
      );
}

abstract class GForumsData_Page_threads_mediaCategories_coverImage
    implements
        Built<GForumsData_Page_threads_mediaCategories_coverImage,
            GForumsData_Page_threads_mediaCategories_coverImageBuilder>,
        _i3.GThreadFragment_mediaCategories_coverImage,
        _i4.GMediaFragment_coverImage {
  GForumsData_Page_threads_mediaCategories_coverImage._();

  factory GForumsData_Page_threads_mediaCategories_coverImage(
      [void Function(
              GForumsData_Page_threads_mediaCategories_coverImageBuilder b)
          updates]) = _$GForumsData_Page_threads_mediaCategories_coverImage;

  static void _initializeBuilder(
          GForumsData_Page_threads_mediaCategories_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GForumsData_Page_threads_mediaCategories_coverImage>
      get serializer =>
          _$gForumsDataPageThreadsMediaCategoriesCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumsData_Page_threads_mediaCategories_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumsData_Page_threads_mediaCategories_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumsData_Page_threads_mediaCategories_coverImage.serializer,
        json,
      );
}

abstract class GForumsData_Page_threads_categories
    implements
        Built<GForumsData_Page_threads_categories,
            GForumsData_Page_threads_categoriesBuilder>,
        _i3.GThreadFragment_categories {
  GForumsData_Page_threads_categories._();

  factory GForumsData_Page_threads_categories(
      [void Function(GForumsData_Page_threads_categoriesBuilder b)
          updates]) = _$GForumsData_Page_threads_categories;

  static void _initializeBuilder(
          GForumsData_Page_threads_categoriesBuilder b) =>
      b..G__typename = 'ThreadCategory';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  static Serializer<GForumsData_Page_threads_categories> get serializer =>
      _$gForumsDataPageThreadsCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumsData_Page_threads_categories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumsData_Page_threads_categories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumsData_Page_threads_categories.serializer,
        json,
      );
}

abstract class GForumsData_Page_threads_user
    implements
        Built<GForumsData_Page_threads_user,
            GForumsData_Page_threads_userBuilder>,
        _i3.GThreadFragment_user,
        _i6.GUserFragment {
  GForumsData_Page_threads_user._();

  factory GForumsData_Page_threads_user(
          [void Function(GForumsData_Page_threads_userBuilder b) updates]) =
      _$GForumsData_Page_threads_user;

  static void _initializeBuilder(GForumsData_Page_threads_userBuilder b) =>
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
  BuiltList<_i5.GModRole?>? get moderatorRoles;
  @override
  GForumsData_Page_threads_user_avatar? get avatar;
  static Serializer<GForumsData_Page_threads_user> get serializer =>
      _$gForumsDataPageThreadsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumsData_Page_threads_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumsData_Page_threads_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumsData_Page_threads_user.serializer,
        json,
      );
}

abstract class GForumsData_Page_threads_user_avatar
    implements
        Built<GForumsData_Page_threads_user_avatar,
            GForumsData_Page_threads_user_avatarBuilder>,
        _i3.GThreadFragment_user_avatar,
        _i6.GUserFragment_avatar {
  GForumsData_Page_threads_user_avatar._();

  factory GForumsData_Page_threads_user_avatar(
      [void Function(GForumsData_Page_threads_user_avatarBuilder b)
          updates]) = _$GForumsData_Page_threads_user_avatar;

  static void _initializeBuilder(
          GForumsData_Page_threads_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GForumsData_Page_threads_user_avatar> get serializer =>
      _$gForumsDataPageThreadsUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumsData_Page_threads_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumsData_Page_threads_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumsData_Page_threads_user_avatar.serializer,
        json,
      );
}

abstract class GForumsData_Page_threads_replyUser
    implements
        Built<GForumsData_Page_threads_replyUser,
            GForumsData_Page_threads_replyUserBuilder>,
        _i3.GThreadFragment_replyUser,
        _i6.GUserFragment {
  GForumsData_Page_threads_replyUser._();

  factory GForumsData_Page_threads_replyUser(
      [void Function(GForumsData_Page_threads_replyUserBuilder b)
          updates]) = _$GForumsData_Page_threads_replyUser;

  static void _initializeBuilder(GForumsData_Page_threads_replyUserBuilder b) =>
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
  BuiltList<_i5.GModRole?>? get moderatorRoles;
  @override
  GForumsData_Page_threads_replyUser_avatar? get avatar;
  static Serializer<GForumsData_Page_threads_replyUser> get serializer =>
      _$gForumsDataPageThreadsReplyUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumsData_Page_threads_replyUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumsData_Page_threads_replyUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumsData_Page_threads_replyUser.serializer,
        json,
      );
}

abstract class GForumsData_Page_threads_replyUser_avatar
    implements
        Built<GForumsData_Page_threads_replyUser_avatar,
            GForumsData_Page_threads_replyUser_avatarBuilder>,
        _i3.GThreadFragment_replyUser_avatar,
        _i6.GUserFragment_avatar {
  GForumsData_Page_threads_replyUser_avatar._();

  factory GForumsData_Page_threads_replyUser_avatar(
      [void Function(GForumsData_Page_threads_replyUser_avatarBuilder b)
          updates]) = _$GForumsData_Page_threads_replyUser_avatar;

  static void _initializeBuilder(
          GForumsData_Page_threads_replyUser_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GForumsData_Page_threads_replyUser_avatar> get serializer =>
      _$gForumsDataPageThreadsReplyUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumsData_Page_threads_replyUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumsData_Page_threads_replyUser_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumsData_Page_threads_replyUser_avatar.serializer,
        json,
      );
}
