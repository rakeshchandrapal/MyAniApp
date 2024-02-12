// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.var.gql.dart'
    as _i3;

part 'page_info.req.gql.g.dart';

abstract class GPageInfoReq
    implements
        Built<GPageInfoReq, GPageInfoReqBuilder>,
        _i1.FragmentRequest<_i2.GPageInfoData, _i3.GPageInfoVars> {
  GPageInfoReq._();

  factory GPageInfoReq([Function(GPageInfoReqBuilder b) updates]) =
      _$GPageInfoReq;

  static void _initializeBuilder(GPageInfoReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'PageInfo';

  @override
  _i3.GPageInfoVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GPageInfoData? parseData(Map<String, dynamic> json) =>
      _i2.GPageInfoData.fromJson(json);

  static Serializer<GPageInfoReq> get serializer => _$gPageInfoReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPageInfoReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPageInfoReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPageInfoReq.serializer,
        json,
      );
}
