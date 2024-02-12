// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'media_list_option.var.gql.g.dart';

abstract class GMediaListOptionsVars
    implements Built<GMediaListOptionsVars, GMediaListOptionsVarsBuilder> {
  GMediaListOptionsVars._();

  factory GMediaListOptionsVars(
          [Function(GMediaListOptionsVarsBuilder b) updates]) =
      _$GMediaListOptionsVars;

  static Serializer<GMediaListOptionsVars> get serializer =>
      _$gMediaListOptionsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListOptionsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListOptionsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListOptionsVars.serializer,
        json,
      );
}
