// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i2;

part 'explore.var.gql.g.dart';

abstract class GExploreVars
    implements Built<GExploreVars, GExploreVarsBuilder> {
  GExploreVars._();

  factory GExploreVars([void Function(GExploreVarsBuilder b) updates]) =
      _$GExploreVars;

  _i1.GMediaSeason? get season;
  int? get seasonYear;
  _i1.GMediaSeason? get nextSeason;
  int? get nextYear;
  static Serializer<GExploreVars> get serializer => _$gExploreVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GExploreVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GExploreVars.serializer,
        json,
      );
}
