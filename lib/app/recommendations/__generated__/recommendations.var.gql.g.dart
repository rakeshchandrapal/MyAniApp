// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendations.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRecommendationsVars> _$gRecommendationsVarsSerializer =
    new _$GRecommendationsVarsSerializer();
Serializer<GSaveRecommendationVars> _$gSaveRecommendationVarsSerializer =
    new _$GSaveRecommendationVarsSerializer();

class _$GRecommendationsVarsSerializer
    implements StructuredSerializer<GRecommendationsVars> {
  @override
  final Iterable<Type> types = const [
    GRecommendationsVars,
    _$GRecommendationsVars
  ];
  @override
  final String wireName = 'GRecommendationsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRecommendationsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('perPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sort;
    if (value != null) {
      result
        ..add('sort')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(_i1.GRecommendationSort)])));
    }
    value = object.onList;
    if (value != null) {
      result
        ..add('onList')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GRecommendationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRecommendationsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sort':
          result.sort.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i1.GRecommendationSort)
              ]))! as BuiltList<Object?>);
          break;
        case 'onList':
          result.onList = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveRecommendationVarsSerializer
    implements StructuredSerializer<GSaveRecommendationVars> {
  @override
  final Iterable<Type> types = const [
    GSaveRecommendationVars,
    _$GSaveRecommendationVars
  ];
  @override
  final String wireName = 'GSaveRecommendationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveRecommendationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.mediaId;
    if (value != null) {
      result
        ..add('mediaId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.mediaRecommendationId;
    if (value != null) {
      result
        ..add('mediaRecommendationId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GRecommendationRating)));
    }
    return result;
  }

  @override
  GSaveRecommendationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveRecommendationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mediaId':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'mediaRecommendationId':
          result.mediaRecommendationId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GRecommendationRating))
              as _i1.GRecommendationRating?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRecommendationsVars extends GRecommendationsVars {
  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final BuiltList<_i1.GRecommendationSort?>? sort;
  @override
  final bool? onList;

  factory _$GRecommendationsVars(
          [void Function(GRecommendationsVarsBuilder)? updates]) =>
      (new GRecommendationsVarsBuilder()..update(updates))._build();

  _$GRecommendationsVars._({this.page, this.perPage, this.sort, this.onList})
      : super._();

  @override
  GRecommendationsVars rebuild(
          void Function(GRecommendationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecommendationsVarsBuilder toBuilder() =>
      new GRecommendationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRecommendationsVars &&
        page == other.page &&
        perPage == other.perPage &&
        sort == other.sort &&
        onList == other.onList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, sort.hashCode);
    _$hash = $jc(_$hash, onList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GRecommendationsVars')
          ..add('page', page)
          ..add('perPage', perPage)
          ..add('sort', sort)
          ..add('onList', onList))
        .toString();
  }
}

class GRecommendationsVarsBuilder
    implements Builder<GRecommendationsVars, GRecommendationsVarsBuilder> {
  _$GRecommendationsVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  ListBuilder<_i1.GRecommendationSort?>? _sort;
  ListBuilder<_i1.GRecommendationSort?> get sort =>
      _$this._sort ??= new ListBuilder<_i1.GRecommendationSort?>();
  set sort(ListBuilder<_i1.GRecommendationSort?>? sort) => _$this._sort = sort;

  bool? _onList;
  bool? get onList => _$this._onList;
  set onList(bool? onList) => _$this._onList = onList;

  GRecommendationsVarsBuilder();

  GRecommendationsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _perPage = $v.perPage;
      _sort = $v.sort?.toBuilder();
      _onList = $v.onList;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRecommendationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRecommendationsVars;
  }

  @override
  void update(void Function(GRecommendationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GRecommendationsVars build() => _build();

  _$GRecommendationsVars _build() {
    _$GRecommendationsVars _$result;
    try {
      _$result = _$v ??
          new _$GRecommendationsVars._(
              page: page,
              perPage: perPage,
              sort: _sort?.build(),
              onList: onList);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sort';
        _sort?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GRecommendationsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveRecommendationVars extends GSaveRecommendationVars {
  @override
  final int? mediaId;
  @override
  final int? mediaRecommendationId;
  @override
  final _i1.GRecommendationRating? rating;

  factory _$GSaveRecommendationVars(
          [void Function(GSaveRecommendationVarsBuilder)? updates]) =>
      (new GSaveRecommendationVarsBuilder()..update(updates))._build();

  _$GSaveRecommendationVars._(
      {this.mediaId, this.mediaRecommendationId, this.rating})
      : super._();

  @override
  GSaveRecommendationVars rebuild(
          void Function(GSaveRecommendationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveRecommendationVarsBuilder toBuilder() =>
      new GSaveRecommendationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveRecommendationVars &&
        mediaId == other.mediaId &&
        mediaRecommendationId == other.mediaRecommendationId &&
        rating == other.rating;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, mediaRecommendationId.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveRecommendationVars')
          ..add('mediaId', mediaId)
          ..add('mediaRecommendationId', mediaRecommendationId)
          ..add('rating', rating))
        .toString();
  }
}

class GSaveRecommendationVarsBuilder
    implements
        Builder<GSaveRecommendationVars, GSaveRecommendationVarsBuilder> {
  _$GSaveRecommendationVars? _$v;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  int? _mediaRecommendationId;
  int? get mediaRecommendationId => _$this._mediaRecommendationId;
  set mediaRecommendationId(int? mediaRecommendationId) =>
      _$this._mediaRecommendationId = mediaRecommendationId;

  _i1.GRecommendationRating? _rating;
  _i1.GRecommendationRating? get rating => _$this._rating;
  set rating(_i1.GRecommendationRating? rating) => _$this._rating = rating;

  GSaveRecommendationVarsBuilder();

  GSaveRecommendationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaId = $v.mediaId;
      _mediaRecommendationId = $v.mediaRecommendationId;
      _rating = $v.rating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveRecommendationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveRecommendationVars;
  }

  @override
  void update(void Function(GSaveRecommendationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveRecommendationVars build() => _build();

  _$GSaveRecommendationVars _build() {
    final _$result = _$v ??
        new _$GSaveRecommendationVars._(
            mediaId: mediaId,
            mediaRecommendationId: mediaRecommendationId,
            rating: rating);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
