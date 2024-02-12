// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i2;

part 'like.var.gql.g.dart';

abstract class GLikesVars implements Built<GLikesVars, GLikesVarsBuilder> {
  GLikesVars._();

  factory GLikesVars([Function(GLikesVarsBuilder b) updates]) = _$GLikesVars;

  int? get id;
  _i1.GLikeableType? get type;
  int? get page;
  static Serializer<GLikesVars> get serializer => _$gLikesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GLikesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLikesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GLikesVars.serializer,
        json,
      );
}
