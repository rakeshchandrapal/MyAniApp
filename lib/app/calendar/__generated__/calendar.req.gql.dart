// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/app/calendar/__generated__/calendar.ast.gql.dart'
    as _i5;
import 'package:myaniapp/app/calendar/__generated__/calendar.data.gql.dart'
    as _i2;
import 'package:myaniapp/app/calendar/__generated__/calendar.var.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;

part 'calendar.req.gql.g.dart';

abstract class GCalendarScheduleReq
    implements
        Built<GCalendarScheduleReq, GCalendarScheduleReqBuilder>,
        _i1.OperationRequest<_i2.GCalendarScheduleData,
            _i3.GCalendarScheduleVars> {
  GCalendarScheduleReq._();

  factory GCalendarScheduleReq(
          [void Function(GCalendarScheduleReqBuilder b) updates]) =
      _$GCalendarScheduleReq;

  static void _initializeBuilder(GCalendarScheduleReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CalendarSchedule',
    )
    ..executeOnListen = true;

  @override
  _i3.GCalendarScheduleVars get vars;
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
  _i2.GCalendarScheduleData? Function(
    _i2.GCalendarScheduleData?,
    _i2.GCalendarScheduleData?,
  )? get updateResult;
  @override
  _i2.GCalendarScheduleData? get optimisticResponse;
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
  _i2.GCalendarScheduleData? parseData(Map<String, dynamic> json) =>
      _i2.GCalendarScheduleData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCalendarScheduleData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GCalendarScheduleData, _i3.GCalendarScheduleVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCalendarScheduleReq> get serializer =>
      _$gCalendarScheduleReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCalendarScheduleReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCalendarScheduleReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCalendarScheduleReq.serializer,
        json,
      );
}
