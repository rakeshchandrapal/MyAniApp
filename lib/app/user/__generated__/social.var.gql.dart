// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'social.var.gql.g.dart';

abstract class GUserSocialsVars
    implements Built<GUserSocialsVars, GUserSocialsVarsBuilder> {
  GUserSocialsVars._();

  factory GUserSocialsVars([void Function(GUserSocialsVarsBuilder b) updates]) =
      _$GUserSocialsVars;

  int get id;
  int? get followersPage;
  int? get followingPage;
  static Serializer<GUserSocialsVars> get serializer =>
      _$gUserSocialsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserSocialsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserSocialsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserSocialsVars.serializer,
        json,
      );
}
