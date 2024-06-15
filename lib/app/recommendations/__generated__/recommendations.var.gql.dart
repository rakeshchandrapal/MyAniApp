// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i2;

part 'recommendations.var.gql.g.dart';

abstract class GRecommendationsVars
    implements Built<GRecommendationsVars, GRecommendationsVarsBuilder> {
  GRecommendationsVars._();

  factory GRecommendationsVars(
          [void Function(GRecommendationsVarsBuilder b) updates]) =
      _$GRecommendationsVars;

  int? get page;
  int? get perPage;
  BuiltList<_i1.GRecommendationSort?>? get sort;
  bool? get onList;
  static Serializer<GRecommendationsVars> get serializer =>
      _$gRecommendationsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GRecommendationsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GRecommendationsVars.serializer,
        json,
      );
}

abstract class GSaveRecommendationVars
    implements Built<GSaveRecommendationVars, GSaveRecommendationVarsBuilder> {
  GSaveRecommendationVars._();

  factory GSaveRecommendationVars(
          [void Function(GSaveRecommendationVarsBuilder b) updates]) =
      _$GSaveRecommendationVars;

  int? get mediaId;
  int? get mediaRecommendationId;
  _i1.GRecommendationRating? get rating;
  static Serializer<GSaveRecommendationVars> get serializer =>
      _$gSaveRecommendationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSaveRecommendationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveRecommendationVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSaveRecommendationVars.serializer,
        json,
      );
}
