// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i7;
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/thread.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i5;

part 'thread.data.gql.g.dart';

abstract class GThreadData implements Built<GThreadData, GThreadDataBuilder> {
  GThreadData._();

  factory GThreadData([void Function(GThreadDataBuilder b) updates]) =
      _$GThreadData;

  static void _initializeBuilder(GThreadDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GThreadData_thread? get thread;
  GThreadData_comments? get comments;
  static Serializer<GThreadData> get serializer => _$gThreadDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData.serializer,
        json,
      );
}

abstract class GThreadData_thread
    implements
        Built<GThreadData_thread, GThreadData_threadBuilder>,
        _i2.GThreadFragment {
  GThreadData_thread._();

  factory GThreadData_thread(
          [void Function(GThreadData_threadBuilder b) updates]) =
      _$GThreadData_thread;

  static void _initializeBuilder(GThreadData_threadBuilder b) =>
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
  BuiltList<GThreadData_thread_mediaCategories?>? get mediaCategories;
  @override
  BuiltList<GThreadData_thread_categories?>? get categories;
  @override
  GThreadData_thread_user? get user;
  @override
  GThreadData_thread_replyUser? get replyUser;
  String? get body;
  int get userId;
  bool? get isLocked;
  bool? get isSubscribed;
  bool? get isLiked;
  int get likeCount;
  String? get siteUrl;
  static Serializer<GThreadData_thread> get serializer =>
      _$gThreadDataThreadSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_thread.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_thread? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_thread.serializer,
        json,
      );
}

abstract class GThreadData_thread_mediaCategories
    implements
        Built<GThreadData_thread_mediaCategories,
            GThreadData_thread_mediaCategoriesBuilder>,
        _i2.GThreadFragment_mediaCategories,
        _i3.GMediaFragment {
  GThreadData_thread_mediaCategories._();

  factory GThreadData_thread_mediaCategories(
      [void Function(GThreadData_thread_mediaCategoriesBuilder b)
          updates]) = _$GThreadData_thread_mediaCategories;

  static void _initializeBuilder(GThreadData_thread_mediaCategoriesBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i4.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i4.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GThreadData_thread_mediaCategories_title? get title;
  @override
  GThreadData_thread_mediaCategories_coverImage? get coverImage;
  static Serializer<GThreadData_thread_mediaCategories> get serializer =>
      _$gThreadDataThreadMediaCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_thread_mediaCategories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_thread_mediaCategories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_thread_mediaCategories.serializer,
        json,
      );
}

abstract class GThreadData_thread_mediaCategories_title
    implements
        Built<GThreadData_thread_mediaCategories_title,
            GThreadData_thread_mediaCategories_titleBuilder>,
        _i2.GThreadFragment_mediaCategories_title,
        _i3.GMediaFragment_title {
  GThreadData_thread_mediaCategories_title._();

  factory GThreadData_thread_mediaCategories_title(
      [void Function(GThreadData_thread_mediaCategories_titleBuilder b)
          updates]) = _$GThreadData_thread_mediaCategories_title;

  static void _initializeBuilder(
          GThreadData_thread_mediaCategories_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GThreadData_thread_mediaCategories_title> get serializer =>
      _$gThreadDataThreadMediaCategoriesTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_thread_mediaCategories_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_thread_mediaCategories_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_thread_mediaCategories_title.serializer,
        json,
      );
}

abstract class GThreadData_thread_mediaCategories_coverImage
    implements
        Built<GThreadData_thread_mediaCategories_coverImage,
            GThreadData_thread_mediaCategories_coverImageBuilder>,
        _i2.GThreadFragment_mediaCategories_coverImage,
        _i3.GMediaFragment_coverImage {
  GThreadData_thread_mediaCategories_coverImage._();

  factory GThreadData_thread_mediaCategories_coverImage(
      [void Function(GThreadData_thread_mediaCategories_coverImageBuilder b)
          updates]) = _$GThreadData_thread_mediaCategories_coverImage;

  static void _initializeBuilder(
          GThreadData_thread_mediaCategories_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GThreadData_thread_mediaCategories_coverImage>
      get serializer => _$gThreadDataThreadMediaCategoriesCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_thread_mediaCategories_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_thread_mediaCategories_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_thread_mediaCategories_coverImage.serializer,
        json,
      );
}

abstract class GThreadData_thread_categories
    implements
        Built<GThreadData_thread_categories,
            GThreadData_thread_categoriesBuilder>,
        _i2.GThreadFragment_categories {
  GThreadData_thread_categories._();

  factory GThreadData_thread_categories(
          [void Function(GThreadData_thread_categoriesBuilder b) updates]) =
      _$GThreadData_thread_categories;

  static void _initializeBuilder(GThreadData_thread_categoriesBuilder b) =>
      b..G__typename = 'ThreadCategory';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  static Serializer<GThreadData_thread_categories> get serializer =>
      _$gThreadDataThreadCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_thread_categories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_thread_categories? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_thread_categories.serializer,
        json,
      );
}

abstract class GThreadData_thread_user
    implements
        Built<GThreadData_thread_user, GThreadData_thread_userBuilder>,
        _i2.GThreadFragment_user,
        _i5.GUserFragment {
  GThreadData_thread_user._();

  factory GThreadData_thread_user(
          [void Function(GThreadData_thread_userBuilder b) updates]) =
      _$GThreadData_thread_user;

  static void _initializeBuilder(GThreadData_thread_userBuilder b) =>
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
  GThreadData_thread_user_avatar? get avatar;
  static Serializer<GThreadData_thread_user> get serializer =>
      _$gThreadDataThreadUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_thread_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_thread_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_thread_user.serializer,
        json,
      );
}

abstract class GThreadData_thread_user_avatar
    implements
        Built<GThreadData_thread_user_avatar,
            GThreadData_thread_user_avatarBuilder>,
        _i2.GThreadFragment_user_avatar,
        _i5.GUserFragment_avatar {
  GThreadData_thread_user_avatar._();

  factory GThreadData_thread_user_avatar(
          [void Function(GThreadData_thread_user_avatarBuilder b) updates]) =
      _$GThreadData_thread_user_avatar;

  static void _initializeBuilder(GThreadData_thread_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GThreadData_thread_user_avatar> get serializer =>
      _$gThreadDataThreadUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_thread_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_thread_user_avatar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_thread_user_avatar.serializer,
        json,
      );
}

abstract class GThreadData_thread_replyUser
    implements
        Built<GThreadData_thread_replyUser,
            GThreadData_thread_replyUserBuilder>,
        _i2.GThreadFragment_replyUser,
        _i5.GUserFragment {
  GThreadData_thread_replyUser._();

  factory GThreadData_thread_replyUser(
          [void Function(GThreadData_thread_replyUserBuilder b) updates]) =
      _$GThreadData_thread_replyUser;

  static void _initializeBuilder(GThreadData_thread_replyUserBuilder b) =>
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
  GThreadData_thread_replyUser_avatar? get avatar;
  static Serializer<GThreadData_thread_replyUser> get serializer =>
      _$gThreadDataThreadReplyUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_thread_replyUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_thread_replyUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_thread_replyUser.serializer,
        json,
      );
}

abstract class GThreadData_thread_replyUser_avatar
    implements
        Built<GThreadData_thread_replyUser_avatar,
            GThreadData_thread_replyUser_avatarBuilder>,
        _i2.GThreadFragment_replyUser_avatar,
        _i5.GUserFragment_avatar {
  GThreadData_thread_replyUser_avatar._();

  factory GThreadData_thread_replyUser_avatar(
      [void Function(GThreadData_thread_replyUser_avatarBuilder b)
          updates]) = _$GThreadData_thread_replyUser_avatar;

  static void _initializeBuilder(
          GThreadData_thread_replyUser_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GThreadData_thread_replyUser_avatar> get serializer =>
      _$gThreadDataThreadReplyUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_thread_replyUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_thread_replyUser_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_thread_replyUser_avatar.serializer,
        json,
      );
}

abstract class GThreadData_comments
    implements Built<GThreadData_comments, GThreadData_commentsBuilder> {
  GThreadData_comments._();

  factory GThreadData_comments(
          [void Function(GThreadData_commentsBuilder b) updates]) =
      _$GThreadData_comments;

  static void _initializeBuilder(GThreadData_commentsBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GThreadData_comments_pageInfo? get pageInfo;
  BuiltList<GThreadData_comments_threadComments?>? get threadComments;
  static Serializer<GThreadData_comments> get serializer =>
      _$gThreadDataCommentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_comments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_comments? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_comments.serializer,
        json,
      );
}

abstract class GThreadData_comments_pageInfo
    implements
        Built<GThreadData_comments_pageInfo,
            GThreadData_comments_pageInfoBuilder>,
        _i6.GPageInfo {
  GThreadData_comments_pageInfo._();

  factory GThreadData_comments_pageInfo(
          [void Function(GThreadData_comments_pageInfoBuilder b) updates]) =
      _$GThreadData_comments_pageInfo;

  static void _initializeBuilder(GThreadData_comments_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  int? get total;
  int? get lastPage;
  static Serializer<GThreadData_comments_pageInfo> get serializer =>
      _$gThreadDataCommentsPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_comments_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_comments_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_comments_pageInfo.serializer,
        json,
      );
}

abstract class GThreadData_comments_threadComments
    implements
        Built<GThreadData_comments_threadComments,
            GThreadData_comments_threadCommentsBuilder> {
  GThreadData_comments_threadComments._();

  factory GThreadData_comments_threadComments(
      [void Function(GThreadData_comments_threadCommentsBuilder b)
          updates]) = _$GThreadData_comments_threadComments;

  static void _initializeBuilder(
          GThreadData_comments_threadCommentsBuilder b) =>
      b..G__typename = 'ThreadComment';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get threadId;
  String? get comment;
  bool? get isLiked;
  int get likeCount;
  int get createdAt;
  GThreadData_comments_threadComments_user? get user;
  _i7.JsonObject? get childComments;
  bool? get isLocked;
  static Serializer<GThreadData_comments_threadComments> get serializer =>
      _$gThreadDataCommentsThreadCommentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_comments_threadComments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_comments_threadComments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_comments_threadComments.serializer,
        json,
      );
}

abstract class GThreadData_comments_threadComments_user
    implements
        Built<GThreadData_comments_threadComments_user,
            GThreadData_comments_threadComments_userBuilder> {
  GThreadData_comments_threadComments_user._();

  factory GThreadData_comments_threadComments_user(
      [void Function(GThreadData_comments_threadComments_userBuilder b)
          updates]) = _$GThreadData_comments_threadComments_user;

  static void _initializeBuilder(
          GThreadData_comments_threadComments_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get name;
  GThreadData_comments_threadComments_user_avatar? get avatar;
  static Serializer<GThreadData_comments_threadComments_user> get serializer =>
      _$gThreadDataCommentsThreadCommentsUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_comments_threadComments_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_comments_threadComments_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_comments_threadComments_user.serializer,
        json,
      );
}

abstract class GThreadData_comments_threadComments_user_avatar
    implements
        Built<GThreadData_comments_threadComments_user_avatar,
            GThreadData_comments_threadComments_user_avatarBuilder> {
  GThreadData_comments_threadComments_user_avatar._();

  factory GThreadData_comments_threadComments_user_avatar(
      [void Function(GThreadData_comments_threadComments_user_avatarBuilder b)
          updates]) = _$GThreadData_comments_threadComments_user_avatar;

  static void _initializeBuilder(
          GThreadData_comments_threadComments_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<GThreadData_comments_threadComments_user_avatar>
      get serializer => _$gThreadDataCommentsThreadCommentsUserAvatarSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadData_comments_threadComments_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadData_comments_threadComments_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadData_comments_threadComments_user_avatar.serializer,
        json,
      );
}

abstract class GSaveCommentData
    implements Built<GSaveCommentData, GSaveCommentDataBuilder> {
  GSaveCommentData._();

  factory GSaveCommentData([void Function(GSaveCommentDataBuilder b) updates]) =
      _$GSaveCommentData;

  static void _initializeBuilder(GSaveCommentDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSaveCommentData_SaveThreadComment? get SaveThreadComment;
  static Serializer<GSaveCommentData> get serializer =>
      _$gSaveCommentDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveCommentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveCommentData.serializer,
        json,
      );
}

abstract class GSaveCommentData_SaveThreadComment
    implements
        Built<GSaveCommentData_SaveThreadComment,
            GSaveCommentData_SaveThreadCommentBuilder> {
  GSaveCommentData_SaveThreadComment._();

  factory GSaveCommentData_SaveThreadComment(
      [void Function(GSaveCommentData_SaveThreadCommentBuilder b)
          updates]) = _$GSaveCommentData_SaveThreadComment;

  static void _initializeBuilder(GSaveCommentData_SaveThreadCommentBuilder b) =>
      b..G__typename = 'ThreadComment';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get threadId;
  String? get comment;
  bool? get isLiked;
  int get likeCount;
  int get createdAt;
  GSaveCommentData_SaveThreadComment_user? get user;
  _i7.JsonObject? get childComments;
  bool? get isLocked;
  static Serializer<GSaveCommentData_SaveThreadComment> get serializer =>
      _$gSaveCommentDataSaveThreadCommentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveCommentData_SaveThreadComment.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveCommentData_SaveThreadComment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveCommentData_SaveThreadComment.serializer,
        json,
      );
}

abstract class GSaveCommentData_SaveThreadComment_user
    implements
        Built<GSaveCommentData_SaveThreadComment_user,
            GSaveCommentData_SaveThreadComment_userBuilder> {
  GSaveCommentData_SaveThreadComment_user._();

  factory GSaveCommentData_SaveThreadComment_user(
      [void Function(GSaveCommentData_SaveThreadComment_userBuilder b)
          updates]) = _$GSaveCommentData_SaveThreadComment_user;

  static void _initializeBuilder(
          GSaveCommentData_SaveThreadComment_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get name;
  int? get donatorTier;
  String? get donatorBadge;
  BuiltList<_i4.GModRole?>? get moderatorRoles;
  GSaveCommentData_SaveThreadComment_user_avatar? get avatar;
  static Serializer<GSaveCommentData_SaveThreadComment_user> get serializer =>
      _$gSaveCommentDataSaveThreadCommentUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveCommentData_SaveThreadComment_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveCommentData_SaveThreadComment_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveCommentData_SaveThreadComment_user.serializer,
        json,
      );
}

abstract class GSaveCommentData_SaveThreadComment_user_avatar
    implements
        Built<GSaveCommentData_SaveThreadComment_user_avatar,
            GSaveCommentData_SaveThreadComment_user_avatarBuilder> {
  GSaveCommentData_SaveThreadComment_user_avatar._();

  factory GSaveCommentData_SaveThreadComment_user_avatar(
      [void Function(GSaveCommentData_SaveThreadComment_user_avatarBuilder b)
          updates]) = _$GSaveCommentData_SaveThreadComment_user_avatar;

  static void _initializeBuilder(
          GSaveCommentData_SaveThreadComment_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<GSaveCommentData_SaveThreadComment_user_avatar>
      get serializer => _$gSaveCommentDataSaveThreadCommentUserAvatarSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveCommentData_SaveThreadComment_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveCommentData_SaveThreadComment_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveCommentData_SaveThreadComment_user_avatar.serializer,
        json,
      );
}

abstract class GDeleteCommentData
    implements Built<GDeleteCommentData, GDeleteCommentDataBuilder> {
  GDeleteCommentData._();

  factory GDeleteCommentData(
          [void Function(GDeleteCommentDataBuilder b) updates]) =
      _$GDeleteCommentData;

  static void _initializeBuilder(GDeleteCommentDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDeleteCommentData_DeleteThreadComment? get DeleteThreadComment;
  static Serializer<GDeleteCommentData> get serializer =>
      _$gDeleteCommentDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteCommentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteCommentData.serializer,
        json,
      );
}

abstract class GDeleteCommentData_DeleteThreadComment
    implements
        Built<GDeleteCommentData_DeleteThreadComment,
            GDeleteCommentData_DeleteThreadCommentBuilder> {
  GDeleteCommentData_DeleteThreadComment._();

  factory GDeleteCommentData_DeleteThreadComment(
      [void Function(GDeleteCommentData_DeleteThreadCommentBuilder b)
          updates]) = _$GDeleteCommentData_DeleteThreadComment;

  static void _initializeBuilder(
          GDeleteCommentData_DeleteThreadCommentBuilder b) =>
      b..G__typename = 'Deleted';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get deleted;
  static Serializer<GDeleteCommentData_DeleteThreadComment> get serializer =>
      _$gDeleteCommentDataDeleteThreadCommentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteCommentData_DeleteThreadComment.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteCommentData_DeleteThreadComment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteCommentData_DeleteThreadComment.serializer,
        json,
      );
}

abstract class GToggleThreadSubscriptionData
    implements
        Built<GToggleThreadSubscriptionData,
            GToggleThreadSubscriptionDataBuilder> {
  GToggleThreadSubscriptionData._();

  factory GToggleThreadSubscriptionData(
          [void Function(GToggleThreadSubscriptionDataBuilder b) updates]) =
      _$GToggleThreadSubscriptionData;

  static void _initializeBuilder(GToggleThreadSubscriptionDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToggleThreadSubscriptionData_ToggleThreadSubscription?
      get ToggleThreadSubscription;
  static Serializer<GToggleThreadSubscriptionData> get serializer =>
      _$gToggleThreadSubscriptionDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleThreadSubscriptionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleThreadSubscriptionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleThreadSubscriptionData.serializer,
        json,
      );
}

abstract class GToggleThreadSubscriptionData_ToggleThreadSubscription
    implements
        Built<GToggleThreadSubscriptionData_ToggleThreadSubscription,
            GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder> {
  GToggleThreadSubscriptionData_ToggleThreadSubscription._();

  factory GToggleThreadSubscriptionData_ToggleThreadSubscription(
      [void Function(
              GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder b)
          updates]) = _$GToggleThreadSubscriptionData_ToggleThreadSubscription;

  static void _initializeBuilder(
          GToggleThreadSubscriptionData_ToggleThreadSubscriptionBuilder b) =>
      b..G__typename = 'Thread';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  bool? get isSubscribed;
  static Serializer<GToggleThreadSubscriptionData_ToggleThreadSubscription>
      get serializer =>
          _$gToggleThreadSubscriptionDataToggleThreadSubscriptionSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleThreadSubscriptionData_ToggleThreadSubscription.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleThreadSubscriptionData_ToggleThreadSubscription? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleThreadSubscriptionData_ToggleThreadSubscription.serializer,
        json,
      );
}
