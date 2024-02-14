// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/review.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/review.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/review.var.gql.dart'
    as _i3;

part 'review.req.gql.g.dart';

abstract class GReviewReq
    implements
        Built<GReviewReq, GReviewReqBuilder>,
        _i1.FragmentRequest<_i2.GReviewData, _i3.GReviewVars> {
  GReviewReq._();

  factory GReviewReq([Function(GReviewReqBuilder b) updates]) = _$GReviewReq;

  static void _initializeBuilder(GReviewReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'Review';

  @override
  _i3.GReviewVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GReviewData? parseData(Map<String, dynamic> json) =>
      _i2.GReviewData.fromJson(json);

  static Serializer<GReviewReq> get serializer => _$gReviewReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GReviewReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GReviewReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GReviewReq.serializer,
        json,
      );
}
