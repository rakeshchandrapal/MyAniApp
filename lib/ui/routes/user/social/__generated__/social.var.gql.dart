// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'social.var.gql.g.dart';

abstract class GSocialsVars
    implements Built<GSocialsVars, GSocialsVarsBuilder> {
  GSocialsVars._();

  factory GSocialsVars([Function(GSocialsVarsBuilder b) updates]) =
      _$GSocialsVars;

  int get id;
  int? get followersPage;
  int? get followingPage;
  static Serializer<GSocialsVars> get serializer => _$gSocialsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSocialsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSocialsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSocialsVars.serializer,
        json,
      );
}
