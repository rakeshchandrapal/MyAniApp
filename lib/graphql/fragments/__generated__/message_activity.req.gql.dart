// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/message_activity.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/message_activity.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/message_activity.var.gql.dart'
    as _i3;

part 'message_activity.req.gql.g.dart';

abstract class GMessageActivityReq
    implements
        Built<GMessageActivityReq, GMessageActivityReqBuilder>,
        _i1
        .FragmentRequest<_i2.GMessageActivityData, _i3.GMessageActivityVars> {
  GMessageActivityReq._();

  factory GMessageActivityReq(
          [void Function(GMessageActivityReqBuilder b) updates]) =
      _$GMessageActivityReq;

  static void _initializeBuilder(GMessageActivityReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'MessageActivity';

  @override
  _i3.GMessageActivityVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GMessageActivityData? parseData(Map<String, dynamic> json) =>
      _i2.GMessageActivityData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GMessageActivityData data) =>
      data.toJson();

  static Serializer<GMessageActivityReq> get serializer =>
      _$gMessageActivityReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMessageActivityReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMessageActivityReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMessageActivityReq.serializer,
        json,
      );
}
