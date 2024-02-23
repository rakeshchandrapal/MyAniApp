// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'comment.var.gql.g.dart';

abstract class GCommentVars
    implements Built<GCommentVars, GCommentVarsBuilder> {
  GCommentVars._();

  factory GCommentVars([Function(GCommentVarsBuilder b) updates]) =
      _$GCommentVars;

  int? get id;
  static Serializer<GCommentVars> get serializer => _$gCommentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCommentVars.serializer,
        json,
      );
}
