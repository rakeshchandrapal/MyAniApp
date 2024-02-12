// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/home/list/__generated__/list.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/home/list/__generated__/list.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/home/list/__generated__/list.var.gql.dart'
    as _i3;

part 'list.req.gql.g.dart';

abstract class GMediaListReq
    implements
        Built<GMediaListReq, GMediaListReqBuilder>,
        _i1.OperationRequest<_i2.GMediaListData, _i3.GMediaListVars> {
  GMediaListReq._();

  factory GMediaListReq([Function(GMediaListReqBuilder b) updates]) =
      _$GMediaListReq;

  static void _initializeBuilder(GMediaListReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MediaList',
    )
    ..executeOnListen = true;

  @override
  _i3.GMediaListVars get vars;
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
  _i2.GMediaListData? Function(
    _i2.GMediaListData?,
    _i2.GMediaListData?,
  )? get updateResult;
  @override
  _i2.GMediaListData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GMediaListData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaListData.fromJson(json);

  static Serializer<GMediaListReq> get serializer => _$gMediaListReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaListReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaListReq.serializer,
        json,
      );
}
