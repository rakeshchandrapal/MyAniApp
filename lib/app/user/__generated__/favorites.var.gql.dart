// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'favorites.var.gql.g.dart';

abstract class GUserFavoritesVars
    implements Built<GUserFavoritesVars, GUserFavoritesVarsBuilder> {
  GUserFavoritesVars._();

  factory GUserFavoritesVars(
          [void Function(GUserFavoritesVarsBuilder b) updates]) =
      _$GUserFavoritesVars;

  String? get name;
  int? get animePage;
  int? get mangaPage;
  int? get characterPage;
  int? get staffPage;
  int? get studioPage;
  static Serializer<GUserFavoritesVars> get serializer =>
      _$gUserFavoritesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserFavoritesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserFavoritesVars.serializer,
        json,
      );
}
