// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/thread_comment.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/thread_comment.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/thread_comment.var.gql.dart'
    as _i3;

part 'thread_comment.req.gql.g.dart';

abstract class GThreadCommentReq
    implements
        Built<GThreadCommentReq, GThreadCommentReqBuilder>,
        _i1.FragmentRequest<_i2.GThreadCommentData, _i3.GThreadCommentVars> {
  GThreadCommentReq._();

  factory GThreadCommentReq([Function(GThreadCommentReqBuilder b) updates]) =
      _$GThreadCommentReq;

  static void _initializeBuilder(GThreadCommentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ThreadComment';

  @override
  _i3.GThreadCommentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GThreadCommentData? parseData(Map<String, dynamic> json) =>
      _i2.GThreadCommentData.fromJson(json);

  static Serializer<GThreadCommentReq> get serializer =>
      _$gThreadCommentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GThreadCommentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadCommentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GThreadCommentReq.serializer,
        json,
      );
}
