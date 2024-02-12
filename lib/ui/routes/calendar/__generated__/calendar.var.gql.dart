// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'calendar.var.gql.g.dart';

abstract class GCalendarScheduleVars
    implements Built<GCalendarScheduleVars, GCalendarScheduleVarsBuilder> {
  GCalendarScheduleVars._();

  factory GCalendarScheduleVars(
          [Function(GCalendarScheduleVarsBuilder b) updates]) =
      _$GCalendarScheduleVars;

  int? get start;
  int? get end;
  static Serializer<GCalendarScheduleVars> get serializer =>
      _$gCalendarScheduleVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCalendarScheduleVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCalendarScheduleVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCalendarScheduleVars.serializer,
        json,
      );
}
