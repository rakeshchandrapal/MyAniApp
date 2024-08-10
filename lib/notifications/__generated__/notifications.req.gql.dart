// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/notifications/__generated__/notifications.ast.gql.dart'
    as _i5;
import 'package:myaniapp/notifications/__generated__/notifications.data.gql.dart'
    as _i2;
import 'package:myaniapp/notifications/__generated__/notifications.var.gql.dart'
    as _i3;

part 'notifications.req.gql.g.dart';

abstract class GNotificationsReq
    implements
        Built<GNotificationsReq, GNotificationsReqBuilder>,
        _i1.OperationRequest<_i2.GNotificationsData, _i3.GNotificationsVars> {
  GNotificationsReq._();

  factory GNotificationsReq(
          [void Function(GNotificationsReqBuilder b) updates]) =
      _$GNotificationsReq;

  static void _initializeBuilder(GNotificationsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Notifications',
    )
    ..executeOnListen = true;

  @override
  _i3.GNotificationsVars get vars;
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
  _i2.GNotificationsData? Function(
    _i2.GNotificationsData?,
    _i2.GNotificationsData?,
  )? get updateResult;
  @override
  _i2.GNotificationsData? get optimisticResponse;
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
  _i2.GNotificationsData? parseData(Map<String, dynamic> json) =>
      _i2.GNotificationsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GNotificationsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GNotificationsData, _i3.GNotificationsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GNotificationsReq> get serializer =>
      _$gNotificationsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GNotificationsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GNotificationsReq.serializer,
        json,
      );
}
