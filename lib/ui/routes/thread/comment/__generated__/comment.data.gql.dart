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

abstract class GThreadCommentData
    implements Built<GThreadCommentData, GThreadCommentDataBuilder> {
  GThreadCommentData._();

  factory GThreadCommentData([Function(GThreadCommentDataBuilder b) updates]) =
      _$GThreadCommentData;

  static void _initializeBuilder(GThreadCommentDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GThreadCommentData_ThreadComment?>? get ThreadComment;
  static Serializer<GThreadCommentData> get serializer =>
      _$gThreadCommentDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadCommentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadCommentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadCommentData.serializer,
        json,
      );
}

abstract class GThreadCommentData_ThreadComment
    implements
        Built<GThreadCommentData_ThreadComment,
            GThreadCommentData_ThreadCommentBuilder> {
  GThreadCommentData_ThreadComment._();

  factory GThreadCommentData_ThreadComment(
          [Function(GThreadCommentData_ThreadCommentBuilder b) updates]) =
      _$GThreadCommentData_ThreadComment;

  static void _initializeBuilder(GThreadCommentData_ThreadCommentBuilder b) =>
      b..G__typename = 'ThreadComment';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int? get threadId;
  String? get comment;
  bool? get isLiked;
  int get likeCount;
  int get createdAt;
  GThreadCommentData_ThreadComment_user? get user;
  _i2.JsonObject? get childComments;
  bool? get isLocked;
  static Serializer<GThreadCommentData_ThreadComment> get serializer =>
      _$gThreadCommentDataThreadCommentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadCommentData_ThreadComment.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadCommentData_ThreadComment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadCommentData_ThreadComment.serializer,
        json,
      );
}

abstract class GThreadCommentData_ThreadComment_user
    implements
        Built<GThreadCommentData_ThreadComment_user,
            GThreadCommentData_ThreadComment_userBuilder>,
        _i3.GUserFragment {
  GThreadCommentData_ThreadComment_user._();

  factory GThreadCommentData_ThreadComment_user(
          [Function(GThreadCommentData_ThreadComment_userBuilder b) updates]) =
      _$GThreadCommentData_ThreadComment_user;

  static void _initializeBuilder(
          GThreadCommentData_ThreadComment_userBuilder b) =>
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
  GThreadCommentData_ThreadComment_user_avatar? get avatar;
  static Serializer<GThreadCommentData_ThreadComment_user> get serializer =>
      _$gThreadCommentDataThreadCommentUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadCommentData_ThreadComment_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadCommentData_ThreadComment_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadCommentData_ThreadComment_user.serializer,
        json,
      );
}

abstract class GThreadCommentData_ThreadComment_user_avatar
    implements
        Built<GThreadCommentData_ThreadComment_user_avatar,
            GThreadCommentData_ThreadComment_user_avatarBuilder>,
        _i3.GUserFragment_avatar {
  GThreadCommentData_ThreadComment_user_avatar._();

  factory GThreadCommentData_ThreadComment_user_avatar(
      [Function(GThreadCommentData_ThreadComment_user_avatarBuilder b)
          updates]) = _$GThreadCommentData_ThreadComment_user_avatar;

  static void _initializeBuilder(
          GThreadCommentData_ThreadComment_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GThreadCommentData_ThreadComment_user_avatar>
      get serializer => _$gThreadCommentDataThreadCommentUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadCommentData_ThreadComment_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadCommentData_ThreadComment_user_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadCommentData_ThreadComment_user_avatar.serializer,
        json,
      );
}
