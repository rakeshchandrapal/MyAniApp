// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/staff.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/staff.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/staff.var.gql.dart'
    as _i3;

part 'staff.req.gql.g.dart';

abstract class GStaffFragmentReq
    implements
        Built<GStaffFragmentReq, GStaffFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GStaffFragmentData, _i3.GStaffFragmentVars> {
  GStaffFragmentReq._();

  factory GStaffFragmentReq(
          [void Function(GStaffFragmentReqBuilder b) updates]) =
      _$GStaffFragmentReq;

  static void _initializeBuilder(GStaffFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'StaffFragment';

  @override
  _i3.GStaffFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GStaffFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GStaffFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GStaffFragmentData data) => data.toJson();

  static Serializer<GStaffFragmentReq> get serializer =>
      _$gStaffFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GStaffFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GStaffFragmentReq.serializer,
        json,
      );
}
