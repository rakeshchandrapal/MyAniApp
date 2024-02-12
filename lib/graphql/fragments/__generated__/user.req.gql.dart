// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/user.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/user.var.gql.dart'
    as _i3;

part 'user.req.gql.g.dart';

abstract class GUserFragmentReq
    implements
        Built<GUserFragmentReq, GUserFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GUserFragmentData, _i3.GUserFragmentVars> {
  GUserFragmentReq._();

  factory GUserFragmentReq([Function(GUserFragmentReqBuilder b) updates]) =
      _$GUserFragmentReq;

  static void _initializeBuilder(GUserFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'UserFragment';

  @override
  _i3.GUserFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GUserFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GUserFragmentData.fromJson(json);

  static Serializer<GUserFragmentReq> get serializer =>
      _$gUserFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserFragmentReq.serializer,
        json,
      );
}
