// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'media_card.var.gql.g.dart';

abstract class GEmbedMediaCardVars
    implements Built<GEmbedMediaCardVars, GEmbedMediaCardVarsBuilder> {
  GEmbedMediaCardVars._();

  factory GEmbedMediaCardVars(
          [void Function(GEmbedMediaCardVarsBuilder b) updates]) =
      _$GEmbedMediaCardVars;

  int? get id;
  static Serializer<GEmbedMediaCardVars> get serializer =>
      _$gEmbedMediaCardVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEmbedMediaCardVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEmbedMediaCardVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEmbedMediaCardVars.serializer,
        json,
      );
}
