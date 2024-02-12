// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'review.var.gql.g.dart';

abstract class GReviewVars implements Built<GReviewVars, GReviewVarsBuilder> {
  GReviewVars._();

  factory GReviewVars([Function(GReviewVarsBuilder b) updates]) = _$GReviewVars;

  int? get id;
  static Serializer<GReviewVars> get serializer => _$gReviewVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReviewVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReviewVars.serializer,
        json,
      );
}

abstract class GRateReviewVars
    implements Built<GRateReviewVars, GRateReviewVarsBuilder> {
  GRateReviewVars._();

  factory GRateReviewVars([Function(GRateReviewVarsBuilder b) updates]) =
      _$GRateReviewVars;

  int? get id;
  _i2.GReviewRating? get rating;
  static Serializer<GRateReviewVars> get serializer =>
      _$gRateReviewVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRateReviewVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRateReviewVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRateReviewVars.serializer,
        json,
      );
}
