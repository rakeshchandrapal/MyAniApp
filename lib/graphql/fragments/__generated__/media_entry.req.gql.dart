// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/media_entry.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/media_entry.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/media_entry.var.gql.dart'
    as _i3;

part 'media_entry.req.gql.g.dart';

abstract class GMediaListEntryReq
    implements
        Built<GMediaListEntryReq, GMediaListEntryReqBuilder>,
        _i1.FragmentRequest<_i2.GMediaListEntryData, _i3.GMediaListEntryVars> {
  GMediaListEntryReq._();

  factory GMediaListEntryReq([Function(GMediaListEntryReqBuilder b) updates]) =
      _$GMediaListEntryReq;

  static void _initializeBuilder(GMediaListEntryReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'MediaListEntry';

  @override
  _i3.GMediaListEntryVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GMediaListEntryData? parseData(Map<String, dynamic> json) =>
      _i2.GMediaListEntryData.fromJson(json);

  static Serializer<GMediaListEntryReq> get serializer =>
      _$gMediaListEntryReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMediaListEntryReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListEntryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMediaListEntryReq.serializer,
        json,
      );
}
