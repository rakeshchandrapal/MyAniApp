// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i4;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:myaniapp/graphql/fragments/__generated__/page_info.data.gql.dart'
    as _i2;
import 'package:myaniapp/graphql/fragments/__generated__/user.data.gql.dart'
    as _i3;

part 'like.data.gql.g.dart';

abstract class GLikesData implements Built<GLikesData, GLikesDataBuilder> {
  GLikesData._();

  factory GLikesData([Function(GLikesDataBuilder b) updates]) = _$GLikesData;

  static void _initializeBuilder(GLikesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLikesData_Page? get Page;
  static Serializer<GLikesData> get serializer => _$gLikesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLikesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLikesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLikesData.serializer,
        json,
      );
}

abstract class GLikesData_Page
    implements Built<GLikesData_Page, GLikesData_PageBuilder> {
  GLikesData_Page._();

  factory GLikesData_Page([Function(GLikesData_PageBuilder b) updates]) =
      _$GLikesData_Page;

  static void _initializeBuilder(GLikesData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLikesData_Page_pageInfo? get pageInfo;
  BuiltList<GLikesData_Page_likes?>? get likes;
  static Serializer<GLikesData_Page> get serializer =>
      _$gLikesDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLikesData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLikesData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLikesData_Page.serializer,
        json,
      );
}

abstract class GLikesData_Page_pageInfo
    implements
        Built<GLikesData_Page_pageInfo, GLikesData_Page_pageInfoBuilder>,
        _i2.GPageInfo {
  GLikesData_Page_pageInfo._();

  factory GLikesData_Page_pageInfo(
          [Function(GLikesData_Page_pageInfoBuilder b) updates]) =
      _$GLikesData_Page_pageInfo;

  static void _initializeBuilder(GLikesData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int? get currentPage;
  @override
  bool? get hasNextPage;
  static Serializer<GLikesData_Page_pageInfo> get serializer =>
      _$gLikesDataPagePageInfoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLikesData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLikesData_Page_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLikesData_Page_pageInfo.serializer,
        json,
      );
}

abstract class GLikesData_Page_likes
    implements
        Built<GLikesData_Page_likes, GLikesData_Page_likesBuilder>,
        _i3.GUserFragment {
  GLikesData_Page_likes._();

  factory GLikesData_Page_likes(
          [Function(GLikesData_Page_likesBuilder b) updates]) =
      _$GLikesData_Page_likes;

  static void _initializeBuilder(GLikesData_Page_likesBuilder b) =>
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
  BuiltList<_i4.GModRole?>? get moderatorRoles;
  @override
  GLikesData_Page_likes_avatar? get avatar;
  static Serializer<GLikesData_Page_likes> get serializer =>
      _$gLikesDataPageLikesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLikesData_Page_likes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLikesData_Page_likes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLikesData_Page_likes.serializer,
        json,
      );
}

abstract class GLikesData_Page_likes_avatar
    implements
        Built<GLikesData_Page_likes_avatar,
            GLikesData_Page_likes_avatarBuilder>,
        _i3.GUserFragment_avatar {
  GLikesData_Page_likes_avatar._();

  factory GLikesData_Page_likes_avatar(
          [Function(GLikesData_Page_likes_avatarBuilder b) updates]) =
      _$GLikesData_Page_likes_avatar;

  static void _initializeBuilder(GLikesData_Page_likes_avatarBuilder b) =>
      b..G__typename = 'UserAvatar';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get large;
  static Serializer<GLikesData_Page_likes_avatar> get serializer =>
      _$gLikesDataPageLikesAvatarSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLikesData_Page_likes_avatar.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLikesData_Page_likes_avatar? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLikesData_Page_likes_avatar.serializer,
        json,
      );
}
