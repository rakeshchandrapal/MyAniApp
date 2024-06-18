// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/inline_fragment_serializer.dart'
    as _i3;
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i5;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i6;

part 'notifications.data.gql.g.dart';

abstract class GNotificationsData
    implements Built<GNotificationsData, GNotificationsDataBuilder> {
  GNotificationsData._();

  factory GNotificationsData(
          [void Function(GNotificationsDataBuilder b) updates]) =
      _$GNotificationsData;

  static void _initializeBuilder(GNotificationsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GNotificationsData_Page? get Page;
  static Serializer<GNotificationsData> get serializer =>
      _$gNotificationsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsData.serializer,
        json,
      );
}

abstract class GNotificationsData_Page
    implements Built<GNotificationsData_Page, GNotificationsData_PageBuilder> {
  GNotificationsData_Page._();

  factory GNotificationsData_Page(
          [void Function(GNotificationsData_PageBuilder b) updates]) =
      _$GNotificationsData_Page;

  static void _initializeBuilder(GNotificationsData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GNotificationsData_Page_pageInfo? get pageInfo;
  BuiltList<GNotificationsData_Page_notifications?>? get notifications;
  static Serializer<GNotificationsData_Page> get serializer =>
      _$gNotificationsDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsData_Page.serializer,
        json,
      );
}

abstract class GNotificationsData_Page_pageInfo
    implements
        Built<GNotificationsData_Page_pageInfo,
            GNotificationsData_Page_pageInfoBuilder>,
        _i2.GPageInfo {
  GNotificationsData_Page_pageInfo._();

  factory GNotificationsData_Page_pageInfo(
          [void Function(GNotificationsData_Page_pageInfoBuilder b) updates]) =
      _$GNotificationsData_Page_pageInfo;

  static void _initializeBuilder(GNotificationsData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GNotificationsData_Page_pageInfo> get serializer =>
      _$gNotificationsDataPagePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GNotificationsData_Page_notifications {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GNotificationsData_Page_notifications> get serializer =>
      _i3.InlineFragmentSerializer<GNotificationsData_Page_notifications>(
        'GNotificationsData_Page_notifications',
        GNotificationsData_Page_notifications__base,
        {
          'AiringNotification':
              GNotificationsData_Page_notifications__asAiringNotification,
          'FollowingNotification':
              GNotificationsData_Page_notifications__asFollowingNotification,
          'ActivityMessageNotification':
              GNotificationsData_Page_notifications__asActivityMessageNotification,
          'ActivityMentionNotification':
              GNotificationsData_Page_notifications__asActivityMentionNotification,
          'ActivityReplyNotification':
              GNotificationsData_Page_notifications__asActivityReplyNotification,
          'ActivityReplySubscribedNotification':
              GNotificationsData_Page_notifications__asActivityReplySubscribedNotification,
          'ActivityLikeNotification':
              GNotificationsData_Page_notifications__asActivityLikeNotification,
          'ActivityReplyLikeNotification':
              GNotificationsData_Page_notifications__asActivityReplyLikeNotification,
          'ThreadCommentMentionNotification':
              GNotificationsData_Page_notifications__asThreadCommentMentionNotification,
          'ThreadCommentReplyNotification':
              GNotificationsData_Page_notifications__asThreadCommentReplyNotification,
          'ThreadCommentSubscribedNotification':
              GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification,
          'ThreadCommentLikeNotification':
              GNotificationsData_Page_notifications__asThreadCommentLikeNotification,
          'ThreadLikeNotification':
              GNotificationsData_Page_notifications__asThreadLikeNotification,
          'RelatedMediaAdditionNotification':
              GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification,
          'MediaDataChangeNotification':
              GNotificationsData_Page_notifications__asMediaDataChangeNotification,
          'MediaMergeNotification':
              GNotificationsData_Page_notifications__asMediaMergeNotification,
          'MediaDeletionNotification':
              GNotificationsData_Page_notifications__asMediaDeletionNotification,
        },
      );

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsData_Page_notifications.serializer,
        json,
      );
}

abstract class GNotificationsData_Page_notifications__base
    implements
        Built<GNotificationsData_Page_notifications__base,
            GNotificationsData_Page_notifications__baseBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__base._();

  factory GNotificationsData_Page_notifications__base(
      [void Function(GNotificationsData_Page_notifications__baseBuilder b)
          updates]) = _$GNotificationsData_Page_notifications__base;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__baseBuilder b) =>
      b..G__typename = 'NotificationUnion';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GNotificationsData_Page_notifications__base>
      get serializer => _$gNotificationsDataPageNotificationsBaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__base.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__base? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsData_Page_notifications__base.serializer,
        json,
      );
}

abstract class GNotificationsData_Page_notifications__asAiringNotification
    implements
        Built<GNotificationsData_Page_notifications__asAiringNotification,
            GNotificationsData_Page_notifications__asAiringNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asAiringNotification._();

  factory GNotificationsData_Page_notifications__asAiringNotification(
      [void Function(
              GNotificationsData_Page_notifications__asAiringNotificationBuilder
                  b)
          updates]) = _$GNotificationsData_Page_notifications__asAiringNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asAiringNotificationBuilder
              b) =>
      b..G__typename = 'AiringNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  int get episode;
  BuiltList<String?>? get contexts;
  GNotificationsData_Page_notifications__asAiringNotification_media? get media;
  int? get createdAt;
  static Serializer<GNotificationsData_Page_notifications__asAiringNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsAiringNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asAiringNotification.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asAiringNotification? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsData_Page_notifications__asAiringNotification.serializer,
        json,
      );
}

abstract class GNotificationsData_Page_notifications__asAiringNotification_media
    implements
        Built<GNotificationsData_Page_notifications__asAiringNotification_media,
            GNotificationsData_Page_notifications__asAiringNotification_mediaBuilder>,
        _i5.GMediaFragment {
  GNotificationsData_Page_notifications__asAiringNotification_media._();

  factory GNotificationsData_Page_notifications__asAiringNotification_media(
          [void Function(
                  GNotificationsData_Page_notifications__asAiringNotification_mediaBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asAiringNotification_media;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asAiringNotification_mediaBuilder
              b) =>
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
  GNotificationsData_Page_notifications__asAiringNotification_media_title?
      get title;
  @override
  GNotificationsData_Page_notifications__asAiringNotification_media_coverImage?
      get coverImage;
  static Serializer<
          GNotificationsData_Page_notifications__asAiringNotification_media>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsAiringNotificationMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asAiringNotification_media
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asAiringNotification_media?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asAiringNotification_media
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asAiringNotification_media_title
    implements
        Built<
            GNotificationsData_Page_notifications__asAiringNotification_media_title,
            GNotificationsData_Page_notifications__asAiringNotification_media_titleBuilder>,
        _i5.GMediaFragment_title {
  GNotificationsData_Page_notifications__asAiringNotification_media_title._();

  factory GNotificationsData_Page_notifications__asAiringNotification_media_title(
          [void Function(
                  GNotificationsData_Page_notifications__asAiringNotification_media_titleBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asAiringNotification_media_title;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asAiringNotification_media_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<
          GNotificationsData_Page_notifications__asAiringNotification_media_title>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsAiringNotificationMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asAiringNotification_media_title
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asAiringNotification_media_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asAiringNotification_media_title
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asAiringNotification_media_coverImage
    implements
        Built<
            GNotificationsData_Page_notifications__asAiringNotification_media_coverImage,
            GNotificationsData_Page_notifications__asAiringNotification_media_coverImageBuilder>,
        _i5.GMediaFragment_coverImage {
  GNotificationsData_Page_notifications__asAiringNotification_media_coverImage._();

  factory GNotificationsData_Page_notifications__asAiringNotification_media_coverImage(
          [void Function(
                  GNotificationsData_Page_notifications__asAiringNotification_media_coverImageBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asAiringNotification_media_coverImage;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asAiringNotification_media_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<
          GNotificationsData_Page_notifications__asAiringNotification_media_coverImage>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsAiringNotificationMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asAiringNotification_media_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asAiringNotification_media_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asAiringNotification_media_coverImage
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asFollowingNotification
    implements
        Built<GNotificationsData_Page_notifications__asFollowingNotification,
            GNotificationsData_Page_notifications__asFollowingNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asFollowingNotification._();

  factory GNotificationsData_Page_notifications__asFollowingNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asFollowingNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asFollowingNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asFollowingNotificationBuilder
              b) =>
      b..G__typename = 'FollowingNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  GNotificationsData_Page_notifications__asFollowingNotification_user? get user;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asFollowingNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsFollowingNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asFollowingNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asFollowingNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asFollowingNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asFollowingNotification_user
    implements
        Built<
            GNotificationsData_Page_notifications__asFollowingNotification_user,
            GNotificationsData_Page_notifications__asFollowingNotification_userBuilder>,
        _i6.GUserFragment {
  GNotificationsData_Page_notifications__asFollowingNotification_user._();

  factory GNotificationsData_Page_notifications__asFollowingNotification_user(
          [void Function(
                  GNotificationsData_Page_notifications__asFollowingNotification_userBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asFollowingNotification_user;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asFollowingNotification_userBuilder
              b) =>
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
  GNotificationsData_Page_notifications__asFollowingNotification_user_avatar?
      get avatar;
  static Serializer<
          GNotificationsData_Page_notifications__asFollowingNotification_user>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsFollowingNotificationUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asFollowingNotification_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asFollowingNotification_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asFollowingNotification_user
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asFollowingNotification_user_avatar
    implements
        Built<
            GNotificationsData_Page_notifications__asFollowingNotification_user_avatar,
            GNotificationsData_Page_notifications__asFollowingNotification_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GNotificationsData_Page_notifications__asFollowingNotification_user_avatar._();

  factory GNotificationsData_Page_notifications__asFollowingNotification_user_avatar(
          [void Function(
                  GNotificationsData_Page_notifications__asFollowingNotification_user_avatarBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asFollowingNotification_user_avatar;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asFollowingNotification_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GNotificationsData_Page_notifications__asFollowingNotification_user_avatar>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsFollowingNotificationUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asFollowingNotification_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asFollowingNotification_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asFollowingNotification_user_avatar
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityMessageNotification
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityMessageNotification,
            GNotificationsData_Page_notifications__asActivityMessageNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asActivityMessageNotification._();

  factory GNotificationsData_Page_notifications__asActivityMessageNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityMessageNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityMessageNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityMessageNotificationBuilder
              b) =>
      b..G__typename = 'ActivityMessageNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  int get activityId;
  GNotificationsData_Page_notifications__asActivityMessageNotification_user?
      get user;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityMessageNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityMessageNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityMessageNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityMessageNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityMessageNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityMessageNotification_user
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityMessageNotification_user,
            GNotificationsData_Page_notifications__asActivityMessageNotification_userBuilder>,
        _i6.GUserFragment {
  GNotificationsData_Page_notifications__asActivityMessageNotification_user._();

  factory GNotificationsData_Page_notifications__asActivityMessageNotification_user(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityMessageNotification_userBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityMessageNotification_user;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityMessageNotification_userBuilder
              b) =>
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
  GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatar?
      get avatar;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityMessageNotification_user>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityMessageNotificationUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityMessageNotification_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityMessageNotification_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityMessageNotification_user
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatar
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatar,
            GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatar._();

  factory GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatar(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatarBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatar;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatar>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityMessageNotificationUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatar
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityMentionNotification
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityMentionNotification,
            GNotificationsData_Page_notifications__asActivityMentionNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asActivityMentionNotification._();

  factory GNotificationsData_Page_notifications__asActivityMentionNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityMentionNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityMentionNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityMentionNotificationBuilder
              b) =>
      b..G__typename = 'ActivityMentionNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  int get activityId;
  GNotificationsData_Page_notifications__asActivityMentionNotification_user?
      get user;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityMentionNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityMentionNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityMentionNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityMentionNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityMentionNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityMentionNotification_user
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityMentionNotification_user,
            GNotificationsData_Page_notifications__asActivityMentionNotification_userBuilder>,
        _i6.GUserFragment {
  GNotificationsData_Page_notifications__asActivityMentionNotification_user._();

  factory GNotificationsData_Page_notifications__asActivityMentionNotification_user(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityMentionNotification_userBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityMentionNotification_user;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityMentionNotification_userBuilder
              b) =>
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
  GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatar?
      get avatar;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityMentionNotification_user>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityMentionNotificationUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityMentionNotification_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityMentionNotification_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityMentionNotification_user
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatar
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatar,
            GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatar._();

  factory GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatar(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatarBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatar;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatar>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityMentionNotificationUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatar
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityReplyNotification
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityReplyNotification,
            GNotificationsData_Page_notifications__asActivityReplyNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asActivityReplyNotification._();

  factory GNotificationsData_Page_notifications__asActivityReplyNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityReplyNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityReplyNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityReplyNotificationBuilder
              b) =>
      b..G__typename = 'ActivityReplyNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  int get activityId;
  GNotificationsData_Page_notifications__asActivityReplyNotification_user?
      get user;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityReplyNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityReplyNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityReplyNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityReplyNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityReplyNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityReplyNotification_user
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityReplyNotification_user,
            GNotificationsData_Page_notifications__asActivityReplyNotification_userBuilder>,
        _i6.GUserFragment {
  GNotificationsData_Page_notifications__asActivityReplyNotification_user._();

  factory GNotificationsData_Page_notifications__asActivityReplyNotification_user(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityReplyNotification_userBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityReplyNotification_user;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityReplyNotification_userBuilder
              b) =>
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
  GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatar?
      get avatar;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityReplyNotification_user>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityReplyNotificationUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityReplyNotification_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityReplyNotification_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityReplyNotification_user
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatar
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatar,
            GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatar._();

  factory GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatar(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatarBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatar;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatar>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityReplyNotificationUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatar
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityReplySubscribedNotification
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityReplySubscribedNotification,
            GNotificationsData_Page_notifications__asActivityReplySubscribedNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asActivityReplySubscribedNotification._();

  factory GNotificationsData_Page_notifications__asActivityReplySubscribedNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityReplySubscribedNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityReplySubscribedNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityReplySubscribedNotificationBuilder
              b) =>
      b..G__typename = 'ActivityReplySubscribedNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  int get activityId;
  GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user?
      get user;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityReplySubscribedNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityReplySubscribedNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityReplySubscribedNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityReplySubscribedNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityReplySubscribedNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user,
            GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_userBuilder>,
        _i6.GUserFragment {
  GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user._();

  factory GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_userBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_userBuilder
              b) =>
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
  GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatar?
      get avatar;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityReplySubscribedNotificationUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatar
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatar,
            GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatar._();

  factory GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatar(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatarBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatar;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatar>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityReplySubscribedNotificationUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatar
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityLikeNotification
    implements
        Built<GNotificationsData_Page_notifications__asActivityLikeNotification,
            GNotificationsData_Page_notifications__asActivityLikeNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asActivityLikeNotification._();

  factory GNotificationsData_Page_notifications__asActivityLikeNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityLikeNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityLikeNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityLikeNotificationBuilder
              b) =>
      b..G__typename = 'ActivityLikeNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  int get activityId;
  GNotificationsData_Page_notifications__asActivityLikeNotification_user?
      get user;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityLikeNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityLikeNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityLikeNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityLikeNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityLikeNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityLikeNotification_user
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityLikeNotification_user,
            GNotificationsData_Page_notifications__asActivityLikeNotification_userBuilder>,
        _i6.GUserFragment {
  GNotificationsData_Page_notifications__asActivityLikeNotification_user._();

  factory GNotificationsData_Page_notifications__asActivityLikeNotification_user(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityLikeNotification_userBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityLikeNotification_user;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityLikeNotification_userBuilder
              b) =>
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
  GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatar?
      get avatar;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityLikeNotification_user>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityLikeNotificationUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityLikeNotification_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityLikeNotification_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityLikeNotification_user
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatar
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatar,
            GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatar._();

  factory GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatar(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatarBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatar;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatar>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityLikeNotificationUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatar
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityReplyLikeNotification
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityReplyLikeNotification,
            GNotificationsData_Page_notifications__asActivityReplyLikeNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asActivityReplyLikeNotification._();

  factory GNotificationsData_Page_notifications__asActivityReplyLikeNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityReplyLikeNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityReplyLikeNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityReplyLikeNotificationBuilder
              b) =>
      b..G__typename = 'ActivityReplyLikeNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  int get activityId;
  GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user?
      get user;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityReplyLikeNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityReplyLikeNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityReplyLikeNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityReplyLikeNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityReplyLikeNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user,
            GNotificationsData_Page_notifications__asActivityReplyLikeNotification_userBuilder>,
        _i6.GUserFragment {
  GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user._();

  factory GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityReplyLikeNotification_userBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityReplyLikeNotification_userBuilder
              b) =>
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
  GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatar?
      get avatar;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityReplyLikeNotificationUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatar
    implements
        Built<
            GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatar,
            GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatar._();

  factory GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatar(
          [void Function(
                  GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatarBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatar;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatar>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsActivityReplyLikeNotificationUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatar
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentMentionNotification
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentMentionNotification,
            GNotificationsData_Page_notifications__asThreadCommentMentionNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asThreadCommentMentionNotification._();

  factory GNotificationsData_Page_notifications__asThreadCommentMentionNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentMentionNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentMentionNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentMentionNotificationBuilder
              b) =>
      b..G__typename = 'ThreadCommentMentionNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  int get commentId;
  GNotificationsData_Page_notifications__asThreadCommentMentionNotification_thread?
      get thread;
  GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user?
      get user;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentMentionNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentMentionNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentMentionNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentMentionNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentMentionNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentMentionNotification_thread
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentMentionNotification_thread,
            GNotificationsData_Page_notifications__asThreadCommentMentionNotification_threadBuilder> {
  GNotificationsData_Page_notifications__asThreadCommentMentionNotification_thread._();

  factory GNotificationsData_Page_notifications__asThreadCommentMentionNotification_thread(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentMentionNotification_threadBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentMentionNotification_thread;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentMentionNotification_threadBuilder
              b) =>
      b..G__typename = 'Thread';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String? get title;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentMentionNotification_thread>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentMentionNotificationThreadSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentMentionNotification_thread
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentMentionNotification_thread?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentMentionNotification_thread
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user,
            GNotificationsData_Page_notifications__asThreadCommentMentionNotification_userBuilder>,
        _i6.GUserFragment {
  GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user._();

  factory GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentMentionNotification_userBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentMentionNotification_userBuilder
              b) =>
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
  GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatar?
      get avatar;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentMentionNotificationUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatar
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatar,
            GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatar._();

  factory GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatar(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatarBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatar;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatar>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentMentionNotificationUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatar
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentReplyNotification
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentReplyNotification,
            GNotificationsData_Page_notifications__asThreadCommentReplyNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asThreadCommentReplyNotification._();

  factory GNotificationsData_Page_notifications__asThreadCommentReplyNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentReplyNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentReplyNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentReplyNotificationBuilder
              b) =>
      b..G__typename = 'ThreadCommentReplyNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  int get commentId;
  GNotificationsData_Page_notifications__asThreadCommentReplyNotification_thread?
      get thread;
  GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user?
      get user;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentReplyNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentReplyNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentReplyNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentReplyNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentReplyNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentReplyNotification_thread
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentReplyNotification_thread,
            GNotificationsData_Page_notifications__asThreadCommentReplyNotification_threadBuilder> {
  GNotificationsData_Page_notifications__asThreadCommentReplyNotification_thread._();

  factory GNotificationsData_Page_notifications__asThreadCommentReplyNotification_thread(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentReplyNotification_threadBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentReplyNotification_thread;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentReplyNotification_threadBuilder
              b) =>
      b..G__typename = 'Thread';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String? get title;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentReplyNotification_thread>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentReplyNotificationThreadSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentReplyNotification_thread
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentReplyNotification_thread?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentReplyNotification_thread
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user,
            GNotificationsData_Page_notifications__asThreadCommentReplyNotification_userBuilder>,
        _i6.GUserFragment {
  GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user._();

  factory GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentReplyNotification_userBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentReplyNotification_userBuilder
              b) =>
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
  GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatar?
      get avatar;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentReplyNotificationUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatar
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatar,
            GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatar._();

  factory GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatar(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatarBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatar;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatar>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentReplyNotificationUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatar
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification,
            GNotificationsData_Page_notifications__asThreadCommentSubscribedNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification._();

  factory GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentSubscribedNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentSubscribedNotificationBuilder
              b) =>
      b..G__typename = 'ThreadCommentSubscribedNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  int get commentId;
  GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_thread?
      get thread;
  GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user?
      get user;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentSubscribedNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_thread
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_thread,
            GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_threadBuilder> {
  GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_thread._();

  factory GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_thread(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_threadBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_thread;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_threadBuilder
              b) =>
      b..G__typename = 'Thread';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String? get title;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_thread>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentSubscribedNotificationThreadSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_thread
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_thread?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_thread
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user,
            GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_userBuilder>,
        _i6.GUserFragment {
  GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user._();

  factory GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_userBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_userBuilder
              b) =>
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
  GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatar?
      get avatar;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentSubscribedNotificationUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatar
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatar,
            GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatar._();

  factory GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatar(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatarBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatar;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatar>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentSubscribedNotificationUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatar
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentLikeNotification
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentLikeNotification,
            GNotificationsData_Page_notifications__asThreadCommentLikeNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asThreadCommentLikeNotification._();

  factory GNotificationsData_Page_notifications__asThreadCommentLikeNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentLikeNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentLikeNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentLikeNotificationBuilder
              b) =>
      b..G__typename = 'ThreadCommentLikeNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  int get commentId;
  GNotificationsData_Page_notifications__asThreadCommentLikeNotification_thread?
      get thread;
  GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user?
      get user;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentLikeNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentLikeNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentLikeNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentLikeNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentLikeNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentLikeNotification_thread
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentLikeNotification_thread,
            GNotificationsData_Page_notifications__asThreadCommentLikeNotification_threadBuilder> {
  GNotificationsData_Page_notifications__asThreadCommentLikeNotification_thread._();

  factory GNotificationsData_Page_notifications__asThreadCommentLikeNotification_thread(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentLikeNotification_threadBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentLikeNotification_thread;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentLikeNotification_threadBuilder
              b) =>
      b..G__typename = 'Thread';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String? get title;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentLikeNotification_thread>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentLikeNotificationThreadSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentLikeNotification_thread
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentLikeNotification_thread?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentLikeNotification_thread
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user,
            GNotificationsData_Page_notifications__asThreadCommentLikeNotification_userBuilder>,
        _i6.GUserFragment {
  GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user._();

  factory GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentLikeNotification_userBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentLikeNotification_userBuilder
              b) =>
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
  GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatar?
      get avatar;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentLikeNotificationUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatar
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatar,
            GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatar._();

  factory GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatar(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatarBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatar;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatar>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadCommentLikeNotificationUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatar
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadLikeNotification
    implements
        Built<GNotificationsData_Page_notifications__asThreadLikeNotification,
            GNotificationsData_Page_notifications__asThreadLikeNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asThreadLikeNotification._();

  factory GNotificationsData_Page_notifications__asThreadLikeNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadLikeNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadLikeNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadLikeNotificationBuilder
              b) =>
      b..G__typename = 'ThreadLikeNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  GNotificationsData_Page_notifications__asThreadLikeNotification_thread?
      get thread;
  GNotificationsData_Page_notifications__asThreadLikeNotification_user?
      get user;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadLikeNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadLikeNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadLikeNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadLikeNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadLikeNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadLikeNotification_thread
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadLikeNotification_thread,
            GNotificationsData_Page_notifications__asThreadLikeNotification_threadBuilder> {
  GNotificationsData_Page_notifications__asThreadLikeNotification_thread._();

  factory GNotificationsData_Page_notifications__asThreadLikeNotification_thread(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadLikeNotification_threadBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadLikeNotification_thread;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadLikeNotification_threadBuilder
              b) =>
      b..G__typename = 'Thread';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String? get title;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadLikeNotification_thread>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadLikeNotificationThreadSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadLikeNotification_thread
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadLikeNotification_thread?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadLikeNotification_thread
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadLikeNotification_user
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadLikeNotification_user,
            GNotificationsData_Page_notifications__asThreadLikeNotification_userBuilder>,
        _i6.GUserFragment {
  GNotificationsData_Page_notifications__asThreadLikeNotification_user._();

  factory GNotificationsData_Page_notifications__asThreadLikeNotification_user(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadLikeNotification_userBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadLikeNotification_user;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadLikeNotification_userBuilder
              b) =>
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
  GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatar?
      get avatar;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadLikeNotification_user>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadLikeNotificationUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadLikeNotification_user
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadLikeNotification_user?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadLikeNotification_user
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatar
    implements
        Built<
            GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatar,
            GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatar._();

  factory GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatar(
          [void Function(
                  GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatarBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatar;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatar>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsThreadLikeNotificationUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatar
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification
    implements
        Built<
            GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification,
            GNotificationsData_Page_notifications__asRelatedMediaAdditionNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification._();

  factory GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asRelatedMediaAdditionNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asRelatedMediaAdditionNotificationBuilder
              b) =>
      b..G__typename = 'RelatedMediaAdditionNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media?
      get media;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsRelatedMediaAdditionNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media
    implements
        Built<
            GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media,
            GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder> {
  GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media._();

  factory GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media(
          [void Function(
                  GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_mediaBuilder
              b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_title?
      get title;
  static Serializer<
          GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsRelatedMediaAdditionNotificationMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_title
    implements
        Built<
            GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_title,
            GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder> {
  GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_title._();

  factory GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_title(
          [void Function(
                  GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_title;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<
          GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_title>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsRelatedMediaAdditionNotificationMediaTitleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_title
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_title
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asMediaDataChangeNotification
    implements
        Built<
            GNotificationsData_Page_notifications__asMediaDataChangeNotification,
            GNotificationsData_Page_notifications__asMediaDataChangeNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asMediaDataChangeNotification._();

  factory GNotificationsData_Page_notifications__asMediaDataChangeNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asMediaDataChangeNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asMediaDataChangeNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asMediaDataChangeNotificationBuilder
              b) =>
      b..G__typename = 'MediaDataChangeNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  GNotificationsData_Page_notifications__asMediaDataChangeNotification_media?
      get media;
  String? get reason;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asMediaDataChangeNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsMediaDataChangeNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asMediaDataChangeNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asMediaDataChangeNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asMediaDataChangeNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asMediaDataChangeNotification_media
    implements
        Built<
            GNotificationsData_Page_notifications__asMediaDataChangeNotification_media,
            GNotificationsData_Page_notifications__asMediaDataChangeNotification_mediaBuilder> {
  GNotificationsData_Page_notifications__asMediaDataChangeNotification_media._();

  factory GNotificationsData_Page_notifications__asMediaDataChangeNotification_media(
          [void Function(
                  GNotificationsData_Page_notifications__asMediaDataChangeNotification_mediaBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asMediaDataChangeNotification_media;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asMediaDataChangeNotification_mediaBuilder
              b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_title?
      get title;
  static Serializer<
          GNotificationsData_Page_notifications__asMediaDataChangeNotification_media>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsMediaDataChangeNotificationMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asMediaDataChangeNotification_media
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asMediaDataChangeNotification_media?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asMediaDataChangeNotification_media
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_title
    implements
        Built<
            GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_title,
            GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_titleBuilder> {
  GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_title._();

  factory GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_title(
          [void Function(
                  GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_titleBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_title;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<
          GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_title>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsMediaDataChangeNotificationMediaTitleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_title
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_title
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asMediaMergeNotification
    implements
        Built<GNotificationsData_Page_notifications__asMediaMergeNotification,
            GNotificationsData_Page_notifications__asMediaMergeNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asMediaMergeNotification._();

  factory GNotificationsData_Page_notifications__asMediaMergeNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asMediaMergeNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asMediaMergeNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asMediaMergeNotificationBuilder
              b) =>
      b..G__typename = 'MediaMergeNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  GNotificationsData_Page_notifications__asMediaMergeNotification_media?
      get media;
  BuiltList<String?>? get deletedMediaTitles;
  String? get reason;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asMediaMergeNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsMediaMergeNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asMediaMergeNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asMediaMergeNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asMediaMergeNotification
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asMediaMergeNotification_media
    implements
        Built<
            GNotificationsData_Page_notifications__asMediaMergeNotification_media,
            GNotificationsData_Page_notifications__asMediaMergeNotification_mediaBuilder> {
  GNotificationsData_Page_notifications__asMediaMergeNotification_media._();

  factory GNotificationsData_Page_notifications__asMediaMergeNotification_media(
          [void Function(
                  GNotificationsData_Page_notifications__asMediaMergeNotification_mediaBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asMediaMergeNotification_media;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asMediaMergeNotification_mediaBuilder
              b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GNotificationsData_Page_notifications__asMediaMergeNotification_media_title?
      get title;
  static Serializer<
          GNotificationsData_Page_notifications__asMediaMergeNotification_media>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsMediaMergeNotificationMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asMediaMergeNotification_media
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asMediaMergeNotification_media?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asMediaMergeNotification_media
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asMediaMergeNotification_media_title
    implements
        Built<
            GNotificationsData_Page_notifications__asMediaMergeNotification_media_title,
            GNotificationsData_Page_notifications__asMediaMergeNotification_media_titleBuilder> {
  GNotificationsData_Page_notifications__asMediaMergeNotification_media_title._();

  factory GNotificationsData_Page_notifications__asMediaMergeNotification_media_title(
          [void Function(
                  GNotificationsData_Page_notifications__asMediaMergeNotification_media_titleBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asMediaMergeNotification_media_title;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asMediaMergeNotification_media_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get userPreferred;
  static Serializer<
          GNotificationsData_Page_notifications__asMediaMergeNotification_media_title>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsMediaMergeNotificationMediaTitleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asMediaMergeNotification_media_title
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asMediaMergeNotification_media_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asMediaMergeNotification_media_title
                .serializer,
            json,
          );
}

abstract class GNotificationsData_Page_notifications__asMediaDeletionNotification
    implements
        Built<
            GNotificationsData_Page_notifications__asMediaDeletionNotification,
            GNotificationsData_Page_notifications__asMediaDeletionNotificationBuilder>,
        GNotificationsData_Page_notifications {
  GNotificationsData_Page_notifications__asMediaDeletionNotification._();

  factory GNotificationsData_Page_notifications__asMediaDeletionNotification(
          [void Function(
                  GNotificationsData_Page_notifications__asMediaDeletionNotificationBuilder
                      b)
              updates]) =
      _$GNotificationsData_Page_notifications__asMediaDeletionNotification;

  static void _initializeBuilder(
          GNotificationsData_Page_notifications__asMediaDeletionNotificationBuilder
              b) =>
      b..G__typename = 'MediaDeletionNotification';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  _i4.GNotificationType? get type;
  String? get context;
  String? get deletedMediaTitle;
  String? get reason;
  int? get createdAt;
  static Serializer<
          GNotificationsData_Page_notifications__asMediaDeletionNotification>
      get serializer =>
          _$gNotificationsDataPageNotificationsAsMediaDeletionNotificationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsData_Page_notifications__asMediaDeletionNotification
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsData_Page_notifications__asMediaDeletionNotification?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GNotificationsData_Page_notifications__asMediaDeletionNotification
                .serializer,
            json,
          );
}
