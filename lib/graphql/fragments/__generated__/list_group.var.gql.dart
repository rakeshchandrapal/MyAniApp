// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'list_group.var.gql.g.dart';

abstract class GListGroupVars
    implements Built<GListGroupVars, GListGroupVarsBuilder> {
  GListGroupVars._();

  factory GListGroupVars([Function(GListGroupVarsBuilder b) updates]) =
      _$GListGroupVars;

  static Serializer<GListGroupVars> get serializer =>
      _$gListGroupVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GListGroupVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListGroupVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GListGroupVars.serializer,
        json,
      );
}
