// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'thread.var.gql.g.dart';

abstract class GThreadFragmentVars
    implements Built<GThreadFragmentVars, GThreadFragmentVarsBuilder> {
  GThreadFragmentVars._();

  factory GThreadFragmentVars(
          [void Function(GThreadFragmentVarsBuilder b) updates]) =
      _$GThreadFragmentVars;

  static Serializer<GThreadFragmentVars> get serializer =>
      _$gThreadFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadFragmentVars.serializer,
        json,
      );
}
