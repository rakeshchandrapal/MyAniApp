// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/user/activity/__generated__/activity.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/user/activity/__generated__/activity.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/user/activity/__generated__/activity.var.gql.dart'
    as _i3;

part 'activity.req.gql.g.dart';

abstract class GUserActivitiesReq
    implements
        Built<GUserActivitiesReq, GUserActivitiesReqBuilder>,
        _i1.OperationRequest<_i2.GUserActivitiesData, _i3.GUserActivitiesVars> {
  GUserActivitiesReq._();

  factory GUserActivitiesReq([Function(GUserActivitiesReqBuilder b) updates]) =
      _$GUserActivitiesReq;

  static void _initializeBuilder(GUserActivitiesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UserActivities',
    )
    ..executeOnListen = true;

  @override
  _i3.GUserActivitiesVars get vars;
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
  _i2.GUserActivitiesData? Function(
    _i2.GUserActivitiesData?,
    _i2.GUserActivitiesData?,
  )? get updateResult;
  @override
  _i2.GUserActivitiesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUserActivitiesData? parseData(Map<String, dynamic> json) =>
      _i2.GUserActivitiesData.fromJson(json);

  static Serializer<GUserActivitiesReq> get serializer =>
      _$gUserActivitiesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserActivitiesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserActivitiesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserActivitiesReq.serializer,
        json,
      );
}
