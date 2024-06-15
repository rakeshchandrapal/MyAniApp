// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'studio.data.gql.g.dart';

abstract class GStudioFragment {
  String get G__typename;
  int get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GStudioFragmentData
    implements
        Built<GStudioFragmentData, GStudioFragmentDataBuilder>,
        GStudioFragment {
  GStudioFragmentData._();

  factory GStudioFragmentData(
          [void Function(GStudioFragmentDataBuilder b) updates]) =
      _$GStudioFragmentData;

  static void _initializeBuilder(GStudioFragmentDataBuilder b) =>
      b..G__typename = 'Studio';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  static Serializer<GStudioFragmentData> get serializer =>
      _$gStudioFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStudioFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStudioFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStudioFragmentData.serializer,
        json,
      );
}
