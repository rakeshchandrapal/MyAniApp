// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'media_list_option.data.gql.g.dart';

abstract class GMediaListOptions {
  String get G__typename;
  BuiltList<String?>? get sectionOrder;
  BuiltList<String?>? get customLists;
  Map<String, dynamic> toJson();
}

abstract class GMediaListOptionsData
    implements
        Built<GMediaListOptionsData, GMediaListOptionsDataBuilder>,
        GMediaListOptions {
  GMediaListOptionsData._();

  factory GMediaListOptionsData(
          [Function(GMediaListOptionsDataBuilder b) updates]) =
      _$GMediaListOptionsData;

  static void _initializeBuilder(GMediaListOptionsDataBuilder b) =>
      b..G__typename = 'MediaListTypeOptions';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<String?>? get sectionOrder;
  @override
  BuiltList<String?>? get customLists;
  static Serializer<GMediaListOptionsData> get serializer =>
      _$gMediaListOptionsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaListOptionsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaListOptionsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaListOptionsData.serializer,
        json,
      );
}
