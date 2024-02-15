// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'comment.var.gql.g.dart';

abstract class GThreadCommentVars
    implements Built<GThreadCommentVars, GThreadCommentVarsBuilder> {
  GThreadCommentVars._();

  factory GThreadCommentVars([Function(GThreadCommentVarsBuilder b) updates]) =
      _$GThreadCommentVars;

  int? get id;
  static Serializer<GThreadCommentVars> get serializer =>
      _$gThreadCommentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadCommentVars.serializer,
        json,
      );
}
