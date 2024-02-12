// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/media.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/media.var.gql.dart'
    as _i3;

part 'media.req.gql.g.dart';

abstract class GMediaFragmentReq
    implements
        Built<GMediaFragmentReq, GMediaFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GMediaFragmentData, _i3.GMediaFragmentVars> {
  GMediaFragmentReq._();

  factory GMediaFragmentReq([Function(GMediaFragmentReqBuilder b) updates]) =
      _$GMediaFragmentReq;

  static void _initializeBuilder(GMediaFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'MediaFragment';

  @override
  _i3.GMediaFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GMediaFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaFragmentData.fromJson(json);

  static Serializer<GMediaFragmentReq> get serializer =>
      _$gMediaFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaFragmentReq.serializer,
        json,
      );
}
