// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/common/comment/__generated__/like.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/common/comment/__generated__/like.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/common/comment/__generated__/like.var.gql.dart'
    as _i3;

part 'like.req.gql.g.dart';

abstract class GLikesReq
    implements
        Built<GLikesReq, GLikesReqBuilder>,
        _i1.OperationRequest<_i2.GLikesData, _i3.GLikesVars> {
  GLikesReq._();

  factory GLikesReq([Function(GLikesReqBuilder b) updates]) = _$GLikesReq;

  static void _initializeBuilder(GLikesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Likes',
    )
    ..executeOnListen = true;

  @override
  _i3.GLikesVars get vars;
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
  _i2.GLikesData? Function(
    _i2.GLikesData?,
    _i2.GLikesData?,
  )? get updateResult;
  @override
  _i2.GLikesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GLikesData? parseData(Map<String, dynamic> json) =>
      _i2.GLikesData.fromJson(json);

  static Serializer<GLikesReq> get serializer => _$gLikesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GLikesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLikesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GLikesReq.serializer,
        json,
      );
}
