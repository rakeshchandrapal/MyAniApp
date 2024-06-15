// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'activity.var.gql.g.dart';

abstract class GActivityVars
    implements Built<GActivityVars, GActivityVarsBuilder> {
  GActivityVars._();

  factory GActivityVars([void Function(GActivityVarsBuilder b) updates]) =
      _$GActivityVars;

  int? get id;
  int? get page;
  static Serializer<GActivityVars> get serializer => _$gActivityVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GActivityVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GActivityVars.serializer,
        json,
      );
}

abstract class GSaveActivityReplyVars
    implements Built<GSaveActivityReplyVars, GSaveActivityReplyVarsBuilder> {
  GSaveActivityReplyVars._();

  factory GSaveActivityReplyVars(
          [void Function(GSaveActivityReplyVarsBuilder b) updates]) =
      _$GSaveActivityReplyVars;

  int? get id;
  int? get activityId;
  String? get text;
  static Serializer<GSaveActivityReplyVars> get serializer =>
      _$gSaveActivityReplyVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveActivityReplyVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveActivityReplyVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveActivityReplyVars.serializer,
        json,
      );
}

abstract class GSaveMessageActivityVars
    implements
        Built<GSaveMessageActivityVars, GSaveMessageActivityVarsBuilder> {
  GSaveMessageActivityVars._();

  factory GSaveMessageActivityVars(
          [void Function(GSaveMessageActivityVarsBuilder b) updates]) =
      _$GSaveMessageActivityVars;

  int? get id;
  int? get recipientId;
  String? get message;
  bool? get private;
  static Serializer<GSaveMessageActivityVars> get serializer =>
      _$gSaveMessageActivityVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMessageActivityVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMessageActivityVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMessageActivityVars.serializer,
        json,
      );
}

abstract class GToggleActivitySubscriptionVars
    implements
        Built<GToggleActivitySubscriptionVars,
            GToggleActivitySubscriptionVarsBuilder> {
  GToggleActivitySubscriptionVars._();

  factory GToggleActivitySubscriptionVars(
          [void Function(GToggleActivitySubscriptionVarsBuilder b) updates]) =
      _$GToggleActivitySubscriptionVars;

  int? get id;
  bool? get subscribe;
  static Serializer<GToggleActivitySubscriptionVars> get serializer =>
      _$gToggleActivitySubscriptionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleActivitySubscriptionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleActivitySubscriptionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleActivitySubscriptionVars.serializer,
        json,
      );
}

abstract class GDeleteActivityReplyVars
    implements
        Built<GDeleteActivityReplyVars, GDeleteActivityReplyVarsBuilder> {
  GDeleteActivityReplyVars._();

  factory GDeleteActivityReplyVars(
          [void Function(GDeleteActivityReplyVarsBuilder b) updates]) =
      _$GDeleteActivityReplyVars;

  int? get id;
  static Serializer<GDeleteActivityReplyVars> get serializer =>
      _$gDeleteActivityReplyVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteActivityReplyVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteActivityReplyVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteActivityReplyVars.serializer,
        json,
      );
}

abstract class GDeleteActivityVars
    implements Built<GDeleteActivityVars, GDeleteActivityVarsBuilder> {
  GDeleteActivityVars._();

  factory GDeleteActivityVars(
          [void Function(GDeleteActivityVarsBuilder b) updates]) =
      _$GDeleteActivityVars;

  int? get id;
  static Serializer<GDeleteActivityVars> get serializer =>
      _$gDeleteActivityVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteActivityVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteActivityVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteActivityVars.serializer,
        json,
      );
}
