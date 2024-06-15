// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/common/lists/__generated__/lists.ast.gql.dart' as _i5;
import 'package:myaniapp/common/lists/__generated__/lists.data.gql.dart' as _i2;
import 'package:myaniapp/common/lists/__generated__/lists.var.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;

part 'lists.req.gql.g.dart';

abstract class GMediaListReq
    implements
        Built<GMediaListReq, GMediaListReqBuilder>,
        _i1.OperationRequest<_i2.GMediaListData, _i3.GMediaListVars> {
  GMediaListReq._();

  factory GMediaListReq([void Function(GMediaListReqBuilder b) updates]) =
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
        context: context ?? const _i4.Context(),
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
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GMediaListData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaListData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GMediaListData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GMediaListData, _i3.GMediaListVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

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
