// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/character/__generated__/character.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/character/__generated__/character.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/character/__generated__/character.var.gql.dart'
    as _i3;

part 'character.req.gql.g.dart';

abstract class GCharacterReq
    implements
        Built<GCharacterReq, GCharacterReqBuilder>,
        _i1.OperationRequest<_i2.GCharacterData, _i3.GCharacterVars> {
  GCharacterReq._();

  factory GCharacterReq([Function(GCharacterReqBuilder b) updates]) =
      _$GCharacterReq;

  static void _initializeBuilder(GCharacterReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Character',
    )
    ..executeOnListen = true;

  @override
  _i3.GCharacterVars get vars;
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
  _i2.GCharacterData? Function(
    _i2.GCharacterData?,
    _i2.GCharacterData?,
  )? get updateResult;
  @override
  _i2.GCharacterData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCharacterData? parseData(Map<String, dynamic> json) =>
      _i2.GCharacterData.fromJson(json);

  static Serializer<GCharacterReq> get serializer => _$gCharacterReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCharacterReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCharacterReq.serializer,
        json,
      );
}
