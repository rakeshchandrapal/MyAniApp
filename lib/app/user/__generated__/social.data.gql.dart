// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i3;

part 'social.data.gql.g.dart';

abstract class GUserSocialsData
    implements Built<GUserSocialsData, GUserSocialsDataBuilder> {
  GUserSocialsData._();

  factory GUserSocialsData([void Function(GUserSocialsDataBuilder b) updates]) =
      _$GUserSocialsData;

  static void _initializeBuilder(GUserSocialsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserSocialsData_followers? get followers;
  GUserSocialsData_following? get following;
  static Serializer<GUserSocialsData> get serializer =>
      _$gUserSocialsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserSocialsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserSocialsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserSocialsData.serializer,
        json,
      );
}

abstract class GUserSocialsData_followers
    implements
        Built<GUserSocialsData_followers, GUserSocialsData_followersBuilder> {
  GUserSocialsData_followers._();

  factory GUserSocialsData_followers(
          [void Function(GUserSocialsData_followersBuilder b) updates]) =
      _$GUserSocialsData_followers;

  static void _initializeBuilder(GUserSocialsData_followersBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserSocialsData_followers_pageInfo? get pageInfo;
  BuiltList<GUserSocialsData_followers_followers?>? get followers;
  static Serializer<GUserSocialsData_followers> get serializer =>
      _$gUserSocialsDataFollowersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserSocialsData_followers.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserSocialsData_followers? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserSocialsData_followers.serializer,
        json,
      );
}

abstract class GUserSocialsData_followers_pageInfo
    implements
        Built<GUserSocialsData_followers_pageInfo,
            GUserSocialsData_followers_pageInfoBuilder>,
        _i2.GPageInfo {
  GUserSocialsData_followers_pageInfo._();

  factory GUserSocialsData_followers_pageInfo(
      [void Function(GUserSocialsData_followers_pageInfoBuilder b)
          updates]) = _$GUserSocialsData_followers_pageInfo;

  static void _initializeBuilder(
          GUserSocialsData_followers_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GUserSocialsData_followers_pageInfo> get serializer =>
      _$gUserSocialsDataFollowersPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserSocialsData_followers_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserSocialsData_followers_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserSocialsData_followers_pageInfo.serializer,
        json,
      );
}

abstract class GUserSocialsData_followers_followers
    implements
        Built<GUserSocialsData_followers_followers,
            GUserSocialsData_followers_followersBuilder>,
        _i3.GUserFragment {
  GUserSocialsData_followers_followers._();

  factory GUserSocialsData_followers_followers(
      [void Function(GUserSocialsData_followers_followersBuilder b)
          updates]) = _$GUserSocialsData_followers_followers;

  static void _initializeBuilder(
          GUserSocialsData_followers_followersBuilder b) =>
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
  GUserSocialsData_followers_followers_avatar? get avatar;
  static Serializer<GUserSocialsData_followers_followers> get serializer =>
      _$gUserSocialsDataFollowersFollowersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserSocialsData_followers_followers.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserSocialsData_followers_followers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserSocialsData_followers_followers.serializer,
        json,
      );
}

abstract class GUserSocialsData_followers_followers_avatar
    implements
        Built<GUserSocialsData_followers_followers_avatar,
            GUserSocialsData_followers_followers_avatarBuilder>,
        _i3.GUserFragment_avatar {
  GUserSocialsData_followers_followers_avatar._();

  factory GUserSocialsData_followers_followers_avatar(
      [void Function(GUserSocialsData_followers_followers_avatarBuilder b)
          updates]) = _$GUserSocialsData_followers_followers_avatar;

  static void _initializeBuilder(
          GUserSocialsData_followers_followers_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GUserSocialsData_followers_followers_avatar>
      get serializer => _$gUserSocialsDataFollowersFollowersAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserSocialsData_followers_followers_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserSocialsData_followers_followers_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserSocialsData_followers_followers_avatar.serializer,
        json,
      );
}

abstract class GUserSocialsData_following
    implements
        Built<GUserSocialsData_following, GUserSocialsData_followingBuilder> {
  GUserSocialsData_following._();

  factory GUserSocialsData_following(
          [void Function(GUserSocialsData_followingBuilder b) updates]) =
      _$GUserSocialsData_following;

  static void _initializeBuilder(GUserSocialsData_followingBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUserSocialsData_following_pageInfo? get pageInfo;
  BuiltList<GUserSocialsData_following_following?>? get following;
  static Serializer<GUserSocialsData_following> get serializer =>
      _$gUserSocialsDataFollowingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserSocialsData_following.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserSocialsData_following? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserSocialsData_following.serializer,
        json,
      );
}

abstract class GUserSocialsData_following_pageInfo
    implements
        Built<GUserSocialsData_following_pageInfo,
            GUserSocialsData_following_pageInfoBuilder>,
        _i2.GPageInfo {
  GUserSocialsData_following_pageInfo._();

  factory GUserSocialsData_following_pageInfo(
      [void Function(GUserSocialsData_following_pageInfoBuilder b)
          updates]) = _$GUserSocialsData_following_pageInfo;

  static void _initializeBuilder(
          GUserSocialsData_following_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GUserSocialsData_following_pageInfo> get serializer =>
      _$gUserSocialsDataFollowingPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserSocialsData_following_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserSocialsData_following_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserSocialsData_following_pageInfo.serializer,
        json,
      );
}

abstract class GUserSocialsData_following_following
    implements
        Built<GUserSocialsData_following_following,
            GUserSocialsData_following_followingBuilder>,
        _i3.GUserFragment {
  GUserSocialsData_following_following._();

  factory GUserSocialsData_following_following(
      [void Function(GUserSocialsData_following_followingBuilder b)
          updates]) = _$GUserSocialsData_following_following;

  static void _initializeBuilder(
          GUserSocialsData_following_followingBuilder b) =>
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
  GUserSocialsData_following_following_avatar? get avatar;
  static Serializer<GUserSocialsData_following_following> get serializer =>
      _$gUserSocialsDataFollowingFollowingSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserSocialsData_following_following.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserSocialsData_following_following? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserSocialsData_following_following.serializer,
        json,
      );
}

abstract class GUserSocialsData_following_following_avatar
    implements
        Built<GUserSocialsData_following_following_avatar,
            GUserSocialsData_following_following_avatarBuilder>,
        _i3.GUserFragment_avatar {
  GUserSocialsData_following_following_avatar._();

  factory GUserSocialsData_following_following_avatar(
      [void Function(GUserSocialsData_following_following_avatarBuilder b)
          updates]) = _$GUserSocialsData_following_following_avatar;

  static void _initializeBuilder(
          GUserSocialsData_following_following_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GUserSocialsData_following_following_avatar>
      get serializer => _$gUserSocialsDataFollowingFollowingAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserSocialsData_following_following_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserSocialsData_following_following_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserSocialsData_following_following_avatar.serializer,
        json,
      );
}
