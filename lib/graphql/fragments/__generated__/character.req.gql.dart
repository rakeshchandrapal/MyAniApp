// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:myaniapp/graphql/fragments/__generated__/character.ast.gql.dart'
    as _i4;
import 'package:myaniapp/graphql/fragments/__generated__/character.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/character.var.gql.dart'
    as _i3;

part 'character.req.gql.g.dart';

abstract class GCharacterFragmentReq
    implements
        Built<GCharacterFragmentReq, GCharacterFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GCharacterFragmentData,
            _i3.GCharacterFragmentVars> {
  GCharacterFragmentReq._();

  factory GCharacterFragmentReq(
          [void Function(GCharacterFragmentReqBuilder b) updates]) =
      _$GCharacterFragmentReq;

  static void _initializeBuilder(GCharacterFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'CharacterFragment';

  @override
  _i3.GCharacterFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GCharacterFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GCharacterFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCharacterFragmentData data) =>
      data.toJson();

  static Serializer<GCharacterFragmentReq> get serializer =>
      _$gCharacterFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCharacterFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCharacterFragmentReq.serializer,
        json,
      );
}
