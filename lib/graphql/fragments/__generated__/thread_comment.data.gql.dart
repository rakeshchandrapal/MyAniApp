// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i1;

part 'thread_comment.data.gql.g.dart';

abstract class GThreadComment {
  String get G__typename;
  int get id;
  int? get threadId;
  String? get comment;
  bool? get isLiked;
  int get likeCount;
  int get createdAt;
  GThreadComment_user? get user;
  bool? get isLocked;
  Map<String, dynamic> toJson();
}

abstract class GThreadComment_user implements _i1.GUserFragment {
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
  BuiltList<_i2.GModRole?>? get moderatorRoles;
  @override
  GThreadComment_user_avatar? get avatar;
  @override
  Map<String, dynamic> toJson();
}

abstract class GThreadComment_user_avatar implements _i1.GUserFragment_avatar {
  @override
  String get G__typename;
  @override
  String? get large;
  @override
  Map<String, dynamic> toJson();
}

abstract class GThreadCommentData
    implements
        Built<GThreadCommentData, GThreadCommentDataBuilder>,
        GThreadComment {
  GThreadCommentData._();

  factory GThreadCommentData([Function(GThreadCommentDataBuilder b) updates]) =
      _$GThreadCommentData;

  static void _initializeBuilder(GThreadCommentDataBuilder b) =>
      b..G__typename = 'ThreadComment';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  int? get threadId;
  @override
  String? get comment;
  @override
  bool? get isLiked;
  @override
  int get likeCount;
  @override
  int get createdAt;
  @override
  GThreadCommentData_user? get user;
  @override
  bool? get isLocked;
  static Serializer<GThreadCommentData> get serializer =>
      _$gThreadCommentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GThreadCommentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadCommentData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GThreadCommentData.serializer,
        json,
      );
}

abstract class GThreadCommentData_user
    implements
        Built<GThreadCommentData_user, GThreadCommentData_userBuilder>,
        GThreadComment_user,
        _i1.GUserFragment {
  GThreadCommentData_user._();

  factory GThreadCommentData_user(
          [Function(GThreadCommentData_userBuilder b) updates]) =
      _$GThreadCommentData_user;

  static void _initializeBuilder(GThreadCommentData_userBuilder b) =>
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
  BuiltList<_i2.GModRole?>? get moderatorRoles;
  @override
  GThreadCommentData_user_avatar? get avatar;
  static Serializer<GThreadCommentData_user> get serializer =>
      _$gThreadCommentDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GThreadCommentData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadCommentData_user? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GThreadCommentData_user.serializer,
        json,
      );
}

abstract class GThreadCommentData_user_avatar
    implements
        Built<GThreadCommentData_user_avatar,
            GThreadCommentData_user_avatarBuilder>,
        GThreadComment_user_avatar,
        _i1.GUserFragment_avatar {
  GThreadCommentData_user_avatar._();

  factory GThreadCommentData_user_avatar(
          [Function(GThreadCommentData_user_avatarBuilder b) updates]) =
      _$GThreadCommentData_user_avatar;

  static void _initializeBuilder(GThreadCommentData_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GThreadCommentData_user_avatar> get serializer =>
      _$gThreadCommentDataUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GThreadCommentData_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadCommentData_user_avatar? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GThreadCommentData_user_avatar.serializer,
        json,
      );
}
