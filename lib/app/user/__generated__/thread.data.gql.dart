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

part 'thread.data.gql.g.dart';

abstract class GUserThreadsData
    implements Built<GUserThreadsData, GUserThreadsDataBuilder> {
  GUserThreadsData._();

  factory GUserThreadsData([void Function(GUserThreadsDataBuilder b) updates]) =
      _$GUserThreadsData;

  static void _initializeBuilder(GUserThreadsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserThreadsData_thread? get thread;
  GUserThreadsData_comments? get comments;
  static Serializer<GUserThreadsData> get serializer =>
      _$gUserThreadsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData.serializer,
        json,
      );
}

abstract class GUserThreadsData_thread
    implements Built<GUserThreadsData_thread, GUserThreadsData_threadBuilder> {
  GUserThreadsData_thread._();

  factory GUserThreadsData_thread(
          [void Function(GUserThreadsData_threadBuilder b) updates]) =
      _$GUserThreadsData_thread;

  static void _initializeBuilder(GUserThreadsData_threadBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserThreadsData_thread_pageInfo? get pageInfo;
  BuiltList<GUserThreadsData_thread_threads?>? get threads;
  static Serializer<GUserThreadsData_thread> get serializer =>
      _$gUserThreadsDataThreadSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_thread.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_thread? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_thread.serializer,
        json,
      );
}

abstract class GUserThreadsData_thread_pageInfo
    implements
        Built<GUserThreadsData_thread_pageInfo,
            GUserThreadsData_thread_pageInfoBuilder>,
        _i2.GPageInfo {
  GUserThreadsData_thread_pageInfo._();

  factory GUserThreadsData_thread_pageInfo(
          [void Function(GUserThreadsData_thread_pageInfoBuilder b) updates]) =
      _$GUserThreadsData_thread_pageInfo;

  static void _initializeBuilder(GUserThreadsData_thread_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GUserThreadsData_thread_pageInfo> get serializer =>
      _$gUserThreadsDataThreadPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_thread_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_thread_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_thread_pageInfo.serializer,
        json,
      );
}

abstract class GUserThreadsData_thread_threads
    implements
        Built<GUserThreadsData_thread_threads,
            GUserThreadsData_thread_threadsBuilder>,
        _i3.GThreadFragment {
  GUserThreadsData_thread_threads._();

  factory GUserThreadsData_thread_threads(
          [void Function(GUserThreadsData_thread_threadsBuilder b) updates]) =
      _$GUserThreadsData_thread_threads;

  static void _initializeBuilder(GUserThreadsData_thread_threadsBuilder b) =>
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
  BuiltList<GUserThreadsData_thread_threads_mediaCategories?>?
      get mediaCategories;
  @override
  BuiltList<GUserThreadsData_thread_threads_categories?>? get categories;
  @override
  GUserThreadsData_thread_threads_user? get user;
  @override
  GUserThreadsData_thread_threads_replyUser? get replyUser;
  static Serializer<GUserThreadsData_thread_threads> get serializer =>
      _$gUserThreadsDataThreadThreadsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_thread_threads.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_thread_threads? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_thread_threads.serializer,
        json,
      );
}

abstract class GUserThreadsData_thread_threads_mediaCategories
    implements
        Built<GUserThreadsData_thread_threads_mediaCategories,
            GUserThreadsData_thread_threads_mediaCategoriesBuilder>,
        _i3.GThreadFragment_mediaCategories,
        _i4.GMediaFragment {
  GUserThreadsData_thread_threads_mediaCategories._();

  factory GUserThreadsData_thread_threads_mediaCategories(
      [void Function(GUserThreadsData_thread_threads_mediaCategoriesBuilder b)
          updates]) = _$GUserThreadsData_thread_threads_mediaCategories;

  static void _initializeBuilder(
          GUserThreadsData_thread_threads_mediaCategoriesBuilder b) =>
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
  GUserThreadsData_thread_threads_mediaCategories_title? get title;
  @override
  GUserThreadsData_thread_threads_mediaCategories_coverImage? get coverImage;
  static Serializer<GUserThreadsData_thread_threads_mediaCategories>
      get serializer =>
          _$gUserThreadsDataThreadThreadsMediaCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_thread_threads_mediaCategories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_thread_threads_mediaCategories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_thread_threads_mediaCategories.serializer,
        json,
      );
}

abstract class GUserThreadsData_thread_threads_mediaCategories_title
    implements
        Built<GUserThreadsData_thread_threads_mediaCategories_title,
            GUserThreadsData_thread_threads_mediaCategories_titleBuilder>,
        _i3.GThreadFragment_mediaCategories_title,
        _i4.GMediaFragment_title {
  GUserThreadsData_thread_threads_mediaCategories_title._();

  factory GUserThreadsData_thread_threads_mediaCategories_title(
      [void Function(
              GUserThreadsData_thread_threads_mediaCategories_titleBuilder b)
          updates]) = _$GUserThreadsData_thread_threads_mediaCategories_title;

  static void _initializeBuilder(
          GUserThreadsData_thread_threads_mediaCategories_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GUserThreadsData_thread_threads_mediaCategories_title>
      get serializer =>
          _$gUserThreadsDataThreadThreadsMediaCategoriesTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_thread_threads_mediaCategories_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_thread_threads_mediaCategories_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_thread_threads_mediaCategories_title.serializer,
        json,
      );
}

abstract class GUserThreadsData_thread_threads_mediaCategories_coverImage
    implements
        Built<GUserThreadsData_thread_threads_mediaCategories_coverImage,
            GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder>,
        _i3.GThreadFragment_mediaCategories_coverImage,
        _i4.GMediaFragment_coverImage {
  GUserThreadsData_thread_threads_mediaCategories_coverImage._();

  factory GUserThreadsData_thread_threads_mediaCategories_coverImage(
      [void Function(
              GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder
                  b)
          updates]) = _$GUserThreadsData_thread_threads_mediaCategories_coverImage;

  static void _initializeBuilder(
          GUserThreadsData_thread_threads_mediaCategories_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GUserThreadsData_thread_threads_mediaCategories_coverImage>
      get serializer =>
          _$gUserThreadsDataThreadThreadsMediaCategoriesCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_thread_threads_mediaCategories_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_thread_threads_mediaCategories_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_thread_threads_mediaCategories_coverImage.serializer,
        json,
      );
}

abstract class GUserThreadsData_thread_threads_categories
    implements
        Built<GUserThreadsData_thread_threads_categories,
            GUserThreadsData_thread_threads_categoriesBuilder>,
        _i3.GThreadFragment_categories {
  GUserThreadsData_thread_threads_categories._();

  factory GUserThreadsData_thread_threads_categories(
      [void Function(GUserThreadsData_thread_threads_categoriesBuilder b)
          updates]) = _$GUserThreadsData_thread_threads_categories;

  static void _initializeBuilder(
          GUserThreadsData_thread_threads_categoriesBuilder b) =>
      b..G__typename = 'ThreadCategory';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  static Serializer<GUserThreadsData_thread_threads_categories>
      get serializer => _$gUserThreadsDataThreadThreadsCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_thread_threads_categories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_thread_threads_categories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_thread_threads_categories.serializer,
        json,
      );
}

abstract class GUserThreadsData_thread_threads_user
    implements
        Built<GUserThreadsData_thread_threads_user,
            GUserThreadsData_thread_threads_userBuilder>,
        _i3.GThreadFragment_user,
        _i6.GUserFragment {
  GUserThreadsData_thread_threads_user._();

  factory GUserThreadsData_thread_threads_user(
      [void Function(GUserThreadsData_thread_threads_userBuilder b)
          updates]) = _$GUserThreadsData_thread_threads_user;

  static void _initializeBuilder(
          GUserThreadsData_thread_threads_userBuilder b) =>
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
  GUserThreadsData_thread_threads_user_avatar? get avatar;
  static Serializer<GUserThreadsData_thread_threads_user> get serializer =>
      _$gUserThreadsDataThreadThreadsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_thread_threads_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_thread_threads_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_thread_threads_user.serializer,
        json,
      );
}

abstract class GUserThreadsData_thread_threads_user_avatar
    implements
        Built<GUserThreadsData_thread_threads_user_avatar,
            GUserThreadsData_thread_threads_user_avatarBuilder>,
        _i3.GThreadFragment_user_avatar,
        _i6.GUserFragment_avatar {
  GUserThreadsData_thread_threads_user_avatar._();

  factory GUserThreadsData_thread_threads_user_avatar(
      [void Function(GUserThreadsData_thread_threads_user_avatarBuilder b)
          updates]) = _$GUserThreadsData_thread_threads_user_avatar;

  static void _initializeBuilder(
          GUserThreadsData_thread_threads_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GUserThreadsData_thread_threads_user_avatar>
      get serializer => _$gUserThreadsDataThreadThreadsUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_thread_threads_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_thread_threads_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_thread_threads_user_avatar.serializer,
        json,
      );
}

abstract class GUserThreadsData_thread_threads_replyUser
    implements
        Built<GUserThreadsData_thread_threads_replyUser,
            GUserThreadsData_thread_threads_replyUserBuilder>,
        _i3.GThreadFragment_replyUser,
        _i6.GUserFragment {
  GUserThreadsData_thread_threads_replyUser._();

  factory GUserThreadsData_thread_threads_replyUser(
      [void Function(GUserThreadsData_thread_threads_replyUserBuilder b)
          updates]) = _$GUserThreadsData_thread_threads_replyUser;

  static void _initializeBuilder(
          GUserThreadsData_thread_threads_replyUserBuilder b) =>
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
  GUserThreadsData_thread_threads_replyUser_avatar? get avatar;
  static Serializer<GUserThreadsData_thread_threads_replyUser> get serializer =>
      _$gUserThreadsDataThreadThreadsReplyUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_thread_threads_replyUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_thread_threads_replyUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_thread_threads_replyUser.serializer,
        json,
      );
}

abstract class GUserThreadsData_thread_threads_replyUser_avatar
    implements
        Built<GUserThreadsData_thread_threads_replyUser_avatar,
            GUserThreadsData_thread_threads_replyUser_avatarBuilder>,
        _i3.GThreadFragment_replyUser_avatar,
        _i6.GUserFragment_avatar {
  GUserThreadsData_thread_threads_replyUser_avatar._();

  factory GUserThreadsData_thread_threads_replyUser_avatar(
      [void Function(GUserThreadsData_thread_threads_replyUser_avatarBuilder b)
          updates]) = _$GUserThreadsData_thread_threads_replyUser_avatar;

  static void _initializeBuilder(
          GUserThreadsData_thread_threads_replyUser_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GUserThreadsData_thread_threads_replyUser_avatar>
      get serializer =>
          _$gUserThreadsDataThreadThreadsReplyUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_thread_threads_replyUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_thread_threads_replyUser_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_thread_threads_replyUser_avatar.serializer,
        json,
      );
}

abstract class GUserThreadsData_comments
    implements
        Built<GUserThreadsData_comments, GUserThreadsData_commentsBuilder> {
  GUserThreadsData_comments._();

  factory GUserThreadsData_comments(
          [void Function(GUserThreadsData_commentsBuilder b) updates]) =
      _$GUserThreadsData_comments;

  static void _initializeBuilder(GUserThreadsData_commentsBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserThreadsData_comments_pageInfo? get pageInfo;
  BuiltList<GUserThreadsData_comments_threadComments?>? get threadComments;
  static Serializer<GUserThreadsData_comments> get serializer =>
      _$gUserThreadsDataCommentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_comments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_comments? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_comments.serializer,
        json,
      );
}

abstract class GUserThreadsData_comments_pageInfo
    implements
        Built<GUserThreadsData_comments_pageInfo,
            GUserThreadsData_comments_pageInfoBuilder>,
        _i2.GPageInfo {
  GUserThreadsData_comments_pageInfo._();

  factory GUserThreadsData_comments_pageInfo(
      [void Function(GUserThreadsData_comments_pageInfoBuilder b)
          updates]) = _$GUserThreadsData_comments_pageInfo;

  static void _initializeBuilder(GUserThreadsData_comments_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GUserThreadsData_comments_pageInfo> get serializer =>
      _$gUserThreadsDataCommentsPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_comments_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_comments_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_comments_pageInfo.serializer,
        json,
      );
}

abstract class GUserThreadsData_comments_threadComments
    implements
        Built<GUserThreadsData_comments_threadComments,
            GUserThreadsData_comments_threadCommentsBuilder> {
  GUserThreadsData_comments_threadComments._();

  factory GUserThreadsData_comments_threadComments(
      [void Function(GUserThreadsData_comments_threadCommentsBuilder b)
          updates]) = _$GUserThreadsData_comments_threadComments;

  static void _initializeBuilder(
          GUserThreadsData_comments_threadCommentsBuilder b) =>
      b..G__typename = 'ThreadComment';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get threadId;
  String? get comment;
  bool? get isLiked;
  int get likeCount;
  int get createdAt;
  GUserThreadsData_comments_threadComments_thread? get thread;
  GUserThreadsData_comments_threadComments_user? get user;
  static Serializer<GUserThreadsData_comments_threadComments> get serializer =>
      _$gUserThreadsDataCommentsThreadCommentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_comments_threadComments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_comments_threadComments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_comments_threadComments.serializer,
        json,
      );
}

abstract class GUserThreadsData_comments_threadComments_thread
    implements
        Built<GUserThreadsData_comments_threadComments_thread,
            GUserThreadsData_comments_threadComments_threadBuilder> {
  GUserThreadsData_comments_threadComments_thread._();

  factory GUserThreadsData_comments_threadComments_thread(
      [void Function(GUserThreadsData_comments_threadComments_threadBuilder b)
          updates]) = _$GUserThreadsData_comments_threadComments_thread;

  static void _initializeBuilder(
          GUserThreadsData_comments_threadComments_threadBuilder b) =>
      b..G__typename = 'Thread';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String? get title;
  static Serializer<GUserThreadsData_comments_threadComments_thread>
      get serializer =>
          _$gUserThreadsDataCommentsThreadCommentsThreadSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_comments_threadComments_thread.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_comments_threadComments_thread? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_comments_threadComments_thread.serializer,
        json,
      );
}

abstract class GUserThreadsData_comments_threadComments_user
    implements
        Built<GUserThreadsData_comments_threadComments_user,
            GUserThreadsData_comments_threadComments_userBuilder>,
        _i6.GUserFragment {
  GUserThreadsData_comments_threadComments_user._();

  factory GUserThreadsData_comments_threadComments_user(
      [void Function(GUserThreadsData_comments_threadComments_userBuilder b)
          updates]) = _$GUserThreadsData_comments_threadComments_user;

  static void _initializeBuilder(
          GUserThreadsData_comments_threadComments_userBuilder b) =>
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
  GUserThreadsData_comments_threadComments_user_avatar? get avatar;
  static Serializer<GUserThreadsData_comments_threadComments_user>
      get serializer => _$gUserThreadsDataCommentsThreadCommentsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_comments_threadComments_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_comments_threadComments_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_comments_threadComments_user.serializer,
        json,
      );
}

abstract class GUserThreadsData_comments_threadComments_user_avatar
    implements
        Built<GUserThreadsData_comments_threadComments_user_avatar,
            GUserThreadsData_comments_threadComments_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GUserThreadsData_comments_threadComments_user_avatar._();

  factory GUserThreadsData_comments_threadComments_user_avatar(
      [void Function(
              GUserThreadsData_comments_threadComments_user_avatarBuilder b)
          updates]) = _$GUserThreadsData_comments_threadComments_user_avatar;

  static void _initializeBuilder(
          GUserThreadsData_comments_threadComments_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GUserThreadsData_comments_threadComments_user_avatar>
      get serializer =>
          _$gUserThreadsDataCommentsThreadCommentsUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsData_comments_threadComments_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsData_comments_threadComments_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsData_comments_threadComments_user_avatar.serializer,
        json,
      );
}
