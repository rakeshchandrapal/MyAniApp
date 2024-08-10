// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i3;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/media.data.gql.dart'
    as _i2;

part 'media_card.data.gql.g.dart';

abstract class GEmbedMediaCardData
    implements Built<GEmbedMediaCardData, GEmbedMediaCardDataBuilder> {
  GEmbedMediaCardData._();

  factory GEmbedMediaCardData(
          [void Function(GEmbedMediaCardDataBuilder b) updates]) =
      _$GEmbedMediaCardData;

  static void _initializeBuilder(GEmbedMediaCardDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GEmbedMediaCardData_Media? get Media;
  static Serializer<GEmbedMediaCardData> get serializer =>
      _$gEmbedMediaCardDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEmbedMediaCardData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEmbedMediaCardData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEmbedMediaCardData.serializer,
        json,
      );
}

abstract class GEmbedMediaCardData_Media
    implements
        Built<GEmbedMediaCardData_Media, GEmbedMediaCardData_MediaBuilder>,
        _i2.GMediaFragment {
  GEmbedMediaCardData_Media._();

  factory GEmbedMediaCardData_Media(
          [void Function(GEmbedMediaCardData_MediaBuilder b) updates]) =
      _$GEmbedMediaCardData_Media;

  static void _initializeBuilder(GEmbedMediaCardData_MediaBuilder b) =>
      b..G__typename = 'Media';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  _i3.GMediaType? get type;
  @override
  bool? get isAdult;
  @override
  BuiltList<String?>? get genres;
  @override
  _i3.GMediaFormat? get format;
  @override
  String? get description;
  @override
  GEmbedMediaCardData_Media_title? get title;
  @override
  GEmbedMediaCardData_Media_coverImage? get coverImage;
  static Serializer<GEmbedMediaCardData_Media> get serializer =>
      _$gEmbedMediaCardDataMediaSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEmbedMediaCardData_Media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEmbedMediaCardData_Media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEmbedMediaCardData_Media.serializer,
        json,
      );
}

abstract class GEmbedMediaCardData_Media_title
    implements
        Built<GEmbedMediaCardData_Media_title,
            GEmbedMediaCardData_Media_titleBuilder>,
        _i2.GMediaFragment_title {
  GEmbedMediaCardData_Media_title._();

  factory GEmbedMediaCardData_Media_title(
          [void Function(GEmbedMediaCardData_Media_titleBuilder b) updates]) =
      _$GEmbedMediaCardData_Media_title;

  static void _initializeBuilder(GEmbedMediaCardData_Media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GEmbedMediaCardData_Media_title> get serializer =>
      _$gEmbedMediaCardDataMediaTitleSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEmbedMediaCardData_Media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEmbedMediaCardData_Media_title? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEmbedMediaCardData_Media_title.serializer,
        json,
      );
}

abstract class GEmbedMediaCardData_Media_coverImage
    implements
        Built<GEmbedMediaCardData_Media_coverImage,
            GEmbedMediaCardData_Media_coverImageBuilder>,
        _i2.GMediaFragment_coverImage {
  GEmbedMediaCardData_Media_coverImage._();

  factory GEmbedMediaCardData_Media_coverImage(
      [void Function(GEmbedMediaCardData_Media_coverImageBuilder b)
          updates]) = _$GEmbedMediaCardData_Media_coverImage;

  static void _initializeBuilder(
          GEmbedMediaCardData_Media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get extraLarge;
  static Serializer<GEmbedMediaCardData_Media_coverImage> get serializer =>
      _$gEmbedMediaCardDataMediaCoverImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEmbedMediaCardData_Media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEmbedMediaCardData_Media_coverImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEmbedMediaCardData_Media_coverImage.serializer,
        json,
      );
}
