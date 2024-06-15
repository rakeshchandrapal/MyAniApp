// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'page_info.data.gql.g.dart';

abstract class GPageInfo {
  String get G__typename;
  int? get currentPage;
  bool? get hasNextPage;
  Map<String, dynamic> toJson();
}

abstract class GPageInfoData
    implements Built<GPageInfoData, GPageInfoDataBuilder>, GPageInfo {
  GPageInfoData._();

  factory GPageInfoData([void Function(GPageInfoDataBuilder b) updates]) =
      _$GPageInfoData;

  static void _initializeBuilder(GPageInfoDataBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GPageInfoData> get serializer => _$gPageInfoDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPageInfoData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPageInfoData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPageInfoData.serializer,
        json,
      );
}
