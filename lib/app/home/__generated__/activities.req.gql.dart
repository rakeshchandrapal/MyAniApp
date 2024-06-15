// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/app/home/__generated__/activities.ast.gql.dart' as _i5;
import 'package:myaniapp/app/home/__generated__/activities.data.gql.dart'
    as _i2;
import 'package:myaniapp/app/home/__generated__/activities.var.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;

part 'activities.req.gql.g.dart';

abstract class GHomeActivitiesReq
    implements
        Built<GHomeActivitiesReq, GHomeActivitiesReqBuilder>,
        _i1.OperationRequest<_i2.GHomeActivitiesData, _i3.GHomeActivitiesVars> {
  GHomeActivitiesReq._();

  factory GHomeActivitiesReq(
          [void Function(GHomeActivitiesReqBuilder b) updates]) =
      _$GHomeActivitiesReq;

  static void _initializeBuilder(GHomeActivitiesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'HomeActivities',
    )
    ..executeOnListen = true;

  @override
  _i3.GHomeActivitiesVars get vars;
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
  _i2.GHomeActivitiesData? Function(
    _i2.GHomeActivitiesData?,
    _i2.GHomeActivitiesData?,
  )? get updateResult;
  @override
  _i2.GHomeActivitiesData? get optimisticResponse;
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
  _i2.GHomeActivitiesData? parseData(Map<String, dynamic> json) =>
      _i2.GHomeActivitiesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GHomeActivitiesData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GHomeActivitiesData, _i3.GHomeActivitiesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GHomeActivitiesReq> get serializer =>
      _$gHomeActivitiesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GHomeActivitiesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GHomeActivitiesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GHomeActivitiesReq.serializer,
        json,
      );
}

abstract class GToggleLikeReq
    implements
        Built<GToggleLikeReq, GToggleLikeReqBuilder>,
        _i1.OperationRequest<_i2.GToggleLikeData, _i3.GToggleLikeVars> {
  GToggleLikeReq._();

  factory GToggleLikeReq([void Function(GToggleLikeReqBuilder b) updates]) =
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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GToggleLikeData? parseData(Map<String, dynamic> json) =>
      _i2.GToggleLikeData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GToggleLikeData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GToggleLikeData, _i3.GToggleLikeVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

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
          [void Function(GSaveTextActivityReqBuilder b) updates]) =
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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GSaveTextActivityData? parseData(Map<String, dynamic> json) =>
      _i2.GSaveTextActivityData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSaveTextActivityData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GSaveTextActivityData, _i3.GSaveTextActivityVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

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
