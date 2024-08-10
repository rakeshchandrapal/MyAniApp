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

part 'threads.data.gql.g.dart';

abstract class GMediaThreadsData
    implements Built<GMediaThreadsData, GMediaThreadsDataBuilder> {
  GMediaThreadsData._();

  factory GMediaThreadsData(
          [void Function(GMediaThreadsDataBuilder b) updates]) =
      _$GMediaThreadsData;

  static void _initializeBuilder(GMediaThreadsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaThreadsData_Page? get Page;
  static Serializer<GMediaThreadsData> get serializer =>
      _$gMediaThreadsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaThreadsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaThreadsData.serializer,
        json,
      );
}

abstract class GMediaThreadsData_Page
    implements Built<GMediaThreadsData_Page, GMediaThreadsData_PageBuilder> {
  GMediaThreadsData_Page._();

  factory GMediaThreadsData_Page(
          [void Function(GMediaThreadsData_PageBuilder b) updates]) =
      _$GMediaThreadsData_Page;

  static void _initializeBuilder(GMediaThreadsData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaThreadsData_Page_pageInfo? get pageInfo;
  BuiltList<GMediaThreadsData_Page_threads?>? get threads;
  static Serializer<GMediaThreadsData_Page> get serializer =>
      _$gMediaThreadsDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaThreadsData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaThreadsData_Page.serializer,
        json,
      );
}

abstract class GMediaThreadsData_Page_pageInfo
    implements
        Built<GMediaThreadsData_Page_pageInfo,
            GMediaThreadsData_Page_pageInfoBuilder>,
        _i2.GPageInfo {
  GMediaThreadsData_Page_pageInfo._();

  factory GMediaThreadsData_Page_pageInfo(
          [void Function(GMediaThreadsData_Page_pageInfoBuilder b) updates]) =
      _$GMediaThreadsData_Page_pageInfo;

  static void _initializeBuilder(GMediaThreadsData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GMediaThreadsData_Page_pageInfo> get serializer =>
      _$gMediaThreadsDataPagePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaThreadsData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsData_Page_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaThreadsData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GMediaThreadsData_Page_threads
    implements
        Built<GMediaThreadsData_Page_threads,
            GMediaThreadsData_Page_threadsBuilder>,
        _i3.GThreadFragment {
  GMediaThreadsData_Page_threads._();

  factory GMediaThreadsData_Page_threads(
          [void Function(GMediaThreadsData_Page_threadsBuilder b) updates]) =
      _$GMediaThreadsData_Page_threads;

  static void _initializeBuilder(GMediaThreadsData_Page_threadsBuilder b) =>
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
  BuiltList<GMediaThreadsData_Page_threads_mediaCategories?>?
      get mediaCategories;
  @override
  BuiltList<GMediaThreadsData_Page_threads_categories?>? get categories;
  @override
  GMediaThreadsData_Page_threads_user? get user;
  @override
  GMediaThreadsData_Page_threads_replyUser? get replyUser;
  static Serializer<GMediaThreadsData_Page_threads> get serializer =>
      _$gMediaThreadsDataPageThreadsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaThreadsData_Page_threads.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsData_Page_threads? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaThreadsData_Page_threads.serializer,
        json,
      );
}

abstract class GMediaThreadsData_Page_threads_mediaCategories
    implements
        Built<GMediaThreadsData_Page_threads_mediaCategories,
            GMediaThreadsData_Page_threads_mediaCategoriesBuilder>,
        _i3.GThreadFragment_mediaCategories,
        _i4.GMediaFragment {
  GMediaThreadsData_Page_threads_mediaCategories._();

  factory GMediaThreadsData_Page_threads_mediaCategories(
      [void Function(GMediaThreadsData_Page_threads_mediaCategoriesBuilder b)
          updates]) = _$GMediaThreadsData_Page_threads_mediaCategories;

  static void _initializeBuilder(
          GMediaThreadsData_Page_threads_mediaCategoriesBuilder b) =>
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
  GMediaThreadsData_Page_threads_mediaCategories_title? get title;
  @override
  GMediaThreadsData_Page_threads_mediaCategories_coverImage? get coverImage;
  static Serializer<GMediaThreadsData_Page_threads_mediaCategories>
      get serializer => _$gMediaThreadsDataPageThreadsMediaCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaThreadsData_Page_threads_mediaCategories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsData_Page_threads_mediaCategories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaThreadsData_Page_threads_mediaCategories.serializer,
        json,
      );
}

abstract class GMediaThreadsData_Page_threads_mediaCategories_title
    implements
        Built<GMediaThreadsData_Page_threads_mediaCategories_title,
            GMediaThreadsData_Page_threads_mediaCategories_titleBuilder>,
        _i3.GThreadFragment_mediaCategories_title,
        _i4.GMediaFragment_title {
  GMediaThreadsData_Page_threads_mediaCategories_title._();

  factory GMediaThreadsData_Page_threads_mediaCategories_title(
      [void Function(
              GMediaThreadsData_Page_threads_mediaCategories_titleBuilder b)
          updates]) = _$GMediaThreadsData_Page_threads_mediaCategories_title;

  static void _initializeBuilder(
          GMediaThreadsData_Page_threads_mediaCategories_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GMediaThreadsData_Page_threads_mediaCategories_title>
      get serializer =>
          _$gMediaThreadsDataPageThreadsMediaCategoriesTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaThreadsData_Page_threads_mediaCategories_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsData_Page_threads_mediaCategories_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaThreadsData_Page_threads_mediaCategories_title.serializer,
        json,
      );
}

abstract class GMediaThreadsData_Page_threads_mediaCategories_coverImage
    implements
        Built<GMediaThreadsData_Page_threads_mediaCategories_coverImage,
            GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder>,
        _i3.GThreadFragment_mediaCategories_coverImage,
        _i4.GMediaFragment_coverImage {
  GMediaThreadsData_Page_threads_mediaCategories_coverImage._();

  factory GMediaThreadsData_Page_threads_mediaCategories_coverImage(
      [void Function(
              GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder
                  b)
          updates]) = _$GMediaThreadsData_Page_threads_mediaCategories_coverImage;

  static void _initializeBuilder(
          GMediaThreadsData_Page_threads_mediaCategories_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GMediaThreadsData_Page_threads_mediaCategories_coverImage>
      get serializer =>
          _$gMediaThreadsDataPageThreadsMediaCategoriesCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaThreadsData_Page_threads_mediaCategories_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsData_Page_threads_mediaCategories_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaThreadsData_Page_threads_mediaCategories_coverImage.serializer,
        json,
      );
}

abstract class GMediaThreadsData_Page_threads_categories
    implements
        Built<GMediaThreadsData_Page_threads_categories,
            GMediaThreadsData_Page_threads_categoriesBuilder>,
        _i3.GThreadFragment_categories {
  GMediaThreadsData_Page_threads_categories._();

  factory GMediaThreadsData_Page_threads_categories(
      [void Function(GMediaThreadsData_Page_threads_categoriesBuilder b)
          updates]) = _$GMediaThreadsData_Page_threads_categories;

  static void _initializeBuilder(
          GMediaThreadsData_Page_threads_categoriesBuilder b) =>
      b..G__typename = 'ThreadCategory';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  static Serializer<GMediaThreadsData_Page_threads_categories> get serializer =>
      _$gMediaThreadsDataPageThreadsCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaThreadsData_Page_threads_categories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsData_Page_threads_categories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaThreadsData_Page_threads_categories.serializer,
        json,
      );
}

abstract class GMediaThreadsData_Page_threads_user
    implements
        Built<GMediaThreadsData_Page_threads_user,
            GMediaThreadsData_Page_threads_userBuilder>,
        _i3.GThreadFragment_user,
        _i6.GUserFragment {
  GMediaThreadsData_Page_threads_user._();

  factory GMediaThreadsData_Page_threads_user(
      [void Function(GMediaThreadsData_Page_threads_userBuilder b)
          updates]) = _$GMediaThreadsData_Page_threads_user;

  static void _initializeBuilder(
          GMediaThreadsData_Page_threads_userBuilder b) =>
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
  GMediaThreadsData_Page_threads_user_avatar? get avatar;
  static Serializer<GMediaThreadsData_Page_threads_user> get serializer =>
      _$gMediaThreadsDataPageThreadsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaThreadsData_Page_threads_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsData_Page_threads_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaThreadsData_Page_threads_user.serializer,
        json,
      );
}

abstract class GMediaThreadsData_Page_threads_user_avatar
    implements
        Built<GMediaThreadsData_Page_threads_user_avatar,
            GMediaThreadsData_Page_threads_user_avatarBuilder>,
        _i3.GThreadFragment_user_avatar,
        _i6.GUserFragment_avatar {
  GMediaThreadsData_Page_threads_user_avatar._();

  factory GMediaThreadsData_Page_threads_user_avatar(
      [void Function(GMediaThreadsData_Page_threads_user_avatarBuilder b)
          updates]) = _$GMediaThreadsData_Page_threads_user_avatar;

  static void _initializeBuilder(
          GMediaThreadsData_Page_threads_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GMediaThreadsData_Page_threads_user_avatar>
      get serializer => _$gMediaThreadsDataPageThreadsUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaThreadsData_Page_threads_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsData_Page_threads_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaThreadsData_Page_threads_user_avatar.serializer,
        json,
      );
}

abstract class GMediaThreadsData_Page_threads_replyUser
    implements
        Built<GMediaThreadsData_Page_threads_replyUser,
            GMediaThreadsData_Page_threads_replyUserBuilder>,
        _i3.GThreadFragment_replyUser,
        _i6.GUserFragment {
  GMediaThreadsData_Page_threads_replyUser._();

  factory GMediaThreadsData_Page_threads_replyUser(
      [void Function(GMediaThreadsData_Page_threads_replyUserBuilder b)
          updates]) = _$GMediaThreadsData_Page_threads_replyUser;

  static void _initializeBuilder(
          GMediaThreadsData_Page_threads_replyUserBuilder b) =>
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
  GMediaThreadsData_Page_threads_replyUser_avatar? get avatar;
  static Serializer<GMediaThreadsData_Page_threads_replyUser> get serializer =>
      _$gMediaThreadsDataPageThreadsReplyUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaThreadsData_Page_threads_replyUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsData_Page_threads_replyUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaThreadsData_Page_threads_replyUser.serializer,
        json,
      );
}

abstract class GMediaThreadsData_Page_threads_replyUser_avatar
    implements
        Built<GMediaThreadsData_Page_threads_replyUser_avatar,
            GMediaThreadsData_Page_threads_replyUser_avatarBuilder>,
        _i3.GThreadFragment_replyUser_avatar,
        _i6.GUserFragment_avatar {
  GMediaThreadsData_Page_threads_replyUser_avatar._();

  factory GMediaThreadsData_Page_threads_replyUser_avatar(
      [void Function(GMediaThreadsData_Page_threads_replyUser_avatarBuilder b)
          updates]) = _$GMediaThreadsData_Page_threads_replyUser_avatar;

  static void _initializeBuilder(
          GMediaThreadsData_Page_threads_replyUser_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GMediaThreadsData_Page_threads_replyUser_avatar>
      get serializer => _$gMediaThreadsDataPageThreadsReplyUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaThreadsData_Page_threads_replyUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsData_Page_threads_replyUser_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaThreadsData_Page_threads_replyUser_avatar.serializer,
        json,
      );
}
