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

part 'social.data.gql.g.dart';

abstract class GThreadsData
    implements Built<GThreadsData, GThreadsDataBuilder> {
  GThreadsData._();

  factory GThreadsData([Function(GThreadsDataBuilder b) updates]) =
      _$GThreadsData;

  static void _initializeBuilder(GThreadsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GThreadsData_Page? get Page;
  static Serializer<GThreadsData> get serializer => _$gThreadsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadsData.serializer,
        json,
      );
}

abstract class GThreadsData_Page
    implements Built<GThreadsData_Page, GThreadsData_PageBuilder> {
  GThreadsData_Page._();

  factory GThreadsData_Page([Function(GThreadsData_PageBuilder b) updates]) =
      _$GThreadsData_Page;

  static void _initializeBuilder(GThreadsData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GThreadsData_Page_pageInfo? get pageInfo;
  BuiltList<GThreadsData_Page_threads?>? get threads;
  static Serializer<GThreadsData_Page> get serializer =>
      _$gThreadsDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadsData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadsData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadsData_Page.serializer,
        json,
      );
}

abstract class GThreadsData_Page_pageInfo
    implements
        Built<GThreadsData_Page_pageInfo, GThreadsData_Page_pageInfoBuilder>,
        _i2.GPageInfo {
  GThreadsData_Page_pageInfo._();

  factory GThreadsData_Page_pageInfo(
          [Function(GThreadsData_Page_pageInfoBuilder b) updates]) =
      _$GThreadsData_Page_pageInfo;

  static void _initializeBuilder(GThreadsData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GThreadsData_Page_pageInfo> get serializer =>
      _$gThreadsDataPagePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadsData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadsData_Page_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadsData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GThreadsData_Page_threads
    implements
        Built<GThreadsData_Page_threads, GThreadsData_Page_threadsBuilder>,
        _i3.GThreadFragment {
  GThreadsData_Page_threads._();

  factory GThreadsData_Page_threads(
          [Function(GThreadsData_Page_threadsBuilder b) updates]) =
      _$GThreadsData_Page_threads;

  static void _initializeBuilder(GThreadsData_Page_threadsBuilder b) =>
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
  BuiltList<GThreadsData_Page_threads_mediaCategories?>? get mediaCategories;
  @override
  BuiltList<GThreadsData_Page_threads_categories?>? get categories;
  @override
  GThreadsData_Page_threads_user? get user;
  @override
  GThreadsData_Page_threads_replyUser? get replyUser;
  static Serializer<GThreadsData_Page_threads> get serializer =>
      _$gThreadsDataPageThreadsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadsData_Page_threads.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadsData_Page_threads? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadsData_Page_threads.serializer,
        json,
      );
}

abstract class GThreadsData_Page_threads_mediaCategories
    implements
        Built<GThreadsData_Page_threads_mediaCategories,
            GThreadsData_Page_threads_mediaCategoriesBuilder>,
        _i3.GThreadFragment_mediaCategories,
        _i4.GMediaFragment {
  GThreadsData_Page_threads_mediaCategories._();

  factory GThreadsData_Page_threads_mediaCategories(
      [Function(GThreadsData_Page_threads_mediaCategoriesBuilder b)
          updates]) = _$GThreadsData_Page_threads_mediaCategories;

  static void _initializeBuilder(
          GThreadsData_Page_threads_mediaCategoriesBuilder b) =>
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
  GThreadsData_Page_threads_mediaCategories_title? get title;
  @override
  GThreadsData_Page_threads_mediaCategories_coverImage? get coverImage;
  static Serializer<GThreadsData_Page_threads_mediaCategories> get serializer =>
      _$gThreadsDataPageThreadsMediaCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadsData_Page_threads_mediaCategories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadsData_Page_threads_mediaCategories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadsData_Page_threads_mediaCategories.serializer,
        json,
      );
}

abstract class GThreadsData_Page_threads_mediaCategories_title
    implements
        Built<GThreadsData_Page_threads_mediaCategories_title,
            GThreadsData_Page_threads_mediaCategories_titleBuilder>,
        _i3.GThreadFragment_mediaCategories_title,
        _i4.GMediaFragment_title {
  GThreadsData_Page_threads_mediaCategories_title._();

  factory GThreadsData_Page_threads_mediaCategories_title(
      [Function(GThreadsData_Page_threads_mediaCategories_titleBuilder b)
          updates]) = _$GThreadsData_Page_threads_mediaCategories_title;

  static void _initializeBuilder(
          GThreadsData_Page_threads_mediaCategories_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GThreadsData_Page_threads_mediaCategories_title>
      get serializer => _$gThreadsDataPageThreadsMediaCategoriesTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadsData_Page_threads_mediaCategories_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadsData_Page_threads_mediaCategories_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadsData_Page_threads_mediaCategories_title.serializer,
        json,
      );
}

abstract class GThreadsData_Page_threads_mediaCategories_coverImage
    implements
        Built<GThreadsData_Page_threads_mediaCategories_coverImage,
            GThreadsData_Page_threads_mediaCategories_coverImageBuilder>,
        _i3.GThreadFragment_mediaCategories_coverImage,
        _i4.GMediaFragment_coverImage {
  GThreadsData_Page_threads_mediaCategories_coverImage._();

  factory GThreadsData_Page_threads_mediaCategories_coverImage(
      [Function(GThreadsData_Page_threads_mediaCategories_coverImageBuilder b)
          updates]) = _$GThreadsData_Page_threads_mediaCategories_coverImage;

  static void _initializeBuilder(
          GThreadsData_Page_threads_mediaCategories_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GThreadsData_Page_threads_mediaCategories_coverImage>
      get serializer =>
          _$gThreadsDataPageThreadsMediaCategoriesCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadsData_Page_threads_mediaCategories_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadsData_Page_threads_mediaCategories_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadsData_Page_threads_mediaCategories_coverImage.serializer,
        json,
      );
}

abstract class GThreadsData_Page_threads_categories
    implements
        Built<GThreadsData_Page_threads_categories,
            GThreadsData_Page_threads_categoriesBuilder>,
        _i3.GThreadFragment_categories {
  GThreadsData_Page_threads_categories._();

  factory GThreadsData_Page_threads_categories(
          [Function(GThreadsData_Page_threads_categoriesBuilder b) updates]) =
      _$GThreadsData_Page_threads_categories;

  static void _initializeBuilder(
          GThreadsData_Page_threads_categoriesBuilder b) =>
      b..G__typename = 'ThreadCategory';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  static Serializer<GThreadsData_Page_threads_categories> get serializer =>
      _$gThreadsDataPageThreadsCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadsData_Page_threads_categories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadsData_Page_threads_categories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadsData_Page_threads_categories.serializer,
        json,
      );
}

abstract class GThreadsData_Page_threads_user
    implements
        Built<GThreadsData_Page_threads_user,
            GThreadsData_Page_threads_userBuilder>,
        _i3.GThreadFragment_user,
        _i6.GUserFragment {
  GThreadsData_Page_threads_user._();

  factory GThreadsData_Page_threads_user(
          [Function(GThreadsData_Page_threads_userBuilder b) updates]) =
      _$GThreadsData_Page_threads_user;

  static void _initializeBuilder(GThreadsData_Page_threads_userBuilder b) =>
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
  GThreadsData_Page_threads_user_avatar? get avatar;
  static Serializer<GThreadsData_Page_threads_user> get serializer =>
      _$gThreadsDataPageThreadsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadsData_Page_threads_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadsData_Page_threads_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadsData_Page_threads_user.serializer,
        json,
      );
}

abstract class GThreadsData_Page_threads_user_avatar
    implements
        Built<GThreadsData_Page_threads_user_avatar,
            GThreadsData_Page_threads_user_avatarBuilder>,
        _i3.GThreadFragment_user_avatar,
        _i6.GUserFragment_avatar {
  GThreadsData_Page_threads_user_avatar._();

  factory GThreadsData_Page_threads_user_avatar(
          [Function(GThreadsData_Page_threads_user_avatarBuilder b) updates]) =
      _$GThreadsData_Page_threads_user_avatar;

  static void _initializeBuilder(
          GThreadsData_Page_threads_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GThreadsData_Page_threads_user_avatar> get serializer =>
      _$gThreadsDataPageThreadsUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadsData_Page_threads_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadsData_Page_threads_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadsData_Page_threads_user_avatar.serializer,
        json,
      );
}

abstract class GThreadsData_Page_threads_replyUser
    implements
        Built<GThreadsData_Page_threads_replyUser,
            GThreadsData_Page_threads_replyUserBuilder>,
        _i3.GThreadFragment_replyUser,
        _i6.GUserFragment {
  GThreadsData_Page_threads_replyUser._();

  factory GThreadsData_Page_threads_replyUser(
          [Function(GThreadsData_Page_threads_replyUserBuilder b) updates]) =
      _$GThreadsData_Page_threads_replyUser;

  static void _initializeBuilder(
          GThreadsData_Page_threads_replyUserBuilder b) =>
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
  GThreadsData_Page_threads_replyUser_avatar? get avatar;
  static Serializer<GThreadsData_Page_threads_replyUser> get serializer =>
      _$gThreadsDataPageThreadsReplyUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadsData_Page_threads_replyUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadsData_Page_threads_replyUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadsData_Page_threads_replyUser.serializer,
        json,
      );
}

abstract class GThreadsData_Page_threads_replyUser_avatar
    implements
        Built<GThreadsData_Page_threads_replyUser_avatar,
            GThreadsData_Page_threads_replyUser_avatarBuilder>,
        _i3.GThreadFragment_replyUser_avatar,
        _i6.GUserFragment_avatar {
  GThreadsData_Page_threads_replyUser_avatar._();

  factory GThreadsData_Page_threads_replyUser_avatar(
      [Function(GThreadsData_Page_threads_replyUser_avatarBuilder b)
          updates]) = _$GThreadsData_Page_threads_replyUser_avatar;

  static void _initializeBuilder(
          GThreadsData_Page_threads_replyUser_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GThreadsData_Page_threads_replyUser_avatar>
      get serializer => _$gThreadsDataPageThreadsReplyUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadsData_Page_threads_replyUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadsData_Page_threads_replyUser_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadsData_Page_threads_replyUser_avatar.serializer,
        json,
      );
}
