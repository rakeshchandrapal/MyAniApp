// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'stats.var.gql.g.dart';

abstract class GUserStatsVars
    implements Built<GUserStatsVars, GUserStatsVarsBuilder> {
  GUserStatsVars._();

  factory GUserStatsVars([Function(GUserStatsVarsBuilder b) updates]) =
      _$GUserStatsVars;

  String? get name;
  static Serializer<GUserStatsVars> get serializer =>
      _$gUserStatsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserStatsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserStatsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserStatsVars.serializer,
        json,
      );
}
