// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i3;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i2;

part 'text_activity.data.gql.g.dart';

abstract class GTextActivity {
  String get G__typename;
  int get id;
  int? get userId;
  _i1.GActivityType? get type;
  int get replyCount;
  String? get text;
  bool? get isLocked;
  bool? get isSubscribed;
  bool? get isLiked;
  int get likeCount;
  int get createdAt;
  GTextActivity_user? get user;
  Map<String, dynamic> toJson();
}

abstract class GTextActivity_user implements _i2.GUserFragment {
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
  GTextActivity_user_avatar? get avatar;
  @override
  Map<String, dynamic> toJson();
}

abstract class GTextActivity_user_avatar implements _i2.GUserFragment_avatar {
  @override
  String get G__typename;
  @override
  String? get large;
  @override
  Map<String, dynamic> toJson();
}

abstract class GTextActivityData
    implements
        Built<GTextActivityData, GTextActivityDataBuilder>,
        GTextActivity {
  GTextActivityData._();

  factory GTextActivityData([Function(GTextActivityDataBuilder b) updates]) =
      _$GTextActivityData;

  static void _initializeBuilder(GTextActivityDataBuilder b) =>
      b..G__typename = 'TextActivity';

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
  GTextActivityData_user? get user;
  static Serializer<GTextActivityData> get serializer =>
      _$gTextActivityDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GTextActivityData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTextActivityData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GTextActivityData.serializer,
        json,
      );
}

abstract class GTextActivityData_user
    implements
        Built<GTextActivityData_user, GTextActivityData_userBuilder>,
        GTextActivity_user,
        _i2.GUserFragment {
  GTextActivityData_user._();

  factory GTextActivityData_user(
          [Function(GTextActivityData_userBuilder b) updates]) =
      _$GTextActivityData_user;

  static void _initializeBuilder(GTextActivityData_userBuilder b) =>
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
  GTextActivityData_user_avatar? get avatar;
  static Serializer<GTextActivityData_user> get serializer =>
      _$gTextActivityDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GTextActivityData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTextActivityData_user? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GTextActivityData_user.serializer,
        json,
      );
}

abstract class GTextActivityData_user_avatar
    implements
        Built<GTextActivityData_user_avatar,
            GTextActivityData_user_avatarBuilder>,
        GTextActivity_user_avatar,
        _i2.GUserFragment_avatar {
  GTextActivityData_user_avatar._();

  factory GTextActivityData_user_avatar(
          [Function(GTextActivityData_user_avatarBuilder b) updates]) =
      _$GTextActivityData_user_avatar;

  static void _initializeBuilder(GTextActivityData_user_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GTextActivityData_user_avatar> get serializer =>
      _$gTextActivityDataUserAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GTextActivityData_user_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTextActivityData_user_avatar? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GTextActivityData_user_avatar.serializer,
        json,
      );
}
