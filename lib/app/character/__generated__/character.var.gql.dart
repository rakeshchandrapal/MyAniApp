// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'character.var.gql.g.dart';

abstract class GCharacterVars
    implements Built<GCharacterVars, GCharacterVarsBuilder> {
  GCharacterVars._();

  factory GCharacterVars([void Function(GCharacterVarsBuilder b) updates]) =
      _$GCharacterVars;

  int? get id;
  int? get page;
  bool? get onList;
  static Serializer<GCharacterVars> get serializer =>
      _$gCharacterVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterVars.serializer,
        json,
      );
}
