// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewer.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GViewerVars> _$gViewerVarsSerializer = new _$GViewerVarsSerializer();
Serializer<GNotificationCountVars> _$gNotificationCountVarsSerializer =
    new _$GNotificationCountVarsSerializer();
Serializer<GUpdateUserVars> _$gUpdateUserVarsSerializer =
    new _$GUpdateUserVarsSerializer();
Serializer<GThisUserVars> _$gThisUserVarsSerializer =
    new _$GThisUserVarsSerializer();

class _$GViewerVarsSerializer implements StructuredSerializer<GViewerVars> {
  @override
  final Iterable<Type> types = const [GViewerVars, _$GViewerVars];
  @override
  final String wireName = 'GViewerVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GViewerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GViewerVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GViewerVarsBuilder().build();
  }
}

class _$GNotificationCountVarsSerializer
    implements StructuredSerializer<GNotificationCountVars> {
  @override
  final Iterable<Type> types = const [
    GNotificationCountVars,
    _$GNotificationCountVars
  ];
  @override
  final String wireName = 'GNotificationCountVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNotificationCountVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GNotificationCountVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GNotificationCountVarsBuilder().build();
  }
}

class _$GUpdateUserVarsSerializer
    implements StructuredSerializer<GUpdateUserVars> {
  @override
  final Iterable<Type> types = const [GUpdateUserVars, _$GUpdateUserVars];
  @override
  final String wireName = 'GUpdateUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.about;
    if (value != null) {
      result
        ..add('about')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titleLanguage;
    if (value != null) {
      result
        ..add('titleLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GUserTitleLanguage)));
    }
    value = object.displayAdultContent;
    if (value != null) {
      result
        ..add('displayAdultContent')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.airingNotifications;
    if (value != null) {
      result
        ..add('airingNotifications')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.scoreFormat;
    if (value != null) {
      result
        ..add('scoreFormat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GScoreFormat)));
    }
    value = object.rowOrder;
    if (value != null) {
      result
        ..add('rowOrder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profileColor;
    if (value != null) {
      result
        ..add('profileColor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.donatorBadge;
    if (value != null) {
      result
        ..add('donatorBadge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notificationOptions;
    if (value != null) {
      result
        ..add('notificationOptions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(_i2.GNotificationOptionInput)
            ])));
    }
    value = object.timezone;
    if (value != null) {
      result
        ..add('timezone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.activityMergeTime;
    if (value != null) {
      result
        ..add('activityMergeTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.animeListOptions;
    if (value != null) {
      result
        ..add('animeListOptions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaListOptionsInput)));
    }
    value = object.mangaListOptions;
    if (value != null) {
      result
        ..add('mangaListOptions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaListOptionsInput)));
    }
    value = object.staffNameLanguage;
    if (value != null) {
      result
        ..add('staffNameLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GUserStaffNameLanguage)));
    }
    value = object.restrictMessagesToFollowing;
    if (value != null) {
      result
        ..add('restrictMessagesToFollowing')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.disabledListActivity;
    if (value != null) {
      result
        ..add('disabledListActivity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(_i2.GListActivityOptionInput)
            ])));
    }
    return result;
  }

  @override
  GUpdateUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'titleLanguage':
          result.titleLanguage = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GUserTitleLanguage))
              as _i2.GUserTitleLanguage?;
          break;
        case 'displayAdultContent':
          result.displayAdultContent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'airingNotifications':
          result.airingNotifications = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'scoreFormat':
          result.scoreFormat = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GScoreFormat))
              as _i2.GScoreFormat?;
          break;
        case 'rowOrder':
          result.rowOrder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profileColor':
          result.profileColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'donatorBadge':
          result.donatorBadge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notificationOptions':
          result.notificationOptions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i2.GNotificationOptionInput)
              ]))! as BuiltList<Object?>);
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'activityMergeTime':
          result.activityMergeTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'animeListOptions':
          result.animeListOptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaListOptionsInput))!
              as _i2.GMediaListOptionsInput);
          break;
        case 'mangaListOptions':
          result.mangaListOptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaListOptionsInput))!
              as _i2.GMediaListOptionsInput);
          break;
        case 'staffNameLanguage':
          result.staffNameLanguage = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GUserStaffNameLanguage))
              as _i2.GUserStaffNameLanguage?;
          break;
        case 'restrictMessagesToFollowing':
          result.restrictMessagesToFollowing = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'disabledListActivity':
          result.disabledListActivity.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i2.GListActivityOptionInput)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GThisUserVarsSerializer implements StructuredSerializer<GThisUserVars> {
  @override
  final Iterable<Type> types = const [GThisUserVars, _$GThisUserVars];
  @override
  final String wireName = 'GThisUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GThisUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GThisUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GThisUserVarsBuilder().build();
  }
}

class _$GViewerVars extends GViewerVars {
  factory _$GViewerVars([void Function(GViewerVarsBuilder)? updates]) =>
      (new GViewerVarsBuilder()..update(updates))._build();

  _$GViewerVars._() : super._();

  @override
  GViewerVars rebuild(void Function(GViewerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GViewerVarsBuilder toBuilder() => new GViewerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GViewerVars;
  }

  @override
  int get hashCode {
    return 587048059;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GViewerVars').toString();
  }
}

class GViewerVarsBuilder implements Builder<GViewerVars, GViewerVarsBuilder> {
  _$GViewerVars? _$v;

  GViewerVarsBuilder();

  @override
  void replace(GViewerVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GViewerVars;
  }

  @override
  void update(void Function(GViewerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GViewerVars build() => _build();

  _$GViewerVars _build() {
    final _$result = _$v ?? new _$GViewerVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GNotificationCountVars extends GNotificationCountVars {
  factory _$GNotificationCountVars(
          [void Function(GNotificationCountVarsBuilder)? updates]) =>
      (new GNotificationCountVarsBuilder()..update(updates))._build();

  _$GNotificationCountVars._() : super._();

  @override
  GNotificationCountVars rebuild(
          void Function(GNotificationCountVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNotificationCountVarsBuilder toBuilder() =>
      new GNotificationCountVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNotificationCountVars;
  }

  @override
  int get hashCode {
    return 1050036870;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GNotificationCountVars').toString();
  }
}

class GNotificationCountVarsBuilder
    implements Builder<GNotificationCountVars, GNotificationCountVarsBuilder> {
  _$GNotificationCountVars? _$v;

  GNotificationCountVarsBuilder();

  @override
  void replace(GNotificationCountVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNotificationCountVars;
  }

  @override
  void update(void Function(GNotificationCountVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNotificationCountVars build() => _build();

  _$GNotificationCountVars _build() {
    final _$result = _$v ?? new _$GNotificationCountVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserVars extends GUpdateUserVars {
  @override
  final String? about;
  @override
  final _i2.GUserTitleLanguage? titleLanguage;
  @override
  final bool? displayAdultContent;
  @override
  final bool? airingNotifications;
  @override
  final _i2.GScoreFormat? scoreFormat;
  @override
  final String? rowOrder;
  @override
  final String? profileColor;
  @override
  final String? donatorBadge;
  @override
  final BuiltList<_i2.GNotificationOptionInput?>? notificationOptions;
  @override
  final String? timezone;
  @override
  final int? activityMergeTime;
  @override
  final _i2.GMediaListOptionsInput? animeListOptions;
  @override
  final _i2.GMediaListOptionsInput? mangaListOptions;
  @override
  final _i2.GUserStaffNameLanguage? staffNameLanguage;
  @override
  final bool? restrictMessagesToFollowing;
  @override
  final BuiltList<_i2.GListActivityOptionInput?>? disabledListActivity;

  factory _$GUpdateUserVars([void Function(GUpdateUserVarsBuilder)? updates]) =>
      (new GUpdateUserVarsBuilder()..update(updates))._build();

  _$GUpdateUserVars._(
      {this.about,
      this.titleLanguage,
      this.displayAdultContent,
      this.airingNotifications,
      this.scoreFormat,
      this.rowOrder,
      this.profileColor,
      this.donatorBadge,
      this.notificationOptions,
      this.timezone,
      this.activityMergeTime,
      this.animeListOptions,
      this.mangaListOptions,
      this.staffNameLanguage,
      this.restrictMessagesToFollowing,
      this.disabledListActivity})
      : super._();

  @override
  GUpdateUserVars rebuild(void Function(GUpdateUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserVarsBuilder toBuilder() =>
      new GUpdateUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserVars &&
        about == other.about &&
        titleLanguage == other.titleLanguage &&
        displayAdultContent == other.displayAdultContent &&
        airingNotifications == other.airingNotifications &&
        scoreFormat == other.scoreFormat &&
        rowOrder == other.rowOrder &&
        profileColor == other.profileColor &&
        donatorBadge == other.donatorBadge &&
        notificationOptions == other.notificationOptions &&
        timezone == other.timezone &&
        activityMergeTime == other.activityMergeTime &&
        animeListOptions == other.animeListOptions &&
        mangaListOptions == other.mangaListOptions &&
        staffNameLanguage == other.staffNameLanguage &&
        restrictMessagesToFollowing == other.restrictMessagesToFollowing &&
        disabledListActivity == other.disabledListActivity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, about.hashCode);
    _$hash = $jc(_$hash, titleLanguage.hashCode);
    _$hash = $jc(_$hash, displayAdultContent.hashCode);
    _$hash = $jc(_$hash, airingNotifications.hashCode);
    _$hash = $jc(_$hash, scoreFormat.hashCode);
    _$hash = $jc(_$hash, rowOrder.hashCode);
    _$hash = $jc(_$hash, profileColor.hashCode);
    _$hash = $jc(_$hash, donatorBadge.hashCode);
    _$hash = $jc(_$hash, notificationOptions.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, activityMergeTime.hashCode);
    _$hash = $jc(_$hash, animeListOptions.hashCode);
    _$hash = $jc(_$hash, mangaListOptions.hashCode);
    _$hash = $jc(_$hash, staffNameLanguage.hashCode);
    _$hash = $jc(_$hash, restrictMessagesToFollowing.hashCode);
    _$hash = $jc(_$hash, disabledListActivity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserVars')
          ..add('about', about)
          ..add('titleLanguage', titleLanguage)
          ..add('displayAdultContent', displayAdultContent)
          ..add('airingNotifications', airingNotifications)
          ..add('scoreFormat', scoreFormat)
          ..add('rowOrder', rowOrder)
          ..add('profileColor', profileColor)
          ..add('donatorBadge', donatorBadge)
          ..add('notificationOptions', notificationOptions)
          ..add('timezone', timezone)
          ..add('activityMergeTime', activityMergeTime)
          ..add('animeListOptions', animeListOptions)
          ..add('mangaListOptions', mangaListOptions)
          ..add('staffNameLanguage', staffNameLanguage)
          ..add('restrictMessagesToFollowing', restrictMessagesToFollowing)
          ..add('disabledListActivity', disabledListActivity))
        .toString();
  }
}

class GUpdateUserVarsBuilder
    implements Builder<GUpdateUserVars, GUpdateUserVarsBuilder> {
  _$GUpdateUserVars? _$v;

  String? _about;
  String? get about => _$this._about;
  set about(String? about) => _$this._about = about;

  _i2.GUserTitleLanguage? _titleLanguage;
  _i2.GUserTitleLanguage? get titleLanguage => _$this._titleLanguage;
  set titleLanguage(_i2.GUserTitleLanguage? titleLanguage) =>
      _$this._titleLanguage = titleLanguage;

  bool? _displayAdultContent;
  bool? get displayAdultContent => _$this._displayAdultContent;
  set displayAdultContent(bool? displayAdultContent) =>
      _$this._displayAdultContent = displayAdultContent;

  bool? _airingNotifications;
  bool? get airingNotifications => _$this._airingNotifications;
  set airingNotifications(bool? airingNotifications) =>
      _$this._airingNotifications = airingNotifications;

  _i2.GScoreFormat? _scoreFormat;
  _i2.GScoreFormat? get scoreFormat => _$this._scoreFormat;
  set scoreFormat(_i2.GScoreFormat? scoreFormat) =>
      _$this._scoreFormat = scoreFormat;

  String? _rowOrder;
  String? get rowOrder => _$this._rowOrder;
  set rowOrder(String? rowOrder) => _$this._rowOrder = rowOrder;

  String? _profileColor;
  String? get profileColor => _$this._profileColor;
  set profileColor(String? profileColor) => _$this._profileColor = profileColor;

  String? _donatorBadge;
  String? get donatorBadge => _$this._donatorBadge;
  set donatorBadge(String? donatorBadge) => _$this._donatorBadge = donatorBadge;

  ListBuilder<_i2.GNotificationOptionInput?>? _notificationOptions;
  ListBuilder<_i2.GNotificationOptionInput?> get notificationOptions =>
      _$this._notificationOptions ??=
          new ListBuilder<_i2.GNotificationOptionInput?>();
  set notificationOptions(
          ListBuilder<_i2.GNotificationOptionInput?>? notificationOptions) =>
      _$this._notificationOptions = notificationOptions;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  int? _activityMergeTime;
  int? get activityMergeTime => _$this._activityMergeTime;
  set activityMergeTime(int? activityMergeTime) =>
      _$this._activityMergeTime = activityMergeTime;

  _i2.GMediaListOptionsInputBuilder? _animeListOptions;
  _i2.GMediaListOptionsInputBuilder get animeListOptions =>
      _$this._animeListOptions ??= new _i2.GMediaListOptionsInputBuilder();
  set animeListOptions(_i2.GMediaListOptionsInputBuilder? animeListOptions) =>
      _$this._animeListOptions = animeListOptions;

  _i2.GMediaListOptionsInputBuilder? _mangaListOptions;
  _i2.GMediaListOptionsInputBuilder get mangaListOptions =>
      _$this._mangaListOptions ??= new _i2.GMediaListOptionsInputBuilder();
  set mangaListOptions(_i2.GMediaListOptionsInputBuilder? mangaListOptions) =>
      _$this._mangaListOptions = mangaListOptions;

  _i2.GUserStaffNameLanguage? _staffNameLanguage;
  _i2.GUserStaffNameLanguage? get staffNameLanguage =>
      _$this._staffNameLanguage;
  set staffNameLanguage(_i2.GUserStaffNameLanguage? staffNameLanguage) =>
      _$this._staffNameLanguage = staffNameLanguage;

  bool? _restrictMessagesToFollowing;
  bool? get restrictMessagesToFollowing => _$this._restrictMessagesToFollowing;
  set restrictMessagesToFollowing(bool? restrictMessagesToFollowing) =>
      _$this._restrictMessagesToFollowing = restrictMessagesToFollowing;

  ListBuilder<_i2.GListActivityOptionInput?>? _disabledListActivity;
  ListBuilder<_i2.GListActivityOptionInput?> get disabledListActivity =>
      _$this._disabledListActivity ??=
          new ListBuilder<_i2.GListActivityOptionInput?>();
  set disabledListActivity(
          ListBuilder<_i2.GListActivityOptionInput?>? disabledListActivity) =>
      _$this._disabledListActivity = disabledListActivity;

  GUpdateUserVarsBuilder();

  GUpdateUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _about = $v.about;
      _titleLanguage = $v.titleLanguage;
      _displayAdultContent = $v.displayAdultContent;
      _airingNotifications = $v.airingNotifications;
      _scoreFormat = $v.scoreFormat;
      _rowOrder = $v.rowOrder;
      _profileColor = $v.profileColor;
      _donatorBadge = $v.donatorBadge;
      _notificationOptions = $v.notificationOptions?.toBuilder();
      _timezone = $v.timezone;
      _activityMergeTime = $v.activityMergeTime;
      _animeListOptions = $v.animeListOptions?.toBuilder();
      _mangaListOptions = $v.mangaListOptions?.toBuilder();
      _staffNameLanguage = $v.staffNameLanguage;
      _restrictMessagesToFollowing = $v.restrictMessagesToFollowing;
      _disabledListActivity = $v.disabledListActivity?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserVars;
  }

  @override
  void update(void Function(GUpdateUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserVars build() => _build();

  _$GUpdateUserVars _build() {
    _$GUpdateUserVars _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserVars._(
              about: about,
              titleLanguage: titleLanguage,
              displayAdultContent: displayAdultContent,
              airingNotifications: airingNotifications,
              scoreFormat: scoreFormat,
              rowOrder: rowOrder,
              profileColor: profileColor,
              donatorBadge: donatorBadge,
              notificationOptions: _notificationOptions?.build(),
              timezone: timezone,
              activityMergeTime: activityMergeTime,
              animeListOptions: _animeListOptions?.build(),
              mangaListOptions: _mangaListOptions?.build(),
              staffNameLanguage: staffNameLanguage,
              restrictMessagesToFollowing: restrictMessagesToFollowing,
              disabledListActivity: _disabledListActivity?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notificationOptions';
        _notificationOptions?.build();

        _$failedField = 'animeListOptions';
        _animeListOptions?.build();
        _$failedField = 'mangaListOptions';
        _mangaListOptions?.build();

        _$failedField = 'disabledListActivity';
        _disabledListActivity?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GThisUserVars extends GThisUserVars {
  factory _$GThisUserVars([void Function(GThisUserVarsBuilder)? updates]) =>
      (new GThisUserVarsBuilder()..update(updates))._build();

  _$GThisUserVars._() : super._();

  @override
  GThisUserVars rebuild(void Function(GThisUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThisUserVarsBuilder toBuilder() => new GThisUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThisUserVars;
  }

  @override
  int get hashCode {
    return 979933950;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GThisUserVars').toString();
  }
}

class GThisUserVarsBuilder
    implements Builder<GThisUserVars, GThisUserVarsBuilder> {
  _$GThisUserVars? _$v;

  GThisUserVarsBuilder();

  @override
  void replace(GThisUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThisUserVars;
  }

  @override
  void update(void Function(GThisUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThisUserVars build() => _build();

  _$GThisUserVars _build() {
    final _$result = _$v ?? new _$GThisUserVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
