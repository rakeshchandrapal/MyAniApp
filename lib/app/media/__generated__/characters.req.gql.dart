// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/app/media/__generated__/characters.ast.gql.dart'
    as _i5;
import 'package:myaniapp/app/media/__generated__/characters.data.gql.dart'
    as _i2;
import 'package:myaniapp/app/media/__generated__/characters.var.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;

part 'characters.req.gql.g.dart';

abstract class GMediaCharactersReq
    implements
        Built<GMediaCharactersReq, GMediaCharactersReqBuilder>,
        _i1
        .OperationRequest<_i2.GMediaCharactersData, _i3.GMediaCharactersVars> {
  GMediaCharactersReq._();

  factory GMediaCharactersReq(
          [void Function(GMediaCharactersReqBuilder b) updates]) =
      _$GMediaCharactersReq;

  static void _initializeBuilder(GMediaCharactersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MediaCharacters',
    )
    ..executeOnListen = true;

  @override
  _i3.GMediaCharactersVars get vars;
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
  _i2.GMediaCharactersData? Function(
    _i2.GMediaCharactersData?,
    _i2.GMediaCharactersData?,
  )? get updateResult;
  @override
  _i2.GMediaCharactersData? get optimisticResponse;
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
  _i2.GMediaCharactersData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaCharactersData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GMediaCharactersData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GMediaCharactersData, _i3.GMediaCharactersVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GMediaCharactersReq> get serializer =>
      _$gMediaCharactersReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaCharactersReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaCharactersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaCharactersReq.serializer,
        json,
      );
}
