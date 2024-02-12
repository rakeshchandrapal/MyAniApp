// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/common/media_editor/__generated__/media_editor.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/common/media_editor/__generated__/media_editor.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/common/media_editor/__generated__/media_editor.var.gql.dart'
    as _i3;

part 'media_editor.req.gql.g.dart';

abstract class GMediaEntryReq
    implements
        Built<GMediaEntryReq, GMediaEntryReqBuilder>,
        _i1.OperationRequest<_i2.GMediaEntryData, _i3.GMediaEntryVars> {
  GMediaEntryReq._();

  factory GMediaEntryReq([Function(GMediaEntryReqBuilder b) updates]) =
      _$GMediaEntryReq;

  static void _initializeBuilder(GMediaEntryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MediaEntry',
    )
    ..executeOnListen = true;

  @override
  _i3.GMediaEntryVars get vars;
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
  _i2.GMediaEntryData? Function(
    _i2.GMediaEntryData?,
    _i2.GMediaEntryData?,
  )? get updateResult;
  @override
  _i2.GMediaEntryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GMediaEntryData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaEntryData.fromJson(json);

  static Serializer<GMediaEntryReq> get serializer =>
      _$gMediaEntryReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaEntryReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaEntryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaEntryReq.serializer,
        json,
      );
}

abstract class GSaveMediaListEntryReq
    implements
        Built<GSaveMediaListEntryReq, GSaveMediaListEntryReqBuilder>,
        _i1.OperationRequest<_i2.GSaveMediaListEntryData,
            _i3.GSaveMediaListEntryVars> {
  GSaveMediaListEntryReq._();

  factory GSaveMediaListEntryReq(
          [Function(GSaveMediaListEntryReqBuilder b) updates]) =
      _$GSaveMediaListEntryReq;

  static void _initializeBuilder(GSaveMediaListEntryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SaveMediaListEntry',
    )
    ..executeOnListen = true;

  @override
  _i3.GSaveMediaListEntryVars get vars;
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
  _i2.GSaveMediaListEntryData? Function(
    _i2.GSaveMediaListEntryData?,
    _i2.GSaveMediaListEntryData?,
  )? get updateResult;
  @override
  _i2.GSaveMediaListEntryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GSaveMediaListEntryData? parseData(Map<String, dynamic> json) =>
      _i2.GSaveMediaListEntryData.fromJson(json);

  static Serializer<GSaveMediaListEntryReq> get serializer =>
      _$gSaveMediaListEntryReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSaveMediaListEntryReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMediaListEntryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSaveMediaListEntryReq.serializer,
        json,
      );
}

abstract class GDeleteMediaListEntryReq
    implements
        Built<GDeleteMediaListEntryReq, GDeleteMediaListEntryReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteMediaListEntryData,
            _i3.GDeleteMediaListEntryVars> {
  GDeleteMediaListEntryReq._();

  factory GDeleteMediaListEntryReq(
          [Function(GDeleteMediaListEntryReqBuilder b) updates]) =
      _$GDeleteMediaListEntryReq;

  static void _initializeBuilder(GDeleteMediaListEntryReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeleteMediaListEntry',
    )
    ..executeOnListen = true;

  @override
  _i3.GDeleteMediaListEntryVars get vars;
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
  _i2.GDeleteMediaListEntryData? Function(
    _i2.GDeleteMediaListEntryData?,
    _i2.GDeleteMediaListEntryData?,
  )? get updateResult;
  @override
  _i2.GDeleteMediaListEntryData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GDeleteMediaListEntryData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteMediaListEntryData.fromJson(json);

  static Serializer<GDeleteMediaListEntryReq> get serializer =>
      _$gDeleteMediaListEntryReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeleteMediaListEntryReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteMediaListEntryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeleteMediaListEntryReq.serializer,
        json,
      );
}
