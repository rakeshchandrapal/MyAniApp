// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/app/media/__generated__/similar.ast.gql.dart' as _i5;
import 'package:myaniapp/app/media/__generated__/similar.data.gql.dart' as _i2;
import 'package:myaniapp/app/media/__generated__/similar.var.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;

part 'similar.req.gql.g.dart';

abstract class GMediaSimilarReq
    implements
        Built<GMediaSimilarReq, GMediaSimilarReqBuilder>,
        _i1.OperationRequest<_i2.GMediaSimilarData, _i3.GMediaSimilarVars> {
  GMediaSimilarReq._();

  factory GMediaSimilarReq([void Function(GMediaSimilarReqBuilder b) updates]) =
      _$GMediaSimilarReq;

  static void _initializeBuilder(GMediaSimilarReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MediaSimilar',
    )
    ..executeOnListen = true;

  @override
  _i3.GMediaSimilarVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GMediaSimilarData? Function(
    _i2.GMediaSimilarData?,
    _i2.GMediaSimilarData?,
  )? get updateResult;
  @override
  _i2.GMediaSimilarData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GMediaSimilarData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaSimilarData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GMediaSimilarData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GMediaSimilarData, _i3.GMediaSimilarVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GMediaSimilarReq> get serializer =>
      _$gMediaSimilarReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaSimilarReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaSimilarReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaSimilarReq.serializer,
        json,
      );
}
