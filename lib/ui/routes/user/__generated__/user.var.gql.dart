// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'user.var.gql.g.dart';

abstract class GUserVars implements Built<GUserVars, GUserVarsBuilder> {
  GUserVars._();

  factory GUserVars([Function(GUserVarsBuilder b) updates]) = _$GUserVars;

  String? get name;
  static Serializer<GUserVars> get serializer => _$gUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserVars.serializer,
        json,
      );
}

abstract class GGenreStatVars
    implements Built<GGenreStatVars, GGenreStatVarsBuilder> {
  GGenreStatVars._();

  factory GGenreStatVars([Function(GGenreStatVarsBuilder b) updates]) =
      _$GGenreStatVars;

  static Serializer<GGenreStatVars> get serializer =>
      _$gGenreStatVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGenreStatVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGenreStatVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGenreStatVars.serializer,
        json,
      );
}
