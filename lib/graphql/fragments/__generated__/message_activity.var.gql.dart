// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'message_activity.var.gql.g.dart';

abstract class GMessageActivityVars
    implements Built<GMessageActivityVars, GMessageActivityVarsBuilder> {
  GMessageActivityVars._();

  factory GMessageActivityVars(
          [void Function(GMessageActivityVarsBuilder b) updates]) =
      _$GMessageActivityVars;

  static Serializer<GMessageActivityVars> get serializer =>
      _$gMessageActivityVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMessageActivityVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMessageActivityVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMessageActivityVars.serializer,
        json,
      );
}
