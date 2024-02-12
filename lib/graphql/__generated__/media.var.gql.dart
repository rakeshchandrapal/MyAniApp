// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'media.var.gql.g.dart';

abstract class GMediaVars implements Built<GMediaVars, GMediaVarsBuilder> {
  GMediaVars._();

  factory GMediaVars([Function(GMediaVarsBuilder b) updates]) = _$GMediaVars;

  int? get id;
  static Serializer<GMediaVars> get serializer => _$gMediaVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaVars.serializer,
        json,
      );
}

abstract class GToggleFavoriteVars
    implements Built<GToggleFavoriteVars, GToggleFavoriteVarsBuilder> {
  GToggleFavoriteVars._();

  factory GToggleFavoriteVars(
      [Function(GToggleFavoriteVarsBuilder b) updates]) = _$GToggleFavoriteVars;

  int? get animeId;
  int? get mangaId;
  int? get characterId;
  int? get staffId;
  int? get studioId;
  static Serializer<GToggleFavoriteVars> get serializer =>
      _$gToggleFavoriteVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GToggleFavoriteVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GToggleFavoriteVars.serializer,
        json,
      );
}
