// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/text_activity.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/text_activity.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/text_activity.var.gql.dart'
    as _i3;

part 'text_activity.req.gql.g.dart';

abstract class GTextActivityReq
    implements
        Built<GTextActivityReq, GTextActivityReqBuilder>,
        _i1.FragmentRequest<_i2.GTextActivityData, _i3.GTextActivityVars> {
  GTextActivityReq._();

  factory GTextActivityReq([Function(GTextActivityReqBuilder b) updates]) =
      _$GTextActivityReq;

  static void _initializeBuilder(GTextActivityReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'TextActivity';

  @override
  _i3.GTextActivityVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GTextActivityData? parseData(Map<String, dynamic> json) =>
      _i2.GTextActivityData.fromJson(json);

  static Serializer<GTextActivityReq> get serializer =>
      _$gTextActivityReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GTextActivityReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTextActivityReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GTextActivityReq.serializer,
        json,
      );
}
