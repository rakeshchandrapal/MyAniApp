// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'media_entry.var.gql.g.dart';

abstract class GMediaListEntryVars
    implements Built<GMediaListEntryVars, GMediaListEntryVarsBuilder> {
  GMediaListEntryVars._();

  factory GMediaListEntryVars(
          [void Function(GMediaListEntryVarsBuilder b) updates]) =
      _$GMediaListEntryVars;

  static Serializer<GMediaListEntryVars> get serializer =>
      _$gMediaListEntryVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListEntryVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListEntryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListEntryVars.serializer,
        json,
      );
}
