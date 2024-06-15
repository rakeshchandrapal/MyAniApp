// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i1;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i2;

part 'user.data.gql.g.dart';

abstract class GUserFragment {
  String get G__typename;
  int get id;
  String get name;
  int? get donatorTier;
  String? get donatorBadge;
  BuiltList<_i1.GModRole?>? get moderatorRoles;
  GUserFragment_avatar? get avatar;
  Map<String, dynamic> toJson();
}

abstract class GUserFragment_avatar {
  String get G__typename;
  String? get large;
  Map<String, dynamic> toJson();
}

abstract class GUserFragmentData
    implements
        Built<GUserFragmentData, GUserFragmentDataBuilder>,
        GUserFragment {
  GUserFragmentData._();

  factory GUserFragmentData(
          [void Function(GUserFragmentDataBuilder b) updates]) =
      _$GUserFragmentData;

  static void _initializeBuilder(GUserFragmentDataBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get name;
  @override
  int? get donatorTier;
  @override
  String? get donatorBadge;
  @override
  BuiltList<_i1.GModRole?>? get moderatorRoles;
  @override
  GUserFragmentData_avatar? get avatar;
  static Serializer<GUserFragmentData> get serializer =>
      _$gUserFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserFragmentData.serializer,
        json,
      );
}

abstract class GUserFragmentData_avatar
    implements
        Built<GUserFragmentData_avatar, GUserFragmentData_avatarBuilder>,
        GUserFragment_avatar {
  GUserFragmentData_avatar._();

  factory GUserFragmentData_avatar(
          [void Function(GUserFragmentData_avatarBuilder b) updates]) =
      _$GUserFragmentData_avatar;

  static void _initializeBuilder(GUserFragmentData_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GUserFragmentData_avatar> get serializer =>
      _$gUserFragmentDataAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUserFragmentData_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserFragmentData_avatar? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUserFragmentData_avatar.serializer,
        json,
      );
}
