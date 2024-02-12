// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i2;

part 'activity.var.gql.g.dart';

abstract class GUserActivitiesVars
    implements Built<GUserActivitiesVars, GUserActivitiesVarsBuilder> {
  GUserActivitiesVars._();

  factory GUserActivitiesVars(
      [Function(GUserActivitiesVarsBuilder b) updates]) = _$GUserActivitiesVars;

  int? get userId;
  _i1.GActivityType? get activityType;
  int? get page;
  static Serializer<GUserActivitiesVars> get serializer =>
      _$gUserActivitiesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserActivitiesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserActivitiesVars.serializer,
        json,
      );
}
