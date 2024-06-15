// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/app/media/__generated__/reviews.ast.gql.dart' as _i5;
import 'package:myaniapp/app/media/__generated__/reviews.data.gql.dart' as _i2;
import 'package:myaniapp/app/media/__generated__/reviews.var.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;

part 'reviews.req.gql.g.dart';

abstract class GMediaReviewsReq
    implements
        Built<GMediaReviewsReq, GMediaReviewsReqBuilder>,
        _i1.OperationRequest<_i2.GMediaReviewsData, _i3.GMediaReviewsVars> {
  GMediaReviewsReq._();

  factory GMediaReviewsReq([void Function(GMediaReviewsReqBuilder b) updates]) =
      _$GMediaReviewsReq;

  static void _initializeBuilder(GMediaReviewsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MediaReviews',
    )
    ..executeOnListen = true;

  @override
  _i3.GMediaReviewsVars get vars;
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
  _i2.GMediaReviewsData? Function(
    _i2.GMediaReviewsData?,
    _i2.GMediaReviewsData?,
  )? get updateResult;
  @override
  _i2.GMediaReviewsData? get optimisticResponse;
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
  _i2.GMediaReviewsData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaReviewsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GMediaReviewsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GMediaReviewsData, _i3.GMediaReviewsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GMediaReviewsReq> get serializer =>
      _$gMediaReviewsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaReviewsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaReviewsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaReviewsReq.serializer,
        json,
      );
}
