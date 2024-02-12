// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/releasing_media.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/releasing_media.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/releasing_media.var.gql.dart'
    as _i3;

part 'releasing_media.req.gql.g.dart';

abstract class GReleasingMediaReq
    implements
        Built<GReleasingMediaReq, GReleasingMediaReqBuilder>,
        _i1.FragmentRequest<_i2.GReleasingMediaData, _i3.GReleasingMediaVars> {
  GReleasingMediaReq._();

  factory GReleasingMediaReq([Function(GReleasingMediaReqBuilder b) updates]) =
      _$GReleasingMediaReq;

  static void _initializeBuilder(GReleasingMediaReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ReleasingMedia';

  @override
  _i3.GReleasingMediaVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GReleasingMediaData? parseData(Map<String, dynamic> json) =>
      _i2.GReleasingMediaData.fromJson(json);

  static Serializer<GReleasingMediaReq> get serializer =>
      _$gReleasingMediaReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GReleasingMediaReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReleasingMediaReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GReleasingMediaReq.serializer,
        json,
      );
}
