// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'thread.var.gql.g.dart';

abstract class GUserThreadsVars
    implements Built<GUserThreadsVars, GUserThreadsVarsBuilder> {
  GUserThreadsVars._();

  factory GUserThreadsVars([void Function(GUserThreadsVarsBuilder b) updates]) =
      _$GUserThreadsVars;

  int? get userId;
  int? get threadPage;
  int? get commentsPage;
  static Serializer<GUserThreadsVars> get serializer =>
      _$gUserThreadsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserThreadsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserThreadsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserThreadsVars.serializer,
        json,
      );
}
