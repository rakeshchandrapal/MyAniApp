// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/explore/__generated__/explore.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/explore/__generated__/explore.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/explore/__generated__/explore.var.gql.dart'
    as _i3;

part 'explore.req.gql.g.dart';

abstract class GExploreReq
    implements
        Built<GExploreReq, GExploreReqBuilder>,
        _i1.OperationRequest<_i2.GExploreData, _i3.GExploreVars> {
  GExploreReq._();

  factory GExploreReq([Function(GExploreReqBuilder b) updates]) = _$GExploreReq;

  static void _initializeBuilder(GExploreReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Explore',
    )
    ..executeOnListen = true;

  @override
  _i3.GExploreVars get vars;
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
  _i2.GExploreData? Function(
    _i2.GExploreData?,
    _i2.GExploreData?,
  )? get updateResult;
  @override
  _i2.GExploreData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GExploreData? parseData(Map<String, dynamic> json) =>
      _i2.GExploreData.fromJson(json);

  static Serializer<GExploreReq> get serializer => _$gExploreReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GExploreReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GExploreReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GExploreReq.serializer,
        json,
      );
}
