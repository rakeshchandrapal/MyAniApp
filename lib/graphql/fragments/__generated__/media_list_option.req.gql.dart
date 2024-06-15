// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/media_list_option.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/media_list_option.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/media_list_option.var.gql.dart'
    as _i3;

part 'media_list_option.req.gql.g.dart';

abstract class GMediaListOptionsReq
    implements
        Built<GMediaListOptionsReq, GMediaListOptionsReqBuilder>,
        _i1
        .FragmentRequest<_i2.GMediaListOptionsData, _i3.GMediaListOptionsVars> {
  GMediaListOptionsReq._();

  factory GMediaListOptionsReq(
          [void Function(GMediaListOptionsReqBuilder b) updates]) =
      _$GMediaListOptionsReq;

  static void _initializeBuilder(GMediaListOptionsReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'MediaListOptions';

  @override
  _i3.GMediaListOptionsVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GMediaListOptionsData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaListOptionsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GMediaListOptionsData data) =>
      data.toJson();

  static Serializer<GMediaListOptionsReq> get serializer =>
      _$gMediaListOptionsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaListOptionsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListOptionsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaListOptionsReq.serializer,
        json,
      );
}
