// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i2;

part 'list_activity.data.gql.g.dart';

abstract class GListActivity {
  String get G__typename;
  int get id;
  int? get userId;
  _i1.GActivityType? get type;
  String? get status;
  String? get progress;
  int get replyCount;
  bool? get isLocked;
  bool? get isSubscribed;
  bool? get isLiked;
  int get likeCount;
  int get createdAt;
  GListActivity_user? get user;
  GListActivity_media? get media;
  Map<String, dynamic> toJson();
}

abstract class GListActivity_user implements _i2.GUserFragment {
  @override
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
  BuiltList<_i1.GModRole?>? get moderatorRoles;
  @override
  GListActivity_user_avatar? get avatar;
  @override
  Map<String, dynamic> toJson();
}

abstract class GListActivity_user_avatar implements _i2.GUserFragment_avatar {
  @override
  String get G__typename;
  @override
  String? get large;
  @override
  Map<String, dynamic> toJson();
}

abstract class GListActivity_media implements _i3.GMediaFragment {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  _i1.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i1.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GListActivity_media_title? get title;
  @override
  GListActivity_media_coverImage? get coverImage;
  @override
  Map<String, dynamic> toJson();
}

abstract class GListActivity_media_title implements _i3.GMediaFragment_title {
  @override
  String get G__typename;
  @override
  String? get userPreferred;
  @override
  Map<String, dynamic> toJson();
}

abstract class GListActivity_media_coverImage
    implements _i3.GMediaFragment_coverImage {
  @override
  String get G__typename;
  @override
  String? get extraLarge;
  @override
  Map<String, dynamic> toJson();
}

abstract class GListActivityData
    implements
        Built<GListActivityData, GListActivityDataBuilder>,
        GListActivity {
  GListActivityData._();

  factory GListActivityData(
          [void Function(GListActivityDataBuilder b) updates]) =
      _$GListActivityData;

  static void _initializeBuilder(GListActivityDataBuilder b) =>
      b..G__typename = 'ListActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  int? get userId;
  @override
  _i1.GActivityType? get type;
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
  GListActivityData_user? get user;
  @override
  GListActivityData_media? get media;
  static Serializer<GListActivityData> get serializer =>
      _$gListActivityDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GListActivityData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListActivityData? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GListActivityData.serializer,
        json,
      );
}

abstract class GListActivityData_user
    implements
        Built<GListActivityData_user, GListActivityData_userBuilder>,
        GListActivity_user,
        _i2.GUserFragment {
  GListActivityData_user._();

  factory GListActivityData_user(
          [void Function(GListActivityData_userBuilder b) updates]) =
      _$GListActivityData_user;

  static void _initializeBuilder(GListActivityData_userBuilder b) =>
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
  BuiltList<_i1.GModRole?>? get moderatorRoles;
  @override
  GListActivityData_user_avatar? get avatar;
  static Serializer<GListActivityData_user> get serializer =>
      _$gListActivityDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GListActivityData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListActivityData_user? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GListActivityData_user.serializer,
        json,
      );
}

abstract class GListActivityData_user_avatar
    implements
        Built<GListActivityData_user_avatar,
            GListActivityData_user_avatarBuilder>,
        GListActivity_user_avatar,
        _i2.GUserFragment_avatar {
  GListActivityData_user_avatar._();

  factory GListActivityData_user_avatar(
          [void Function(GListActivityData_user_avatarBuilder b) updates]) =
      _$GListActivityData_user_avatar;

  static void _initializeBuilder(GListActivityData_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GListActivityData_user_avatar> get serializer =>
      _$gListActivityDataUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GListActivityData_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListActivityData_user_avatar? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GListActivityData_user_avatar.serializer,
        json,
      );
}

abstract class GListActivityData_media
    implements
        Built<GListActivityData_media, GListActivityData_mediaBuilder>,
        GListActivity_media,
        _i3.GMediaFragment {
  GListActivityData_media._();

  factory GListActivityData_media(
          [void Function(GListActivityData_mediaBuilder b) updates]) =
      _$GListActivityData_media;

  static void _initializeBuilder(GListActivityData_mediaBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i1.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i1.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GListActivityData_media_title? get title;
  @override
  GListActivityData_media_coverImage? get coverImage;
  static Serializer<GListActivityData_media> get serializer =>
      _$gListActivityDataMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GListActivityData_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListActivityData_media? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GListActivityData_media.serializer,
        json,
      );
}

abstract class GListActivityData_media_title
    implements
        Built<GListActivityData_media_title,
            GListActivityData_media_titleBuilder>,
        GListActivity_media_title,
        _i3.GMediaFragment_title {
  GListActivityData_media_title._();

  factory GListActivityData_media_title(
          [void Function(GListActivityData_media_titleBuilder b) updates]) =
      _$GListActivityData_media_title;

  static void _initializeBuilder(GListActivityData_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GListActivityData_media_title> get serializer =>
      _$gListActivityDataMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GListActivityData_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListActivityData_media_title? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GListActivityData_media_title.serializer,
        json,
      );
}

abstract class GListActivityData_media_coverImage
    implements
        Built<GListActivityData_media_coverImage,
            GListActivityData_media_coverImageBuilder>,
        GListActivity_media_coverImage,
        _i3.GMediaFragment_coverImage {
  GListActivityData_media_coverImage._();

  factory GListActivityData_media_coverImage(
      [void Function(GListActivityData_media_coverImageBuilder b)
          updates]) = _$GListActivityData_media_coverImage;

  static void _initializeBuilder(GListActivityData_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GListActivityData_media_coverImage> get serializer =>
      _$gListActivityDataMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GListActivityData_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListActivityData_media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GListActivityData_media_coverImage.serializer,
        json,
      );
}
