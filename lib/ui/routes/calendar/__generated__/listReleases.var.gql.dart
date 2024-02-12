// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'listReleases.var.gql.g.dart';

abstract class GReleasesListVars
    implements Built<GReleasesListVars, GReleasesListVarsBuilder> {
  GReleasesListVars._();

  factory GReleasesListVars([Function(GReleasesListVarsBuilder b) updates]) =
      _$GReleasesListVars;

  int? get page;
  static Serializer<GReleasesListVars> get serializer =>
      _$gReleasesListVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReleasesListVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasesListVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReleasesListVars.serializer,
        json,
      );
}
