// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/thread.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/thread.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/thread.var.gql.dart'
    as _i3;

part 'thread.req.gql.g.dart';

abstract class GThreadFragmentReq
    implements
        Built<GThreadFragmentReq, GThreadFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GThreadFragmentData, _i3.GThreadFragmentVars> {
  GThreadFragmentReq._();

  factory GThreadFragmentReq([Function(GThreadFragmentReqBuilder b) updates]) =
      _$GThreadFragmentReq;

  static void _initializeBuilder(GThreadFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ThreadFragment';

  @override
  _i3.GThreadFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GThreadFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GThreadFragmentData.fromJson(json);

  static Serializer<GThreadFragmentReq> get serializer =>
      _$gThreadFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GThreadFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThreadFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GThreadFragmentReq.serializer,
        json,
      );
}
