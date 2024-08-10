// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'reviews.var.gql.g.dart';

abstract class GMediaReviewsVars
    implements Built<GMediaReviewsVars, GMediaReviewsVarsBuilder> {
  GMediaReviewsVars._();

  factory GMediaReviewsVars(
          [void Function(GMediaReviewsVarsBuilder b) updates]) =
      _$GMediaReviewsVars;

  int? get mediaId;
  int? get page;
  static Serializer<GMediaReviewsVars> get serializer =>
      _$gMediaReviewsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaReviewsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaReviewsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaReviewsVars.serializer,
        json,
      );
}
