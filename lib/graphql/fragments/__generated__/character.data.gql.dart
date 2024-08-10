// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'character.data.gql.g.dart';

abstract class GCharacterFragment {
  String get G__typename;
  int get id;
  GCharacterFragment_name? get name;
  GCharacterFragment_image? get image;
  Map<String, dynamic> toJson();
}

abstract class GCharacterFragment_name {
  String get G__typename;
  String? get userPreferred;
  Map<String, dynamic> toJson();
}

abstract class GCharacterFragment_image {
  String get G__typename;
  String? get large;
  Map<String, dynamic> toJson();
}

abstract class GCharacterFragmentData
    implements
        Built<GCharacterFragmentData, GCharacterFragmentDataBuilder>,
        GCharacterFragment {
  GCharacterFragmentData._();

  factory GCharacterFragmentData(
          [void Function(GCharacterFragmentDataBuilder b) updates]) =
      _$GCharacterFragmentData;

  static void _initializeBuilder(GCharacterFragmentDataBuilder b) =>
      b..G__typename = 'Character';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GCharacterFragmentData_name? get name;
  @override
  GCharacterFragmentData_image? get image;
  static Serializer<GCharacterFragmentData> get serializer =>
      _$gCharacterFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterFragmentData.serializer,
        json,
      );
}

abstract class GCharacterFragmentData_name
    implements
        Built<GCharacterFragmentData_name, GCharacterFragmentData_nameBuilder>,
        GCharacterFragment_name {
  GCharacterFragmentData_name._();

  factory GCharacterFragmentData_name(
          [void Function(GCharacterFragmentData_nameBuilder b) updates]) =
      _$GCharacterFragmentData_name;

  static void _initializeBuilder(GCharacterFragmentData_nameBuilder b) =>
      b..G__typename = 'CharacterName';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GCharacterFragmentData_name> get serializer =>
      _$gCharacterFragmentDataNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterFragmentData_name.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterFragmentData_name? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterFragmentData_name.serializer,
        json,
      );
}

abstract class GCharacterFragmentData_image
    implements
        Built<GCharacterFragmentData_image,
            GCharacterFragmentData_imageBuilder>,
        GCharacterFragment_image {
  GCharacterFragmentData_image._();

  factory GCharacterFragmentData_image(
          [void Function(GCharacterFragmentData_imageBuilder b) updates]) =
      _$GCharacterFragmentData_image;

  static void _initializeBuilder(GCharacterFragmentData_imageBuilder b) =>
      b..G__typename = 'CharacterImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GCharacterFragmentData_image> get serializer =>
      _$gCharacterFragmentDataImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCharacterFragmentData_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCharacterFragmentData_image? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCharacterFragmentData_image.serializer,
        json,
      );
}
