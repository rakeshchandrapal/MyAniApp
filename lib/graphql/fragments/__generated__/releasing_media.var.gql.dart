// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'releasing_media.var.gql.g.dart';

abstract class GReleasingMediaVars
    implements Built<GReleasingMediaVars, GReleasingMediaVarsBuilder> {
  GReleasingMediaVars._();

  factory GReleasingMediaVars(
          [void Function(GReleasingMediaVarsBuilder b) updates]) =
      _$GReleasingMediaVars;

  static Serializer<GReleasingMediaVars> get serializer =>
      _$gReleasingMediaVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GReleasingMediaVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasingMediaVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GReleasingMediaVars.serializer,
        json,
      );
}
