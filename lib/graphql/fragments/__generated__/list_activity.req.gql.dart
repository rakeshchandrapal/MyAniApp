// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/list_activity.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/list_activity.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/list_activity.var.gql.dart'
    as _i3;

part 'list_activity.req.gql.g.dart';

abstract class GListActivityReq
    implements
        Built<GListActivityReq, GListActivityReqBuilder>,
        _i1.FragmentRequest<_i2.GListActivityData, _i3.GListActivityVars> {
  GListActivityReq._();

  factory GListActivityReq([void Function(GListActivityReqBuilder b) updates]) =
      _$GListActivityReq;

  static void _initializeBuilder(GListActivityReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ListActivity';

  @override
  _i3.GListActivityVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GListActivityData? parseData(Map<String, dynamic> json) =>
      _i2.GListActivityData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GListActivityData data) => data.toJson();

  static Serializer<GListActivityReq> get serializer =>
      _$gListActivityReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListActivityReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListActivityReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListActivityReq.serializer,
        json,
      );
}
