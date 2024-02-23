// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i3;

part 'comment.data.gql.g.dart';

abstract class GCommentData
    implements Built<GCommentData, GCommentDataBuilder> {
  GCommentData._();

  factory GCommentData([Function(GCommentDataBuilder b) updates]) =
      _$GCommentData;

  static void _initializeBuilder(GCommentDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GCommentData_ThreadComment?>? get ThreadComment;
  static Serializer<GCommentData> get serializer => _$gCommentDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCommentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCommentData.serializer,
        json,
      );
}

abstract class GCommentData_ThreadComment
    implements
        Built<GCommentData_ThreadComment, GCommentData_ThreadCommentBuilder> {
  GCommentData_ThreadComment._();

  factory GCommentData_ThreadComment(
          [Function(GCommentData_ThreadCommentBuilder b) updates]) =
      _$GCommentData_ThreadComment;

  static void _initializeBuilder(GCommentData_ThreadCommentBuilder b) =>
      b..G__typename = 'ThreadComment';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get threadId;
  String? get comment;
  bool? get isLiked;
  int get likeCount;
  int get createdAt;
  GCommentData_ThreadComment_user? get user;
  _i2.JsonObject? get childComments;
  bool? get isLocked;
  static Serializer<GCommentData_ThreadComment> get serializer =>
      _$gCommentDataThreadCommentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCommentData_ThreadComment.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCommentData_ThreadComment? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCommentData_ThreadComment.serializer,
        json,
      );
}

abstract class GCommentData_ThreadComment_user
    implements
        Built<GCommentData_ThreadComment_user,
            GCommentData_ThreadComment_userBuilder>,
        _i3.GUserFragment {
  GCommentData_ThreadComment_user._();

  factory GCommentData_ThreadComment_user(
          [Function(GCommentData_ThreadComment_userBuilder b) updates]) =
      _$GCommentData_ThreadComment_user;

  static void _initializeBuilder(GCommentData_ThreadComment_userBuilder b) =>
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
  GCommentData_ThreadComment_user_avatar? get avatar;
  static Serializer<GCommentData_ThreadComment_user> get serializer =>
      _$gCommentDataThreadCommentUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCommentData_ThreadComment_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCommentData_ThreadComment_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCommentData_ThreadComment_user.serializer,
        json,
      );
}

abstract class GCommentData_ThreadComment_user_avatar
    implements
        Built<GCommentData_ThreadComment_user_avatar,
            GCommentData_ThreadComment_user_avatarBuilder>,
        _i3.GUserFragment_avatar {
  GCommentData_ThreadComment_user_avatar._();

  factory GCommentData_ThreadComment_user_avatar(
          [Function(GCommentData_ThreadComment_user_avatarBuilder b) updates]) =
      _$GCommentData_ThreadComment_user_avatar;

  static void _initializeBuilder(
          GCommentData_ThreadComment_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GCommentData_ThreadComment_user_avatar> get serializer =>
      _$gCommentDataThreadCommentUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCommentData_ThreadComment_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCommentData_ThreadComment_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCommentData_ThreadComment_user_avatar.serializer,
        json,
      );
}
