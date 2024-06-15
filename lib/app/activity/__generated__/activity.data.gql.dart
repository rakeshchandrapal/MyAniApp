// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/inline_fragment_serializer.dart'
    as _i2;
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/list_activity.data.gql.dart'
    as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i7;
import 'package:myaniapp/graphql/fragments/__generated__/message_activity.data.gql.dart'
    as _i8;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i9;
import 'package:myaniapp/graphql/fragments/__generated__/text_activity.data.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i5;

part 'activity.data.gql.g.dart';

abstract class GActivityData
    implements Built<GActivityData, GActivityDataBuilder> {
  GActivityData._();

  factory GActivityData([void Function(GActivityDataBuilder b) updates]) =
      _$GActivityData;

  static void _initializeBuilder(GActivityDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GActivityData_activity? get activity;
  GActivityData_replies? get replies;
  static Serializer<GActivityData> get serializer => _$gActivityDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData.serializer,
        json,
      );
}

abstract class GActivityData_activity {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GActivityData_activity> get serializer =>
      _i2.InlineFragmentSerializer<GActivityData_activity>(
        'GActivityData_activity',
        GActivityData_activity__base,
        {
          'TextActivity': GActivityData_activity__asTextActivity,
          'ListActivity': GActivityData_activity__asListActivity,
          'MessageActivity': GActivityData_activity__asMessageActivity,
        },
      );

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity.serializer,
        json,
      );
}

abstract class GActivityData_activity__base
    implements
        Built<GActivityData_activity__base,
            GActivityData_activity__baseBuilder>,
        GActivityData_activity {
  GActivityData_activity__base._();

  factory GActivityData_activity__base(
          [void Function(GActivityData_activity__baseBuilder b) updates]) =
      _$GActivityData_activity__base;

  static void _initializeBuilder(GActivityData_activity__baseBuilder b) =>
      b..G__typename = 'ActivityUnion';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GActivityData_activity__base> get serializer =>
      _$gActivityDataActivityBaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__base.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__base? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__base.serializer,
        json,
      );
}

abstract class GActivityData_activity__asTextActivity
    implements
        Built<GActivityData_activity__asTextActivity,
            GActivityData_activity__asTextActivityBuilder>,
        GActivityData_activity,
        _i3.GTextActivity {
  GActivityData_activity__asTextActivity._();

  factory GActivityData_activity__asTextActivity(
      [void Function(GActivityData_activity__asTextActivityBuilder b)
          updates]) = _$GActivityData_activity__asTextActivity;

  static void _initializeBuilder(
          GActivityData_activity__asTextActivityBuilder b) =>
      b..G__typename = 'TextActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  int? get userId;
  @override
  _i4.GActivityType? get type;
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
  GActivityData_activity__asTextActivity_user? get user;
  static Serializer<GActivityData_activity__asTextActivity> get serializer =>
      _$gActivityDataActivityAsTextActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asTextActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asTextActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asTextActivity.serializer,
        json,
      );
}

abstract class GActivityData_activity__asTextActivity_user
    implements
        Built<GActivityData_activity__asTextActivity_user,
            GActivityData_activity__asTextActivity_userBuilder>,
        _i3.GTextActivity_user,
        _i5.GUserFragment {
  GActivityData_activity__asTextActivity_user._();

  factory GActivityData_activity__asTextActivity_user(
      [void Function(GActivityData_activity__asTextActivity_userBuilder b)
          updates]) = _$GActivityData_activity__asTextActivity_user;

  static void _initializeBuilder(
          GActivityData_activity__asTextActivity_userBuilder b) =>
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
  GActivityData_activity__asTextActivity_user_avatar? get avatar;
  static Serializer<GActivityData_activity__asTextActivity_user>
      get serializer => _$gActivityDataActivityAsTextActivityUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asTextActivity_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asTextActivity_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asTextActivity_user.serializer,
        json,
      );
}

abstract class GActivityData_activity__asTextActivity_user_avatar
    implements
        Built<GActivityData_activity__asTextActivity_user_avatar,
            GActivityData_activity__asTextActivity_user_avatarBuilder>,
        _i3.GTextActivity_user_avatar,
        _i5.GUserFragment_avatar {
  GActivityData_activity__asTextActivity_user_avatar._();

  factory GActivityData_activity__asTextActivity_user_avatar(
      [void Function(
              GActivityData_activity__asTextActivity_user_avatarBuilder b)
          updates]) = _$GActivityData_activity__asTextActivity_user_avatar;

  static void _initializeBuilder(
          GActivityData_activity__asTextActivity_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GActivityData_activity__asTextActivity_user_avatar>
      get serializer =>
          _$gActivityDataActivityAsTextActivityUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asTextActivity_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asTextActivity_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asTextActivity_user_avatar.serializer,
        json,
      );
}

abstract class GActivityData_activity__asListActivity
    implements
        Built<GActivityData_activity__asListActivity,
            GActivityData_activity__asListActivityBuilder>,
        GActivityData_activity,
        _i6.GListActivity {
  GActivityData_activity__asListActivity._();

  factory GActivityData_activity__asListActivity(
      [void Function(GActivityData_activity__asListActivityBuilder b)
          updates]) = _$GActivityData_activity__asListActivity;

  static void _initializeBuilder(
          GActivityData_activity__asListActivityBuilder b) =>
      b..G__typename = 'ListActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  int? get userId;
  @override
  _i4.GActivityType? get type;
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
  GActivityData_activity__asListActivity_user? get user;
  @override
  GActivityData_activity__asListActivity_media? get media;
  static Serializer<GActivityData_activity__asListActivity> get serializer =>
      _$gActivityDataActivityAsListActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asListActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asListActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asListActivity.serializer,
        json,
      );
}

abstract class GActivityData_activity__asListActivity_user
    implements
        Built<GActivityData_activity__asListActivity_user,
            GActivityData_activity__asListActivity_userBuilder>,
        _i6.GListActivity_user,
        _i5.GUserFragment {
  GActivityData_activity__asListActivity_user._();

  factory GActivityData_activity__asListActivity_user(
      [void Function(GActivityData_activity__asListActivity_userBuilder b)
          updates]) = _$GActivityData_activity__asListActivity_user;

  static void _initializeBuilder(
          GActivityData_activity__asListActivity_userBuilder b) =>
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
  GActivityData_activity__asListActivity_user_avatar? get avatar;
  static Serializer<GActivityData_activity__asListActivity_user>
      get serializer => _$gActivityDataActivityAsListActivityUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asListActivity_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asListActivity_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asListActivity_user.serializer,
        json,
      );
}

abstract class GActivityData_activity__asListActivity_user_avatar
    implements
        Built<GActivityData_activity__asListActivity_user_avatar,
            GActivityData_activity__asListActivity_user_avatarBuilder>,
        _i6.GListActivity_user_avatar,
        _i5.GUserFragment_avatar {
  GActivityData_activity__asListActivity_user_avatar._();

  factory GActivityData_activity__asListActivity_user_avatar(
      [void Function(
              GActivityData_activity__asListActivity_user_avatarBuilder b)
          updates]) = _$GActivityData_activity__asListActivity_user_avatar;

  static void _initializeBuilder(
          GActivityData_activity__asListActivity_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GActivityData_activity__asListActivity_user_avatar>
      get serializer =>
          _$gActivityDataActivityAsListActivityUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asListActivity_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asListActivity_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asListActivity_user_avatar.serializer,
        json,
      );
}

abstract class GActivityData_activity__asListActivity_media
    implements
        Built<GActivityData_activity__asListActivity_media,
            GActivityData_activity__asListActivity_mediaBuilder>,
        _i6.GListActivity_media,
        _i7.GMediaFragment {
  GActivityData_activity__asListActivity_media._();

  factory GActivityData_activity__asListActivity_media(
      [void Function(GActivityData_activity__asListActivity_mediaBuilder b)
          updates]) = _$GActivityData_activity__asListActivity_media;

  static void _initializeBuilder(
          GActivityData_activity__asListActivity_mediaBuilder b) =>
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
  GActivityData_activity__asListActivity_media_title? get title;
  @override
  GActivityData_activity__asListActivity_media_coverImage? get coverImage;
  static Serializer<GActivityData_activity__asListActivity_media>
      get serializer => _$gActivityDataActivityAsListActivityMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asListActivity_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asListActivity_media? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asListActivity_media.serializer,
        json,
      );
}

abstract class GActivityData_activity__asListActivity_media_title
    implements
        Built<GActivityData_activity__asListActivity_media_title,
            GActivityData_activity__asListActivity_media_titleBuilder>,
        _i6.GListActivity_media_title,
        _i7.GMediaFragment_title {
  GActivityData_activity__asListActivity_media_title._();

  factory GActivityData_activity__asListActivity_media_title(
      [void Function(
              GActivityData_activity__asListActivity_media_titleBuilder b)
          updates]) = _$GActivityData_activity__asListActivity_media_title;

  static void _initializeBuilder(
          GActivityData_activity__asListActivity_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GActivityData_activity__asListActivity_media_title>
      get serializer =>
          _$gActivityDataActivityAsListActivityMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asListActivity_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asListActivity_media_title? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asListActivity_media_title.serializer,
        json,
      );
}

abstract class GActivityData_activity__asListActivity_media_coverImage
    implements
        Built<GActivityData_activity__asListActivity_media_coverImage,
            GActivityData_activity__asListActivity_media_coverImageBuilder>,
        _i6.GListActivity_media_coverImage,
        _i7.GMediaFragment_coverImage {
  GActivityData_activity__asListActivity_media_coverImage._();

  factory GActivityData_activity__asListActivity_media_coverImage(
      [void Function(
              GActivityData_activity__asListActivity_media_coverImageBuilder b)
          updates]) = _$GActivityData_activity__asListActivity_media_coverImage;

  static void _initializeBuilder(
          GActivityData_activity__asListActivity_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GActivityData_activity__asListActivity_media_coverImage>
      get serializer =>
          _$gActivityDataActivityAsListActivityMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asListActivity_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asListActivity_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asListActivity_media_coverImage.serializer,
        json,
      );
}

abstract class GActivityData_activity__asMessageActivity
    implements
        Built<GActivityData_activity__asMessageActivity,
            GActivityData_activity__asMessageActivityBuilder>,
        GActivityData_activity,
        _i8.GMessageActivity {
  GActivityData_activity__asMessageActivity._();

  factory GActivityData_activity__asMessageActivity(
      [void Function(GActivityData_activity__asMessageActivityBuilder b)
          updates]) = _$GActivityData_activity__asMessageActivity;

  static void _initializeBuilder(
          GActivityData_activity__asMessageActivityBuilder b) =>
      b..G__typename = 'MessageActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i4.GActivityType? get type;
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
  GActivityData_activity__asMessageActivity_messenger? get messenger;
  @override
  GActivityData_activity__asMessageActivity_recipient? get recipient;
  static Serializer<GActivityData_activity__asMessageActivity> get serializer =>
      _$gActivityDataActivityAsMessageActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asMessageActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asMessageActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asMessageActivity.serializer,
        json,
      );
}

abstract class GActivityData_activity__asMessageActivity_messenger
    implements
        Built<GActivityData_activity__asMessageActivity_messenger,
            GActivityData_activity__asMessageActivity_messengerBuilder>,
        _i8.GMessageActivity_messenger,
        _i5.GUserFragment {
  GActivityData_activity__asMessageActivity_messenger._();

  factory GActivityData_activity__asMessageActivity_messenger(
      [void Function(
              GActivityData_activity__asMessageActivity_messengerBuilder b)
          updates]) = _$GActivityData_activity__asMessageActivity_messenger;

  static void _initializeBuilder(
          GActivityData_activity__asMessageActivity_messengerBuilder b) =>
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
  GActivityData_activity__asMessageActivity_messenger_avatar? get avatar;
  static Serializer<GActivityData_activity__asMessageActivity_messenger>
      get serializer =>
          _$gActivityDataActivityAsMessageActivityMessengerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asMessageActivity_messenger.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asMessageActivity_messenger? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asMessageActivity_messenger.serializer,
        json,
      );
}

abstract class GActivityData_activity__asMessageActivity_messenger_avatar
    implements
        Built<GActivityData_activity__asMessageActivity_messenger_avatar,
            GActivityData_activity__asMessageActivity_messenger_avatarBuilder>,
        _i8.GMessageActivity_messenger_avatar,
        _i5.GUserFragment_avatar {
  GActivityData_activity__asMessageActivity_messenger_avatar._();

  factory GActivityData_activity__asMessageActivity_messenger_avatar(
      [void Function(
              GActivityData_activity__asMessageActivity_messenger_avatarBuilder
                  b)
          updates]) = _$GActivityData_activity__asMessageActivity_messenger_avatar;

  static void _initializeBuilder(
          GActivityData_activity__asMessageActivity_messenger_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GActivityData_activity__asMessageActivity_messenger_avatar>
      get serializer =>
          _$gActivityDataActivityAsMessageActivityMessengerAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asMessageActivity_messenger_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asMessageActivity_messenger_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asMessageActivity_messenger_avatar.serializer,
        json,
      );
}

abstract class GActivityData_activity__asMessageActivity_recipient
    implements
        Built<GActivityData_activity__asMessageActivity_recipient,
            GActivityData_activity__asMessageActivity_recipientBuilder>,
        _i8.GMessageActivity_recipient,
        _i5.GUserFragment {
  GActivityData_activity__asMessageActivity_recipient._();

  factory GActivityData_activity__asMessageActivity_recipient(
      [void Function(
              GActivityData_activity__asMessageActivity_recipientBuilder b)
          updates]) = _$GActivityData_activity__asMessageActivity_recipient;

  static void _initializeBuilder(
          GActivityData_activity__asMessageActivity_recipientBuilder b) =>
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
  GActivityData_activity__asMessageActivity_recipient_avatar? get avatar;
  static Serializer<GActivityData_activity__asMessageActivity_recipient>
      get serializer =>
          _$gActivityDataActivityAsMessageActivityRecipientSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asMessageActivity_recipient.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asMessageActivity_recipient? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asMessageActivity_recipient.serializer,
        json,
      );
}

abstract class GActivityData_activity__asMessageActivity_recipient_avatar
    implements
        Built<GActivityData_activity__asMessageActivity_recipient_avatar,
            GActivityData_activity__asMessageActivity_recipient_avatarBuilder>,
        _i8.GMessageActivity_recipient_avatar,
        _i5.GUserFragment_avatar {
  GActivityData_activity__asMessageActivity_recipient_avatar._();

  factory GActivityData_activity__asMessageActivity_recipient_avatar(
      [void Function(
              GActivityData_activity__asMessageActivity_recipient_avatarBuilder
                  b)
          updates]) = _$GActivityData_activity__asMessageActivity_recipient_avatar;

  static void _initializeBuilder(
          GActivityData_activity__asMessageActivity_recipient_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GActivityData_activity__asMessageActivity_recipient_avatar>
      get serializer =>
          _$gActivityDataActivityAsMessageActivityRecipientAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_activity__asMessageActivity_recipient_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_activity__asMessageActivity_recipient_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_activity__asMessageActivity_recipient_avatar.serializer,
        json,
      );
}

abstract class GActivityData_replies
    implements Built<GActivityData_replies, GActivityData_repliesBuilder> {
  GActivityData_replies._();

  factory GActivityData_replies(
          [void Function(GActivityData_repliesBuilder b) updates]) =
      _$GActivityData_replies;

  static void _initializeBuilder(GActivityData_repliesBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GActivityData_replies_pageInfo? get pageInfo;
  BuiltList<GActivityData_replies_activityReplies?>? get activityReplies;
  static Serializer<GActivityData_replies> get serializer =>
      _$gActivityDataRepliesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_replies.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_replies? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_replies.serializer,
        json,
      );
}

abstract class GActivityData_replies_pageInfo
    implements
        Built<GActivityData_replies_pageInfo,
            GActivityData_replies_pageInfoBuilder>,
        _i9.GPageInfo {
  GActivityData_replies_pageInfo._();

  factory GActivityData_replies_pageInfo(
          [void Function(GActivityData_replies_pageInfoBuilder b) updates]) =
      _$GActivityData_replies_pageInfo;

  static void _initializeBuilder(GActivityData_replies_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GActivityData_replies_pageInfo> get serializer =>
      _$gActivityDataRepliesPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_replies_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_replies_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_replies_pageInfo.serializer,
        json,
      );
}

abstract class GActivityData_replies_activityReplies
    implements
        Built<GActivityData_replies_activityReplies,
            GActivityData_replies_activityRepliesBuilder> {
  GActivityData_replies_activityReplies._();

  factory GActivityData_replies_activityReplies(
      [void Function(GActivityData_replies_activityRepliesBuilder b)
          updates]) = _$GActivityData_replies_activityReplies;

  static void _initializeBuilder(
          GActivityData_replies_activityRepliesBuilder b) =>
      b..G__typename = 'ActivityReply';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get userId;
  String? get text;
  int get createdAt;
  int? get activityId;
  bool? get isLiked;
  int get likeCount;
  GActivityData_replies_activityReplies_user? get user;
  static Serializer<GActivityData_replies_activityReplies> get serializer =>
      _$gActivityDataRepliesActivityRepliesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_replies_activityReplies.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_replies_activityReplies? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_replies_activityReplies.serializer,
        json,
      );
}

abstract class GActivityData_replies_activityReplies_user
    implements
        Built<GActivityData_replies_activityReplies_user,
            GActivityData_replies_activityReplies_userBuilder>,
        _i5.GUserFragment {
  GActivityData_replies_activityReplies_user._();

  factory GActivityData_replies_activityReplies_user(
      [void Function(GActivityData_replies_activityReplies_userBuilder b)
          updates]) = _$GActivityData_replies_activityReplies_user;

  static void _initializeBuilder(
          GActivityData_replies_activityReplies_userBuilder b) =>
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
  GActivityData_replies_activityReplies_user_avatar? get avatar;
  static Serializer<GActivityData_replies_activityReplies_user>
      get serializer => _$gActivityDataRepliesActivityRepliesUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_replies_activityReplies_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_replies_activityReplies_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_replies_activityReplies_user.serializer,
        json,
      );
}

abstract class GActivityData_replies_activityReplies_user_avatar
    implements
        Built<GActivityData_replies_activityReplies_user_avatar,
            GActivityData_replies_activityReplies_user_avatarBuilder>,
        _i5.GUserFragment_avatar {
  GActivityData_replies_activityReplies_user_avatar._();

  factory GActivityData_replies_activityReplies_user_avatar(
      [void Function(GActivityData_replies_activityReplies_user_avatarBuilder b)
          updates]) = _$GActivityData_replies_activityReplies_user_avatar;

  static void _initializeBuilder(
          GActivityData_replies_activityReplies_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GActivityData_replies_activityReplies_user_avatar>
      get serializer =>
          _$gActivityDataRepliesActivityRepliesUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityData_replies_activityReplies_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityData_replies_activityReplies_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityData_replies_activityReplies_user_avatar.serializer,
        json,
      );
}

abstract class GSaveActivityReplyData
    implements Built<GSaveActivityReplyData, GSaveActivityReplyDataBuilder> {
  GSaveActivityReplyData._();

  factory GSaveActivityReplyData(
          [void Function(GSaveActivityReplyDataBuilder b) updates]) =
      _$GSaveActivityReplyData;

  static void _initializeBuilder(GSaveActivityReplyDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSaveActivityReplyData_SaveActivityReply? get SaveActivityReply;
  static Serializer<GSaveActivityReplyData> get serializer =>
      _$gSaveActivityReplyDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveActivityReplyData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveActivityReplyData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveActivityReplyData.serializer,
        json,
      );
}

abstract class GSaveActivityReplyData_SaveActivityReply
    implements
        Built<GSaveActivityReplyData_SaveActivityReply,
            GSaveActivityReplyData_SaveActivityReplyBuilder> {
  GSaveActivityReplyData_SaveActivityReply._();

  factory GSaveActivityReplyData_SaveActivityReply(
      [void Function(GSaveActivityReplyData_SaveActivityReplyBuilder b)
          updates]) = _$GSaveActivityReplyData_SaveActivityReply;

  static void _initializeBuilder(
          GSaveActivityReplyData_SaveActivityReplyBuilder b) =>
      b..G__typename = 'ActivityReply';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get activityId;
  String? get text;
  int get likeCount;
  int get createdAt;
  GSaveActivityReplyData_SaveActivityReply_user? get user;
  static Serializer<GSaveActivityReplyData_SaveActivityReply> get serializer =>
      _$gSaveActivityReplyDataSaveActivityReplySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveActivityReplyData_SaveActivityReply.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveActivityReplyData_SaveActivityReply? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveActivityReplyData_SaveActivityReply.serializer,
        json,
      );
}

abstract class GSaveActivityReplyData_SaveActivityReply_user
    implements
        Built<GSaveActivityReplyData_SaveActivityReply_user,
            GSaveActivityReplyData_SaveActivityReply_userBuilder> {
  GSaveActivityReplyData_SaveActivityReply_user._();

  factory GSaveActivityReplyData_SaveActivityReply_user(
      [void Function(GSaveActivityReplyData_SaveActivityReply_userBuilder b)
          updates]) = _$GSaveActivityReplyData_SaveActivityReply_user;

  static void _initializeBuilder(
          GSaveActivityReplyData_SaveActivityReply_userBuilder b) =>
      b..G__typename = 'User';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get name;
  GSaveActivityReplyData_SaveActivityReply_user_avatar? get avatar;
  static Serializer<GSaveActivityReplyData_SaveActivityReply_user>
      get serializer => _$gSaveActivityReplyDataSaveActivityReplyUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveActivityReplyData_SaveActivityReply_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveActivityReplyData_SaveActivityReply_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveActivityReplyData_SaveActivityReply_user.serializer,
        json,
      );
}

abstract class GSaveActivityReplyData_SaveActivityReply_user_avatar
    implements
        Built<GSaveActivityReplyData_SaveActivityReply_user_avatar,
            GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder> {
  GSaveActivityReplyData_SaveActivityReply_user_avatar._();

  factory GSaveActivityReplyData_SaveActivityReply_user_avatar(
      [void Function(
              GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder b)
          updates]) = _$GSaveActivityReplyData_SaveActivityReply_user_avatar;

  static void _initializeBuilder(
          GSaveActivityReplyData_SaveActivityReply_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get large;
  static Serializer<GSaveActivityReplyData_SaveActivityReply_user_avatar>
      get serializer =>
          _$gSaveActivityReplyDataSaveActivityReplyUserAvatarSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveActivityReplyData_SaveActivityReply_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveActivityReplyData_SaveActivityReply_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveActivityReplyData_SaveActivityReply_user_avatar.serializer,
        json,
      );
}

abstract class GSaveMessageActivityData
    implements
        Built<GSaveMessageActivityData, GSaveMessageActivityDataBuilder> {
  GSaveMessageActivityData._();

  factory GSaveMessageActivityData(
          [void Function(GSaveMessageActivityDataBuilder b) updates]) =
      _$GSaveMessageActivityData;

  static void _initializeBuilder(GSaveMessageActivityDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSaveMessageActivityData_SaveMessageActivity? get SaveMessageActivity;
  static Serializer<GSaveMessageActivityData> get serializer =>
      _$gSaveMessageActivityDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMessageActivityData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMessageActivityData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMessageActivityData.serializer,
        json,
      );
}

abstract class GSaveMessageActivityData_SaveMessageActivity
    implements
        Built<GSaveMessageActivityData_SaveMessageActivity,
            GSaveMessageActivityData_SaveMessageActivityBuilder>,
        _i8.GMessageActivity {
  GSaveMessageActivityData_SaveMessageActivity._();

  factory GSaveMessageActivityData_SaveMessageActivity(
      [void Function(GSaveMessageActivityData_SaveMessageActivityBuilder b)
          updates]) = _$GSaveMessageActivityData_SaveMessageActivity;

  static void _initializeBuilder(
          GSaveMessageActivityData_SaveMessageActivityBuilder b) =>
      b..G__typename = 'MessageActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i4.GActivityType? get type;
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
  GSaveMessageActivityData_SaveMessageActivity_messenger? get messenger;
  @override
  GSaveMessageActivityData_SaveMessageActivity_recipient? get recipient;
  static Serializer<GSaveMessageActivityData_SaveMessageActivity>
      get serializer => _$gSaveMessageActivityDataSaveMessageActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMessageActivityData_SaveMessageActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMessageActivityData_SaveMessageActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMessageActivityData_SaveMessageActivity.serializer,
        json,
      );
}

abstract class GSaveMessageActivityData_SaveMessageActivity_messenger
    implements
        Built<GSaveMessageActivityData_SaveMessageActivity_messenger,
            GSaveMessageActivityData_SaveMessageActivity_messengerBuilder>,
        _i8.GMessageActivity_messenger,
        _i5.GUserFragment {
  GSaveMessageActivityData_SaveMessageActivity_messenger._();

  factory GSaveMessageActivityData_SaveMessageActivity_messenger(
      [void Function(
              GSaveMessageActivityData_SaveMessageActivity_messengerBuilder b)
          updates]) = _$GSaveMessageActivityData_SaveMessageActivity_messenger;

  static void _initializeBuilder(
          GSaveMessageActivityData_SaveMessageActivity_messengerBuilder b) =>
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
  GSaveMessageActivityData_SaveMessageActivity_messenger_avatar? get avatar;
  static Serializer<GSaveMessageActivityData_SaveMessageActivity_messenger>
      get serializer =>
          _$gSaveMessageActivityDataSaveMessageActivityMessengerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMessageActivityData_SaveMessageActivity_messenger.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMessageActivityData_SaveMessageActivity_messenger? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMessageActivityData_SaveMessageActivity_messenger.serializer,
        json,
      );
}

abstract class GSaveMessageActivityData_SaveMessageActivity_messenger_avatar
    implements
        Built<GSaveMessageActivityData_SaveMessageActivity_messenger_avatar,
            GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder>,
        _i8.GMessageActivity_messenger_avatar,
        _i5.GUserFragment_avatar {
  GSaveMessageActivityData_SaveMessageActivity_messenger_avatar._();

  factory GSaveMessageActivityData_SaveMessageActivity_messenger_avatar(
          [void Function(
                  GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder
                      b)
              updates]) =
      _$GSaveMessageActivityData_SaveMessageActivity_messenger_avatar;

  static void _initializeBuilder(
          GSaveMessageActivityData_SaveMessageActivity_messenger_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GSaveMessageActivityData_SaveMessageActivity_messenger_avatar>
      get serializer =>
          _$gSaveMessageActivityDataSaveMessageActivityMessengerAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMessageActivityData_SaveMessageActivity_messenger_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMessageActivityData_SaveMessageActivity_messenger_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSaveMessageActivityData_SaveMessageActivity_messenger_avatar
                .serializer,
            json,
          );
}

abstract class GSaveMessageActivityData_SaveMessageActivity_recipient
    implements
        Built<GSaveMessageActivityData_SaveMessageActivity_recipient,
            GSaveMessageActivityData_SaveMessageActivity_recipientBuilder>,
        _i8.GMessageActivity_recipient,
        _i5.GUserFragment {
  GSaveMessageActivityData_SaveMessageActivity_recipient._();

  factory GSaveMessageActivityData_SaveMessageActivity_recipient(
      [void Function(
              GSaveMessageActivityData_SaveMessageActivity_recipientBuilder b)
          updates]) = _$GSaveMessageActivityData_SaveMessageActivity_recipient;

  static void _initializeBuilder(
          GSaveMessageActivityData_SaveMessageActivity_recipientBuilder b) =>
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
  GSaveMessageActivityData_SaveMessageActivity_recipient_avatar? get avatar;
  static Serializer<GSaveMessageActivityData_SaveMessageActivity_recipient>
      get serializer =>
          _$gSaveMessageActivityDataSaveMessageActivityRecipientSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMessageActivityData_SaveMessageActivity_recipient.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMessageActivityData_SaveMessageActivity_recipient? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMessageActivityData_SaveMessageActivity_recipient.serializer,
        json,
      );
}

abstract class GSaveMessageActivityData_SaveMessageActivity_recipient_avatar
    implements
        Built<GSaveMessageActivityData_SaveMessageActivity_recipient_avatar,
            GSaveMessageActivityData_SaveMessageActivity_recipient_avatarBuilder>,
        _i8.GMessageActivity_recipient_avatar,
        _i5.GUserFragment_avatar {
  GSaveMessageActivityData_SaveMessageActivity_recipient_avatar._();

  factory GSaveMessageActivityData_SaveMessageActivity_recipient_avatar(
          [void Function(
                  GSaveMessageActivityData_SaveMessageActivity_recipient_avatarBuilder
                      b)
              updates]) =
      _$GSaveMessageActivityData_SaveMessageActivity_recipient_avatar;

  static void _initializeBuilder(
          GSaveMessageActivityData_SaveMessageActivity_recipient_avatarBuilder
              b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<
          GSaveMessageActivityData_SaveMessageActivity_recipient_avatar>
      get serializer =>
          _$gSaveMessageActivityDataSaveMessageActivityRecipientAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMessageActivityData_SaveMessageActivity_recipient_avatar
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMessageActivityData_SaveMessageActivity_recipient_avatar?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GSaveMessageActivityData_SaveMessageActivity_recipient_avatar
                .serializer,
            json,
          );
}

abstract class GToggleActivitySubscriptionData
    implements
        Built<GToggleActivitySubscriptionData,
            GToggleActivitySubscriptionDataBuilder> {
  GToggleActivitySubscriptionData._();

  factory GToggleActivitySubscriptionData(
          [void Function(GToggleActivitySubscriptionDataBuilder b) updates]) =
      _$GToggleActivitySubscriptionData;

  static void _initializeBuilder(GToggleActivitySubscriptionDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GToggleActivitySubscriptionData_ToggleActivitySubscription?
      get ToggleActivitySubscription;
  static Serializer<GToggleActivitySubscriptionData> get serializer =>
      _$gToggleActivitySubscriptionDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleActivitySubscriptionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleActivitySubscriptionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleActivitySubscriptionData.serializer,
        json,
      );
}

abstract class GToggleActivitySubscriptionData_ToggleActivitySubscription {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<GToggleActivitySubscriptionData_ToggleActivitySubscription>
      get serializer => _i2.InlineFragmentSerializer<
              GToggleActivitySubscriptionData_ToggleActivitySubscription>(
            'GToggleActivitySubscriptionData_ToggleActivitySubscription',
            GToggleActivitySubscriptionData_ToggleActivitySubscription__base,
            {
              'ListActivity':
                  GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity,
              'TextActivity':
                  GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity,
              'MessageActivity':
                  GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity,
            },
          );

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleActivitySubscriptionData_ToggleActivitySubscription.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleActivitySubscriptionData_ToggleActivitySubscription? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleActivitySubscriptionData_ToggleActivitySubscription.serializer,
        json,
      );
}

abstract class GToggleActivitySubscriptionData_ToggleActivitySubscription__base
    implements
        Built<GToggleActivitySubscriptionData_ToggleActivitySubscription__base,
            GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder>,
        GToggleActivitySubscriptionData_ToggleActivitySubscription {
  GToggleActivitySubscriptionData_ToggleActivitySubscription__base._();

  factory GToggleActivitySubscriptionData_ToggleActivitySubscription__base(
          [void Function(
                  GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder
                      b)
              updates]) =
      _$GToggleActivitySubscriptionData_ToggleActivitySubscription__base;

  static void _initializeBuilder(
          GToggleActivitySubscriptionData_ToggleActivitySubscription__baseBuilder
              b) =>
      b..G__typename = 'ActivityUnion';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<
          GToggleActivitySubscriptionData_ToggleActivitySubscription__base>
      get serializer =>
          _$gToggleActivitySubscriptionDataToggleActivitySubscriptionBaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleActivitySubscriptionData_ToggleActivitySubscription__base
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleActivitySubscriptionData_ToggleActivitySubscription__base?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GToggleActivitySubscriptionData_ToggleActivitySubscription__base
                .serializer,
            json,
          );
}

abstract class GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
    implements
        Built<
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity,
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder>,
        GToggleActivitySubscriptionData_ToggleActivitySubscription {
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity._();

  factory GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity(
          [void Function(
                  GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder
                      b)
              updates]) =
      _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity;

  static void _initializeBuilder(
          GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivityBuilder
              b) =>
      b..G__typename = 'ListActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  bool? get isSubscribed;
  static Serializer<
          GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity>
      get serializer =>
          _$gToggleActivitySubscriptionDataToggleActivitySubscriptionAsListActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
                .serializer,
            json,
          );
}

abstract class GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
    implements
        Built<
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity,
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder>,
        GToggleActivitySubscriptionData_ToggleActivitySubscription {
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity._();

  factory GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity(
          [void Function(
                  GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder
                      b)
              updates]) =
      _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity;

  static void _initializeBuilder(
          GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivityBuilder
              b) =>
      b..G__typename = 'TextActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  bool? get isSubscribed;
  static Serializer<
          GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity>
      get serializer =>
          _$gToggleActivitySubscriptionDataToggleActivitySubscriptionAsTextActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
                .serializer,
            json,
          );
}

abstract class GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
    implements
        Built<
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity,
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder>,
        GToggleActivitySubscriptionData_ToggleActivitySubscription {
  GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity._();

  factory GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity(
          [void Function(
                  GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder
                      b)
              updates]) =
      _$GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity;

  static void _initializeBuilder(
          GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivityBuilder
              b) =>
      b..G__typename = 'MessageActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  bool? get isSubscribed;
  static Serializer<
          GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity>
      get serializer =>
          _$gToggleActivitySubscriptionDataToggleActivitySubscriptionAsMessageActivitySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
                .serializer,
            json,
          );
}

abstract class GDeleteActivityReplyData
    implements
        Built<GDeleteActivityReplyData, GDeleteActivityReplyDataBuilder> {
  GDeleteActivityReplyData._();

  factory GDeleteActivityReplyData(
          [void Function(GDeleteActivityReplyDataBuilder b) updates]) =
      _$GDeleteActivityReplyData;

  static void _initializeBuilder(GDeleteActivityReplyDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDeleteActivityReplyData_DeleteActivityReply? get DeleteActivityReply;
  static Serializer<GDeleteActivityReplyData> get serializer =>
      _$gDeleteActivityReplyDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteActivityReplyData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteActivityReplyData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteActivityReplyData.serializer,
        json,
      );
}

abstract class GDeleteActivityReplyData_DeleteActivityReply
    implements
        Built<GDeleteActivityReplyData_DeleteActivityReply,
            GDeleteActivityReplyData_DeleteActivityReplyBuilder> {
  GDeleteActivityReplyData_DeleteActivityReply._();

  factory GDeleteActivityReplyData_DeleteActivityReply(
      [void Function(GDeleteActivityReplyData_DeleteActivityReplyBuilder b)
          updates]) = _$GDeleteActivityReplyData_DeleteActivityReply;

  static void _initializeBuilder(
          GDeleteActivityReplyData_DeleteActivityReplyBuilder b) =>
      b..G__typename = 'Deleted';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get deleted;
  static Serializer<GDeleteActivityReplyData_DeleteActivityReply>
      get serializer => _$gDeleteActivityReplyDataDeleteActivityReplySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteActivityReplyData_DeleteActivityReply.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteActivityReplyData_DeleteActivityReply? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteActivityReplyData_DeleteActivityReply.serializer,
        json,
      );
}

abstract class GDeleteActivityData
    implements Built<GDeleteActivityData, GDeleteActivityDataBuilder> {
  GDeleteActivityData._();

  factory GDeleteActivityData(
          [void Function(GDeleteActivityDataBuilder b) updates]) =
      _$GDeleteActivityData;

  static void _initializeBuilder(GDeleteActivityDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDeleteActivityData_DeleteActivity? get DeleteActivity;
  static Serializer<GDeleteActivityData> get serializer =>
      _$gDeleteActivityDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteActivityData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteActivityData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteActivityData.serializer,
        json,
      );
}

abstract class GDeleteActivityData_DeleteActivity
    implements
        Built<GDeleteActivityData_DeleteActivity,
            GDeleteActivityData_DeleteActivityBuilder> {
  GDeleteActivityData_DeleteActivity._();

  factory GDeleteActivityData_DeleteActivity(
      [void Function(GDeleteActivityData_DeleteActivityBuilder b)
          updates]) = _$GDeleteActivityData_DeleteActivity;

  static void _initializeBuilder(GDeleteActivityData_DeleteActivityBuilder b) =>
      b..G__typename = 'Deleted';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get deleted;
  static Serializer<GDeleteActivityData_DeleteActivity> get serializer =>
      _$gDeleteActivityDataDeleteActivitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteActivityData_DeleteActivity.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteActivityData_DeleteActivity? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteActivityData_DeleteActivity.serializer,
        json,
      );
}
