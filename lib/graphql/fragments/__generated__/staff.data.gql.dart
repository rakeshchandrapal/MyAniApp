// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'staff.data.gql.g.dart';

abstract class GStaffFragment {
  String get G__typename;
  int get id;
  GStaffFragment_name? get name;
  GStaffFragment_image? get image;
  Map<String, dynamic> toJson();
}

abstract class GStaffFragment_name {
  String get G__typename;
  String? get userPreferred;
  Map<String, dynamic> toJson();
}

abstract class GStaffFragment_image {
  String get G__typename;
  String? get large;
  Map<String, dynamic> toJson();
}

abstract class GStaffFragmentData
    implements
        Built<GStaffFragmentData, GStaffFragmentDataBuilder>,
        GStaffFragment {
  GStaffFragmentData._();

  factory GStaffFragmentData(
          [void Function(GStaffFragmentDataBuilder b) updates]) =
      _$GStaffFragmentData;

  static void _initializeBuilder(GStaffFragmentDataBuilder b) =>
      b..G__typename = 'Staff';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GStaffFragmentData_name? get name;
  @override
  GStaffFragmentData_image? get image;
  static Serializer<GStaffFragmentData> get serializer =>
      _$gStaffFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffFragmentData.serializer,
        json,
      );
}

abstract class GStaffFragmentData_name
    implements
        Built<GStaffFragmentData_name, GStaffFragmentData_nameBuilder>,
        GStaffFragment_name {
  GStaffFragmentData_name._();

  factory GStaffFragmentData_name(
          [void Function(GStaffFragmentData_nameBuilder b) updates]) =
      _$GStaffFragmentData_name;

  static void _initializeBuilder(GStaffFragmentData_nameBuilder b) =>
      b..G__typename = 'StaffName';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GStaffFragmentData_name> get serializer =>
      _$gStaffFragmentDataNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffFragmentData_name.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffFragmentData_name? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffFragmentData_name.serializer,
        json,
      );
}

abstract class GStaffFragmentData_image
    implements
        Built<GStaffFragmentData_image, GStaffFragmentData_imageBuilder>,
        GStaffFragment_image {
  GStaffFragmentData_image._();

  factory GStaffFragmentData_image(
          [void Function(GStaffFragmentData_imageBuilder b) updates]) =
      _$GStaffFragmentData_image;

  static void _initializeBuilder(GStaffFragmentData_imageBuilder b) =>
      b..G__typename = 'StaffImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GStaffFragmentData_image> get serializer =>
      _$gStaffFragmentDataImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStaffFragmentData_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStaffFragmentData_image? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStaffFragmentData_image.serializer,
        json,
      );
}
