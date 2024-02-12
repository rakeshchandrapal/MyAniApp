// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/__generated__/viewer.ast.gql.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/viewer.data.gql.dart' as _i2;
import 'package:myaniapp/graphql/__generated__/viewer.var.gql.dart' as _i3;

part 'viewer.req.gql.g.dart';

abstract class GViewerReq
    implements
        Built<GViewerReq, GViewerReqBuilder>,
        _i1.OperationRequest<_i2.GViewerData, _i3.GViewerVars> {
  GViewerReq._();

  factory GViewerReq([Function(GViewerReqBuilder b) updates]) = _$GViewerReq;

  static void _initializeBuilder(GViewerReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Viewer',
    )
    ..executeOnListen = true;

  @override
  _i3.GViewerVars get vars;
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
  _i2.GViewerData? Function(
    _i2.GViewerData?,
    _i2.GViewerData?,
  )? get updateResult;
  @override
  _i2.GViewerData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GViewerData? parseData(Map<String, dynamic> json) =>
      _i2.GViewerData.fromJson(json);

  static Serializer<GViewerReq> get serializer => _$gViewerReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GViewerReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GViewerReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GViewerReq.serializer,
        json,
      );
}

abstract class GNotificationCountReq
    implements
        Built<GNotificationCountReq, GNotificationCountReqBuilder>,
        _i1.OperationRequest<_i2.GNotificationCountData,
            _i3.GNotificationCountVars> {
  GNotificationCountReq._();

  factory GNotificationCountReq(
          [Function(GNotificationCountReqBuilder b) updates]) =
      _$GNotificationCountReq;

  static void _initializeBuilder(GNotificationCountReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'NotificationCount',
    )
    ..executeOnListen = true;

  @override
  _i3.GNotificationCountVars get vars;
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
  _i2.GNotificationCountData? Function(
    _i2.GNotificationCountData?,
    _i2.GNotificationCountData?,
  )? get updateResult;
  @override
  _i2.GNotificationCountData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GNotificationCountData? parseData(Map<String, dynamic> json) =>
      _i2.GNotificationCountData.fromJson(json);

  static Serializer<GNotificationCountReq> get serializer =>
      _$gNotificationCountReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GNotificationCountReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationCountReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GNotificationCountReq.serializer,
        json,
      );
}

abstract class GUpdateUserReq
    implements
        Built<GUpdateUserReq, GUpdateUserReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateUserData, _i3.GUpdateUserVars> {
  GUpdateUserReq._();

  factory GUpdateUserReq([Function(GUpdateUserReqBuilder b) updates]) =
      _$GUpdateUserReq;

  static void _initializeBuilder(GUpdateUserReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateUser',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateUserVars get vars;
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
  _i2.GUpdateUserData? Function(
    _i2.GUpdateUserData?,
    _i2.GUpdateUserData?,
  )? get updateResult;
  @override
  _i2.GUpdateUserData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUpdateUserData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateUserData.fromJson(json);

  static Serializer<GUpdateUserReq> get serializer =>
      _$gUpdateUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateUserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateUserReq.serializer,
        json,
      );
}

abstract class GThisUserReq
    implements
        Built<GThisUserReq, GThisUserReqBuilder>,
        _i1.FragmentRequest<_i2.GThisUserData, _i3.GThisUserVars> {
  GThisUserReq._();

  factory GThisUserReq([Function(GThisUserReqBuilder b) updates]) =
      _$GThisUserReq;

  static void _initializeBuilder(GThisUserReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'ThisUser';

  @override
  _i3.GThisUserVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GThisUserData? parseData(Map<String, dynamic> json) =>
      _i2.GThisUserData.fromJson(json);

  static Serializer<GThisUserReq> get serializer => _$gThisUserReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GThisUserReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThisUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GThisUserReq.serializer,
        json,
      );
}
