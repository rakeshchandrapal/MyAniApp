// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:myaniapp/graphql/__generated__/schema.schema.gql.dart' as _i2;
import 'package:myaniapp/graphql/__generated__/serializers.gql.dart' as _i1;

part 'viewer.var.gql.g.dart';

abstract class GViewerVars implements Built<GViewerVars, GViewerVarsBuilder> {
  GViewerVars._();

  factory GViewerVars([Function(GViewerVarsBuilder b) updates]) = _$GViewerVars;

  static Serializer<GViewerVars> get serializer => _$gViewerVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GViewerVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GViewerVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GViewerVars.serializer,
        json,
      );
}

abstract class GNotificationCountVars
    implements Built<GNotificationCountVars, GNotificationCountVarsBuilder> {
  GNotificationCountVars._();

  factory GNotificationCountVars(
          [Function(GNotificationCountVarsBuilder b) updates]) =
      _$GNotificationCountVars;

  static Serializer<GNotificationCountVars> get serializer =>
      _$gNotificationCountVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationCountVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationCountVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationCountVars.serializer,
        json,
      );
}

abstract class GUpdateUserVars
    implements Built<GUpdateUserVars, GUpdateUserVarsBuilder> {
  GUpdateUserVars._();

  factory GUpdateUserVars([Function(GUpdateUserVarsBuilder b) updates]) =
      _$GUpdateUserVars;

  String? get about;
  _i2.GUserTitleLanguage? get titleLanguage;
  bool? get displayAdultContent;
  bool? get airingNotifications;
  _i2.GScoreFormat? get scoreFormat;
  String? get rowOrder;
  String? get profileColor;
  String? get donatorBadge;
  BuiltList<_i2.GNotificationOptionInput?>? get notificationOptions;
  String? get timezone;
  int? get activityMergeTime;
  _i2.GMediaListOptionsInput? get animeListOptions;
  _i2.GMediaListOptionsInput? get mangaListOptions;
  _i2.GUserStaffNameLanguage? get staffNameLanguage;
  bool? get restrictMessagesToFollowing;
  BuiltList<_i2.GListActivityOptionInput?>? get disabledListActivity;
  static Serializer<GUpdateUserVars> get serializer =>
      _$gUpdateUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserVars.serializer,
        json,
      );
}

abstract class GThisUserVars
    implements Built<GThisUserVars, GThisUserVarsBuilder> {
  GThisUserVars._();

  factory GThisUserVars([Function(GThisUserVarsBuilder b) updates]) =
      _$GThisUserVars;

  static Serializer<GThisUserVars> get serializer => _$gThisUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GThisUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GThisUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GThisUserVars.serializer,
        json,
      );
}
