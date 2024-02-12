// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'search.var.gql.g.dart';

abstract class GGenreCollectionVars
    implements Built<GGenreCollectionVars, GGenreCollectionVarsBuilder> {
  GGenreCollectionVars._();

  factory GGenreCollectionVars(
          [Function(GGenreCollectionVarsBuilder b) updates]) =
      _$GGenreCollectionVars;

  static Serializer<GGenreCollectionVars> get serializer =>
      _$gGenreCollectionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGenreCollectionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGenreCollectionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGenreCollectionVars.serializer,
        json,
      );
}

abstract class GSearchVars implements Built<GSearchVars, GSearchVarsBuilder> {
  GSearchVars._();

  factory GSearchVars([Function(GSearchVarsBuilder b) updates]) = _$GSearchVars;

  int? get page;
  int? get perPage;
  _i2.GMediaType? get type;
  BuiltList<_i2.GMediaFormat?>? get format;
  BuiltList<_i2.GMediaSort?>? get sort;
  _i2.GMediaSeason? get season;
  int? get seasonYear;
  String? get search;
  String? get year;
  int? get yearGreater;
  int? get yearLesser;
  BuiltList<String?>? get genres;
  BuiltList<String?>? get with_tags;
  BuiltList<String?>? get without_tags;
  bool? get isAdult;
  bool? get onList;
  static Serializer<GSearchVars> get serializer => _$gSearchVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchVars.serializer,
        json,
      );
}
