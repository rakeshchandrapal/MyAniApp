// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'similar.var.gql.g.dart';

abstract class GRecommendationsVars
    implements Built<GRecommendationsVars, GRecommendationsVarsBuilder> {
  GRecommendationsVars._();

  factory GRecommendationsVars(
          [Function(GRecommendationsVarsBuilder b) updates]) =
      _$GRecommendationsVars;

  int? get mediaId;
  int? get page;
  static Serializer<GRecommendationsVars> get serializer =>
      _$gRecommendationsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRecommendationsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRecommendationsVars.serializer,
        json,
      );
}
