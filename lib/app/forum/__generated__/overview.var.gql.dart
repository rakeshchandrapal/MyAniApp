// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'overview.var.gql.g.dart';

abstract class GForumOverviewVars
    implements Built<GForumOverviewVars, GForumOverviewVarsBuilder> {
  GForumOverviewVars._();

  factory GForumOverviewVars(
          [void Function(GForumOverviewVarsBuilder b) updates]) =
      _$GForumOverviewVars;

  static Serializer<GForumOverviewVars> get serializer =>
      _$gForumOverviewVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GForumOverviewVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GForumOverviewVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GForumOverviewVars.serializer,
        json,
      );
}
