// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i2;

part 'notifications.var.gql.g.dart';

abstract class GNotificationsVars
    implements Built<GNotificationsVars, GNotificationsVarsBuilder> {
  GNotificationsVars._();

  factory GNotificationsVars(
          [void Function(GNotificationsVarsBuilder b) updates]) =
      _$GNotificationsVars;

  int? get page;
  BuiltList<_i1.GNotificationType?>? get types;
  bool? get reset;
  static Serializer<GNotificationsVars> get serializer =>
      _$gNotificationsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GNotificationsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GNotificationsVars.serializer,
        json,
      );
}
