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

abstract class GThreadCommentReq
    implements
        Built<GThreadCommentReq, GThreadCommentReqBuilder>,
        _i1.OperationRequest<_i2.GThreadCommentData, _i3.GThreadCommentVars> {
  GThreadCommentReq._();

  factory GThreadCommentReq([Function(GThreadCommentReqBuilder b) updates]) =
      _$GThreadCommentReq;

  static void _initializeBuilder(GThreadCommentReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ThreadComment',
    )
    ..executeOnListen = true;

  @override
  _i3.GThreadCommentVars get vars;
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
  _i2.GThreadCommentData? Function(
    _i2.GThreadCommentData?,
    _i2.GThreadCommentData?,
  )? get updateResult;
  @override
  _i2.GThreadCommentData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
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
