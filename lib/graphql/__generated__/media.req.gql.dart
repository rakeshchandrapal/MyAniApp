// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/media.ast.gql.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/media.data.gql.dart' as _i2;
import 'package:myaniapp/graphql/__generated__/media.var.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;

part 'media.req.gql.g.dart';

abstract class GMediaReq
    implements
        Built<GMediaReq, GMediaReqBuilder>,
        _i1.OperationRequest<_i2.GMediaData, _i3.GMediaVars> {
  GMediaReq._();

  factory GMediaReq([Function(GMediaReqBuilder b) updates]) = _$GMediaReq;

  static void _initializeBuilder(GMediaReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Media',
    )
    ..executeOnListen = true;

  @override
  _i3.GMediaVars get vars;
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
  _i2.GMediaData? Function(
    _i2.GMediaData?,
    _i2.GMediaData?,
  )? get updateResult;
  @override
  _i2.GMediaData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GMediaData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaData.fromJson(json);

  static Serializer<GMediaReq> get serializer => _$gMediaReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaReq.serializer,
        json,
      );
}

abstract class GToggleFavoriteReq
    implements
        Built<GToggleFavoriteReq, GToggleFavoriteReqBuilder>,
        _i1.OperationRequest<_i2.GToggleFavoriteData, _i3.GToggleFavoriteVars> {
  GToggleFavoriteReq._();

  factory GToggleFavoriteReq([Function(GToggleFavoriteReqBuilder b) updates]) =
      _$GToggleFavoriteReq;

  static void _initializeBuilder(GToggleFavoriteReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ToggleFavorite',
    )
    ..executeOnListen = true;

  @override
  _i3.GToggleFavoriteVars get vars;
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
  _i2.GToggleFavoriteData? Function(
    _i2.GToggleFavoriteData?,
    _i2.GToggleFavoriteData?,
  )? get updateResult;
  @override
  _i2.GToggleFavoriteData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GToggleFavoriteData? parseData(Map<String, dynamic> json) =>
      _i2.GToggleFavoriteData.fromJson(json);

  static Serializer<GToggleFavoriteReq> get serializer =>
      _$gToggleFavoriteReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GToggleFavoriteReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleFavoriteReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GToggleFavoriteReq.serializer,
        json,
      );
}
