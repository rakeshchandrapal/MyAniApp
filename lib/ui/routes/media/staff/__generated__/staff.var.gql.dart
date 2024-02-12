// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'staff.var.gql.g.dart';

abstract class GMediaStaffVars
    implements Built<GMediaStaffVars, GMediaStaffVarsBuilder> {
  GMediaStaffVars._();

  factory GMediaStaffVars([Function(GMediaStaffVarsBuilder b) updates]) =
      _$GMediaStaffVars;

  int? get mediaId;
  int? get page;
  static Serializer<GMediaStaffVars> get serializer =>
      _$gMediaStaffVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaStaffVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaStaffVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaStaffVars.serializer,
        json,
      );
}
