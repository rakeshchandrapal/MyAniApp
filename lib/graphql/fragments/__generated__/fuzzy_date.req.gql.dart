// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/fuzzy_date.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/fuzzy_date.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/fuzzy_date.var.gql.dart'
    as _i3;

part 'fuzzy_date.req.gql.g.dart';

abstract class GFuzzyDateReq
    implements
        Built<GFuzzyDateReq, GFuzzyDateReqBuilder>,
        _i1.FragmentRequest<_i2.GFuzzyDateData, _i3.GFuzzyDateVars> {
  GFuzzyDateReq._();

  factory GFuzzyDateReq([Function(GFuzzyDateReqBuilder b) updates]) =
      _$GFuzzyDateReq;

  static void _initializeBuilder(GFuzzyDateReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'FuzzyDate';

  @override
  _i3.GFuzzyDateVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GFuzzyDateData? parseData(Map<String, dynamic> json) =>
      _i2.GFuzzyDateData.fromJson(json);

  static Serializer<GFuzzyDateReq> get serializer => _$gFuzzyDateReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GFuzzyDateReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFuzzyDateReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GFuzzyDateReq.serializer,
        json,
      );
}
