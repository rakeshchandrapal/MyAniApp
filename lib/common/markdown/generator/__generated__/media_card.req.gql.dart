// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/common/markdown/generator/__generated__/media_card.ast.gql.dart'
    as _i5;
import 'package:myaniapp/common/markdown/generator/__generated__/media_card.data.gql.dart'
    as _i2;
import 'package:myaniapp/common/markdown/generator/__generated__/media_card.var.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;

part 'media_card.req.gql.g.dart';

abstract class GEmbedMediaCardReq
    implements
        Built<GEmbedMediaCardReq, GEmbedMediaCardReqBuilder>,
        _i1.OperationRequest<_i2.GEmbedMediaCardData, _i3.GEmbedMediaCardVars> {
  GEmbedMediaCardReq._();

  factory GEmbedMediaCardReq(
          [void Function(GEmbedMediaCardReqBuilder b) updates]) =
      _$GEmbedMediaCardReq;

  static void _initializeBuilder(GEmbedMediaCardReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'EmbedMediaCard',
    )
    ..executeOnListen = true;

  @override
  _i3.GEmbedMediaCardVars get vars;
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
  _i2.GEmbedMediaCardData? Function(
    _i2.GEmbedMediaCardData?,
    _i2.GEmbedMediaCardData?,
  )? get updateResult;
  @override
  _i2.GEmbedMediaCardData? get optimisticResponse;
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
  _i2.GEmbedMediaCardData? parseData(Map<String, dynamic> json) =>
      _i2.GEmbedMediaCardData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GEmbedMediaCardData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GEmbedMediaCardData, _i3.GEmbedMediaCardVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GEmbedMediaCardReq> get serializer =>
      _$gEmbedMediaCardReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GEmbedMediaCardReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEmbedMediaCardReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GEmbedMediaCardReq.serializer,
        json,
      );
}
