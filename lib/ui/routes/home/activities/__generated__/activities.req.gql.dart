// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/home/activities/__generated__/activities.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/home/activities/__generated__/activities.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/home/activities/__generated__/activities.var.gql.dart'
    as _i3;

part 'activities.req.gql.g.dart';

abstract class GActivitiesReq
    implements
        Built<GActivitiesReq, GActivitiesReqBuilder>,
        _i1.OperationRequest<_i2.GActivitiesData, _i3.GActivitiesVars> {
  GActivitiesReq._();

  factory GActivitiesReq([Function(GActivitiesReqBuilder b) updates]) =
      _$GActivitiesReq;

  static void _initializeBuilder(GActivitiesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Activities',
    )
    ..executeOnListen = true;

  @override
  _i3.GActivitiesVars get vars;
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
  _i2.GActivitiesData? Function(
    _i2.GActivitiesData?,
    _i2.GActivitiesData?,
  )? get updateResult;
  @override
  _i2.GActivitiesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GActivitiesData? parseData(Map<String, dynamic> json) =>
      _i2.GActivitiesData.fromJson(json);

  static Serializer<GActivitiesReq> get serializer =>
      _$gActivitiesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GActivitiesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivitiesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GActivitiesReq.serializer,
        json,
      );
}

abstract class GToggleLikeReq
    implements
        Built<GToggleLikeReq, GToggleLikeReqBuilder>,
        _i1.OperationRequest<_i2.GToggleLikeData, _i3.GToggleLikeVars> {
  GToggleLikeReq._();

  factory GToggleLikeReq([Function(GToggleLikeReqBuilder b) updates]) =
      _$GToggleLikeReq;

  static void _initializeBuilder(GToggleLikeReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ToggleLike',
    )
    ..executeOnListen = true;

  @override
  _i3.GToggleLikeVars get vars;
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
  _i2.GToggleLikeData? Function(
    _i2.GToggleLikeData?,
    _i2.GToggleLikeData?,
  )? get updateResult;
  @override
  _i2.GToggleLikeData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GToggleLikeData? parseData(Map<String, dynamic> json) =>
      _i2.GToggleLikeData.fromJson(json);

  static Serializer<GToggleLikeReq> get serializer =>
      _$gToggleLikeReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GToggleLikeReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleLikeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GToggleLikeReq.serializer,
        json,
      );
}

abstract class GSaveTextActivityReq
    implements
        Built<GSaveTextActivityReq, GSaveTextActivityReqBuilder>,
        _i1.OperationRequest<_i2.GSaveTextActivityData,
            _i3.GSaveTextActivityVars> {
  GSaveTextActivityReq._();

  factory GSaveTextActivityReq(
          [Function(GSaveTextActivityReqBuilder b) updates]) =
      _$GSaveTextActivityReq;

  static void _initializeBuilder(GSaveTextActivityReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SaveTextActivity',
    )
    ..executeOnListen = true;

  @override
  _i3.GSaveTextActivityVars get vars;
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
  _i2.GSaveTextActivityData? Function(
    _i2.GSaveTextActivityData?,
    _i2.GSaveTextActivityData?,
  )? get updateResult;
  @override
  _i2.GSaveTextActivityData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GSaveTextActivityData? parseData(Map<String, dynamic> json) =>
      _i2.GSaveTextActivityData.fromJson(json);

  static Serializer<GSaveTextActivityReq> get serializer =>
      _$gSaveTextActivityReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSaveTextActivityReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveTextActivityReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSaveTextActivityReq.serializer,
        json,
      );
}
