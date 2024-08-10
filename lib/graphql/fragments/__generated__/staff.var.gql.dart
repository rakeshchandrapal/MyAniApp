// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'staff.var.gql.g.dart';

abstract class GStaffFragmentVars
    implements Built<GStaffFragmentVars, GStaffFragmentVarsBuilder> {
  GStaffFragmentVars._();

  factory GStaffFragmentVars(
          [void Function(GStaffFragmentVarsBuilder b) updates]) =
      _$GStaffFragmentVars;

  static Serializer<GStaffFragmentVars> get serializer =>
      _$gStaffFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffFragmentVars.serializer,
        json,
      );
}
