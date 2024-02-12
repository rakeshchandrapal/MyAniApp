// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/user/social/__generated__/social.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/user/social/__generated__/social.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/user/social/__generated__/social.var.gql.dart'
    as _i3;

part 'social.req.gql.g.dart';

abstract class GSocialsReq
    implements
        Built<GSocialsReq, GSocialsReqBuilder>,
        _i1.OperationRequest<_i2.GSocialsData, _i3.GSocialsVars> {
  GSocialsReq._();

  factory GSocialsReq([Function(GSocialsReqBuilder b) updates]) = _$GSocialsReq;

  static void _initializeBuilder(GSocialsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Socials',
    )
    ..executeOnListen = true;

  @override
  _i3.GSocialsVars get vars;
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
  _i2.GSocialsData? Function(
    _i2.GSocialsData?,
    _i2.GSocialsData?,
  )? get updateResult;
  @override
  _i2.GSocialsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GSocialsData? parseData(Map<String, dynamic> json) =>
      _i2.GSocialsData.fromJson(json);

  static Serializer<GSocialsReq> get serializer => _$gSocialsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSocialsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSocialsReq.serializer,
        json,
      );
}
