// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'thread.var.gql.g.dart';

abstract class GThreadVars implements Built<GThreadVars, GThreadVarsBuilder> {
  GThreadVars._();

  factory GThreadVars([Function(GThreadVarsBuilder b) updates]) = _$GThreadVars;

  int? get id;
  int? get page;
  static Serializer<GThreadVars> get serializer => _$gThreadVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThreadVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThreadVars.serializer,
        json,
      );
}

abstract class GSaveCommentVars
    implements Built<GSaveCommentVars, GSaveCommentVarsBuilder> {
  GSaveCommentVars._();

  factory GSaveCommentVars([Function(GSaveCommentVarsBuilder b) updates]) =
      _$GSaveCommentVars;

  int? get id;
  int? get threadId;
  int? get parentCommentId;
  String? get comment;
  static Serializer<GSaveCommentVars> get serializer =>
      _$gSaveCommentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveCommentVars.serializer,
        json,
      );
}

abstract class GDeleteCommentVars
    implements Built<GDeleteCommentVars, GDeleteCommentVarsBuilder> {
  GDeleteCommentVars._();

  factory GDeleteCommentVars([Function(GDeleteCommentVarsBuilder b) updates]) =
      _$GDeleteCommentVars;

  int? get id;
  static Serializer<GDeleteCommentVars> get serializer =>
      _$gDeleteCommentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteCommentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteCommentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteCommentVars.serializer,
        json,
      );
}
