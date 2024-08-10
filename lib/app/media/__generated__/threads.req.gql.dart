// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/app/media/__generated__/threads.ast.gql.dart' as _i5;
import 'package:myaniapp/app/media/__generated__/threads.data.gql.dart' as _i2;
import 'package:myaniapp/app/media/__generated__/threads.var.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;

part 'threads.req.gql.g.dart';

abstract class GMediaThreadsReq
    implements
        Built<GMediaThreadsReq, GMediaThreadsReqBuilder>,
        _i1.OperationRequest<_i2.GMediaThreadsData, _i3.GMediaThreadsVars> {
  GMediaThreadsReq._();

  factory GMediaThreadsReq([void Function(GMediaThreadsReqBuilder b) updates]) =
      _$GMediaThreadsReq;

  static void _initializeBuilder(GMediaThreadsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MediaThreads',
    )
    ..executeOnListen = true;

  @override
  _i3.GMediaThreadsVars get vars;
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
  _i2.GMediaThreadsData? Function(
    _i2.GMediaThreadsData?,
    _i2.GMediaThreadsData?,
  )? get updateResult;
  @override
  _i2.GMediaThreadsData? get optimisticResponse;
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
  _i2.GMediaThreadsData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaThreadsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GMediaThreadsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GMediaThreadsData, _i3.GMediaThreadsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GMediaThreadsReq> get serializer =>
      _$gMediaThreadsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaThreadsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaThreadsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaThreadsReq.serializer,
        json,
      );
}
