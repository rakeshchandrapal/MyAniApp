// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/media/characters/__generated__/characters.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/media/characters/__generated__/characters.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/media/characters/__generated__/characters.var.gql.dart'
    as _i3;

part 'characters.req.gql.g.dart';

abstract class GCharactersReq
    implements
        Built<GCharactersReq, GCharactersReqBuilder>,
        _i1.OperationRequest<_i2.GCharactersData, _i3.GCharactersVars> {
  GCharactersReq._();

  factory GCharactersReq([Function(GCharactersReqBuilder b) updates]) =
      _$GCharactersReq;

  static void _initializeBuilder(GCharactersReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Characters',
    )
    ..executeOnListen = true;

  @override
  _i3.GCharactersVars get vars;
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
  _i2.GCharactersData? Function(
    _i2.GCharactersData?,
    _i2.GCharactersData?,
  )? get updateResult;
  @override
  _i2.GCharactersData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCharactersData? parseData(Map<String, dynamic> json) =>
      _i2.GCharactersData.fromJson(json);

  static Serializer<GCharactersReq> get serializer =>
      _$gCharactersReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCharactersReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharactersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCharactersReq.serializer,
        json,
      );
}
