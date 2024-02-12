// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'reviews.var.gql.g.dart';

abstract class GUserReviewsVars
    implements Built<GUserReviewsVars, GUserReviewsVarsBuilder> {
  GUserReviewsVars._();

  factory GUserReviewsVars([Function(GUserReviewsVarsBuilder b) updates]) =
      _$GUserReviewsVars;

  int? get userId;
  int? get page;
  static Serializer<GUserReviewsVars> get serializer =>
      _$gUserReviewsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserReviewsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserReviewsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserReviewsVars.serializer,
        json,
      );
}
