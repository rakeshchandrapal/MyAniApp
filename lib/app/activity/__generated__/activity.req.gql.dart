// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/app/activity/__generated__/activity.ast.gql.dart'
    as _i5;
import 'package:myaniapp/app/activity/__generated__/activity.data.gql.dart'
    as _i2;
import 'package:myaniapp/app/activity/__generated__/activity.var.gql.dart'
    as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;

part 'activity.req.gql.g.dart';

abstract class GActivityReq
    implements
        Built<GActivityReq, GActivityReqBuilder>,
        _i1.OperationRequest<_i2.GActivityData, _i3.GActivityVars> {
  GActivityReq._();

  factory GActivityReq([void Function(GActivityReqBuilder b) updates]) =
      _$GActivityReq;

  static void _initializeBuilder(GActivityReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Activity',
    )
    ..executeOnListen = true;

  @override
  _i3.GActivityVars get vars;
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
  _i2.GActivityData? Function(
    _i2.GActivityData?,
    _i2.GActivityData?,
  )? get updateResult;
  @override
  _i2.GActivityData? get optimisticResponse;
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
  _i2.GActivityData? parseData(Map<String, dynamic> json) =>
      _i2.GActivityData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GActivityData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GActivityData, _i3.GActivityVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GActivityReq> get serializer => _$gActivityReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GActivityReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GActivityReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GActivityReq.serializer,
        json,
      );
}

abstract class GSaveActivityReplyReq
    implements
        Built<GSaveActivityReplyReq, GSaveActivityReplyReqBuilder>,
        _i1.OperationRequest<_i2.GSaveActivityReplyData,
            _i3.GSaveActivityReplyVars> {
  GSaveActivityReplyReq._();

  factory GSaveActivityReplyReq(
          [void Function(GSaveActivityReplyReqBuilder b) updates]) =
      _$GSaveActivityReplyReq;

  static void _initializeBuilder(GSaveActivityReplyReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SaveActivityReply',
    )
    ..executeOnListen = true;

  @override
  _i3.GSaveActivityReplyVars get vars;
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
  _i2.GSaveActivityReplyData? Function(
    _i2.GSaveActivityReplyData?,
    _i2.GSaveActivityReplyData?,
  )? get updateResult;
  @override
  _i2.GSaveActivityReplyData? get optimisticResponse;
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
  _i2.GSaveActivityReplyData? parseData(Map<String, dynamic> json) =>
      _i2.GSaveActivityReplyData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSaveActivityReplyData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GSaveActivityReplyData, _i3.GSaveActivityReplyVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GSaveActivityReplyReq> get serializer =>
      _$gSaveActivityReplyReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSaveActivityReplyReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveActivityReplyReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSaveActivityReplyReq.serializer,
        json,
      );
}

abstract class GSaveMessageActivityReq
    implements
        Built<GSaveMessageActivityReq, GSaveMessageActivityReqBuilder>,
        _i1.OperationRequest<_i2.GSaveMessageActivityData,
            _i3.GSaveMessageActivityVars> {
  GSaveMessageActivityReq._();

  factory GSaveMessageActivityReq(
          [void Function(GSaveMessageActivityReqBuilder b) updates]) =
      _$GSaveMessageActivityReq;

  static void _initializeBuilder(GSaveMessageActivityReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'SaveMessageActivity',
    )
    ..executeOnListen = true;

  @override
  _i3.GSaveMessageActivityVars get vars;
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
  _i2.GSaveMessageActivityData? Function(
    _i2.GSaveMessageActivityData?,
    _i2.GSaveMessageActivityData?,
  )? get updateResult;
  @override
  _i2.GSaveMessageActivityData? get optimisticResponse;
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
  _i2.GSaveMessageActivityData? parseData(Map<String, dynamic> json) =>
      _i2.GSaveMessageActivityData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GSaveMessageActivityData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GSaveMessageActivityData,
      _i3.GSaveMessageActivityVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GSaveMessageActivityReq> get serializer =>
      _$gSaveMessageActivityReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSaveMessageActivityReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMessageActivityReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSaveMessageActivityReq.serializer,
        json,
      );
}

abstract class GToggleActivitySubscriptionReq
    implements
        Built<GToggleActivitySubscriptionReq,
            GToggleActivitySubscriptionReqBuilder>,
        _i1.OperationRequest<_i2.GToggleActivitySubscriptionData,
            _i3.GToggleActivitySubscriptionVars> {
  GToggleActivitySubscriptionReq._();

  factory GToggleActivitySubscriptionReq(
          [void Function(GToggleActivitySubscriptionReqBuilder b) updates]) =
      _$GToggleActivitySubscriptionReq;

  static void _initializeBuilder(GToggleActivitySubscriptionReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ToggleActivitySubscription',
    )
    ..executeOnListen = true;

  @override
  _i3.GToggleActivitySubscriptionVars get vars;
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
  _i2.GToggleActivitySubscriptionData? Function(
    _i2.GToggleActivitySubscriptionData?,
    _i2.GToggleActivitySubscriptionData?,
  )? get updateResult;
  @override
  _i2.GToggleActivitySubscriptionData? get optimisticResponse;
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
  _i2.GToggleActivitySubscriptionData? parseData(Map<String, dynamic> json) =>
      _i2.GToggleActivitySubscriptionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GToggleActivitySubscriptionData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GToggleActivitySubscriptionData,
      _i3.GToggleActivitySubscriptionVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GToggleActivitySubscriptionReq> get serializer =>
      _$gToggleActivitySubscriptionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GToggleActivitySubscriptionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GToggleActivitySubscriptionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GToggleActivitySubscriptionReq.serializer,
        json,
      );
}

abstract class GDeleteActivityReplyReq
    implements
        Built<GDeleteActivityReplyReq, GDeleteActivityReplyReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteActivityReplyData,
            _i3.GDeleteActivityReplyVars> {
  GDeleteActivityReplyReq._();

  factory GDeleteActivityReplyReq(
          [void Function(GDeleteActivityReplyReqBuilder b) updates]) =
      _$GDeleteActivityReplyReq;

  static void _initializeBuilder(GDeleteActivityReplyReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeleteActivityReply',
    )
    ..executeOnListen = true;

  @override
  _i3.GDeleteActivityReplyVars get vars;
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
  _i2.GDeleteActivityReplyData? Function(
    _i2.GDeleteActivityReplyData?,
    _i2.GDeleteActivityReplyData?,
  )? get updateResult;
  @override
  _i2.GDeleteActivityReplyData? get optimisticResponse;
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
  _i2.GDeleteActivityReplyData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteActivityReplyData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GDeleteActivityReplyData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GDeleteActivityReplyData,
      _i3.GDeleteActivityReplyVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GDeleteActivityReplyReq> get serializer =>
      _$gDeleteActivityReplyReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeleteActivityReplyReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteActivityReplyReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeleteActivityReplyReq.serializer,
        json,
      );
}

abstract class GDeleteActivityReq
    implements
        Built<GDeleteActivityReq, GDeleteActivityReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteActivityData, _i3.GDeleteActivityVars> {
  GDeleteActivityReq._();

  factory GDeleteActivityReq(
          [void Function(GDeleteActivityReqBuilder b) updates]) =
      _$GDeleteActivityReq;

  static void _initializeBuilder(GDeleteActivityReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeleteActivity',
    )
    ..executeOnListen = true;

  @override
  _i3.GDeleteActivityVars get vars;
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
  _i2.GDeleteActivityData? Function(
    _i2.GDeleteActivityData?,
    _i2.GDeleteActivityData?,
  )? get updateResult;
  @override
  _i2.GDeleteActivityData? get optimisticResponse;
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
  _i2.GDeleteActivityData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteActivityData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GDeleteActivityData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GDeleteActivityData, _i3.GDeleteActivityVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GDeleteActivityReq> get serializer =>
      _$gDeleteActivityReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeleteActivityReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteActivityReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeleteActivityReq.serializer,
        json,
      );
}
