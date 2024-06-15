// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/app/user/__generated__/favorites.ast.gql.dart' as _i5;
import 'package:myaniapp/app/user/__generated__/favorites.data.gql.dart' as _i2;
import 'package:myaniapp/app/user/__generated__/favorites.var.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;

part 'favorites.req.gql.g.dart';

abstract class GUserFavoritesReq
    implements
        Built<GUserFavoritesReq, GUserFavoritesReqBuilder>,
        _i1.OperationRequest<_i2.GUserFavoritesData, _i3.GUserFavoritesVars> {
  GUserFavoritesReq._();

  factory GUserFavoritesReq(
          [void Function(GUserFavoritesReqBuilder b) updates]) =
      _$GUserFavoritesReq;

  static void _initializeBuilder(GUserFavoritesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UserFavorites',
    )
    ..executeOnListen = true;

  @override
  _i3.GUserFavoritesVars get vars;
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
  _i2.GUserFavoritesData? Function(
    _i2.GUserFavoritesData?,
    _i2.GUserFavoritesData?,
  )? get updateResult;
  @override
  _i2.GUserFavoritesData? get optimisticResponse;
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
  _i2.GUserFavoritesData? parseData(Map<String, dynamic> json) =>
      _i2.GUserFavoritesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUserFavoritesData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GUserFavoritesData, _i3.GUserFavoritesVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUserFavoritesReq> get serializer =>
      _$gUserFavoritesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserFavoritesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFavoritesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserFavoritesReq.serializer,
        json,
      );
}
