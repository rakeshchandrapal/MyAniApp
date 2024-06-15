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
import 'package:myaniapp/graphql/fragments/__generated__/message_activity.data.gql.dart'
    as _i9;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/text_activity.data.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i6;

part 'activities.data.gql.g.dart';

abstract class GUserActivitiesData
    implements Built<GUserActivitiesData, GUserActivitiesDataBuilder> {
  GUserActivitiesData._();

  factory GUserActivitiesData(
          [void Function(GUserActivitiesDataBuilder b) updates]) =
      _$GUserActivitiesData;

  static void _initializeBuilder(GUserActivitiesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserActivitiesData_Page? get Page;
  static Serializer<GUserActivitiesData> get serializer =>
      _$gUserActivitiesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserActivitiesData.serializer,
        json,
      );
}

abstract class GUserActivitiesData_Page
    implements
        Built<GUserActivitiesData_Page, GUserActivitiesData_PageBuilder> {
  GUserActivitiesData_Page._();

  factory GUserActivitiesData_Page(
          [void Function(GUserActivitiesData_PageBuilder b) updates]) =
      _$GUserActivitiesData_Page;

  static void _initializeBuilder(GUserActivitiesData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserActivitiesData_Page_pageInfo? get pageInfo;
  BuiltList<GUserActivitiesData_Page_activities?>? get activities;
  static Serializer<GUserActivitiesData_Page> get serializer =>
      _$gUserActivitiesDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserActivitiesData_Page.serializer,
        json,
      );
}

abstract class GUserActivitiesData_Page_pageInfo
    implements
        Built<GUserActivitiesData_Page_pageInfo,
            GUserActivitiesData_Page_pageInfoBuilder>,
        _i2.GPageInfo {
  GUserActivitiesData_Page_pageInfo._();

  factory GUserActivitiesData_Page_pageInfo(
          [void Function(GUserActivitiesData_Page_pageInfoBuilder b) updates]) =
      _$GUserActivitiesData_Page_pageInfo;

  static void _initializeBuilder(GUserActivitiesData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GUserActivitiesData_Page_pageInfo> get serializer =>
      _$gUserActivitiesDataPagePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserActivitiesData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GUserActivitiesData_Page_activities {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GUserActivitiesData_Page_activities> get serializer =>
      _i3.InlineFragmentSerializer<GUserActivitiesData_Page_activities>(
        'GUserActivitiesData_Page_activities',
        GUserActivitiesData_Page_activities__base,
        {
          'TextActivity': GUserActivitiesData_Page_activities__asTextActivity,
          'ListActivity': GUserActivitiesData_Page_activities__asListActivity,
          'MessageActivity':
              GUserActivitiesData_Page_activities__asMessageActivity,
        },
      );

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserActivitiesData_Page_activities.serializer,
        json,
      );
}

abstract class GUserActivitiesData_Page_activities__base
    implements
        Built<GUserActivitiesData_Page_activities__base,
            GUserActivitiesData_Page_activities__baseBuilder>,
        GUserActivitiesData_Page_activities {
  GUserActivitiesData_Page_activities__base._();

  factory GUserActivitiesData_Page_activities__base(
      [void Function(GUserActivitiesData_Page_activities__baseBuilder b)
          updates]) = _$GUserActivitiesData_Page_activities__base;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__baseBuilder b) =>
      b..G__typename = 'ActivityUnion';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GUserActivitiesData_Page_activities__base> get serializer =>
      _$gUserActivitiesDataPageActivitiesBaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__base.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__base? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserActivitiesData_Page_activities__base.serializer,
        json,
      );
}

abstract class GUserActivitiesData_Page_activities__asTextActivity
    implements
        Built<GUserActivitiesData_Page_activities__asTextActivity,
            GUserActivitiesData_Page_activities__asTextActivityBuilder>,
        GUserActivitiesData_Page_activities,
        _i4.GTextActivity {
  GUserActivitiesData_Page_activities__asTextActivity._();

  factory GUserActivitiesData_Page_activities__asTextActivity(
      [void Function(
              GUserActivitiesData_Page_activities__asTextActivityBuilder b)
          updates]) = _$GUserActivitiesData_Page_activities__asTextActivity;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asTextActivityBuilder b) =>
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
  GUserActivitiesData_Page_activities__asTextActivity_user? get user;
  static Serializer<GUserActivitiesData_Page_activities__asTextActivity>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsTextActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asTextActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asTextActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserActivitiesData_Page_activities__asTextActivity.serializer,
        json,
      );
}

abstract class GUserActivitiesData_Page_activities__asTextActivity_user
    implements
        Built<GUserActivitiesData_Page_activities__asTextActivity_user,
            GUserActivitiesData_Page_activities__asTextActivity_userBuilder>,
        _i4.GTextActivity_user,
        _i6.GUserFragment {
  GUserActivitiesData_Page_activities__asTextActivity_user._();

  factory GUserActivitiesData_Page_activities__asTextActivity_user(
      [void Function(
              GUserActivitiesData_Page_activities__asTextActivity_userBuilder b)
          updates]) = _$GUserActivitiesData_Page_activities__asTextActivity_user;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asTextActivity_userBuilder b) =>
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
  GUserActivitiesData_Page_activities__asTextActivity_user_avatar? get avatar;
  static Serializer<GUserActivitiesData_Page_activities__asTextActivity_user>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsTextActivityUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asTextActivity_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asTextActivity_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserActivitiesData_Page_activities__asTextActivity_user.serializer,
        json,
      );
}

abstract class GUserActivitiesData_Page_activities__asTextActivity_user_avatar
    implements
        Built<GUserActivitiesData_Page_activities__asTextActivity_user_avatar,
            GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder>,
        _i4.GTextActivity_user_avatar,
        _i6.GUserFragment_avatar {
  GUserActivitiesData_Page_activities__asTextActivity_user_avatar._();

  factory GUserActivitiesData_Page_activities__asTextActivity_user_avatar(
          [void Function(
                  GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder
                      b)
              updates]) =
      _$GUserActivitiesData_Page_activities__asTextActivity_user_avatar;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asTextActivity_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GUserActivitiesData_Page_activities__asTextActivity_user_avatar>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsTextActivityUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asTextActivity_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asTextActivity_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUserActivitiesData_Page_activities__asTextActivity_user_avatar
                .serializer,
            json,
          );
}

abstract class GUserActivitiesData_Page_activities__asListActivity
    implements
        Built<GUserActivitiesData_Page_activities__asListActivity,
            GUserActivitiesData_Page_activities__asListActivityBuilder>,
        GUserActivitiesData_Page_activities,
        _i7.GListActivity {
  GUserActivitiesData_Page_activities__asListActivity._();

  factory GUserActivitiesData_Page_activities__asListActivity(
      [void Function(
              GUserActivitiesData_Page_activities__asListActivityBuilder b)
          updates]) = _$GUserActivitiesData_Page_activities__asListActivity;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asListActivityBuilder b) =>
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
  GUserActivitiesData_Page_activities__asListActivity_user? get user;
  @override
  GUserActivitiesData_Page_activities__asListActivity_media? get media;
  static Serializer<GUserActivitiesData_Page_activities__asListActivity>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsListActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asListActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asListActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserActivitiesData_Page_activities__asListActivity.serializer,
        json,
      );
}

abstract class GUserActivitiesData_Page_activities__asListActivity_user
    implements
        Built<GUserActivitiesData_Page_activities__asListActivity_user,
            GUserActivitiesData_Page_activities__asListActivity_userBuilder>,
        _i7.GListActivity_user,
        _i6.GUserFragment {
  GUserActivitiesData_Page_activities__asListActivity_user._();

  factory GUserActivitiesData_Page_activities__asListActivity_user(
      [void Function(
              GUserActivitiesData_Page_activities__asListActivity_userBuilder b)
          updates]) = _$GUserActivitiesData_Page_activities__asListActivity_user;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asListActivity_userBuilder b) =>
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
  GUserActivitiesData_Page_activities__asListActivity_user_avatar? get avatar;
  static Serializer<GUserActivitiesData_Page_activities__asListActivity_user>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsListActivityUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asListActivity_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asListActivity_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserActivitiesData_Page_activities__asListActivity_user.serializer,
        json,
      );
}

abstract class GUserActivitiesData_Page_activities__asListActivity_user_avatar
    implements
        Built<GUserActivitiesData_Page_activities__asListActivity_user_avatar,
            GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder>,
        _i7.GListActivity_user_avatar,
        _i6.GUserFragment_avatar {
  GUserActivitiesData_Page_activities__asListActivity_user_avatar._();

  factory GUserActivitiesData_Page_activities__asListActivity_user_avatar(
          [void Function(
                  GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder
                      b)
              updates]) =
      _$GUserActivitiesData_Page_activities__asListActivity_user_avatar;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asListActivity_user_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GUserActivitiesData_Page_activities__asListActivity_user_avatar>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsListActivityUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asListActivity_user_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asListActivity_user_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUserActivitiesData_Page_activities__asListActivity_user_avatar
                .serializer,
            json,
          );
}

abstract class GUserActivitiesData_Page_activities__asListActivity_media
    implements
        Built<GUserActivitiesData_Page_activities__asListActivity_media,
            GUserActivitiesData_Page_activities__asListActivity_mediaBuilder>,
        _i7.GListActivity_media,
        _i8.GMediaFragment {
  GUserActivitiesData_Page_activities__asListActivity_media._();

  factory GUserActivitiesData_Page_activities__asListActivity_media(
      [void Function(
              GUserActivitiesData_Page_activities__asListActivity_mediaBuilder
                  b)
          updates]) = _$GUserActivitiesData_Page_activities__asListActivity_media;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asListActivity_mediaBuilder b) =>
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
  GUserActivitiesData_Page_activities__asListActivity_media_title? get title;
  @override
  GUserActivitiesData_Page_activities__asListActivity_media_coverImage?
      get coverImage;
  static Serializer<GUserActivitiesData_Page_activities__asListActivity_media>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsListActivityMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asListActivity_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asListActivity_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserActivitiesData_Page_activities__asListActivity_media.serializer,
        json,
      );
}

abstract class GUserActivitiesData_Page_activities__asListActivity_media_title
    implements
        Built<GUserActivitiesData_Page_activities__asListActivity_media_title,
            GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder>,
        _i7.GListActivity_media_title,
        _i8.GMediaFragment_title {
  GUserActivitiesData_Page_activities__asListActivity_media_title._();

  factory GUserActivitiesData_Page_activities__asListActivity_media_title(
          [void Function(
                  GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder
                      b)
              updates]) =
      _$GUserActivitiesData_Page_activities__asListActivity_media_title;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asListActivity_media_titleBuilder
              b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<
          GUserActivitiesData_Page_activities__asListActivity_media_title>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsListActivityMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asListActivity_media_title
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asListActivity_media_title?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUserActivitiesData_Page_activities__asListActivity_media_title
                .serializer,
            json,
          );
}

abstract class GUserActivitiesData_Page_activities__asListActivity_media_coverImage
    implements
        Built<
            GUserActivitiesData_Page_activities__asListActivity_media_coverImage,
            GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder>,
        _i7.GListActivity_media_coverImage,
        _i8.GMediaFragment_coverImage {
  GUserActivitiesData_Page_activities__asListActivity_media_coverImage._();

  factory GUserActivitiesData_Page_activities__asListActivity_media_coverImage(
          [void Function(
                  GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder
                      b)
              updates]) =
      _$GUserActivitiesData_Page_activities__asListActivity_media_coverImage;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asListActivity_media_coverImageBuilder
              b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<
          GUserActivitiesData_Page_activities__asListActivity_media_coverImage>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsListActivityMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asListActivity_media_coverImage
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asListActivity_media_coverImage?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUserActivitiesData_Page_activities__asListActivity_media_coverImage
                .serializer,
            json,
          );
}

abstract class GUserActivitiesData_Page_activities__asMessageActivity
    implements
        Built<GUserActivitiesData_Page_activities__asMessageActivity,
            GUserActivitiesData_Page_activities__asMessageActivityBuilder>,
        GUserActivitiesData_Page_activities,
        _i9.GMessageActivity {
  GUserActivitiesData_Page_activities__asMessageActivity._();

  factory GUserActivitiesData_Page_activities__asMessageActivity(
      [void Function(
              GUserActivitiesData_Page_activities__asMessageActivityBuilder b)
          updates]) = _$GUserActivitiesData_Page_activities__asMessageActivity;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asMessageActivityBuilder b) =>
      b..G__typename = 'MessageActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i5.GActivityType? get type;
  @override
  String? get message;
  @override
  int get replyCount;
  @override
  bool? get isPrivate;
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
  int? get userId;
  @override
  GUserActivitiesData_Page_activities__asMessageActivity_messenger?
      get messenger;
  @override
  GUserActivitiesData_Page_activities__asMessageActivity_recipient?
      get recipient;
  static Serializer<GUserActivitiesData_Page_activities__asMessageActivity>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsMessageActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asMessageActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asMessageActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserActivitiesData_Page_activities__asMessageActivity.serializer,
        json,
      );
}

abstract class GUserActivitiesData_Page_activities__asMessageActivity_messenger
    implements
        Built<GUserActivitiesData_Page_activities__asMessageActivity_messenger,
            GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder>,
        _i9.GMessageActivity_messenger,
        _i6.GUserFragment {
  GUserActivitiesData_Page_activities__asMessageActivity_messenger._();

  factory GUserActivitiesData_Page_activities__asMessageActivity_messenger(
          [void Function(
                  GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder
                      b)
              updates]) =
      _$GUserActivitiesData_Page_activities__asMessageActivity_messenger;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asMessageActivity_messengerBuilder
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
  BuiltList<_i5.GModRole?>? get moderatorRoles;
  @override
  GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar?
      get avatar;
  static Serializer<
          GUserActivitiesData_Page_activities__asMessageActivity_messenger>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsMessageActivityMessengerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asMessageActivity_messenger
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asMessageActivity_messenger?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUserActivitiesData_Page_activities__asMessageActivity_messenger
                .serializer,
            json,
          );
}

abstract class GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar
    implements
        Built<
            GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar,
            GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder>,
        _i9.GMessageActivity_messenger_avatar,
        _i6.GUserFragment_avatar {
  GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar._();

  factory GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar(
          [void Function(
                  GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder
                      b)
              updates]) =
      _$GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsMessageActivityMessengerAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar
                .serializer,
            json,
          );
}

abstract class GUserActivitiesData_Page_activities__asMessageActivity_recipient
    implements
        Built<GUserActivitiesData_Page_activities__asMessageActivity_recipient,
            GUserActivitiesData_Page_activities__asMessageActivity_recipientBuilder>,
        _i9.GMessageActivity_recipient,
        _i6.GUserFragment {
  GUserActivitiesData_Page_activities__asMessageActivity_recipient._();

  factory GUserActivitiesData_Page_activities__asMessageActivity_recipient(
          [void Function(
                  GUserActivitiesData_Page_activities__asMessageActivity_recipientBuilder
                      b)
              updates]) =
      _$GUserActivitiesData_Page_activities__asMessageActivity_recipient;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asMessageActivity_recipientBuilder
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
  BuiltList<_i5.GModRole?>? get moderatorRoles;
  @override
  GUserActivitiesData_Page_activities__asMessageActivity_recipient_avatar?
      get avatar;
  static Serializer<
          GUserActivitiesData_Page_activities__asMessageActivity_recipient>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsMessageActivityRecipientSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asMessageActivity_recipient
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asMessageActivity_recipient?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUserActivitiesData_Page_activities__asMessageActivity_recipient
                .serializer,
            json,
          );
}

abstract class GUserActivitiesData_Page_activities__asMessageActivity_recipient_avatar
    implements
        Built<
            GUserActivitiesData_Page_activities__asMessageActivity_recipient_avatar,
            GUserActivitiesData_Page_activities__asMessageActivity_recipient_avatarBuilder>,
        _i9.GMessageActivity_recipient_avatar,
        _i6.GUserFragment_avatar {
  GUserActivitiesData_Page_activities__asMessageActivity_recipient_avatar._();

  factory GUserActivitiesData_Page_activities__asMessageActivity_recipient_avatar(
          [void Function(
                  GUserActivitiesData_Page_activities__asMessageActivity_recipient_avatarBuilder
                      b)
              updates]) =
      _$GUserActivitiesData_Page_activities__asMessageActivity_recipient_avatar;

  static void _initializeBuilder(
          GUserActivitiesData_Page_activities__asMessageActivity_recipient_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GUserActivitiesData_Page_activities__asMessageActivity_recipient_avatar>
      get serializer =>
          _$gUserActivitiesDataPageActivitiesAsMessageActivityRecipientAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserActivitiesData_Page_activities__asMessageActivity_recipient_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesData_Page_activities__asMessageActivity_recipient_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GUserActivitiesData_Page_activities__asMessageActivity_recipient_avatar
                .serializer,
            json,
          );
}
