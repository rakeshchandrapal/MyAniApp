// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/inline_fragment_serializer.dart'
    as _i3;
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/list_activity.data.gql.dart'
    as _i7;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i8;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/text_activity.data.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i6;

part 'activities.data.gql.g.dart';

abstract class GHomeActivitiesData
    implements Built<GHomeActivitiesData, GHomeActivitiesDataBuilder> {
  GHomeActivitiesData._();

  factory GHomeActivitiesData(
          [void Function(GHomeActivitiesDataBuilder b) updates]) =
      _$GHomeActivitiesData;

  static void _initializeBuilder(GHomeActivitiesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GHomeActivitiesData_Page? get Page;
  static Serializer<GHomeActivitiesData> get serializer =>
      _$gHomeActivitiesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeActivitiesData.serializer,
        json,
      );
}

abstract class GHomeActivitiesData_Page
    implements
        Built<GHomeActivitiesData_Page, GHomeActivitiesData_PageBuilder> {
  GHomeActivitiesData_Page._();

  factory GHomeActivitiesData_Page(
          [void Function(GHomeActivitiesData_PageBuilder b) updates]) =
      _$GHomeActivitiesData_Page;

  static void _initializeBuilder(GHomeActivitiesData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GHomeActivitiesData_Page_pageInfo? get pageInfo;
  BuiltList<GHomeActivitiesData_Page_activities?>? get activities;
  static Serializer<GHomeActivitiesData_Page> get serializer =>
      _$gHomeActivitiesDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeActivitiesData_Page.serializer,
        json,
      );
}

abstract class GHomeActivitiesData_Page_pageInfo
    implements
        Built<GHomeActivitiesData_Page_pageInfo,
            GHomeActivitiesData_Page_pageInfoBuilder>,
        _i2.GPageInfo {
  GHomeActivitiesData_Page_pageInfo._();

  factory GHomeActivitiesData_Page_pageInfo(
          [void Function(GHomeActivitiesData_Page_pageInfoBuilder b) updates]) =
      _$GHomeActivitiesData_Page_pageInfo;

  static void _initializeBuilder(GHomeActivitiesData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GHomeActivitiesData_Page_pageInfo> get serializer =>
      _$gHomeActivitiesDataPagePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData_Page_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeActivitiesData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GHomeActivitiesData_Page_activities {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GHomeActivitiesData_Page_activities> get serializer =>
      _i3.InlineFragmentSerializer<GHomeActivitiesData_Page_activities>(
        'GHomeActivitiesData_Page_activities',
        GHomeActivitiesData_Page_activities__base,
        {
          'TextActivity': GHomeActivitiesData_Page_activities__asTextActivity,
          'ListActivity': GHomeActivitiesData_Page_activities__asListActivity,
        },
      );

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData_Page_activities.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData_Page_activities? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeActivitiesData_Page_activities.serializer,
        json,
      );
}

abstract class GHomeActivitiesData_Page_activities__base
    implements
        Built<GHomeActivitiesData_Page_activities__base,
            GHomeActivitiesData_Page_activities__baseBuilder>,
        GHomeActivitiesData_Page_activities {
  GHomeActivitiesData_Page_activities__base._();

  factory GHomeActivitiesData_Page_activities__base(
      [void Function(GHomeActivitiesData_Page_activities__baseBuilder b)
          updates]) = _$GHomeActivitiesData_Page_activities__base;

  static void _initializeBuilder(
          GHomeActivitiesData_Page_activities__baseBuilder b) =>
      b..G__typename = 'ActivityUnion';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GHomeActivitiesData_Page_activities__base> get serializer =>
      _$gHomeActivitiesDataPageActivitiesBaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData_Page_activities__base.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData_Page_activities__base? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeActivitiesData_Page_activities__base.serializer,
        json,
      );
}

abstract class GHomeActivitiesData_Page_activities__asTextActivity
    implements
        Built<GHomeActivitiesData_Page_activities__asTextActivity,
            GHomeActivitiesData_Page_activities__asTextActivityBuilder>,
        GHomeActivitiesData_Page_activities,
        _i4.GTextActivity {
  GHomeActivitiesData_Page_activities__asTextActivity._();

  factory GHomeActivitiesData_Page_activities__asTextActivity(
      [void Function(
              GHomeActivitiesData_Page_activities__asTextActivityBuilder b)
          updates]) = _$GHomeActivitiesData_Page_activities__asTextActivity;

  static void _initializeBuilder(
          GHomeActivitiesData_Page_activities__asTextActivityBuilder b) =>
      b..G__typename = 'TextActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  int? get userId;
  @override
  _i5.GActivityType? get type;
  @override
  int get replyCount;
  @override
  String? get text;
  @override
  bool? get isLocked;
  @override
  bool? get isSubscribed;
  @override
  bool? get isLiked;
  @override
  int get likeCount;
  @override
  int get createdAt;
  @override
  GHomeActivitiesData_Page_activities__asTextActivity_user? get user;
  static Serializer<GHomeActivitiesData_Page_activities__asTextActivity>
      get serializer =>
          _$gHomeActivitiesDataPageActivitiesAsTextActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData_Page_activities__asTextActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData_Page_activities__asTextActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeActivitiesData_Page_activities__asTextActivity.serializer,
        json,
      );
}

abstract class GHomeActivitiesData_Page_activities__asTextActivity_user
    implements
        Built<GHomeActivitiesData_Page_activities__asTextActivity_user,
            GHomeActivitiesData_Page_activities__asTextActivity_userBuilder>,
        _i4.GTextActivity_user,
        _i6.GUserFragment {
  GHomeActivitiesData_Page_activities__asTextActivity_user._();

  factory GHomeActivitiesData_Page_activities__asTextActivity_user(
      [void Function(
              GHomeActivitiesData_Page_activities__asTextActivity_userBuilder b)
          updates]) = _$GHomeActivitiesData_Page_activities__asTextActivity_user;

  static void _initializeBuilder(
          GHomeActivitiesData_Page_activities__asTextActivity_userBuilder b) =>
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
  GHomeActivitiesData_Page_activities__asTextActivity_user_avatar? get avatar;
  static Serializer<GHomeActivitiesData_Page_activities__asTextActivity_user>
      get serializer =>
          _$gHomeActivitiesDataPageActivitiesAsTextActivityUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData_Page_activities__asTextActivity_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData_Page_activities__asTextActivity_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeActivitiesData_Page_activities__asTextActivity_user.serializer,
        json,
      );
}

abstract class GHomeActivitiesData_Page_activities__asTextActivity_user_avatar
    implements
        Built<GHomeActivitiesData_Page_activities__asTextActivity_user_avatar,
            GHomeActivitiesData_Page_activities__asTextActivity_user_avatarBuilder>,
        _i4.GTextActivity_user_avatar,
        _i6.GUserFragment_avatar {
  GHomeActivitiesData_Page_activities__asTextActivity_user_avatar._();

  factory GHomeActivitiesData_Page_activities__asTextActivity_user_avatar(
          [void Function(
                  GHomeActivitiesData_Page_activities__asTextActivity_user_avatarBuilder
                      b)
              updates]) =
      _$GHomeActivitiesData_Page_activities__asTextActivity_user_avatar;

  static void _initializeBuilder(
          GHomeActivitiesData_Page_activities__asTextActivity_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GHomeActivitiesData_Page_activities__asTextActivity_user_avatar>
      get serializer =>
          _$gHomeActivitiesDataPageActivitiesAsTextActivityUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData_Page_activities__asTextActivity_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData_Page_activities__asTextActivity_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GHomeActivitiesData_Page_activities__asTextActivity_user_avatar
                .serializer,
            json,
          );
}

abstract class GHomeActivitiesData_Page_activities__asListActivity
    implements
        Built<GHomeActivitiesData_Page_activities__asListActivity,
            GHomeActivitiesData_Page_activities__asListActivityBuilder>,
        GHomeActivitiesData_Page_activities,
        _i7.GListActivity {
  GHomeActivitiesData_Page_activities__asListActivity._();

  factory GHomeActivitiesData_Page_activities__asListActivity(
      [void Function(
              GHomeActivitiesData_Page_activities__asListActivityBuilder b)
          updates]) = _$GHomeActivitiesData_Page_activities__asListActivity;

  static void _initializeBuilder(
          GHomeActivitiesData_Page_activities__asListActivityBuilder b) =>
      b..G__typename = 'ListActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  int? get userId;
  @override
  _i5.GActivityType? get type;
  @override
  String? get status;
  @override
  String? get progress;
  @override
  int get replyCount;
  @override
  bool? get isLocked;
  @override
  bool? get isSubscribed;
  @override
  bool? get isLiked;
  @override
  int get likeCount;
  @override
  int get createdAt;
  @override
  GHomeActivitiesData_Page_activities__asListActivity_user? get user;
  @override
  GHomeActivitiesData_Page_activities__asListActivity_media? get media;
  static Serializer<GHomeActivitiesData_Page_activities__asListActivity>
      get serializer =>
          _$gHomeActivitiesDataPageActivitiesAsListActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData_Page_activities__asListActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData_Page_activities__asListActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeActivitiesData_Page_activities__asListActivity.serializer,
        json,
      );
}

abstract class GHomeActivitiesData_Page_activities__asListActivity_user
    implements
        Built<GHomeActivitiesData_Page_activities__asListActivity_user,
            GHomeActivitiesData_Page_activities__asListActivity_userBuilder>,
        _i7.GListActivity_user,
        _i6.GUserFragment {
  GHomeActivitiesData_Page_activities__asListActivity_user._();

  factory GHomeActivitiesData_Page_activities__asListActivity_user(
      [void Function(
              GHomeActivitiesData_Page_activities__asListActivity_userBuilder b)
          updates]) = _$GHomeActivitiesData_Page_activities__asListActivity_user;

  static void _initializeBuilder(
          GHomeActivitiesData_Page_activities__asListActivity_userBuilder b) =>
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
  GHomeActivitiesData_Page_activities__asListActivity_user_avatar? get avatar;
  static Serializer<GHomeActivitiesData_Page_activities__asListActivity_user>
      get serializer =>
          _$gHomeActivitiesDataPageActivitiesAsListActivityUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData_Page_activities__asListActivity_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData_Page_activities__asListActivity_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeActivitiesData_Page_activities__asListActivity_user.serializer,
        json,
      );
}

abstract class GHomeActivitiesData_Page_activities__asListActivity_user_avatar
    implements
        Built<GHomeActivitiesData_Page_activities__asListActivity_user_avatar,
            GHomeActivitiesData_Page_activities__asListActivity_user_avatarBuilder>,
        _i7.GListActivity_user_avatar,
        _i6.GUserFragment_avatar {
  GHomeActivitiesData_Page_activities__asListActivity_user_avatar._();

  factory GHomeActivitiesData_Page_activities__asListActivity_user_avatar(
          [void Function(
                  GHomeActivitiesData_Page_activities__asListActivity_user_avatarBuilder
                      b)
              updates]) =
      _$GHomeActivitiesData_Page_activities__asListActivity_user_avatar;

  static void _initializeBuilder(
          GHomeActivitiesData_Page_activities__asListActivity_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GHomeActivitiesData_Page_activities__asListActivity_user_avatar>
      get serializer =>
          _$gHomeActivitiesDataPageActivitiesAsListActivityUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData_Page_activities__asListActivity_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData_Page_activities__asListActivity_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GHomeActivitiesData_Page_activities__asListActivity_user_avatar
                .serializer,
            json,
          );
}

abstract class GHomeActivitiesData_Page_activities__asListActivity_media
    implements
        Built<GHomeActivitiesData_Page_activities__asListActivity_media,
            GHomeActivitiesData_Page_activities__asListActivity_mediaBuilder>,
        _i7.GListActivity_media,
        _i8.GMediaFragment {
  GHomeActivitiesData_Page_activities__asListActivity_media._();

  factory GHomeActivitiesData_Page_activities__asListActivity_media(
      [void Function(
              GHomeActivitiesData_Page_activities__asListActivity_mediaBuilder
                  b)
          updates]) = _$GHomeActivitiesData_Page_activities__asListActivity_media;

  static void _initializeBuilder(
          GHomeActivitiesData_Page_activities__asListActivity_mediaBuilder b) =>
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
  GHomeActivitiesData_Page_activities__asListActivity_media_title? get title;
  @override
  GHomeActivitiesData_Page_activities__asListActivity_media_coverImage?
      get coverImage;
  static Serializer<GHomeActivitiesData_Page_activities__asListActivity_media>
      get serializer =>
          _$gHomeActivitiesDataPageActivitiesAsListActivityMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData_Page_activities__asListActivity_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData_Page_activities__asListActivity_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GHomeActivitiesData_Page_activities__asListActivity_media.serializer,
        json,
      );
}

abstract class GHomeActivitiesData_Page_activities__asListActivity_media_title
    implements
        Built<GHomeActivitiesData_Page_activities__asListActivity_media_title,
            GHomeActivitiesData_Page_activities__asListActivity_media_titleBuilder>,
        _i7.GListActivity_media_title,
        _i8.GMediaFragment_title {
  GHomeActivitiesData_Page_activities__asListActivity_media_title._();

  factory GHomeActivitiesData_Page_activities__asListActivity_media_title(
          [void Function(
                  GHomeActivitiesData_Page_activities__asListActivity_media_titleBuilder
                      b)
              updates]) =
      _$GHomeActivitiesData_Page_activities__asListActivity_media_title;

  static void _initializeBuilder(
          GHomeActivitiesData_Page_activities__asListActivity_media_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<
          GHomeActivitiesData_Page_activities__asListActivity_media_title>
      get serializer =>
          _$gHomeActivitiesDataPageActivitiesAsListActivityMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData_Page_activities__asListActivity_media_title
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData_Page_activities__asListActivity_media_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GHomeActivitiesData_Page_activities__asListActivity_media_title
                .serializer,
            json,
          );
}

abstract class GHomeActivitiesData_Page_activities__asListActivity_media_coverImage
    implements
        Built<
            GHomeActivitiesData_Page_activities__asListActivity_media_coverImage,
            GHomeActivitiesData_Page_activities__asListActivity_media_coverImageBuilder>,
        _i7.GListActivity_media_coverImage,
        _i8.GMediaFragment_coverImage {
  GHomeActivitiesData_Page_activities__asListActivity_media_coverImage._();

  factory GHomeActivitiesData_Page_activities__asListActivity_media_coverImage(
          [void Function(
                  GHomeActivitiesData_Page_activities__asListActivity_media_coverImageBuilder
                      b)
              updates]) =
      _$GHomeActivitiesData_Page_activities__asListActivity_media_coverImage;

  static void _initializeBuilder(
          GHomeActivitiesData_Page_activities__asListActivity_media_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<
          GHomeActivitiesData_Page_activities__asListActivity_media_coverImage>
      get serializer =>
          _$gHomeActivitiesDataPageActivitiesAsListActivityMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GHomeActivitiesData_Page_activities__asListActivity_media_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesData_Page_activities__asListActivity_media_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GHomeActivitiesData_Page_activities__asListActivity_media_coverImage
                .serializer,
            json,
          );
}

abstract class GToggleLikeData
    implements Built<GToggleLikeData, GToggleLikeDataBuilder> {
  GToggleLikeData._();

  factory GToggleLikeData([void Function(GToggleLikeDataBuilder b) updates]) =
      _$GToggleLikeData;

  static void _initializeBuilder(GToggleLikeDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToggleLikeData_ToggleLikeV2? get ToggleLikeV2;
  static Serializer<GToggleLikeData> get serializer =>
      _$gToggleLikeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleLikeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleLikeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleLikeData.serializer,
        json,
      );
}

abstract class GToggleLikeData_ToggleLikeV2 {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GToggleLikeData_ToggleLikeV2> get serializer =>
      _i3.InlineFragmentSerializer<GToggleLikeData_ToggleLikeV2>(
        'GToggleLikeData_ToggleLikeV2',
        GToggleLikeData_ToggleLikeV2__base,
        {
          'ListActivity': GToggleLikeData_ToggleLikeV2__asListActivity,
          'MessageActivity': GToggleLikeData_ToggleLikeV2__asMessageActivity,
          'TextActivity': GToggleLikeData_ToggleLikeV2__asTextActivity,
          'ActivityReply': GToggleLikeData_ToggleLikeV2__asActivityReply,
          'Thread': GToggleLikeData_ToggleLikeV2__asThread,
          'ThreadComment': GToggleLikeData_ToggleLikeV2__asThreadComment,
        },
      );

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleLikeData_ToggleLikeV2.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleLikeData_ToggleLikeV2? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleLikeData_ToggleLikeV2.serializer,
        json,
      );
}

abstract class GToggleLikeData_ToggleLikeV2__base
    implements
        Built<GToggleLikeData_ToggleLikeV2__base,
            GToggleLikeData_ToggleLikeV2__baseBuilder>,
        GToggleLikeData_ToggleLikeV2 {
  GToggleLikeData_ToggleLikeV2__base._();

  factory GToggleLikeData_ToggleLikeV2__base(
      [void Function(GToggleLikeData_ToggleLikeV2__baseBuilder b)
          updates]) = _$GToggleLikeData_ToggleLikeV2__base;

  static void _initializeBuilder(GToggleLikeData_ToggleLikeV2__baseBuilder b) =>
      b..G__typename = 'LikeableUnion';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GToggleLikeData_ToggleLikeV2__base> get serializer =>
      _$gToggleLikeDataToggleLikeV2BaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleLikeData_ToggleLikeV2__base.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleLikeData_ToggleLikeV2__base? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleLikeData_ToggleLikeV2__base.serializer,
        json,
      );
}

abstract class GToggleLikeData_ToggleLikeV2__asListActivity
    implements
        Built<GToggleLikeData_ToggleLikeV2__asListActivity,
            GToggleLikeData_ToggleLikeV2__asListActivityBuilder>,
        GToggleLikeData_ToggleLikeV2 {
  GToggleLikeData_ToggleLikeV2__asListActivity._();

  factory GToggleLikeData_ToggleLikeV2__asListActivity(
      [void Function(GToggleLikeData_ToggleLikeV2__asListActivityBuilder b)
          updates]) = _$GToggleLikeData_ToggleLikeV2__asListActivity;

  static void _initializeBuilder(
          GToggleLikeData_ToggleLikeV2__asListActivityBuilder b) =>
      b..G__typename = 'ListActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get likeCount;
  bool? get isLiked;
  static Serializer<GToggleLikeData_ToggleLikeV2__asListActivity>
      get serializer => _$gToggleLikeDataToggleLikeV2AsListActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleLikeData_ToggleLikeV2__asListActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleLikeData_ToggleLikeV2__asListActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleLikeData_ToggleLikeV2__asListActivity.serializer,
        json,
      );
}

abstract class GToggleLikeData_ToggleLikeV2__asMessageActivity
    implements
        Built<GToggleLikeData_ToggleLikeV2__asMessageActivity,
            GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder>,
        GToggleLikeData_ToggleLikeV2 {
  GToggleLikeData_ToggleLikeV2__asMessageActivity._();

  factory GToggleLikeData_ToggleLikeV2__asMessageActivity(
      [void Function(GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder b)
          updates]) = _$GToggleLikeData_ToggleLikeV2__asMessageActivity;

  static void _initializeBuilder(
          GToggleLikeData_ToggleLikeV2__asMessageActivityBuilder b) =>
      b..G__typename = 'MessageActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get likeCount;
  bool? get isLiked;
  static Serializer<GToggleLikeData_ToggleLikeV2__asMessageActivity>
      get serializer =>
          _$gToggleLikeDataToggleLikeV2AsMessageActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleLikeData_ToggleLikeV2__asMessageActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleLikeData_ToggleLikeV2__asMessageActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleLikeData_ToggleLikeV2__asMessageActivity.serializer,
        json,
      );
}

abstract class GToggleLikeData_ToggleLikeV2__asTextActivity
    implements
        Built<GToggleLikeData_ToggleLikeV2__asTextActivity,
            GToggleLikeData_ToggleLikeV2__asTextActivityBuilder>,
        GToggleLikeData_ToggleLikeV2 {
  GToggleLikeData_ToggleLikeV2__asTextActivity._();

  factory GToggleLikeData_ToggleLikeV2__asTextActivity(
      [void Function(GToggleLikeData_ToggleLikeV2__asTextActivityBuilder b)
          updates]) = _$GToggleLikeData_ToggleLikeV2__asTextActivity;

  static void _initializeBuilder(
          GToggleLikeData_ToggleLikeV2__asTextActivityBuilder b) =>
      b..G__typename = 'TextActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get likeCount;
  bool? get isLiked;
  static Serializer<GToggleLikeData_ToggleLikeV2__asTextActivity>
      get serializer => _$gToggleLikeDataToggleLikeV2AsTextActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleLikeData_ToggleLikeV2__asTextActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleLikeData_ToggleLikeV2__asTextActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleLikeData_ToggleLikeV2__asTextActivity.serializer,
        json,
      );
}

abstract class GToggleLikeData_ToggleLikeV2__asActivityReply
    implements
        Built<GToggleLikeData_ToggleLikeV2__asActivityReply,
            GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder>,
        GToggleLikeData_ToggleLikeV2 {
  GToggleLikeData_ToggleLikeV2__asActivityReply._();

  factory GToggleLikeData_ToggleLikeV2__asActivityReply(
      [void Function(GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder b)
          updates]) = _$GToggleLikeData_ToggleLikeV2__asActivityReply;

  static void _initializeBuilder(
          GToggleLikeData_ToggleLikeV2__asActivityReplyBuilder b) =>
      b..G__typename = 'ActivityReply';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get likeCount;
  bool? get isLiked;
  static Serializer<GToggleLikeData_ToggleLikeV2__asActivityReply>
      get serializer => _$gToggleLikeDataToggleLikeV2AsActivityReplySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleLikeData_ToggleLikeV2__asActivityReply.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleLikeData_ToggleLikeV2__asActivityReply? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleLikeData_ToggleLikeV2__asActivityReply.serializer,
        json,
      );
}

abstract class GToggleLikeData_ToggleLikeV2__asThread
    implements
        Built<GToggleLikeData_ToggleLikeV2__asThread,
            GToggleLikeData_ToggleLikeV2__asThreadBuilder>,
        GToggleLikeData_ToggleLikeV2 {
  GToggleLikeData_ToggleLikeV2__asThread._();

  factory GToggleLikeData_ToggleLikeV2__asThread(
      [void Function(GToggleLikeData_ToggleLikeV2__asThreadBuilder b)
          updates]) = _$GToggleLikeData_ToggleLikeV2__asThread;

  static void _initializeBuilder(
          GToggleLikeData_ToggleLikeV2__asThreadBuilder b) =>
      b..G__typename = 'Thread';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get likeCount;
  bool? get isLiked;
  static Serializer<GToggleLikeData_ToggleLikeV2__asThread> get serializer =>
      _$gToggleLikeDataToggleLikeV2AsThreadSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleLikeData_ToggleLikeV2__asThread.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleLikeData_ToggleLikeV2__asThread? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleLikeData_ToggleLikeV2__asThread.serializer,
        json,
      );
}

abstract class GToggleLikeData_ToggleLikeV2__asThreadComment
    implements
        Built<GToggleLikeData_ToggleLikeV2__asThreadComment,
            GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder>,
        GToggleLikeData_ToggleLikeV2 {
  GToggleLikeData_ToggleLikeV2__asThreadComment._();

  factory GToggleLikeData_ToggleLikeV2__asThreadComment(
      [void Function(GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder b)
          updates]) = _$GToggleLikeData_ToggleLikeV2__asThreadComment;

  static void _initializeBuilder(
          GToggleLikeData_ToggleLikeV2__asThreadCommentBuilder b) =>
      b..G__typename = 'ThreadComment';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get likeCount;
  bool? get isLiked;
  static Serializer<GToggleLikeData_ToggleLikeV2__asThreadComment>
      get serializer => _$gToggleLikeDataToggleLikeV2AsThreadCommentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleLikeData_ToggleLikeV2__asThreadComment.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleLikeData_ToggleLikeV2__asThreadComment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleLikeData_ToggleLikeV2__asThreadComment.serializer,
        json,
      );
}

abstract class GSaveTextActivityData
    implements Built<GSaveTextActivityData, GSaveTextActivityDataBuilder> {
  GSaveTextActivityData._();

  factory GSaveTextActivityData(
          [void Function(GSaveTextActivityDataBuilder b) updates]) =
      _$GSaveTextActivityData;

  static void _initializeBuilder(GSaveTextActivityDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSaveTextActivityData_SaveTextActivity? get SaveTextActivity;
  static Serializer<GSaveTextActivityData> get serializer =>
      _$gSaveTextActivityDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveTextActivityData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveTextActivityData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveTextActivityData.serializer,
        json,
      );
}

abstract class GSaveTextActivityData_SaveTextActivity
    implements
        Built<GSaveTextActivityData_SaveTextActivity,
            GSaveTextActivityData_SaveTextActivityBuilder> {
  GSaveTextActivityData_SaveTextActivity._();

  factory GSaveTextActivityData_SaveTextActivity(
      [void Function(GSaveTextActivityData_SaveTextActivityBuilder b)
          updates]) = _$GSaveTextActivityData_SaveTextActivity;

  static void _initializeBuilder(
          GSaveTextActivityData_SaveTextActivityBuilder b) =>
      b..G__typename = 'TextActivity';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get userId;
  _i5.GActivityType? get type;
  int get replyCount;
  String? get text;
  bool? get isLocked;
  bool? get isSubscribed;
  bool? get isLiked;
  int get likeCount;
  int get createdAt;
  GSaveTextActivityData_SaveTextActivity_user? get user;
  static Serializer<GSaveTextActivityData_SaveTextActivity> get serializer =>
      _$gSaveTextActivityDataSaveTextActivitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveTextActivityData_SaveTextActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveTextActivityData_SaveTextActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveTextActivityData_SaveTextActivity.serializer,
        json,
      );
}

abstract class GSaveTextActivityData_SaveTextActivity_user
    implements
        Built<GSaveTextActivityData_SaveTextActivity_user,
            GSaveTextActivityData_SaveTextActivity_userBuilder>,
        _i6.GUserFragment {
  GSaveTextActivityData_SaveTextActivity_user._();

  factory GSaveTextActivityData_SaveTextActivity_user(
      [void Function(GSaveTextActivityData_SaveTextActivity_userBuilder b)
          updates]) = _$GSaveTextActivityData_SaveTextActivity_user;

  static void _initializeBuilder(
          GSaveTextActivityData_SaveTextActivity_userBuilder b) =>
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
  GSaveTextActivityData_SaveTextActivity_user_avatar? get avatar;
  static Serializer<GSaveTextActivityData_SaveTextActivity_user>
      get serializer => _$gSaveTextActivityDataSaveTextActivityUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveTextActivityData_SaveTextActivity_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveTextActivityData_SaveTextActivity_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveTextActivityData_SaveTextActivity_user.serializer,
        json,
      );
}

abstract class GSaveTextActivityData_SaveTextActivity_user_avatar
    implements
        Built<GSaveTextActivityData_SaveTextActivity_user_avatar,
            GSaveTextActivityData_SaveTextActivity_user_avatarBuilder>,
        _i6.GUserFragment_avatar {
  GSaveTextActivityData_SaveTextActivity_user_avatar._();

  factory GSaveTextActivityData_SaveTextActivity_user_avatar(
      [void Function(
              GSaveTextActivityData_SaveTextActivity_user_avatarBuilder b)
          updates]) = _$GSaveTextActivityData_SaveTextActivity_user_avatar;

  static void _initializeBuilder(
          GSaveTextActivityData_SaveTextActivity_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GSaveTextActivityData_SaveTextActivity_user_avatar>
      get serializer =>
          _$gSaveTextActivityDataSaveTextActivityUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveTextActivityData_SaveTextActivity_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveTextActivityData_SaveTextActivity_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveTextActivityData_SaveTextActivity_user_avatar.serializer,
        json,
      );
}
