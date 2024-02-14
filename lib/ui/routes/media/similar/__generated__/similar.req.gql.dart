// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/media/similar/__generated__/similar.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/media/similar/__generated__/similar.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/media/similar/__generated__/similar.var.gql.dart'
    as _i3;

part 'similar.req.gql.g.dart';

abstract class GMediaRecommendationsReq
    implements
        Built<GMediaRecommendationsReq, GMediaRecommendationsReqBuilder>,
        _i1.OperationRequest<_i2.GMediaRecommendationsData,
            _i3.GMediaRecommendationsVars> {
  GMediaRecommendationsReq._();

  factory GMediaRecommendationsReq(
          [Function(GMediaRecommendationsReqBuilder b) updates]) =
      _$GMediaRecommendationsReq;

  static void _initializeBuilder(GMediaRecommendationsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MediaRecommendations',
    )
    ..executeOnListen = true;

  @override
  _i3.GMediaRecommendationsVars get vars;
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
  _i2.GMediaRecommendationsData? Function(
    _i2.GMediaRecommendationsData?,
    _i2.GMediaRecommendationsData?,
  )? get updateResult;
  @override
  _i2.GMediaRecommendationsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GMediaRecommendationsData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaRecommendationsData.fromJson(json);

  static Serializer<GMediaRecommendationsReq> get serializer =>
      _$gMediaRecommendationsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaRecommendationsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaRecommendationsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaRecommendationsReq.serializer,
        json,
      );
}
