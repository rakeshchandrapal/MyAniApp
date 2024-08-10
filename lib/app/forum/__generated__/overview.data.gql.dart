// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/thread.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i5;

part 'overview.data.gql.g.dart';

abstract class GForumOverviewData
    implements Built<GForumOverviewData, GForumOverviewDataBuilder> {
  GForumOverviewData._();

  factory GForumOverviewData(
          [void Function(GForumOverviewDataBuilder b) updates]) =
      _$GForumOverviewData;

  static void _initializeBuilder(GForumOverviewDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GForumOverviewData_recent? get recent;
  @BuiltValueField(wireName: 'new')
  GForumOverviewData_new? get Gnew;
  GForumOverviewData_release? get release;
  static Serializer<GForumOverviewData> get serializer =>
      _$gForumOverviewDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData.serializer,
        json,
      );
}

abstract class GForumOverviewData_recent
    implements
        Built<GForumOverviewData_recent, GForumOverviewData_recentBuilder> {
  GForumOverviewData_recent._();

  factory GForumOverviewData_recent(
          [void Function(GForumOverviewData_recentBuilder b) updates]) =
      _$GForumOverviewData_recent;

  static void _initializeBuilder(GForumOverviewData_recentBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GForumOverviewData_recent_threads?>? get threads;
  static Serializer<GForumOverviewData_recent> get serializer =>
      _$gForumOverviewDataRecentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_recent.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_recent? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_recent.serializer,
        json,
      );
}

abstract class GForumOverviewData_recent_threads
    implements
        Built<GForumOverviewData_recent_threads,
            GForumOverviewData_recent_threadsBuilder>,
        _i2.GThreadFragment {
  GForumOverviewData_recent_threads._();

  factory GForumOverviewData_recent_threads(
          [void Function(GForumOverviewData_recent_threadsBuilder b) updates]) =
      _$GForumOverviewData_recent_threads;

  static void _initializeBuilder(GForumOverviewData_recent_threadsBuilder b) =>
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
  BuiltList<GForumOverviewData_recent_threads_mediaCategories?>?
      get mediaCategories;
  @override
  BuiltList<GForumOverviewData_recent_threads_categories?>? get categories;
  @override
  GForumOverviewData_recent_threads_user? get user;
  @override
  GForumOverviewData_recent_threads_replyUser? get replyUser;
  static Serializer<GForumOverviewData_recent_threads> get serializer =>
      _$gForumOverviewDataRecentThreadsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_recent_threads.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_recent_threads? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_recent_threads.serializer,
        json,
      );
}

abstract class GForumOverviewData_recent_threads_mediaCategories
    implements
        Built<GForumOverviewData_recent_threads_mediaCategories,
            GForumOverviewData_recent_threads_mediaCategoriesBuilder>,
        _i2.GThreadFragment_mediaCategories,
        _i3.GMediaFragment {
  GForumOverviewData_recent_threads_mediaCategories._();

  factory GForumOverviewData_recent_threads_mediaCategories(
      [void Function(GForumOverviewData_recent_threads_mediaCategoriesBuilder b)
          updates]) = _$GForumOverviewData_recent_threads_mediaCategories;

  static void _initializeBuilder(
          GForumOverviewData_recent_threads_mediaCategoriesBuilder b) =>
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
  GForumOverviewData_recent_threads_mediaCategories_title? get title;
  @override
  GForumOverviewData_recent_threads_mediaCategories_coverImage? get coverImage;
  static Serializer<GForumOverviewData_recent_threads_mediaCategories>
      get serializer =>
          _$gForumOverviewDataRecentThreadsMediaCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_recent_threads_mediaCategories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_recent_threads_mediaCategories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_recent_threads_mediaCategories.serializer,
        json,
      );
}

abstract class GForumOverviewData_recent_threads_mediaCategories_title
    implements
        Built<GForumOverviewData_recent_threads_mediaCategories_title,
            GForumOverviewData_recent_threads_mediaCategories_titleBuilder>,
        _i2.GThreadFragment_mediaCategories_title,
        _i3.GMediaFragment_title {
  GForumOverviewData_recent_threads_mediaCategories_title._();

  factory GForumOverviewData_recent_threads_mediaCategories_title(
      [void Function(
              GForumOverviewData_recent_threads_mediaCategories_titleBuilder b)
          updates]) = _$GForumOverviewData_recent_threads_mediaCategories_title;

  static void _initializeBuilder(
          GForumOverviewData_recent_threads_mediaCategories_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GForumOverviewData_recent_threads_mediaCategories_title>
      get serializer =>
          _$gForumOverviewDataRecentThreadsMediaCategoriesTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_recent_threads_mediaCategories_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_recent_threads_mediaCategories_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_recent_threads_mediaCategories_title.serializer,
        json,
      );
}

abstract class GForumOverviewData_recent_threads_mediaCategories_coverImage
    implements
        Built<GForumOverviewData_recent_threads_mediaCategories_coverImage,
            GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder>,
        _i2.GThreadFragment_mediaCategories_coverImage,
        _i3.GMediaFragment_coverImage {
  GForumOverviewData_recent_threads_mediaCategories_coverImage._();

  factory GForumOverviewData_recent_threads_mediaCategories_coverImage(
          [void Function(
                  GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder
                      b)
              updates]) =
      _$GForumOverviewData_recent_threads_mediaCategories_coverImage;

  static void _initializeBuilder(
          GForumOverviewData_recent_threads_mediaCategories_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<
          GForumOverviewData_recent_threads_mediaCategories_coverImage>
      get serializer =>
          _$gForumOverviewDataRecentThreadsMediaCategoriesCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_recent_threads_mediaCategories_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_recent_threads_mediaCategories_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_recent_threads_mediaCategories_coverImage.serializer,
        json,
      );
}

abstract class GForumOverviewData_recent_threads_categories
    implements
        Built<GForumOverviewData_recent_threads_categories,
            GForumOverviewData_recent_threads_categoriesBuilder>,
        _i2.GThreadFragment_categories {
  GForumOverviewData_recent_threads_categories._();

  factory GForumOverviewData_recent_threads_categories(
      [void Function(GForumOverviewData_recent_threads_categoriesBuilder b)
          updates]) = _$GForumOverviewData_recent_threads_categories;

  static void _initializeBuilder(
          GForumOverviewData_recent_threads_categoriesBuilder b) =>
      b..G__typename = 'ThreadCategory';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  static Serializer<GForumOverviewData_recent_threads_categories>
      get serializer => _$gForumOverviewDataRecentThreadsCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_recent_threads_categories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_recent_threads_categories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_recent_threads_categories.serializer,
        json,
      );
}

abstract class GForumOverviewData_recent_threads_user
    implements
        Built<GForumOverviewData_recent_threads_user,
            GForumOverviewData_recent_threads_userBuilder>,
        _i2.GThreadFragment_user,
        _i5.GUserFragment {
  GForumOverviewData_recent_threads_user._();

  factory GForumOverviewData_recent_threads_user(
      [void Function(GForumOverviewData_recent_threads_userBuilder b)
          updates]) = _$GForumOverviewData_recent_threads_user;

  static void _initializeBuilder(
          GForumOverviewData_recent_threads_userBuilder b) =>
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
  GForumOverviewData_recent_threads_user_avatar? get avatar;
  static Serializer<GForumOverviewData_recent_threads_user> get serializer =>
      _$gForumOverviewDataRecentThreadsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_recent_threads_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_recent_threads_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_recent_threads_user.serializer,
        json,
      );
}

abstract class GForumOverviewData_recent_threads_user_avatar
    implements
        Built<GForumOverviewData_recent_threads_user_avatar,
            GForumOverviewData_recent_threads_user_avatarBuilder>,
        _i2.GThreadFragment_user_avatar,
        _i5.GUserFragment_avatar {
  GForumOverviewData_recent_threads_user_avatar._();

  factory GForumOverviewData_recent_threads_user_avatar(
      [void Function(GForumOverviewData_recent_threads_user_avatarBuilder b)
          updates]) = _$GForumOverviewData_recent_threads_user_avatar;

  static void _initializeBuilder(
          GForumOverviewData_recent_threads_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GForumOverviewData_recent_threads_user_avatar>
      get serializer => _$gForumOverviewDataRecentThreadsUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_recent_threads_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_recent_threads_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_recent_threads_user_avatar.serializer,
        json,
      );
}

abstract class GForumOverviewData_recent_threads_replyUser
    implements
        Built<GForumOverviewData_recent_threads_replyUser,
            GForumOverviewData_recent_threads_replyUserBuilder>,
        _i2.GThreadFragment_replyUser,
        _i5.GUserFragment {
  GForumOverviewData_recent_threads_replyUser._();

  factory GForumOverviewData_recent_threads_replyUser(
      [void Function(GForumOverviewData_recent_threads_replyUserBuilder b)
          updates]) = _$GForumOverviewData_recent_threads_replyUser;

  static void _initializeBuilder(
          GForumOverviewData_recent_threads_replyUserBuilder b) =>
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
  GForumOverviewData_recent_threads_replyUser_avatar? get avatar;
  static Serializer<GForumOverviewData_recent_threads_replyUser>
      get serializer => _$gForumOverviewDataRecentThreadsReplyUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_recent_threads_replyUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_recent_threads_replyUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_recent_threads_replyUser.serializer,
        json,
      );
}

abstract class GForumOverviewData_recent_threads_replyUser_avatar
    implements
        Built<GForumOverviewData_recent_threads_replyUser_avatar,
            GForumOverviewData_recent_threads_replyUser_avatarBuilder>,
        _i2.GThreadFragment_replyUser_avatar,
        _i5.GUserFragment_avatar {
  GForumOverviewData_recent_threads_replyUser_avatar._();

  factory GForumOverviewData_recent_threads_replyUser_avatar(
      [void Function(
              GForumOverviewData_recent_threads_replyUser_avatarBuilder b)
          updates]) = _$GForumOverviewData_recent_threads_replyUser_avatar;

  static void _initializeBuilder(
          GForumOverviewData_recent_threads_replyUser_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GForumOverviewData_recent_threads_replyUser_avatar>
      get serializer =>
          _$gForumOverviewDataRecentThreadsReplyUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_recent_threads_replyUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_recent_threads_replyUser_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_recent_threads_replyUser_avatar.serializer,
        json,
      );
}

abstract class GForumOverviewData_new
    implements Built<GForumOverviewData_new, GForumOverviewData_newBuilder> {
  GForumOverviewData_new._();

  factory GForumOverviewData_new(
          [void Function(GForumOverviewData_newBuilder b) updates]) =
      _$GForumOverviewData_new;

  static void _initializeBuilder(GForumOverviewData_newBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GForumOverviewData_new_threads?>? get threads;
  static Serializer<GForumOverviewData_new> get serializer =>
      _$gForumOverviewDataNewSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_new.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_new? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_new.serializer,
        json,
      );
}

abstract class GForumOverviewData_new_threads
    implements
        Built<GForumOverviewData_new_threads,
            GForumOverviewData_new_threadsBuilder>,
        _i2.GThreadFragment {
  GForumOverviewData_new_threads._();

  factory GForumOverviewData_new_threads(
          [void Function(GForumOverviewData_new_threadsBuilder b) updates]) =
      _$GForumOverviewData_new_threads;

  static void _initializeBuilder(GForumOverviewData_new_threadsBuilder b) =>
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
  BuiltList<GForumOverviewData_new_threads_mediaCategories?>?
      get mediaCategories;
  @override
  BuiltList<GForumOverviewData_new_threads_categories?>? get categories;
  @override
  GForumOverviewData_new_threads_user? get user;
  @override
  GForumOverviewData_new_threads_replyUser? get replyUser;
  static Serializer<GForumOverviewData_new_threads> get serializer =>
      _$gForumOverviewDataNewThreadsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_new_threads.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_new_threads? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_new_threads.serializer,
        json,
      );
}

abstract class GForumOverviewData_new_threads_mediaCategories
    implements
        Built<GForumOverviewData_new_threads_mediaCategories,
            GForumOverviewData_new_threads_mediaCategoriesBuilder>,
        _i2.GThreadFragment_mediaCategories,
        _i3.GMediaFragment {
  GForumOverviewData_new_threads_mediaCategories._();

  factory GForumOverviewData_new_threads_mediaCategories(
      [void Function(GForumOverviewData_new_threads_mediaCategoriesBuilder b)
          updates]) = _$GForumOverviewData_new_threads_mediaCategories;

  static void _initializeBuilder(
          GForumOverviewData_new_threads_mediaCategoriesBuilder b) =>
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
  GForumOverviewData_new_threads_mediaCategories_title? get title;
  @override
  GForumOverviewData_new_threads_mediaCategories_coverImage? get coverImage;
  static Serializer<GForumOverviewData_new_threads_mediaCategories>
      get serializer => _$gForumOverviewDataNewThreadsMediaCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_new_threads_mediaCategories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_new_threads_mediaCategories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_new_threads_mediaCategories.serializer,
        json,
      );
}

abstract class GForumOverviewData_new_threads_mediaCategories_title
    implements
        Built<GForumOverviewData_new_threads_mediaCategories_title,
            GForumOverviewData_new_threads_mediaCategories_titleBuilder>,
        _i2.GThreadFragment_mediaCategories_title,
        _i3.GMediaFragment_title {
  GForumOverviewData_new_threads_mediaCategories_title._();

  factory GForumOverviewData_new_threads_mediaCategories_title(
      [void Function(
              GForumOverviewData_new_threads_mediaCategories_titleBuilder b)
          updates]) = _$GForumOverviewData_new_threads_mediaCategories_title;

  static void _initializeBuilder(
          GForumOverviewData_new_threads_mediaCategories_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GForumOverviewData_new_threads_mediaCategories_title>
      get serializer =>
          _$gForumOverviewDataNewThreadsMediaCategoriesTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_new_threads_mediaCategories_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_new_threads_mediaCategories_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_new_threads_mediaCategories_title.serializer,
        json,
      );
}

abstract class GForumOverviewData_new_threads_mediaCategories_coverImage
    implements
        Built<GForumOverviewData_new_threads_mediaCategories_coverImage,
            GForumOverviewData_new_threads_mediaCategories_coverImageBuilder>,
        _i2.GThreadFragment_mediaCategories_coverImage,
        _i3.GMediaFragment_coverImage {
  GForumOverviewData_new_threads_mediaCategories_coverImage._();

  factory GForumOverviewData_new_threads_mediaCategories_coverImage(
      [void Function(
              GForumOverviewData_new_threads_mediaCategories_coverImageBuilder
                  b)
          updates]) = _$GForumOverviewData_new_threads_mediaCategories_coverImage;

  static void _initializeBuilder(
          GForumOverviewData_new_threads_mediaCategories_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GForumOverviewData_new_threads_mediaCategories_coverImage>
      get serializer =>
          _$gForumOverviewDataNewThreadsMediaCategoriesCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_new_threads_mediaCategories_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_new_threads_mediaCategories_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_new_threads_mediaCategories_coverImage.serializer,
        json,
      );
}

abstract class GForumOverviewData_new_threads_categories
    implements
        Built<GForumOverviewData_new_threads_categories,
            GForumOverviewData_new_threads_categoriesBuilder>,
        _i2.GThreadFragment_categories {
  GForumOverviewData_new_threads_categories._();

  factory GForumOverviewData_new_threads_categories(
      [void Function(GForumOverviewData_new_threads_categoriesBuilder b)
          updates]) = _$GForumOverviewData_new_threads_categories;

  static void _initializeBuilder(
          GForumOverviewData_new_threads_categoriesBuilder b) =>
      b..G__typename = 'ThreadCategory';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  static Serializer<GForumOverviewData_new_threads_categories> get serializer =>
      _$gForumOverviewDataNewThreadsCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_new_threads_categories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_new_threads_categories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_new_threads_categories.serializer,
        json,
      );
}

abstract class GForumOverviewData_new_threads_user
    implements
        Built<GForumOverviewData_new_threads_user,
            GForumOverviewData_new_threads_userBuilder>,
        _i2.GThreadFragment_user,
        _i5.GUserFragment {
  GForumOverviewData_new_threads_user._();

  factory GForumOverviewData_new_threads_user(
      [void Function(GForumOverviewData_new_threads_userBuilder b)
          updates]) = _$GForumOverviewData_new_threads_user;

  static void _initializeBuilder(
          GForumOverviewData_new_threads_userBuilder b) =>
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
  GForumOverviewData_new_threads_user_avatar? get avatar;
  static Serializer<GForumOverviewData_new_threads_user> get serializer =>
      _$gForumOverviewDataNewThreadsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_new_threads_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_new_threads_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_new_threads_user.serializer,
        json,
      );
}

abstract class GForumOverviewData_new_threads_user_avatar
    implements
        Built<GForumOverviewData_new_threads_user_avatar,
            GForumOverviewData_new_threads_user_avatarBuilder>,
        _i2.GThreadFragment_user_avatar,
        _i5.GUserFragment_avatar {
  GForumOverviewData_new_threads_user_avatar._();

  factory GForumOverviewData_new_threads_user_avatar(
      [void Function(GForumOverviewData_new_threads_user_avatarBuilder b)
          updates]) = _$GForumOverviewData_new_threads_user_avatar;

  static void _initializeBuilder(
          GForumOverviewData_new_threads_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GForumOverviewData_new_threads_user_avatar>
      get serializer => _$gForumOverviewDataNewThreadsUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_new_threads_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_new_threads_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_new_threads_user_avatar.serializer,
        json,
      );
}

abstract class GForumOverviewData_new_threads_replyUser
    implements
        Built<GForumOverviewData_new_threads_replyUser,
            GForumOverviewData_new_threads_replyUserBuilder>,
        _i2.GThreadFragment_replyUser,
        _i5.GUserFragment {
  GForumOverviewData_new_threads_replyUser._();

  factory GForumOverviewData_new_threads_replyUser(
      [void Function(GForumOverviewData_new_threads_replyUserBuilder b)
          updates]) = _$GForumOverviewData_new_threads_replyUser;

  static void _initializeBuilder(
          GForumOverviewData_new_threads_replyUserBuilder b) =>
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
  GForumOverviewData_new_threads_replyUser_avatar? get avatar;
  static Serializer<GForumOverviewData_new_threads_replyUser> get serializer =>
      _$gForumOverviewDataNewThreadsReplyUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_new_threads_replyUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_new_threads_replyUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_new_threads_replyUser.serializer,
        json,
      );
}

abstract class GForumOverviewData_new_threads_replyUser_avatar
    implements
        Built<GForumOverviewData_new_threads_replyUser_avatar,
            GForumOverviewData_new_threads_replyUser_avatarBuilder>,
        _i2.GThreadFragment_replyUser_avatar,
        _i5.GUserFragment_avatar {
  GForumOverviewData_new_threads_replyUser_avatar._();

  factory GForumOverviewData_new_threads_replyUser_avatar(
      [void Function(GForumOverviewData_new_threads_replyUser_avatarBuilder b)
          updates]) = _$GForumOverviewData_new_threads_replyUser_avatar;

  static void _initializeBuilder(
          GForumOverviewData_new_threads_replyUser_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GForumOverviewData_new_threads_replyUser_avatar>
      get serializer => _$gForumOverviewDataNewThreadsReplyUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_new_threads_replyUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_new_threads_replyUser_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_new_threads_replyUser_avatar.serializer,
        json,
      );
}

abstract class GForumOverviewData_release
    implements
        Built<GForumOverviewData_release, GForumOverviewData_releaseBuilder> {
  GForumOverviewData_release._();

  factory GForumOverviewData_release(
          [void Function(GForumOverviewData_releaseBuilder b) updates]) =
      _$GForumOverviewData_release;

  static void _initializeBuilder(GForumOverviewData_releaseBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GForumOverviewData_release_threads?>? get threads;
  static Serializer<GForumOverviewData_release> get serializer =>
      _$gForumOverviewDataReleaseSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_release.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_release? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_release.serializer,
        json,
      );
}

abstract class GForumOverviewData_release_threads
    implements
        Built<GForumOverviewData_release_threads,
            GForumOverviewData_release_threadsBuilder>,
        _i2.GThreadFragment {
  GForumOverviewData_release_threads._();

  factory GForumOverviewData_release_threads(
      [void Function(GForumOverviewData_release_threadsBuilder b)
          updates]) = _$GForumOverviewData_release_threads;

  static void _initializeBuilder(GForumOverviewData_release_threadsBuilder b) =>
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
  BuiltList<GForumOverviewData_release_threads_mediaCategories?>?
      get mediaCategories;
  @override
  BuiltList<GForumOverviewData_release_threads_categories?>? get categories;
  @override
  GForumOverviewData_release_threads_user? get user;
  @override
  GForumOverviewData_release_threads_replyUser? get replyUser;
  static Serializer<GForumOverviewData_release_threads> get serializer =>
      _$gForumOverviewDataReleaseThreadsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_release_threads.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_release_threads? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_release_threads.serializer,
        json,
      );
}

abstract class GForumOverviewData_release_threads_mediaCategories
    implements
        Built<GForumOverviewData_release_threads_mediaCategories,
            GForumOverviewData_release_threads_mediaCategoriesBuilder>,
        _i2.GThreadFragment_mediaCategories,
        _i3.GMediaFragment {
  GForumOverviewData_release_threads_mediaCategories._();

  factory GForumOverviewData_release_threads_mediaCategories(
      [void Function(
              GForumOverviewData_release_threads_mediaCategoriesBuilder b)
          updates]) = _$GForumOverviewData_release_threads_mediaCategories;

  static void _initializeBuilder(
          GForumOverviewData_release_threads_mediaCategoriesBuilder b) =>
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
  GForumOverviewData_release_threads_mediaCategories_title? get title;
  @override
  GForumOverviewData_release_threads_mediaCategories_coverImage? get coverImage;
  static Serializer<GForumOverviewData_release_threads_mediaCategories>
      get serializer =>
          _$gForumOverviewDataReleaseThreadsMediaCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_release_threads_mediaCategories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_release_threads_mediaCategories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_release_threads_mediaCategories.serializer,
        json,
      );
}

abstract class GForumOverviewData_release_threads_mediaCategories_title
    implements
        Built<GForumOverviewData_release_threads_mediaCategories_title,
            GForumOverviewData_release_threads_mediaCategories_titleBuilder>,
        _i2.GThreadFragment_mediaCategories_title,
        _i3.GMediaFragment_title {
  GForumOverviewData_release_threads_mediaCategories_title._();

  factory GForumOverviewData_release_threads_mediaCategories_title(
      [void Function(
              GForumOverviewData_release_threads_mediaCategories_titleBuilder b)
          updates]) = _$GForumOverviewData_release_threads_mediaCategories_title;

  static void _initializeBuilder(
          GForumOverviewData_release_threads_mediaCategories_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GForumOverviewData_release_threads_mediaCategories_title>
      get serializer =>
          _$gForumOverviewDataReleaseThreadsMediaCategoriesTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_release_threads_mediaCategories_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_release_threads_mediaCategories_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_release_threads_mediaCategories_title.serializer,
        json,
      );
}

abstract class GForumOverviewData_release_threads_mediaCategories_coverImage
    implements
        Built<GForumOverviewData_release_threads_mediaCategories_coverImage,
            GForumOverviewData_release_threads_mediaCategories_coverImageBuilder>,
        _i2.GThreadFragment_mediaCategories_coverImage,
        _i3.GMediaFragment_coverImage {
  GForumOverviewData_release_threads_mediaCategories_coverImage._();

  factory GForumOverviewData_release_threads_mediaCategories_coverImage(
          [void Function(
                  GForumOverviewData_release_threads_mediaCategories_coverImageBuilder
                      b)
              updates]) =
      _$GForumOverviewData_release_threads_mediaCategories_coverImage;

  static void _initializeBuilder(
          GForumOverviewData_release_threads_mediaCategories_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<
          GForumOverviewData_release_threads_mediaCategories_coverImage>
      get serializer =>
          _$gForumOverviewDataReleaseThreadsMediaCategoriesCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_release_threads_mediaCategories_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_release_threads_mediaCategories_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GForumOverviewData_release_threads_mediaCategories_coverImage
                .serializer,
            json,
          );
}

abstract class GForumOverviewData_release_threads_categories
    implements
        Built<GForumOverviewData_release_threads_categories,
            GForumOverviewData_release_threads_categoriesBuilder>,
        _i2.GThreadFragment_categories {
  GForumOverviewData_release_threads_categories._();

  factory GForumOverviewData_release_threads_categories(
      [void Function(GForumOverviewData_release_threads_categoriesBuilder b)
          updates]) = _$GForumOverviewData_release_threads_categories;

  static void _initializeBuilder(
          GForumOverviewData_release_threads_categoriesBuilder b) =>
      b..G__typename = 'ThreadCategory';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  static Serializer<GForumOverviewData_release_threads_categories>
      get serializer => _$gForumOverviewDataReleaseThreadsCategoriesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_release_threads_categories.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_release_threads_categories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_release_threads_categories.serializer,
        json,
      );
}

abstract class GForumOverviewData_release_threads_user
    implements
        Built<GForumOverviewData_release_threads_user,
            GForumOverviewData_release_threads_userBuilder>,
        _i2.GThreadFragment_user,
        _i5.GUserFragment {
  GForumOverviewData_release_threads_user._();

  factory GForumOverviewData_release_threads_user(
      [void Function(GForumOverviewData_release_threads_userBuilder b)
          updates]) = _$GForumOverviewData_release_threads_user;

  static void _initializeBuilder(
          GForumOverviewData_release_threads_userBuilder b) =>
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
  GForumOverviewData_release_threads_user_avatar? get avatar;
  static Serializer<GForumOverviewData_release_threads_user> get serializer =>
      _$gForumOverviewDataReleaseThreadsUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_release_threads_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_release_threads_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_release_threads_user.serializer,
        json,
      );
}

abstract class GForumOverviewData_release_threads_user_avatar
    implements
        Built<GForumOverviewData_release_threads_user_avatar,
            GForumOverviewData_release_threads_user_avatarBuilder>,
        _i2.GThreadFragment_user_avatar,
        _i5.GUserFragment_avatar {
  GForumOverviewData_release_threads_user_avatar._();

  factory GForumOverviewData_release_threads_user_avatar(
      [void Function(GForumOverviewData_release_threads_user_avatarBuilder b)
          updates]) = _$GForumOverviewData_release_threads_user_avatar;

  static void _initializeBuilder(
          GForumOverviewData_release_threads_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GForumOverviewData_release_threads_user_avatar>
      get serializer => _$gForumOverviewDataReleaseThreadsUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_release_threads_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_release_threads_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_release_threads_user_avatar.serializer,
        json,
      );
}

abstract class GForumOverviewData_release_threads_replyUser
    implements
        Built<GForumOverviewData_release_threads_replyUser,
            GForumOverviewData_release_threads_replyUserBuilder>,
        _i2.GThreadFragment_replyUser,
        _i5.GUserFragment {
  GForumOverviewData_release_threads_replyUser._();

  factory GForumOverviewData_release_threads_replyUser(
      [void Function(GForumOverviewData_release_threads_replyUserBuilder b)
          updates]) = _$GForumOverviewData_release_threads_replyUser;

  static void _initializeBuilder(
          GForumOverviewData_release_threads_replyUserBuilder b) =>
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
  GForumOverviewData_release_threads_replyUser_avatar? get avatar;
  static Serializer<GForumOverviewData_release_threads_replyUser>
      get serializer => _$gForumOverviewDataReleaseThreadsReplyUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_release_threads_replyUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_release_threads_replyUser? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_release_threads_replyUser.serializer,
        json,
      );
}

abstract class GForumOverviewData_release_threads_replyUser_avatar
    implements
        Built<GForumOverviewData_release_threads_replyUser_avatar,
            GForumOverviewData_release_threads_replyUser_avatarBuilder>,
        _i2.GThreadFragment_replyUser_avatar,
        _i5.GUserFragment_avatar {
  GForumOverviewData_release_threads_replyUser_avatar._();

  factory GForumOverviewData_release_threads_replyUser_avatar(
      [void Function(
              GForumOverviewData_release_threads_replyUser_avatarBuilder b)
          updates]) = _$GForumOverviewData_release_threads_replyUser_avatar;

  static void _initializeBuilder(
          GForumOverviewData_release_threads_replyUser_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GForumOverviewData_release_threads_replyUser_avatar>
      get serializer =>
          _$gForumOverviewDataReleaseThreadsReplyUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewData_release_threads_replyUser_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewData_release_threads_replyUser_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewData_release_threads_replyUser_avatar.serializer,
        json,
      );
}
