// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/media/staff/__generated__/staff.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/media/staff/__generated__/staff.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/media/staff/__generated__/staff.var.gql.dart'
    as _i3;

part 'staff.req.gql.g.dart';

abstract class GMediaStaffReq
    implements
        Built<GMediaStaffReq, GMediaStaffReqBuilder>,
        _i1.OperationRequest<_i2.GMediaStaffData, _i3.GMediaStaffVars> {
  GMediaStaffReq._();

  factory GMediaStaffReq([Function(GMediaStaffReqBuilder b) updates]) =
      _$GMediaStaffReq;

  static void _initializeBuilder(GMediaStaffReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MediaStaff',
    )
    ..executeOnListen = true;

  @override
  _i3.GMediaStaffVars get vars;
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
  _i2.GMediaStaffData? Function(
    _i2.GMediaStaffData?,
    _i2.GMediaStaffData?,
  )? get updateResult;
  @override
  _i2.GMediaStaffData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GMediaStaffData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaStaffData.fromJson(json);

  static Serializer<GMediaStaffReq> get serializer =>
      _$gMediaStaffReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaStaffReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaStaffReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaStaffReq.serializer,
        json,
      );
}
