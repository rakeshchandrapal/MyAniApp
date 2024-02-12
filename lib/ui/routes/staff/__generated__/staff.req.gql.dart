// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/staff/__generated__/staff.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/staff/__generated__/staff.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/staff/__generated__/staff.var.gql.dart'
    as _i3;

part 'staff.req.gql.g.dart';

abstract class GStaffReq
    implements
        Built<GStaffReq, GStaffReqBuilder>,
        _i1.OperationRequest<_i2.GStaffData, _i3.GStaffVars> {
  GStaffReq._();

  factory GStaffReq([Function(GStaffReqBuilder b) updates]) = _$GStaffReq;

  static void _initializeBuilder(GStaffReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Staff',
    )
    ..executeOnListen = true;

  @override
  _i3.GStaffVars get vars;
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
  _i2.GStaffData? Function(
    _i2.GStaffData?,
    _i2.GStaffData?,
  )? get updateResult;
  @override
  _i2.GStaffData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GStaffData? parseData(Map<String, dynamic> json) =>
      _i2.GStaffData.fromJson(json);

  static Serializer<GStaffReq> get serializer => _$gStaffReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GStaffReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GStaffReq.serializer,
        json,
      );
}
