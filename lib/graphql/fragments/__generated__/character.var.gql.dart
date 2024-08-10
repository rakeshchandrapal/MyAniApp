// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'character.var.gql.g.dart';

abstract class GCharacterFragmentVars
    implements Built<GCharacterFragmentVars, GCharacterFragmentVarsBuilder> {
  GCharacterFragmentVars._();

  factory GCharacterFragmentVars(
          [void Function(GCharacterFragmentVarsBuilder b) updates]) =
      _$GCharacterFragmentVars;

  static Serializer<GCharacterFragmentVars> get serializer =>
      _$gCharacterFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterFragmentVars.serializer,
        json,
      );
}
