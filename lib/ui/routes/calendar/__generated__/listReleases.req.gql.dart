// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/ui/routes/calendar/__generated__/listReleases.ast.gql.dart'
    as _i5;
import 'package:myaniapp/ui/routes/calendar/__generated__/listReleases.data.gql.dart'
    as _i2;
import 'package:myaniapp/ui/routes/calendar/__generated__/listReleases.var.gql.dart'
    as _i3;

part 'listReleases.req.gql.g.dart';

abstract class GReleasesListReq
    implements
        Built<GReleasesListReq, GReleasesListReqBuilder>,
        _i1.OperationRequest<_i2.GReleasesListData, _i3.GReleasesListVars> {
  GReleasesListReq._();

  factory GReleasesListReq([Function(GReleasesListReqBuilder b) updates]) =
      _$GReleasesListReq;

  static void _initializeBuilder(GReleasesListReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ReleasesList',
    )
    ..executeOnListen = true;

  @override
  _i3.GReleasesListVars get vars;
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
  _i2.GReleasesListData? Function(
    _i2.GReleasesListData?,
    _i2.GReleasesListData?,
  )? get updateResult;
  @override
  _i2.GReleasesListData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GReleasesListData? parseData(Map<String, dynamic> json) =>
      _i2.GReleasesListData.fromJson(json);

  static Serializer<GReleasesListReq> get serializer =>
      _$gReleasesListReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GReleasesListReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasesListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GReleasesListReq.serializer,
        json,
      );
}
