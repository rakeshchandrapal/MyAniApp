// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'review.var.gql.g.dart';

abstract class GReviewVars implements Built<GReviewVars, GReviewVarsBuilder> {
  GReviewVars._();

  factory GReviewVars([Function(GReviewVarsBuilder b) updates]) = _$GReviewVars;

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
