// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/thread/comment/__generated__/comment.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/thread/comment/__generated__/comment.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/thread/comment/__generated__/comment.var.gql.dart'
    as _i3;

part 'comment.req.gql.g.dart';

abstract class GCommentReq
    implements
        Built<GCommentReq, GCommentReqBuilder>,
        _i1.OperationRequest<_i2.GCommentData, _i3.GCommentVars> {
  GCommentReq._();

  factory GCommentReq([Function(GCommentReqBuilder b) updates]) = _$GCommentReq;

  static void _initializeBuilder(GCommentReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Comment',
    )
    ..executeOnListen = true;

  @override
  _i3.GCommentVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GCommentData? Function(
    _i2.GCommentData?,
    _i2.GCommentData?,
  )? get updateResult;
  @override
  _i2.GCommentData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCommentData? parseData(Map<String, dynamic> json) =>
      _i2.GCommentData.fromJson(json);

  static Serializer<GCommentReq> get serializer => _$gCommentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCommentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCommentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCommentReq.serializer,
        json,
      );
}
