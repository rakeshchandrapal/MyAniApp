// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i2;

part 'studio.var.gql.g.dart';

abstract class GStudioVars implements Built<GStudioVars, GStudioVarsBuilder> {
  GStudioVars._();

  factory GStudioVars([void Function(GStudioVarsBuilder b) updates]) =
      _$GStudioVars;

  int get id;
  int? get page;
  BuiltList<_i1.GMediaSort?>? get sort;
  bool? get onList;
  static Serializer<GStudioVars> get serializer => _$gStudioVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GStudioVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStudioVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GStudioVars.serializer,
        json,
      );
}
