// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'similar.var.gql.g.dart';

abstract class GMediaRecommendationsVars
    implements
        Built<GMediaRecommendationsVars, GMediaRecommendationsVarsBuilder> {
  GMediaRecommendationsVars._();

  factory GMediaRecommendationsVars(
          [Function(GMediaRecommendationsVarsBuilder b) updates]) =
      _$GMediaRecommendationsVars;

  int? get mediaId;
  int? get page;
  static Serializer<GMediaRecommendationsVars> get serializer =>
      _$gMediaRecommendationsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaRecommendationsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaRecommendationsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaRecommendationsVars.serializer,
        json,
      );
}
