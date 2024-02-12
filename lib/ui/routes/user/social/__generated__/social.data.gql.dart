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

abstract class GSocialsData
    implements Built<GSocialsData, GSocialsDataBuilder> {
  GSocialsData._();

  factory GSocialsData([Function(GSocialsDataBuilder b) updates]) =
      _$GSocialsData;

  static void _initializeBuilder(GSocialsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSocialsData_followers? get followers;
  GSocialsData_following? get following;
  static Serializer<GSocialsData> get serializer => _$gSocialsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialsData.serializer,
        json,
      );
}

abstract class GSocialsData_followers
    implements Built<GSocialsData_followers, GSocialsData_followersBuilder> {
  GSocialsData_followers._();

  factory GSocialsData_followers(
          [Function(GSocialsData_followersBuilder b) updates]) =
      _$GSocialsData_followers;

  static void _initializeBuilder(GSocialsData_followersBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSocialsData_followers_pageInfo? get pageInfo;
  BuiltList<GSocialsData_followers_followers?>? get followers;
  static Serializer<GSocialsData_followers> get serializer =>
      _$gSocialsDataFollowersSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialsData_followers.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialsData_followers? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialsData_followers.serializer,
        json,
      );
}

abstract class GSocialsData_followers_pageInfo
    implements
        Built<GSocialsData_followers_pageInfo,
            GSocialsData_followers_pageInfoBuilder>,
        _i2.GPageInfo {
  GSocialsData_followers_pageInfo._();

  factory GSocialsData_followers_pageInfo(
          [Function(GSocialsData_followers_pageInfoBuilder b) updates]) =
      _$GSocialsData_followers_pageInfo;

  static void _initializeBuilder(GSocialsData_followers_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GSocialsData_followers_pageInfo> get serializer =>
      _$gSocialsDataFollowersPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialsData_followers_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialsData_followers_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialsData_followers_pageInfo.serializer,
        json,
      );
}

abstract class GSocialsData_followers_followers
    implements
        Built<GSocialsData_followers_followers,
            GSocialsData_followers_followersBuilder>,
        _i3.GUserFragment {
  GSocialsData_followers_followers._();

  factory GSocialsData_followers_followers(
          [Function(GSocialsData_followers_followersBuilder b) updates]) =
      _$GSocialsData_followers_followers;

  static void _initializeBuilder(GSocialsData_followers_followersBuilder b) =>
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
  GSocialsData_followers_followers_avatar? get avatar;
  static Serializer<GSocialsData_followers_followers> get serializer =>
      _$gSocialsDataFollowersFollowersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialsData_followers_followers.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialsData_followers_followers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialsData_followers_followers.serializer,
        json,
      );
}

abstract class GSocialsData_followers_followers_avatar
    implements
        Built<GSocialsData_followers_followers_avatar,
            GSocialsData_followers_followers_avatarBuilder>,
        _i3.GUserFragment_avatar {
  GSocialsData_followers_followers_avatar._();

  factory GSocialsData_followers_followers_avatar(
      [Function(GSocialsData_followers_followers_avatarBuilder b)
          updates]) = _$GSocialsData_followers_followers_avatar;

  static void _initializeBuilder(
          GSocialsData_followers_followers_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GSocialsData_followers_followers_avatar> get serializer =>
      _$gSocialsDataFollowersFollowersAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialsData_followers_followers_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialsData_followers_followers_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialsData_followers_followers_avatar.serializer,
        json,
      );
}

abstract class GSocialsData_following
    implements Built<GSocialsData_following, GSocialsData_followingBuilder> {
  GSocialsData_following._();

  factory GSocialsData_following(
          [Function(GSocialsData_followingBuilder b) updates]) =
      _$GSocialsData_following;

  static void _initializeBuilder(GSocialsData_followingBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSocialsData_following_pageInfo? get pageInfo;
  BuiltList<GSocialsData_following_following?>? get following;
  static Serializer<GSocialsData_following> get serializer =>
      _$gSocialsDataFollowingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialsData_following.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialsData_following? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialsData_following.serializer,
        json,
      );
}

abstract class GSocialsData_following_pageInfo
    implements
        Built<GSocialsData_following_pageInfo,
            GSocialsData_following_pageInfoBuilder>,
        _i2.GPageInfo {
  GSocialsData_following_pageInfo._();

  factory GSocialsData_following_pageInfo(
          [Function(GSocialsData_following_pageInfoBuilder b) updates]) =
      _$GSocialsData_following_pageInfo;

  static void _initializeBuilder(GSocialsData_following_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GSocialsData_following_pageInfo> get serializer =>
      _$gSocialsDataFollowingPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialsData_following_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialsData_following_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialsData_following_pageInfo.serializer,
        json,
      );
}

abstract class GSocialsData_following_following
    implements
        Built<GSocialsData_following_following,
            GSocialsData_following_followingBuilder>,
        _i3.GUserFragment {
  GSocialsData_following_following._();

  factory GSocialsData_following_following(
          [Function(GSocialsData_following_followingBuilder b) updates]) =
      _$GSocialsData_following_following;

  static void _initializeBuilder(GSocialsData_following_followingBuilder b) =>
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
  GSocialsData_following_following_avatar? get avatar;
  static Serializer<GSocialsData_following_following> get serializer =>
      _$gSocialsDataFollowingFollowingSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialsData_following_following.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialsData_following_following? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialsData_following_following.serializer,
        json,
      );
}

abstract class GSocialsData_following_following_avatar
    implements
        Built<GSocialsData_following_following_avatar,
            GSocialsData_following_following_avatarBuilder>,
        _i3.GUserFragment_avatar {
  GSocialsData_following_following_avatar._();

  factory GSocialsData_following_following_avatar(
      [Function(GSocialsData_following_following_avatarBuilder b)
          updates]) = _$GSocialsData_following_following_avatar;

  static void _initializeBuilder(
          GSocialsData_following_following_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GSocialsData_following_following_avatar> get serializer =>
      _$gSocialsDataFollowingFollowingAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialsData_following_following_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialsData_following_following_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialsData_following_following_avatar.serializer,
        json,
      );
}
