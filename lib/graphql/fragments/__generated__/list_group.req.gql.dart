// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/list_group.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/list_group.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/list_group.var.gql.dart'
    as _i3;

part 'list_group.req.gql.g.dart';

abstract class GListGroupReq
    implements
        Built<GListGroupReq, GListGroupReqBuilder>,
        _i1.FragmentRequest<_i2.GListGroupData, _i3.GListGroupVars> {
  GListGroupReq._();

  factory GListGroupReq([void Function(GListGroupReqBuilder b) updates]) =
      _$GListGroupReq;

  static void _initializeBuilder(GListGroupReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ListGroup';

  @override
  _i3.GListGroupVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GListGroupData? parseData(Map<String, dynamic> json) =>
      _i2.GListGroupData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GListGroupData data) => data.toJson();

  static Serializer<GListGroupReq> get serializer => _$gListGroupReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GListGroupReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GListGroupReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GListGroupReq.serializer,
        json,
      );
}
