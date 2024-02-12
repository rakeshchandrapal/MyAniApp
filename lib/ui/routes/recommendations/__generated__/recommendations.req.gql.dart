// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/recommendations/__generated__/recommendations.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/recommendations/__generated__/recommendations.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/recommendations/__generated__/recommendations.var.gql.dart'
    as _i3;

part 'recommendations.req.gql.g.dart';

abstract class GRecommendationsReq
    implements
        Built<GRecommendationsReq, GRecommendationsReqBuilder>,
        _i1
        .OperationRequest<_i2.GRecommendationsData, _i3.GRecommendationsVars> {
  GRecommendationsReq._();

  factory GRecommendationsReq(
      [Function(GRecommendationsReqBuilder b) updates]) = _$GRecommendationsReq;

  static void _initializeBuilder(GRecommendationsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Recommendations',
    )
    ..executeOnListen = true;

  @override
  _i3.GRecommendationsVars get vars;
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
  _i2.GRecommendationsData? Function(
    _i2.GRecommendationsData?,
    _i2.GRecommendationsData?,
  )? get updateResult;
  @override
  _i2.GRecommendationsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GRecommendationsData? parseData(Map<String, dynamic> json) =>
      _i2.GRecommendationsData.fromJson(json);

  static Serializer<GRecommendationsReq> get serializer =>
      _$gRecommendationsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GRecommendationsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRecommendationsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GRecommendationsReq.serializer,
        json,
      );
}

abstract class GSaveRecommendationReq
    implements
        Built<GSaveRecommendationReq, GSaveRecommendationReqBuilder>,
        _i1.OperationRequest<_i2.GSaveRecommendationData,
            _i3.GSaveRecommendationVars> {
  GSaveRecommendationReq._();

  factory GSaveRecommendationReq(
          [Function(GSaveRecommendationReqBuilder b) updates]) =
      _$GSaveRecommendationReq;

  static void _initializeBuilder(GSaveRecommendationReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SaveRecommendation',
    )
    ..executeOnListen = true;

  @override
  _i3.GSaveRecommendationVars get vars;
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
  _i2.GSaveRecommendationData? Function(
    _i2.GSaveRecommendationData?,
    _i2.GSaveRecommendationData?,
  )? get updateResult;
  @override
  _i2.GSaveRecommendationData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GSaveRecommendationData? parseData(Map<String, dynamic> json) =>
      _i2.GSaveRecommendationData.fromJson(json);

  static Serializer<GSaveRecommendationReq> get serializer =>
      _$gSaveRecommendationReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSaveRecommendationReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveRecommendationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSaveRecommendationReq.serializer,
        json,
      );
}
