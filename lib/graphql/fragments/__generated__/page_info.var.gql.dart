// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'page_info.var.gql.g.dart';

abstract class GPageInfoVars
    implements Built<GPageInfoVars, GPageInfoVarsBuilder> {
  GPageInfoVars._();

  factory GPageInfoVars([void Function(GPageInfoVarsBuilder b) updates]) =
      _$GPageInfoVars;

  static Serializer<GPageInfoVars> get serializer => _$gPageInfoVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPageInfoVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPageInfoVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPageInfoVars.serializer,
        json,
      );
}
