// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i2;

part 'list.var.gql.g.dart';

abstract class GMediaListVars
    implements Built<GMediaListVars, GMediaListVarsBuilder> {
  GMediaListVars._();

  factory GMediaListVars([Function(GMediaListVarsBuilder b) updates]) =
      _$GMediaListVars;

  String? get userName;
  _i1.GMediaType? get type;
  BuiltList<_i1.GMediaListSort?>? get sort;
  static Serializer<GMediaListVars> get serializer =>
      _$gMediaListVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMediaListVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMediaListVars.serializer,
        json,
      );
}
