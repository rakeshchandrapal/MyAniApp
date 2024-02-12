// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i2;

part 'activities.var.gql.g.dart';

abstract class GActivitiesVars
    implements Built<GActivitiesVars, GActivitiesVarsBuilder> {
  GActivitiesVars._();

  factory GActivitiesVars([Function(GActivitiesVarsBuilder b) updates]) =
      _$GActivitiesVars;

  bool? get isFollowing;
  bool? get hasReplies;
  _i1.GActivityType? get activityType;
  int? get page;
  static Serializer<GActivitiesVars> get serializer =>
      _$gActivitiesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GActivitiesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivitiesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GActivitiesVars.serializer,
        json,
      );
}

abstract class GToggleLikeVars
    implements Built<GToggleLikeVars, GToggleLikeVarsBuilder> {
  GToggleLikeVars._();

  factory GToggleLikeVars([Function(GToggleLikeVarsBuilder b) updates]) =
      _$GToggleLikeVars;

  _i1.GLikeableType? get type;
  int? get id;
  static Serializer<GToggleLikeVars> get serializer =>
      _$gToggleLikeVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GToggleLikeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleLikeVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GToggleLikeVars.serializer,
        json,
      );
}

abstract class GSaveTextActivityVars
    implements Built<GSaveTextActivityVars, GSaveTextActivityVarsBuilder> {
  GSaveTextActivityVars._();

  factory GSaveTextActivityVars(
          [Function(GSaveTextActivityVarsBuilder b) updates]) =
      _$GSaveTextActivityVars;

  int? get id;
  String? get text;
  static Serializer<GSaveTextActivityVars> get serializer =>
      _$gSaveTextActivityVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSaveTextActivityVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveTextActivityVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSaveTextActivityVars.serializer,
        json,
      );
}
