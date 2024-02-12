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

part 'message_activity.data.gql.g.dart';

abstract class GMessageActivity {
  String get G__typename;
  int get id;
  _i1.GActivityType? get type;
  String? get message;
  int get replyCount;
  bool? get isPrivate;
  bool? get isLocked;
  bool? get isSubscribed;
  bool? get isLiked;
  int get likeCount;
  int get createdAt;
  int? get userId;
  GMessageActivity_messenger? get messenger;
  Map<String, dynamic> toJson();
}

abstract class GMessageActivity_messenger implements _i2.GUserFragment {
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
  GMessageActivity_messenger_avatar? get avatar;
  @override
  Map<String, dynamic> toJson();
}

abstract class GMessageActivity_messenger_avatar
    implements _i2.GUserFragment_avatar {
  @override
  String get G__typename;
  @override
  String? get large;
  @override
  Map<String, dynamic> toJson();
}

abstract class GMessageActivityData
    implements
        Built<GMessageActivityData, GMessageActivityDataBuilder>,
        GMessageActivity {
  GMessageActivityData._();

  factory GMessageActivityData(
          [Function(GMessageActivityDataBuilder b) updates]) =
      _$GMessageActivityData;

  static void _initializeBuilder(GMessageActivityDataBuilder b) =>
      b..G__typename = 'MessageActivity';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i1.GActivityType? get type;
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
  GMessageActivityData_messenger? get messenger;
  static Serializer<GMessageActivityData> get serializer =>
      _$gMessageActivityDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GMessageActivityData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMessageActivityData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GMessageActivityData.serializer,
        json,
      );
}

abstract class GMessageActivityData_messenger
    implements
        Built<GMessageActivityData_messenger,
            GMessageActivityData_messengerBuilder>,
        GMessageActivity_messenger,
        _i2.GUserFragment {
  GMessageActivityData_messenger._();

  factory GMessageActivityData_messenger(
          [Function(GMessageActivityData_messengerBuilder b) updates]) =
      _$GMessageActivityData_messenger;

  static void _initializeBuilder(GMessageActivityData_messengerBuilder b) =>
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
  GMessageActivityData_messenger_avatar? get avatar;
  static Serializer<GMessageActivityData_messenger> get serializer =>
      _$gMessageActivityDataMessengerSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GMessageActivityData_messenger.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMessageActivityData_messenger? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GMessageActivityData_messenger.serializer,
        json,
      );
}

abstract class GMessageActivityData_messenger_avatar
    implements
        Built<GMessageActivityData_messenger_avatar,
            GMessageActivityData_messenger_avatarBuilder>,
        GMessageActivity_messenger_avatar,
        _i2.GUserFragment_avatar {
  GMessageActivityData_messenger_avatar._();

  factory GMessageActivityData_messenger_avatar(
          [Function(GMessageActivityData_messenger_avatarBuilder b) updates]) =
      _$GMessageActivityData_messenger_avatar;

  static void _initializeBuilder(
          GMessageActivityData_messenger_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GMessageActivityData_messenger_avatar> get serializer =>
      _$gMessageActivityDataMessengerAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GMessageActivityData_messenger_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMessageActivityData_messenger_avatar? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GMessageActivityData_messenger_avatar.serializer,
        json,
      );
}
