// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/app/forum/thread/__generated__/thread.ast.gql.dart'
    as _i5;
import 'package:myaniapp/app/forum/thread/__generated__/thread.data.gql.dart'
    as _i2;
import 'package:myaniapp/app/forum/thread/__generated__/thread.var.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;

part 'thread.req.gql.g.dart';

abstract class GThreadReq
    implements
        Built<GThreadReq, GThreadReqBuilder>,
        _i1.OperationRequest<_i2.GThreadData, _i3.GThreadVars> {
  GThreadReq._();

  factory GThreadReq([void Function(GThreadReqBuilder b) updates]) =
      _$GThreadReq;

  static void _initializeBuilder(GThreadReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Thread',
    )
    ..executeOnListen = true;

  @override
  _i3.GThreadVars get vars;
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
  _i2.GThreadData? Function(
    _i2.GThreadData?,
    _i2.GThreadData?,
  )? get updateResult;
  @override
  _i2.GThreadData? get optimisticResponse;
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
  _i2.GThreadData? parseData(Map<String, dynamic> json) =>
      _i2.GThreadData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GThreadData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GThreadData, _i3.GThreadVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GThreadReq> get serializer => _$gThreadReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GThreadReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GThreadReq.serializer,
        json,
      );
}

abstract class GSaveCommentReq
    implements
        Built<GSaveCommentReq, GSaveCommentReqBuilder>,
        _i1.OperationRequest<_i2.GSaveCommentData, _i3.GSaveCommentVars> {
  GSaveCommentReq._();

  factory GSaveCommentReq([void Function(GSaveCommentReqBuilder b) updates]) =
      _$GSaveCommentReq;

  static void _initializeBuilder(GSaveCommentReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SaveComment',
    )
    ..executeOnListen = true;

  @override
  _i3.GSaveCommentVars get vars;
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
  _i2.GSaveCommentData? Function(
    _i2.GSaveCommentData?,
    _i2.GSaveCommentData?,
  )? get updateResult;
  @override
  _i2.GSaveCommentData? get optimisticResponse;
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
  _i2.GSaveCommentData? parseData(Map<String, dynamic> json) =>
      _i2.GSaveCommentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSaveCommentData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GSaveCommentData, _i3.GSaveCommentVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GSaveCommentReq> get serializer =>
      _$gSaveCommentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSaveCommentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveCommentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSaveCommentReq.serializer,
        json,
      );
}

abstract class GDeleteCommentReq
    implements
        Built<GDeleteCommentReq, GDeleteCommentReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteCommentData, _i3.GDeleteCommentVars> {
  GDeleteCommentReq._();

  factory GDeleteCommentReq(
          [void Function(GDeleteCommentReqBuilder b) updates]) =
      _$GDeleteCommentReq;

  static void _initializeBuilder(GDeleteCommentReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeleteComment',
    )
    ..executeOnListen = true;

  @override
  _i3.GDeleteCommentVars get vars;
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
  _i2.GDeleteCommentData? Function(
    _i2.GDeleteCommentData?,
    _i2.GDeleteCommentData?,
  )? get updateResult;
  @override
  _i2.GDeleteCommentData? get optimisticResponse;
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
  _i2.GDeleteCommentData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteCommentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GDeleteCommentData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GDeleteCommentData, _i3.GDeleteCommentVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GDeleteCommentReq> get serializer =>
      _$gDeleteCommentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeleteCommentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteCommentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeleteCommentReq.serializer,
        json,
      );
}

abstract class GToggleThreadSubscriptionReq
    implements
        Built<GToggleThreadSubscriptionReq,
            GToggleThreadSubscriptionReqBuilder>,
        _i1.OperationRequest<_i2.GToggleThreadSubscriptionData,
            _i3.GToggleThreadSubscriptionVars> {
  GToggleThreadSubscriptionReq._();

  factory GToggleThreadSubscriptionReq(
          [void Function(GToggleThreadSubscriptionReqBuilder b) updates]) =
      _$GToggleThreadSubscriptionReq;

  static void _initializeBuilder(GToggleThreadSubscriptionReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ToggleThreadSubscription',
    )
    ..executeOnListen = true;

  @override
  _i3.GToggleThreadSubscriptionVars get vars;
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
  _i2.GToggleThreadSubscriptionData? Function(
    _i2.GToggleThreadSubscriptionData?,
    _i2.GToggleThreadSubscriptionData?,
  )? get updateResult;
  @override
  _i2.GToggleThreadSubscriptionData? get optimisticResponse;
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
  _i2.GToggleThreadSubscriptionData? parseData(Map<String, dynamic> json) =>
      _i2.GToggleThreadSubscriptionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GToggleThreadSubscriptionData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GToggleThreadSubscriptionData,
      _i3.GToggleThreadSubscriptionVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GToggleThreadSubscriptionReq> get serializer =>
      _$gToggleThreadSubscriptionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GToggleThreadSubscriptionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleThreadSubscriptionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GToggleThreadSubscriptionReq.serializer,
        json,
      );
}
