// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'threads.var.gql.g.dart';

abstract class GMediaThreadsVars
    implements Built<GMediaThreadsVars, GMediaThreadsVarsBuilder> {
  GMediaThreadsVars._();

  factory GMediaThreadsVars(
          [void Function(GMediaThreadsVarsBuilder b) updates]) =
      _$GMediaThreadsVars;

  int? get mediaId;
  int? get page;
  int? get perPage;
  static Serializer<GMediaThreadsVars> get serializer =>
      _$gMediaThreadsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaThreadsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaThreadsVars.serializer,
        json,
      );
}
