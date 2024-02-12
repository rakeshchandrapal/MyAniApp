// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'fuzzy_date.var.gql.g.dart';

abstract class GFuzzyDateVars
    implements Built<GFuzzyDateVars, GFuzzyDateVarsBuilder> {
  GFuzzyDateVars._();

  factory GFuzzyDateVars([Function(GFuzzyDateVarsBuilder b) updates]) =
      _$GFuzzyDateVars;

  static Serializer<GFuzzyDateVars> get serializer =>
      _$gFuzzyDateVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFuzzyDateVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFuzzyDateVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFuzzyDateVars.serializer,
        json,
      );
}
