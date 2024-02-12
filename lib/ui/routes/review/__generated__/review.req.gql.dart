// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/review/__generated__/review.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/review/__generated__/review.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/review/__generated__/review.var.gql.dart'
    as _i3;

part 'review.req.gql.g.dart';

abstract class GReviewReq
    implements
        Built<GReviewReq, GReviewReqBuilder>,
        _i1.OperationRequest<_i2.GReviewData, _i3.GReviewVars> {
  GReviewReq._();

  factory GReviewReq([Function(GReviewReqBuilder b) updates]) = _$GReviewReq;

  static void _initializeBuilder(GReviewReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Review',
    )
    ..executeOnListen = true;

  @override
  _i3.GReviewVars get vars;
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
  _i2.GReviewData? Function(
    _i2.GReviewData?,
    _i2.GReviewData?,
  )? get updateResult;
  @override
  _i2.GReviewData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GReviewData? parseData(Map<String, dynamic> json) =>
      _i2.GReviewData.fromJson(json);

  static Serializer<GReviewReq> get serializer => _$gReviewReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GReviewReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GReviewReq.serializer,
        json,
      );
}

abstract class GRateReviewReq
    implements
        Built<GRateReviewReq, GRateReviewReqBuilder>,
        _i1.OperationRequest<_i2.GRateReviewData, _i3.GRateReviewVars> {
  GRateReviewReq._();

  factory GRateReviewReq([Function(GRateReviewReqBuilder b) updates]) =
      _$GRateReviewReq;

  static void _initializeBuilder(GRateReviewReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'RateReview',
    )
    ..executeOnListen = true;

  @override
  _i3.GRateReviewVars get vars;
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
  _i2.GRateReviewData? Function(
    _i2.GRateReviewData?,
    _i2.GRateReviewData?,
  )? get updateResult;
  @override
  _i2.GRateReviewData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GRateReviewData? parseData(Map<String, dynamic> json) =>
      _i2.GRateReviewData.fromJson(json);

  static Serializer<GRateReviewReq> get serializer =>
      _$gRateReviewReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GRateReviewReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRateReviewReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GRateReviewReq.serializer,
        json,
      );
}
