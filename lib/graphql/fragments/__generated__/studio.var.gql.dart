// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'studio.var.gql.g.dart';

abstract class GStudioFragmentVars
    implements Built<GStudioFragmentVars, GStudioFragmentVarsBuilder> {
  GStudioFragmentVars._();

  factory GStudioFragmentVars(
          [void Function(GStudioFragmentVarsBuilder b) updates]) =
      _$GStudioFragmentVars;

  static Serializer<GStudioFragmentVars> get serializer =>
      _$gStudioFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStudioFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStudioFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStudioFragmentVars.serializer,
        json,
      );
}
