// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/staff.data.gql.dart'
    as _i3;

part 'staff.data.gql.g.dart';

abstract class GMediaStaffData
    implements Built<GMediaStaffData, GMediaStaffDataBuilder> {
  GMediaStaffData._();

  factory GMediaStaffData([void Function(GMediaStaffDataBuilder b) updates]) =
      _$GMediaStaffData;

  static void _initializeBuilder(GMediaStaffDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaStaffData_Media? get Media;
  static Serializer<GMediaStaffData> get serializer =>
      _$gMediaStaffDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaStaffData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaStaffData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaStaffData.serializer,
        json,
      );
}

abstract class GMediaStaffData_Media
    implements Built<GMediaStaffData_Media, GMediaStaffData_MediaBuilder> {
  GMediaStaffData_Media._();

  factory GMediaStaffData_Media(
          [void Function(GMediaStaffData_MediaBuilder b) updates]) =
      _$GMediaStaffData_Media;

  static void _initializeBuilder(GMediaStaffData_MediaBuilder b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GMediaStaffData_Media_staff? get staff;
  static Serializer<GMediaStaffData_Media> get serializer =>
      _$gMediaStaffDataMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaStaffData_Media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaStaffData_Media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaStaffData_Media.serializer,
        json,
      );
}

abstract class GMediaStaffData_Media_staff
    implements
        Built<GMediaStaffData_Media_staff, GMediaStaffData_Media_staffBuilder> {
  GMediaStaffData_Media_staff._();

  factory GMediaStaffData_Media_staff(
          [void Function(GMediaStaffData_Media_staffBuilder b) updates]) =
      _$GMediaStaffData_Media_staff;

  static void _initializeBuilder(GMediaStaffData_Media_staffBuilder b) =>
      b..G__typename = 'StaffConnection';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GMediaStaffData_Media_staff_pageInfo? get pageInfo;
  BuiltList<GMediaStaffData_Media_staff_edges?>? get edges;
  static Serializer<GMediaStaffData_Media_staff> get serializer =>
      _$gMediaStaffDataMediaStaffSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaStaffData_Media_staff.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaStaffData_Media_staff? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaStaffData_Media_staff.serializer,
        json,
      );
}

abstract class GMediaStaffData_Media_staff_pageInfo
    implements
        Built<GMediaStaffData_Media_staff_pageInfo,
            GMediaStaffData_Media_staff_pageInfoBuilder>,
        _i2.GPageInfo {
  GMediaStaffData_Media_staff_pageInfo._();

  factory GMediaStaffData_Media_staff_pageInfo(
      [void Function(GMediaStaffData_Media_staff_pageInfoBuilder b)
          updates]) = _$GMediaStaffData_Media_staff_pageInfo;

  static void _initializeBuilder(
          GMediaStaffData_Media_staff_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GMediaStaffData_Media_staff_pageInfo> get serializer =>
      _$gMediaStaffDataMediaStaffPageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaStaffData_Media_staff_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaStaffData_Media_staff_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaStaffData_Media_staff_pageInfo.serializer,
        json,
      );
}

abstract class GMediaStaffData_Media_staff_edges
    implements
        Built<GMediaStaffData_Media_staff_edges,
            GMediaStaffData_Media_staff_edgesBuilder> {
  GMediaStaffData_Media_staff_edges._();

  factory GMediaStaffData_Media_staff_edges(
          [void Function(GMediaStaffData_Media_staff_edgesBuilder b) updates]) =
      _$GMediaStaffData_Media_staff_edges;

  static void _initializeBuilder(GMediaStaffData_Media_staff_edgesBuilder b) =>
      b..G__typename = 'StaffEdge';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get role;
  GMediaStaffData_Media_staff_edges_node? get node;
  static Serializer<GMediaStaffData_Media_staff_edges> get serializer =>
      _$gMediaStaffDataMediaStaffEdgesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaStaffData_Media_staff_edges.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaStaffData_Media_staff_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaStaffData_Media_staff_edges.serializer,
        json,
      );
}

abstract class GMediaStaffData_Media_staff_edges_node
    implements
        Built<GMediaStaffData_Media_staff_edges_node,
            GMediaStaffData_Media_staff_edges_nodeBuilder>,
        _i3.GStaffFragment {
  GMediaStaffData_Media_staff_edges_node._();

  factory GMediaStaffData_Media_staff_edges_node(
      [void Function(GMediaStaffData_Media_staff_edges_nodeBuilder b)
          updates]) = _$GMediaStaffData_Media_staff_edges_node;

  static void _initializeBuilder(
          GMediaStaffData_Media_staff_edges_nodeBuilder b) =>
      b..G__typename = 'Staff';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  GMediaStaffData_Media_staff_edges_node_name? get name;
  @override
  GMediaStaffData_Media_staff_edges_node_image? get image;
  static Serializer<GMediaStaffData_Media_staff_edges_node> get serializer =>
      _$gMediaStaffDataMediaStaffEdgesNodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaStaffData_Media_staff_edges_node.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaStaffData_Media_staff_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaStaffData_Media_staff_edges_node.serializer,
        json,
      );
}

abstract class GMediaStaffData_Media_staff_edges_node_name
    implements
        Built<GMediaStaffData_Media_staff_edges_node_name,
            GMediaStaffData_Media_staff_edges_node_nameBuilder>,
        _i3.GStaffFragment_name {
  GMediaStaffData_Media_staff_edges_node_name._();

  factory GMediaStaffData_Media_staff_edges_node_name(
      [void Function(GMediaStaffData_Media_staff_edges_node_nameBuilder b)
          updates]) = _$GMediaStaffData_Media_staff_edges_node_name;

  static void _initializeBuilder(
          GMediaStaffData_Media_staff_edges_node_nameBuilder b) =>
      b..G__typename = 'StaffName';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get userPreferred;
  static Serializer<GMediaStaffData_Media_staff_edges_node_name>
      get serializer => _$gMediaStaffDataMediaStaffEdgesNodeNameSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaStaffData_Media_staff_edges_node_name.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaStaffData_Media_staff_edges_node_name? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaStaffData_Media_staff_edges_node_name.serializer,
        json,
      );
}

abstract class GMediaStaffData_Media_staff_edges_node_image
    implements
        Built<GMediaStaffData_Media_staff_edges_node_image,
            GMediaStaffData_Media_staff_edges_node_imageBuilder>,
        _i3.GStaffFragment_image {
  GMediaStaffData_Media_staff_edges_node_image._();

  factory GMediaStaffData_Media_staff_edges_node_image(
      [void Function(GMediaStaffData_Media_staff_edges_node_imageBuilder b)
          updates]) = _$GMediaStaffData_Media_staff_edges_node_image;

  static void _initializeBuilder(
          GMediaStaffData_Media_staff_edges_node_imageBuilder b) =>
      b..G__typename = 'StaffImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GMediaStaffData_Media_staff_edges_node_image>
      get serializer => _$gMediaStaffDataMediaStaffEdgesNodeImageSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMediaStaffData_Media_staff_edges_node_image.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMediaStaffData_Media_staff_edges_node_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMediaStaffData_Media_staff_edges_node_image.serializer,
        json,
      );
}
