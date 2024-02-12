// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'fuzzy_date.data.gql.g.dart';

abstract class GFuzzyDate {
  String get G__typename;
  int? get day;
  int? get month;
  int? get year;
  Map<String, dynamic> toJson();
}

abstract class GFuzzyDateData
    implements Built<GFuzzyDateData, GFuzzyDateDataBuilder>, GFuzzyDate {
  GFuzzyDateData._();

  factory GFuzzyDateData([Function(GFuzzyDateDataBuilder b) updates]) =
      _$GFuzzyDateData;

  static void _initializeBuilder(GFuzzyDateDataBuilder b) =>
      b..G__typename = 'FuzzyDate';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get day;
  @override
  int? get month;
  @override
  int? get year;
  static Serializer<GFuzzyDateData> get serializer =>
      _$gFuzzyDateDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFuzzyDateData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFuzzyDateData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFuzzyDateData.serializer,
        json,
      );
}
