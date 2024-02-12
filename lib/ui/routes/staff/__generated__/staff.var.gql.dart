// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'staff.var.gql.g.dart';

abstract class GStaffVars implements Built<GStaffVars, GStaffVarsBuilder> {
  GStaffVars._();

  factory GStaffVars([Function(GStaffVarsBuilder b) updates]) = _$GStaffVars;

  int? get id;
  bool? get onList;
  int? get characterPage;
  int? get staffPage;
  static Serializer<GStaffVars> get serializer => _$gStaffVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffVars.serializer,
        json,
      );
}
