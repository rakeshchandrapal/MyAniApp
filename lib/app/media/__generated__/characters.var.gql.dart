// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'characters.var.gql.g.dart';

abstract class GMediaCharactersVars
    implements Built<GMediaCharactersVars, GMediaCharactersVarsBuilder> {
  GMediaCharactersVars._();

  factory GMediaCharactersVars(
          [void Function(GMediaCharactersVarsBuilder b) updates]) =
      _$GMediaCharactersVars;

  int? get mediaId;
  int? get page;
  static Serializer<GMediaCharactersVars> get serializer =>
      _$gMediaCharactersVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaCharactersVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaCharactersVars.serializer,
        json,
      );
}
