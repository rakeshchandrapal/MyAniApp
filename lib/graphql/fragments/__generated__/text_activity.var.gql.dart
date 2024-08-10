// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'text_activity.var.gql.g.dart';

abstract class GTextActivityVars
    implements Built<GTextActivityVars, GTextActivityVarsBuilder> {
  GTextActivityVars._();

  factory GTextActivityVars(
          [void Function(GTextActivityVarsBuilder b) updates]) =
      _$GTextActivityVars;

  static Serializer<GTextActivityVars> get serializer =>
      _$gTextActivityVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTextActivityVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTextActivityVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTextActivityVars.serializer,
        json,
      );
}
