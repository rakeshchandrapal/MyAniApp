// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/app/user/__generated__/user.ast.gql.dart' as _i5;
import 'package:myaniapp/app/user/__generated__/user.data.gql.dart' as _i2;
import 'package:myaniapp/app/user/__generated__/user.var.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;

part 'user.req.gql.g.dart';

abstract class GUserReq
    implements
        Built<GUserReq, GUserReqBuilder>,
        _i1.OperationRequest<_i2.GUserData, _i3.GUserVars> {
  GUserReq._();

  factory GUserReq([void Function(GUserReqBuilder b) updates]) = _$GUserReq;

  static void _initializeBuilder(GUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'User',
    )
    ..executeOnListen = true;

  @override
  _i3.GUserVars get vars;
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
  _i2.GUserData? Function(
    _i2.GUserData?,
    _i2.GUserData?,
  )? get updateResult;
  @override
  _i2.GUserData? get optimisticResponse;
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
  _i2.GUserData? parseData(Map<String, dynamic> json) =>
      _i2.GUserData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUserData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GUserData, _i3.GUserVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUserReq> get serializer => _$gUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserReq.serializer,
        json,
      );
}

abstract class GGenreStatReq
    implements
        Built<GGenreStatReq, GGenreStatReqBuilder>,
        _i1.FragmentRequest<_i2.GGenreStatData, _i3.GGenreStatVars> {
  GGenreStatReq._();

  factory GGenreStatReq([void Function(GGenreStatReqBuilder b) updates]) =
      _$GGenreStatReq;

  static void _initializeBuilder(GGenreStatReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'GenreStat';

  @override
  _i3.GGenreStatVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GGenreStatData? parseData(Map<String, dynamic> json) =>
      _i2.GGenreStatData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGenreStatData data) => data.toJson();

  static Serializer<GGenreStatReq> get serializer => _$gGenreStatReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGenreStatReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGenreStatReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGenreStatReq.serializer,
        json,
      );
}
