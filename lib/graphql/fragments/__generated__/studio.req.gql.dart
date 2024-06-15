// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/studio.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/studio.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/studio.var.gql.dart'
    as _i3;

part 'studio.req.gql.g.dart';

abstract class GStudioFragmentReq
    implements
        Built<GStudioFragmentReq, GStudioFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GStudioFragmentData, _i3.GStudioFragmentVars> {
  GStudioFragmentReq._();

  factory GStudioFragmentReq(
          [void Function(GStudioFragmentReqBuilder b) updates]) =
      _$GStudioFragmentReq;

  static void _initializeBuilder(GStudioFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'StudioFragment';

  @override
  _i3.GStudioFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GStudioFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GStudioFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GStudioFragmentData data) =>
      data.toJson();

  static Serializer<GStudioFragmentReq> get serializer =>
      _$gStudioFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GStudioFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStudioFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GStudioFragmentReq.serializer,
        json,
      );
}
