// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'media_editor.var.gql.g.dart';

abstract class GMediaEntryVars
    implements Built<GMediaEntryVars, GMediaEntryVarsBuilder> {
  GMediaEntryVars._();

  factory GMediaEntryVars([Function(GMediaEntryVarsBuilder b) updates]) =
      _$GMediaEntryVars;

  int? get mediaId;
  int? get userId;
  static Serializer<GMediaEntryVars> get serializer =>
      _$gMediaEntryVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaEntryVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaEntryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaEntryVars.serializer,
        json,
      );
}

abstract class GSaveMediaListEntryVars
    implements Built<GSaveMediaListEntryVars, GSaveMediaListEntryVarsBuilder> {
  GSaveMediaListEntryVars._();

  factory GSaveMediaListEntryVars(
          [Function(GSaveMediaListEntryVarsBuilder b) updates]) =
      _$GSaveMediaListEntryVars;

  int? get id;
  int? get mediaId;
  _i2.GMediaListStatus? get status;
  double? get score;
  int? get scoreRaw;
  int? get progress;
  int? get progressVolumes;
  int? get repeat;
  int? get priority;
  bool? get private;
  String? get notes;
  bool? get hiddenFromStatusLists;
  BuiltList<String?>? get customLists;
  BuiltList<double?>? get advancedScores;
  _i2.GFuzzyDateInput? get startedAt;
  _i2.GFuzzyDateInput? get completedAt;
  static Serializer<GSaveMediaListEntryVars> get serializer =>
      _$gSaveMediaListEntryVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSaveMediaListEntryVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSaveMediaListEntryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSaveMediaListEntryVars.serializer,
        json,
      );
}

abstract class GDeleteMediaListEntryVars
    implements
        Built<GDeleteMediaListEntryVars, GDeleteMediaListEntryVarsBuilder> {
  GDeleteMediaListEntryVars._();

  factory GDeleteMediaListEntryVars(
          [Function(GDeleteMediaListEntryVarsBuilder b) updates]) =
      _$GDeleteMediaListEntryVars;

  int? get id;
  static Serializer<GDeleteMediaListEntryVars> get serializer =>
      _$gDeleteMediaListEntryVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeleteMediaListEntryVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeleteMediaListEntryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeleteMediaListEntryVars.serializer,
        json,
      );
}
