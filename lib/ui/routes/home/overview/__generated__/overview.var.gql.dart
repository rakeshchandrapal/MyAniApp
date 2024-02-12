// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i2;

part 'overview.var.gql.g.dart';

abstract class GHomeOverviewVars
    implements Built<GHomeOverviewVars, GHomeOverviewVarsBuilder> {
  GHomeOverviewVars._();

  factory GHomeOverviewVars([Function(GHomeOverviewVarsBuilder b) updates]) =
      _$GHomeOverviewVars;

  int? get page;
  int get userId;
  _i1.GMediaType? get type;
  static Serializer<GHomeOverviewVars> get serializer =>
      _$gHomeOverviewVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GHomeOverviewVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeOverviewVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GHomeOverviewVars.serializer,
        json,
      );
}
