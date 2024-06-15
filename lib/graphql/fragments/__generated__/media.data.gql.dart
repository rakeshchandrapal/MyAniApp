// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i2;

part 'media.data.gql.g.dart';

abstract class GMediaFragment {
  String get G__typename;
  int get id;
  _i1.GMediaType? get type;
  bool? get isAdult;
  BuiltList<String?>? get genres;
  _i1.GMediaFormat? get format;
  String? get description;
  GMediaFragment_title? get title;
  GMediaFragment_coverImage? get coverImage;
  Map<String, dynamic> toJson();
}

abstract class GMediaFragment_title {
  String get G__typename;
  String? get userPreferred;
  Map<String, dynamic> toJson();
}

abstract class GMediaFragment_coverImage {
  String get G__typename;
  String? get extraLarge;
  Map<String, dynamic> toJson();
}

abstract class GMediaFragmentData
    implements
        Built<GMediaFragmentData, GMediaFragmentDataBuilder>,
        GMediaFragment {
  GMediaFragmentData._();

  factory GMediaFragmentData(
          [void Function(GMediaFragmentDataBuilder b) updates]) =
      _$GMediaFragmentData;

  static void _initializeBuilder(GMediaFragmentDataBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i1.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i1.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GMediaFragmentData_title? get title;
  @override
  GMediaFragmentData_coverImage? get coverImage;
  static Serializer<GMediaFragmentData> get serializer =>
      _$gMediaFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMediaFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMediaFragmentData.serializer,
        json,
      );
}

abstract class GMediaFragmentData_title
    implements
        Built<GMediaFragmentData_title, GMediaFragmentData_titleBuilder>,
        GMediaFragment_title {
  GMediaFragmentData_title._();

  factory GMediaFragmentData_title(
          [void Function(GMediaFragmentData_titleBuilder b) updates]) =
      _$GMediaFragmentData_title;

  static void _initializeBuilder(GMediaFragmentData_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GMediaFragmentData_title> get serializer =>
      _$gMediaFragmentDataTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMediaFragmentData_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaFragmentData_title? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMediaFragmentData_title.serializer,
        json,
      );
}

abstract class GMediaFragmentData_coverImage
    implements
        Built<GMediaFragmentData_coverImage,
            GMediaFragmentData_coverImageBuilder>,
        GMediaFragment_coverImage {
  GMediaFragmentData_coverImage._();

  factory GMediaFragmentData_coverImage(
          [void Function(GMediaFragmentData_coverImageBuilder b) updates]) =
      _$GMediaFragmentData_coverImage;

  static void _initializeBuilder(GMediaFragmentData_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GMediaFragmentData_coverImage> get serializer =>
      _$gMediaFragmentDataCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GMediaFragmentData_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaFragmentData_coverImage? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GMediaFragmentData_coverImage.serializer,
        json,
      );
}
